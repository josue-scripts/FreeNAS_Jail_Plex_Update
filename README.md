# FreeNAS_Jail_Plex_Update
This script updates the plex media server installed manually on a FreeNas Jail.

It does this by stopping the Plex Media Server
Checking the repositories for updates
Updating Package when available
Starting the Plex Service again.

Credit to tutorial:
https://forums.freenas.org/index.php?threads/tutorial-how-to-install-plex-in-a-freenas-9-10-jail.19412/

NOTE: This script is kinda dumb, it won't know if it fails and it will ask you if you are sure you want to update. Recommend to run the script under supervision.


HOW TO USE:
You need to do steps 1-5 only the first time.
Do step 6 only when you want to update.

1. Click on the Jails button on top of freenas main website.

2. Click on the Jail that has your Plex Media Service installed.

3. Click The Shell icon on the bottom of the Jails listing. [C:/>]

4. Type

fetch -o plex_update.sh https://raw.githubusercontent.com/josue-scripts/FreeNAS_Jail_Plex_Update/master/plex_update.sh

5. allow the script to be run by giving it executable permissions:

chmod 755 plex_update.sh

6. Run the script everytime you want to update by typing:

./plex_update.sh
