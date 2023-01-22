#! /usr/bin/bash
# enables bluetooth to be used
sudo systemctl enable bluetooth
# starts the service from systemctl
sudo systemctl start bluetooth

# reads out the status of the service in this case bluetooth
sudo systemctl status bluetooth