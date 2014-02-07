@echo off
setlocal

set current_folder=%cd%
set home_folder=%userprofile%
set vim_folder=%programfiles(x86)%\Vim

echo Creating symbolic links...

:: Vim
call :makeFolderSymlink "%vim_folder%\vimfiles" "%current_folder%\vim"
call :makeFileSymlink "%vim_folder%\linux-vimrc" "%current_folder%\vimrc"
call :makeFileSymlink "%vim_folder%\linux-gvimrc" "%current_folder%\gvimrc"

:: Other
call :makeFileSymlink "%home_folder%\.bashrc" "%current_folder%\bashrc"

echo Done!

endlocal
goto :EOF


:: FUNCTIONS

:makeFileSymlink
del "%~1"
mklink "%~1" "%~2"
goto :EOF

:makeFolderSymlink
rmdir "%~1"
mklink /d "%~1" "%~2"
goto :EOF
