::��ʵ��Ҳ��֪��ΪʲôҪע�ͣ������Ϊ���鲻�ã�--by lovefc
::����win10 2018-07-14 ����һ�������н���
@echo off  
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "c:\windows\system32\cmd.exe" /d "RUNASADMIN" /f
echo ����redis,��������������� 
pause
set My_PATH=%~dp0Redis3.2.100
start "" "%My_PATH%\redis-server.exe" %My_PATH%\redis.windows.conf
start %My_PATH%\redis-cli.exe

