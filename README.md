# bitcoin-tools

logAlerts.sh is a tool for alerting you via Telegram's incoming notification bot whenever you've stacked sats via joinmarket.

Assumptions
-----------

You've already stacked sats at least once under your current joinmarket username<br>
You've already communicated with the Telegram incoming notification bot (@incomingnotificationbot) and you know the key you need to use to push notifications to Telegram<br>
You're already familiar with tmux and know how to create a background session using it<br>

Procedure
---------

Step 1. Download logAlerts.sh and add it to the /scripts/ directory of joinmarket<br>
Step 2. Edit the file to replace the phrase "yourLogFile" with the name of your current log file. To find this name, open your terminal, enter the /scripts/log/ directory of joinmarket, and enter the command "ls -la." Your current log file should begin with J5 and have today's date next to it<br>
Step 3. Also replace the phrase "yourKey" with the key you received from the notification bot. Save and exit your editor<br>
Step 4. In the /scripts/ directory of joinmarket, enter the command "chmod a+x ./logAlerts.sh" (without quotes) into your terminal to make the file executable<br>
Step 5. Create a file "lastline.txt" in the /scripts/ directory of joinmarket. The app uses this to log the most recent time it told you you stacked sats so that it doesn't alert you of the same thing again when it loops.<br>
Step 6. Create a new session with tmux and name it something like "joinmarketAlert"<br>
Step 7. In tmux session, move into the /scripts/ directory of joinmarket and enter the command "./logAlerts.sh" (without quotes) to execute the file<br>

Be Aware
--------

The script will begin by notifying you of the most recent time you've stacked sats.<br>

It will loop every 10 minutes to check if you've stacked any more. If you have, it will notify you again. Otherwise, it waits ten minutes, then runs again.<br>

If you stop and restart Joinmarket, it will create a new log file for you with your new username. You'll need to edit the logAlerts.sh file and replace the old log file name with the new log file name or logAlerts.sh will no longer work.<br>

Notifications from logAlerts.sh look like this: "2019-01-01 12:15:00,156 [MainThread  ] [INFO ]  potentially earned = 159<br>

The number 159 is how many sats you stacked. The phrase "potentially earned" means joinmarket has not yet seen the transaction get broadcasted or confirmed, it only means you signed a coinjoin transaction that pays you that amount of sats and are now waiting for your counterparty to get the other signatures and broadcast the transaction. It is still possible for your counterparty to cancel the transaction, so you might not earn those sats.
