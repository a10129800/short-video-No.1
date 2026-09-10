# 🏀《第二十一號的黎明》圖片資源自動打包同步腳本 (PowerShell 版本)
$sourceDir = "C:\Users\mice\.gemini\antigravity-ide\brain\31cbc75a-02b7-4f31-bc83-3cd94bdcf6a4"
$destDir = Join-Path $PSScriptRoot "images"

Write-Host "===================================================" -ForegroundColor Cyan
Write-Host "🏀 正在將分鏡與角色圖片打包至專案 images/ 目錄..." -ForegroundColor Yellow
Write-Host "===================================================" -ForegroundColor Cyan

if (-not (Test-Path $destDir)) {
    New-Item -ItemType Directory -Force -Path $destDir | Out-Null
    Write-Host "📁 已建立 images/ 目錄" -ForegroundColor Green
}

if (Test-Path $sourceDir) {
    Copy-Item "$sourceDir\*.jpg" -Destination "$destDir\" -Force
    $copiedCount = (Get-ChildItem "$destDir\*.jpg").Count
    Write-Host "✅ 複製成功！共複製了 $copiedCount 張高畫質圖片至 $destDir" -ForegroundColor Green
    Write-Host ""
    Write-Host "📌 請在終端機執行以下指令推送到 GitHub：" -ForegroundColor Yellow
    Write-Host "   git add images/ index.html character_gallery.html storyboard_images/" -ForegroundColor White
    Write-Host "   git commit -m 'fix: package images into project repo'" -ForegroundColor White
    Write-Host "   git push" -ForegroundColor White
} else {
    Write-Host "❌ 找不到來源目錄: $sourceDir" -ForegroundColor Red
}
