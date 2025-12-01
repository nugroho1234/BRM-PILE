#!/bin/bash

# BRM PILE Website Build Script
# This script prepares the website for deployment

echo "🏗️  Building BRM PILE Website..."
echo ""

# Clean dist directory
echo "🧹 Cleaning dist directory..."
rm -rf dist
mkdir -p dist

# Copy HTML files
echo "📄 Copying HTML files..."
cp src/index.html dist/

# Copy CSS files
echo "🎨 Copying CSS files..."
cp src/styles.css dist/

# Copy JavaScript files
echo "⚙️  Copying JavaScript files..."
cp src/script.js dist/

# Copy assets directory
echo "🖼️  Copying assets..."
cp -r assets dist/

# Create a simple server instruction file
cat > dist/README.txt << EOF
BRM PILE Website - Deployment Files
====================================

This folder contains all files needed to deploy the website.

Files included:
- index.html (main website file)
- styles.css (stylesheet)
- script.js (interactive features)
- assets/ (images and media)

To deploy:
1. Upload all files and folders to your web server
2. Ensure the folder structure is maintained
3. The website will be accessible via index.html

For local testing:
- Open index.html in a web browser, or
- Use a local server (e.g., python -m http.server 8000)

Generated: $(date)
EOF

echo ""
echo "✅ Build completed successfully!"
echo ""
echo "📦 Files are ready in the 'dist' directory"
echo "🌐 You can now deploy the contents of 'dist' to your web server"
echo ""

# Optional: List the contents
echo "📋 Build contents:"
ls -lh dist/
