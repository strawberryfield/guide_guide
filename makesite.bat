@echo off

REM script for building website to host on github

set builddir=_build
set site=docs
set downloads=%site%\bin

call make.bat clean
call make.bat html
xcopy %builddir%\html %site%  /S /Y 

call make.bat latexpdf
copy /Y %builddir%\latex\*.pdf %downloads%

call make.bat epub
copy /Y %builddir%\epub\*.epub %downloads%

git add .
git commit -m "Aggiornamento automatico sito"
git push guide_guide master