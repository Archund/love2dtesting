echo off
title srLua Compile
run glue.exe srlua.exe main.lua main.exe
run main.exe
pause
EXIT