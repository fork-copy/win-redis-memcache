::��ʵ����ű��Ҳ���ȷ���������ǵĻ�������������  ---by lovefc
@echo off 
echo ���ϵͳ��������
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "c:\windows\system32\cmd.exe" /d "RUNASADMIN" /f
call:win_is_64
if "%BITS%"=="true"  (
echo win-64
set memcahe_dir=%~dp0x64
) else (
echo win-32
set memcahe_dir=%~dp0x86
)
echo �Ƿ�����memcache��
pause
start "" "%memcahe_dir%\memcached.exe" -d install
echo memcached��װ�ɹ�!�Ƿ�������
pause
start "" "%memcahe_dir%\memcached.exe" -d start
echo memcached�����ɹ���
call:operas %memcahe_dir%

:win_is_64
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
  set BITS=true
) else (
  set BITS=false
)
GOTO:EOF 

:operas
echo ����������ѡ��Ĳ��� 1:���� 2:�ر� 3:ж��
set /p opera= 
if not defined opera (
echo ���ݲ���Ϊ��
)
if "%opera%"=="1"  (
%~1\memcached.exe -d stop
start "" "%~1\memcached.exe" -d start
echo memcached�����ɹ���
call:operas %~1
)
if "%opera%"=="2"  (
taskkill /im "memcached.exe" /f
echo memcached�Ѿ��رգ�
call:operas %~1
)
if "%opera%"=="3"  (
%~1\memcached.exe -d stop
%~1\memcached.exe -d uninstall
echo ע��鿴���ط���
pause
)
GOTO:EOF 