Monitor IIS7 App Pool
=====================
See http://uptimesoftware.github.io for more information.

### Tags 
 plugin     

### Category

plugin

### Version Compatibility


  
* IIS7 App Pool Status 1.1 - 7.2
* IIS7 App Pool Status 1.0 - 7.1 , 7.0 
  


### Description
This monitor allows you to check the status of IIS7 App Pools via an agent side VBS script.


### Supported Monitoring Stations

7.2, 7.1, 7.0, 6.0, 5.5, 5.4, 5.3, 5.2

### Supported Agents
Windows

### Installation Notes
<p><a href="https://github.com/uptimesoftware/uptime-plugin-manager">Install using the up.time Plugin Manager</a></p>

<p>For the agent files, follow the instructions below:</p>

<p>Agent Installation</p>

Since this mod requires an agent component you will need to do the following on each server that you want to trigger a remote script.

Windows IIS 7 Server:
1. Place the VBS script on the IIS 7 server in the following directory:
C:\Program Files\uptime software\up.time agent\scripts\iis7_app_pool_status-agentscript.vbs

2. Open the up.time Agent Console (Start > up.time Agent).

3. Set a Password for the agent and click on the Save button (restart the agent for the change to take effect). It should only take about a second for the agent to restart and there should be no outage during this period.

4. Click on Advanced > Custom Scripts.

Command: iis7_app_pool_status
Script: cscript //nologo "C:\Program Files\uptime software\up.time agent\scripts\iis7_app_pool_status-agentscript.vbs"

5. After adding the custom script(s) to the list, click on the Close button and it will ask to restart the agent, click Yes. Changes only go into effect once the agent is restarted.

Repeat the steps on each IIS 7 server in your environment.

This plugin requires that the "IIS management scripts and tools" role service for the IIS role be installed.


### Dependencies
<p>n/a</p>


### Input Variables

* Agent Port

* Agent Password

* App Pool Name


### Output Variables

* App pool status message (running, stopped etc)

* Response time



### Languages Used

* Shell/Batch

* VBS

* PHP