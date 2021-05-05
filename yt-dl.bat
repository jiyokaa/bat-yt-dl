@echo off
cls
:start
set /p youtube_url="Enter youtube URL: "

youtube-dl %youtube_url% -F

set /p video="Enter Video ID: "
set /p audio="Enter Audio ID: "

youtube-dl %youtube_url% -f %video%+%audio%

set choice=
set /p choice="Do you want to downl0ad anoter video? Press 'y' and enter for Yes: "
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='y' goto start