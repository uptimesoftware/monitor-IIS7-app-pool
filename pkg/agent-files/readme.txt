
Note: To find out what Application Pools there are on Windows Server 2008 follow the steps below:
- Open Server Manager
- Click on Roles > Web Server (IIS) > Internet Information Services (IIS) Manager
- Expand the server name
- Click on Application Pools



Agent Configuration
-----------------------
Since this mod requires an agent component you will need to do the following on each server that you want to trigger a remote script.

Windows IIS 7 Server:
1. Place the VBS script on the IIS 7 server in the following directory:
C:\uptime_scripts\iis7_app_pool_status-agentscript.vbs

2. Open the up.time Agent Console (Start > up.time Agent).

3. Set a Password for the agent and click on the Save button (restart the agent for the change to take effect). It should only take about a second for the agent to restart and there should be no outage during this period.

4. Click on Advanced > Custom Scripts.

Command: iis7_app_pool_status
Script: cscript //nologo "C:\uptime_scripts\my wmi script.vbs

5. After adding the custom script(s) to the list, click on the Close button and it will ask to restart the agent, click Yes. Changes only go into effect once the agent is restarted.

Repeat the steps on each IIS 7 server in your environment.