::���ü���,��ʱ����  ---by lovefc
@echo off
:operas
echo ���ٲ��� 1:��������� 2:�򿪼��±� 3:�򿪷��� 4:������� 5:Զ������ 6:�������� 88:�ػ� 
set /p opera= 
if not defined opera (
echo ���ݲ���Ϊ��
)
if "%opera%"=="1"  (
start "" "C:\Windows\System32\taskmgr.exe"
call:operas
)
if "%opera%"=="2"  (
start "" "C:\Windows\System32\notepad.exe"
call:operas
)
if "%opera%"=="3"  (
start "" "C:\Windows\System32\services.msc"
call:operas
)
if "%opera%"=="4"  (
start "" "C:\Windows\System32\control.exe"
call:operas
)
if "%opera%"=="5"  (
mstsc
call:operas
)
if "%opera%"=="6"  (
Cleanmgr
call:operas
)

if "%opera%"=="88"  (
echo ���ⰴ���� 3��֮��͹ػ�������
pause
shutdown -s -t 3
)
GOTO:EOF 