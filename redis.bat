::��ʵ��Ҳ��֪��ΪʲôҪע�ͣ������Ϊ���鲻�ã�--by lovefc
@echo off  
echo ����redis,��������������� 
pause
start "" "%~dp0Redis3.2.100\redis-server.exe" %~dp0Redis3.2.100\redis.windows.conf
::~dp0redis-cli.exe -h 127.0.0.1 -p 6379
