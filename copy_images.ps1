# 🏀《第二十一號的黎明》圖片資源自動打包同步腳本 (PowerShell 版本)
$sourceDirs = @(
    "C:\Users\mice\.gemini\antigravity-ide\brain\31cbc75a-02b7-4f31-bc83-3cd94bdcf6a4",
    "C:\Users\mice\.gemini\antigravity-ide\brain\1fa8dac3-3925-41f6-9ff3-e81e69d9b651"
)
$destDir = Join-Path $PSScriptRoot "images"

Write-Host "===================================================" -ForegroundColor Cyan
Write-Host "🏀 正在將分鏡與角色圖片打包至專案 images/ 目錄..." -ForegroundColor Yellow
Write-Host "===================================================" -ForegroundColor Cyan

if (-not (Test-Path $destDir)) {
    New-Item -ItemType Directory -Force -Path $destDir | Out-Null
    Write-Host "📁 已建立 images/ 目錄" -ForegroundColor Green
}

foreach ($sDir in $sourceDirs) {
    if (Test-Path $sDir) {
        Copy-Item "$sDir\*.jpg" -Destination "$destDir\" -Force
        Write-Host "✅ 已從 $sDir 同步圖檔" -ForegroundColor Green
    }
}

# 確保 Shot 07 標準化命名
if (Test-Path "$destDir\shot_seven_sunrise_1789096475391.jpg") {
    Copy-Item "$destDir\shot_seven_sunrise_1789096475391.jpg" "$destDir\story_shot_07_1789096475391.jpg" -Force
    Write-Host "✅ 已將 Shot 07 命名為 story_shot_07_1789096475391.jpg" -ForegroundColor Green
}

$copiedCount = (Get-ChildItem "$destDir\*.jpg").Count
Write-Host "🎉 同步完成！目前 images/ 內共有 $copiedCount 張高畫質圖片" -ForegroundColor Cyan
Write-Host ""
Write-Host "📌 請在終端機執行以下指令推送到 GitHub：" -ForegroundColor Yellow
Write-Host "   git add images/ index.html character_gallery.html storyboard_images/ shot_07_preview.html" -ForegroundColor White
Write-Host "   git commit -m 'feat: add Shot 07 anime storyboard artwork'" -ForegroundColor White
Write-Host "   git push" -ForegroundColor White

