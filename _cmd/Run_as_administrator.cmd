@echo off
TITLE Making WebDevelopment Easy - VenomVendor

SET currentdir=%~dp0

@echo copying "index.html"
xcopy "%currentdir%..\index.html" "%Systemroot%\ShellNew" /Y >nul
move "%Systemroot%\ShellNew\index.html" "%Systemroot%\ShellNew\html.html" >nul
@echo copying "style.css"
xcopy "%currentdir%..\css\style.css" "%Systemroot%\ShellNew" /Y >nul
move "%Systemroot%\ShellNew\style.css" "%Systemroot%\ShellNew\css.css" >nul
@echo copying "custom.js"
xcopy "%currentdir%..\js\custom.js" "%Systemroot%\ShellNew" /Y >nul
move "%Systemroot%\ShellNew\custom.js" "%Systemroot%\ShellNew\js.js" >nul
cd %currentdir%
@echo Updating Registry...
@echo Press any Key ^& Press "Yes" in the dailog.
pause

insert.reg

@echo on
pause