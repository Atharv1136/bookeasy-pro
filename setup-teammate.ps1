#!/usr/bin/env pwsh
# =============================================================================
# 🚀 Appointly Hackathon - Team Push Setup Script
# =============================================================================
# This script automates the setup for each teammate
# Run this AFTER cloning the repository
# =============================================================================

Write-Host "================================" -ForegroundColor Cyan
Write-Host "🚀 Appointly Team Setup Script" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Get user input
Write-Host "Please provide your information:" -ForegroundColor Yellow
$teammateName = Read-Host "👤 Your Full Name"
$email = Read-Host "📧 Your Email"
$section = Read-Host "📁 Your Section (frontend/backend/config)"

# Validate input
if ([string]::IsNullOrWhiteSpace($teammateName) -or [string]::IsNullOrWhiteSpace($email)) {
    Write-Host "❌ Name and email are required!" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Configuration:" -ForegroundColor Cyan
Write-Host "  Name: $teammateName"
Write-Host "  Email: $email"
Write-Host "  Section: $section"
Write-Host ""

# Step 2: Configure Git
Write-Host "⚙️  Configuring Git..." -ForegroundColor Yellow
git config user.name "$teammateName"
git config user.email "$email"

# Verify configuration
$configName = git config user.name
$configEmail = git config user.email

if ($configName -eq $teammateName -and $configEmail -eq $email) {
    Write-Host "✅ Git configured successfully!" -ForegroundColor Green
} else {
    Write-Host "❌ Git configuration failed!" -ForegroundColor Red
    exit 1
}

Write-Host ""

# Step 3: Create branch
Write-Host "🌿 Creating feature branch..." -ForegroundColor Yellow
$branchName = "feature/$($teammateName.ToLower() -replace ' ', '-')-$section"
Write-Host "   Branch name: $branchName" -ForegroundColor Cyan

git checkout -b $branchName

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ Branch created successfully!" -ForegroundColor Green
} else {
    Write-Host "❌ Branch creation failed!" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "================================" -ForegroundColor Green
Write-Host "✅ Setup Complete!" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green
Write-Host ""
Write-Host "📋 Next Steps:" -ForegroundColor Yellow
Write-Host "  1. Copy your assigned files into this folder"
Write-Host "  2. Run: git add ."
Write-Host "  3. Run: git commit -m \"feat: Add [your section] files\""
Write-Host "  4. Run: git push -u origin $branchName"
Write-Host "  5. Go to GitHub and create a Pull Request"
Write-Host ""
Write-Host "📂 Remember to copy ONLY your assigned files:" -ForegroundColor Cyan
Write-Host "   Frontend: src/components/, src/routes/, vite.config.ts"
Write-Host "   Backend:  src/server/, src/lib/ (auth), wrangler.jsonc"
Write-Host "   Config:   package.json, tsconfig.json, public/, README.md"
Write-Host ""
