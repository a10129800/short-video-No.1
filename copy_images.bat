@echo off
title Copy Basketball Storyboard Images
echo ===================================================
echo   Copying Storyboard and Character Images
echo ===================================================

if not exist images mkdir images

copy /Y "C:\Users\mice\.gemini\antigravity-ide\brain\31cbc75a-02b7-4f31-bc83-3cd94bdcf6a4\*.jpg" images\

echo.
echo ===================================================
echo   Copied files in images folder:
echo ===================================================
dir /B images\*.jpg
echo.
echo ===================================================
echo   SUCCESS! All images copied into images/ folder.
echo   You can now commit and push in Antigravity IDE!
echo ===================================================
pause
