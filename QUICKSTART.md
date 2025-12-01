# Quick Start Guide - BRM PILE Website

## View the Website Locally

### Option 1: Direct File Opening (Quick Preview)
1. Navigate to the `src` folder
2. Double-click `index.html` to open in your browser
3. **Note**: Some features may not work when opening files directly

### Option 2: Local Development Server (Recommended)
```bash
# Using Python 3 (most common)
python3 -m http.server 8001 --directory src

# Or using npm script
npm run dev
```

Then open your browser and go to: **http://localhost:8001**

## Build for Deployment

```bash
# Run the build script
./build.sh

# Or use npm
npm run build
```

The deployable files will be created in the `dist/` folder.

## Deploy to Web Server

1. Run the build: `./build.sh`
2. Upload everything from the `dist/` folder to your web server
3. Make sure the folder structure is preserved:
   ```
   your-server/
   ├── index.html
   ├── styles.css
   ├── script.js
   └── assets/
       └── (all images)
   ```

## Next Steps: Adding Web3Forms

To enable email functionality for the contact form:

1. Sign up at https://web3forms.com (free)
2. Get your access key
3. Edit `src/index.html` and find the contact form (`<form class="contact-form" id="contactForm">`)
4. Update it to:
```html
<form class="contact-form" id="contactForm" action="https://api.web3forms.com/submit" method="POST">
    <input type="hidden" name="access_key" value="YOUR_ACCESS_KEY_HERE">
    <!-- rest of form fields... -->
</form>
```
5. Update `src/script.js` to handle the Web3Forms response (or let it work with default behavior)
6. Rebuild: `./build.sh`
7. Redeploy

## Troubleshooting

**Images not showing?**
- Check that the `assets/` folder is in the same directory as `index.html`
- Verify all image files are present in `assets/`

**Navigation not scrolling smoothly?**
- Make sure JavaScript is enabled in your browser
- Check browser console for errors (F12 → Console)

**Mobile menu not working?**
- Clear browser cache
- Ensure `script.js` is loaded correctly

**Build script not working?**
- Make sure you have execute permissions: `chmod +x build.sh`
- Run from the project root directory

## File Structure Reference

```
BRM PILE/
├── src/                    ← Work here during development
│   ├── index.html         ← Main HTML file
│   ├── styles.css         ← All styling
│   └── script.js          ← Interactive features
├── assets/                ← Images (don't modify)
├── dist/                  ← Deploy this (auto-generated)
├── build.sh               ← Run this to build
├── README.md              ← Full documentation
└── QUICKSTART.md          ← You are here
```

## Need Help?

- Full documentation: See [README.md](README.md)
- Developer guidance: See [CLAUDE.md](CLAUDE.md)
- Design reference: See `assets/Design Website - BRM PILE.pdf`

---

**Ready to launch?** Run `./build.sh` and upload the `dist/` folder contents to your hosting!
