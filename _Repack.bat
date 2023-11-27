@if "%~1"=="" goto skip

@setlocal enableextensions
@pushd %~dp0
@echo "%~1\*.*" "..\..\..\Icarus\Content\*.*" > autogen.txt
".\UnrealPak\Engine\Binaries\Win64\UnrealPak.exe" "%~1 _P.pak" -platform="Windows" -create="%CD%\autogen.txt"
@popd
@pause

:skip