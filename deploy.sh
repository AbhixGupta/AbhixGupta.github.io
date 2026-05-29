#!/bin/bash

echo "🚀 Portfolio Deployment Script"
echo "================================"
echo ""

# Check if git is initialized
if [ ! -d .git ]; then
    echo "❌ Git repository not initialized!"
    echo "Run: git init"
    exit 1
fi

# Get GitHub repository URL from user
echo "📝 Please enter your GitHub repository URL:"
echo "Example: https://github.com/AbhixGupta/mywebsite.git"
read -p "Repository URL: " REPO_URL

if [ -z "$REPO_URL" ]; then
    echo "❌ Repository URL cannot be empty!"
    exit 1
fi

echo ""
echo "📦 Adding files to git..."
git add .

echo ""
echo "💾 Creating commit..."
git commit -m "Initial commit: Professional portfolio website

- Added portfolio with all certifications
- Tech stack showcase
- Services and expertise sections
- Contact information
- Fully responsive design
- Ready for GitHub Pages deployment"

echo ""
echo "🔗 Adding remote repository..."
git remote remove origin 2>/dev/null  # Remove if exists
git remote add origin "$REPO_URL"

echo ""
echo "📤 Pushing to GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ Deployment complete!"
echo ""
echo "📋 Next steps:"
echo "1. Go to: ${REPO_URL%.git}/settings/pages"
echo "2. Under 'Source', select branch: main"
echo "3. Click 'Save'"
echo "4. Wait 2-3 minutes for deployment"
echo ""
echo "🌐 Your site will be live at:"
REPO_NAME=$(basename "$REPO_URL" .git)
GITHUB_USER=$(echo "$REPO_URL" | sed -E 's|https://github.com/([^/]+)/.*|\1|')
echo "   https://${GITHUB_USER}.github.io/${REPO_NAME}"
echo ""
echo "🎉 Happy deploying!"
