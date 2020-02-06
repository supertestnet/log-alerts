# bitcoin-tools

logAlerts.sh is a tool for alerting you via Telegram's incoming notification bot whenever you've stacked sats via joinmarket.

Assumptions
-----------

You've already stacked sats at least once under your current joinmarket username<br>
You've already communicated with the Telegram incoming notification bot (@incomingnotificationbot) and you know the url you need to use to push notifications to Telegram<br>
You're already familiar with tmux and know how to create a background session using it<br>

Procedure
---------

Step 1. Download logAlerts.sh and add it to the /scripts/ directory of joinmarket<br>
Step 2. Edit the file to replace the phrase "yourLogFile" with the name of your current log file. To find this name, go into the /scripts/log/ directory of joinmarket, then using the command "ls -la." Your current log file should begin with J5 and have today's date next to it<br>
Step 3. Also replace the phrase "XXXXX" with YYYYYYY. Save and exit your editor<br>
Step 4. In the /scripts/ directory of joinmarket, enter the command "chmod a+x ./logAlerts.sh" (without quotes) into your terminal to make the file executable<br>
Step 5. In the /scripts/ directory of joinmarket, enter the command "./logAlerts.sh" (without quotes) to execute the file<br>
