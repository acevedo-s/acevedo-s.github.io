# GitHub Profile Website

This folder contains a simple personal website starter for GitHub Pages.

## Files

- `index.html`: main page content
- `styles.css`: site styles
- `script.js`: small front-end interactions
- `customize.sh`: fills in your personal details
- `publish.sh`: initializes git and pushes the site to GitHub Pages

## Quick start

1. Edit the placeholders directly in `index.html`, or run `customize.sh`.
2. Preview the site by opening `index.html` in a browser.
3. Create a GitHub repository named `YOUR-USERNAME.github.io`.
4. Run `publish.sh YOUR-USERNAME`.

## Example

```bash
./customize.sh "Your Name" "Frontend Developer" "I build fast, clear web products." "your@email.com" "https://github.com/your-username" "https://www.linkedin.com/in/your-handle"
./publish.sh your-username
```

## Notes

- `publish.sh` creates a local git repository if one does not exist.
- The remote URL uses SSH: `git@github.com:USERNAME/USERNAME.github.io.git`
- If you prefer HTTPS, edit the script before running it.
