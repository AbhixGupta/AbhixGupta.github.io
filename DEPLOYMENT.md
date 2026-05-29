# GitHub Pages Deployment Guide

Follow these steps to deploy your portfolio to GitHub Pages:

## Step 1: Customize Your Information

**IMPORTANT:** Before deploying, you MUST update your contact information!

See `CUSTOMIZATION_CHECKLIST.md` for detailed instructions.

Quick updates needed in `index.html`:
1. **Email**: Replace `your.email@example.com` with your actual email
2. **LinkedIn**: Replace `https://linkedin.com/in/yourprofile` with your LinkedIn URL
3. **GitHub**: Replace `https://github.com/yourusername` with your GitHub profile URL

## Step 2: Create GitHub Repository

1. Go to [GitHub](https://github.com) and log in
2. Click the "+" icon in the top right → "New repository"
3. Name your repository (e.g., `mywebsite` or `portfolio`)
4. Keep it **Public** (required for free GitHub Pages)
5. Do NOT initialize with README, .gitignore, or license
6. Click "Create repository"

## Step 3: Push Your Code to GitHub

Run these commands in your terminal (replace `yourusername` and `mywebsite` with your actual GitHub username and repository name):

```bash
# Add all files to git
git add .

# Create your first commit
git commit -m "Initial commit: Portfolio website"

# Add your GitHub repository as remote
git remote add origin https://github.com/yourusername/mywebsite.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Step 4: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click "Settings" tab
3. Scroll down to "Pages" in the left sidebar
4. Under "Source", select:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click "Save"

## Step 5: Access Your Website

After a few minutes, your site will be live at:
```
https://yourusername.github.io/mywebsite
```

GitHub will show you the exact URL in the Pages settings.

## Updating Your Website

Whenever you make changes:

```bash
git add .
git commit -m "Update portfolio"
git push
```

Your site will automatically update within a few minutes.

## Custom Domain (Optional)

If you want to use a custom domain like `yourname.com`:

1. Buy a domain from a registrar (Namecheap, GoDaddy, etc.)
2. In GitHub Pages settings, add your custom domain
3. Update your domain's DNS settings to point to GitHub Pages
4. Full instructions: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site

## Troubleshooting

- **Site not loading?** Wait 5-10 minutes after enabling Pages
- **404 error?** Make sure your file is named `index.html` (lowercase)
- **Changes not showing?** Clear your browser cache or use incognito mode
- **Images not loading?** Make sure all paths are relative, not absolute

## Support

For issues with GitHub Pages deployment, visit:
https://docs.github.com/en/pages
