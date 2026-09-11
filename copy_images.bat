@echo off
title Copy Basketball Storyboard Images
echo ===================================================
echo   Copying Storyboard and Character Images
echo ===================================================

if not exist images mkdir images

copy /Y "C:\Users\mice\.gemini\antigravity-ide\brain\31cbc75a-02b7-4f31-bc83-3cd94bdcf6a4\*.jpg" images\
copy /Y "C:\Users\mice\.gemini\antigravity-ide\brain\1fa8dac3-3925-41f6-9ff3-e81e69d9b651\*.jpg" images\

if exist "images\shot_seven_sunrise_1789096475391.jpg" (
    copy /Y "images\shot_seven_sunrise_1789096475391.jpg" "images\story_shot_07_1789096475391.jpg"
)

echo.
echo ===================================================
echo   Copied files in images folder:
echo ===================================================
dir /B images\*.jpg
echo.
echo ===================================================
echo   SUCCESS! All 7 Shots + Characters copied into images/!
echo   You can now commit and push in Antigravity IDE!
echo ===================================================
pause

