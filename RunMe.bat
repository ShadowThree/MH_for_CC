:: 注释，必须顶格写
:: /s 表示在当前目录和所有子目录中搜索匹配的文件

:: 关闭回显
@echo off       
del MH.png
del /f /s /q .\pictures\1*
del /f /s /q .\pictures\2*
del /f /s /q .\pictures\3*
del /f /s /q .\pictures\4*
del /f /s /q .\pictures\5*
del /f /s /q .\pictures\6*
del /f /s /q .\pictures\7*
del /f /s /q .\pictures\8*
del /f /s /q .\pictures\9*
del /f .\SourceCode\a.exe

:: 清屏
cls
echo 请选择：
echo         1. 清理上次运行产生的图片
echo         2. 清理上次图片并产生新图片
:: 产生一个空行
echo.
:: 产生不换行的输出 
set /p="你的选择是："<nul      

:: 获取用户输入
set /p answer=                  

:: 产生一个空行
echo.

if "%answer%"=="1" (
exit
)

if "%answer%"=="2" (
cd .\SourceCode
gcc -Wall -o a.exe rename.c
.\a.exe
.\xm.py
)

exit
