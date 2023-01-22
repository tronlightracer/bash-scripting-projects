 #! usr/bin/bash

# stops the service from systemctl
sudo systemctl stop bluetooth
# disables bluetooth
sudo systemctl disable bluetooth

# reads out the status of the service in this case bluetooth
sudo systemctl status bluetooth


