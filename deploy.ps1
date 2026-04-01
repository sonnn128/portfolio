# 🚀 Deployment Script for Windows (PowerShell)
# Use this to build and deploy your portfolio manually to GitHub Pages.

Write-Host "Starting deployment to GitHub Pages..." -ForegroundColor Cyan

# Check if node_modules exists, install if missing
if (-not (Test-Path "node_modules")) {
    Write-Host "Installing dependencies..." -ForegroundColor Yellow
    npm install
}

# Run the deploy command from package.json
Write-Host "Building and deploying..." -ForegroundColor Yellow
npm run deploy

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Successfully deployed to GitHub Pages!" -ForegroundColor Green
} else {
    Write-Host "❌ Deployment failed. Please check the logs above." -ForegroundColor Red
}

Write-Host "Press any key to exit..."
$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
