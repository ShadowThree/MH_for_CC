:: ע�ͣ����붥��д
:: /s ��ʾ�ڵ�ǰĿ¼��������Ŀ¼������ƥ����ļ�

:: �رջ���
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

:: ����
cls
echo ��ѡ��
echo         1. �����ϴ����в�����ͼƬ
echo         2. �����ϴ�ͼƬ��������ͼƬ
:: ����һ������
echo.
:: ���������е���� 
set /p="���ѡ���ǣ�"<nul      

:: ��ȡ�û�����
set /p answer=                  

:: ����һ������
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
