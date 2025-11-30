#!/bin/bash

# Nimble RPG System Build Script
# Creates a .system file for Encounter+ VTT

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Get version from system.json
VERSION=$(grep -o '"version": *"[^"]*"' system.json | grep -o '"[^"]*"$' | tr -d '"')
SYSTEM_NAME="Nimble RPG"
OUTPUT_NAME="Nimble v${VERSION}.system"

echo -e "${BLUE}╔════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║   Nimble RPG System Build Script      ║${NC}"
echo -e "${BLUE}╔════════════════════════════════════════╗${NC}"
echo -e "${YELLOW}Version: ${VERSION}${NC}"
echo ""

# Create releases directory if it doesn't exist
mkdir -p releases

# Remove old build artifacts
echo -e "${YELLOW}→${NC} Cleaning up old build artifacts..."
rm -f releases/*.system
rm -f releases/*.zip

# Create temporary build directory
BUILD_DIR=$(mktemp -d)
echo -e "${YELLOW}→${NC} Creating temporary build directory: ${BUILD_DIR}"

# Copy files to build directory
echo -e "${YELLOW}→${NC} Copying system files..."

# Root JSON files
cp *.json "${BUILD_DIR}/" 2>/dev/null || true

# Markdown files (but exclude internal docs)
cp README.md "${BUILD_DIR}/" 2>/dev/null || true
cp INSTALLATION.md "${BUILD_DIR}/" 2>/dev/null || true

# Copy directories
echo -e "${YELLOW}→${NC} Copying directories..."

# Forms
if [ -d "forms" ]; then
    echo "  ✓ forms/"
    cp -r forms "${BUILD_DIR}/"
fi

# Views
if [ -d "views" ]; then
    echo "  ✓ views/"
    cp -r views "${BUILD_DIR}/"
fi

# Styles
if [ -d "styles" ]; then
    echo "  ✓ styles/"
    cp -r styles "${BUILD_DIR}/"
fi

# Assets
if [ -d "assets" ]; then
    echo "  ✓ assets/"
    cp -r assets "${BUILD_DIR}/"
fi

# Images
if [ -d "images" ]; then
    echo "  ✓ images/"
    cp -r images "${BUILD_DIR}/"
fi

# Icons
if [ -d "icons" ]; then
    echo "  ✓ icons/"
    cp -r icons "${BUILD_DIR}/"
fi

# Fonts
if [ -d "fonts" ]; then
    echo "  ✓ fonts/"
    cp -r fonts "${BUILD_DIR}/"
fi

# Themes
if [ -d "themes" ]; then
    echo "  ✓ themes/"
    cp -r themes "${BUILD_DIR}/"
fi

# Lang
if [ -d "lang" ]; then
    echo "  ✓ lang/"
    cp -r lang "${BUILD_DIR}/"
fi

# Create empty cache directory (required by Encounter+)
mkdir -p "${BUILD_DIR}/cache"

# Validate critical files exist
echo -e "${YELLOW}→${NC} Validating required files..."

REQUIRED_FILES=(
    "manifest.json"
    "system.json"
    "entities.json"
    "types.json"
    "collections.json"
    "config.json"
)

MISSING_FILES=0
for file in "${REQUIRED_FILES[@]}"; do
    if [ ! -f "${BUILD_DIR}/${file}" ]; then
        echo -e "  ${RED}✗${NC} Missing: ${file}"
        MISSING_FILES=$((MISSING_FILES + 1))
    else
        echo -e "  ${GREEN}✓${NC} ${file}"
    fi
done

if [ $MISSING_FILES -gt 0 ]; then
    echo -e "${RED}ERROR: Missing ${MISSING_FILES} required file(s)!${NC}"
    rm -rf "${BUILD_DIR}"
    exit 1
fi

# Validate JSON files
echo -e "${YELLOW}→${NC} Validating JSON files..."

JSON_ERRORS=0
while IFS= read -r -d '' json_file; do
    relative_path="${json_file#${BUILD_DIR}/}"
    if python3 -m json.tool "$json_file" > /dev/null 2>&1; then
        echo -e "  ${GREEN}✓${NC} ${relative_path}"
    else
        echo -e "  ${RED}✗${NC} Invalid JSON: ${relative_path}"
        JSON_ERRORS=$((JSON_ERRORS + 1))
    fi
done < <(find "${BUILD_DIR}" -name "*.json" -type f -print0)

if [ $JSON_ERRORS -gt 0 ]; then
    echo -e "${RED}ERROR: ${JSON_ERRORS} JSON file(s) have errors!${NC}"
    rm -rf "${BUILD_DIR}"
    exit 1
fi

# Count files
FILE_COUNT=$(find "${BUILD_DIR}" -type f | wc -l | tr -d ' ')
echo -e "${BLUE}→${NC} Total files: ${FILE_COUNT}"

# Create the .system file (which is just a zip)
echo -e "${YELLOW}→${NC} Creating .system file..."

# Get the absolute path to releases directory
RELEASES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/releases"
OUTPUT_PATH="${RELEASES_DIR}/${OUTPUT_NAME}"

cd "${BUILD_DIR}"
zip -r -q "${OUTPUT_PATH}" . -x "*.DS_Store" -x "__MACOSX/*" -x ".git/*"
cd - > /dev/null

# Get file size
FILE_SIZE=$(du -h "${OUTPUT_PATH}" | cut -f1)

# Clean up
echo -e "${YELLOW}→${NC} Cleaning up temporary files..."
rm -rf "${BUILD_DIR}"

# Success!
echo ""
echo -e "${GREEN}╔════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║          BUILD SUCCESSFUL!             ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════╝${NC}"
echo ""
echo -e "${BLUE}Output:${NC}     releases/${OUTPUT_NAME}"
echo -e "${BLUE}Size:${NC}       ${FILE_SIZE}"
echo -e "${BLUE}Files:${NC}      ${FILE_COUNT}"
echo -e "${BLUE}Version:${NC}    ${VERSION}"
echo ""
echo -e "${YELLOW}Next steps:${NC}"
echo "  1. Import releases/${OUTPUT_NAME} into Encounter+"
echo "  2. Test character creation and sheets"
echo "  3. Test monster stat blocks"
echo ""
echo -e "${GREEN}✓ Ready for testing!${NC}"
echo ""
