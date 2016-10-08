# Plex scripts for Linux

This repository contains some basic bash/python scripts to may my life easier when working with Plex / Plex DVR.

This current script performs the below tasks.

+ Trascodes the output from a saved HDHomeRun PRIME to xh264 post record
+ Removes the original file once file has been compressed
+ Output new MP4 version in same location as the original file

###Reference

The script requires only one parameter mkv file.

convert.sh [file path to ]

###Requires

* Ubuntu 16.04 x64
* HandBrakeCLI
* BASH
* Plex DVR

### Version
0.0.1

### Usage

Step - 1
Copy the script to know location e.g. /media/scripts

Step - 2
```bash

sudo add-apt-repository  ppa:stebbins/handbrake-releases
sudo apt-get update
sudo apt-get install handbrake-cli

echo "Edit the script to change the path of HandBrakeCLI"

chmod +755 /media/scripts/convert.sh

Update Plex
```
Step - 3
![Alt text](/Plex-DVR-Setup.png?raw=true "Plex DVR Setup")
