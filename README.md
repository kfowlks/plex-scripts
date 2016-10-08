# Plex DVR scripts for Linux

This repository contains some basic bash/python scripts to may my life easier when working with Plex / Plex DVR. This script will transcode your videos outputted by HDHomeRun PRIME to xh264. 

The current script performs the below tasks.

+ Trascodes the output from a saved HDHomeRun PRIME to xh264 post record
+ Removes the original file once file has been compressed
+ Renames new file to original file name so Plex will copy it to the correct location.

###Reference

The script requires only one parameter mkv file.

convert.sh [file path to video file ]

###Requires

* Ubuntu 16.04 x64
* HandBrakeCLI
* BASH
* Plex DVR (Beta)

### Version
0.0.1

### Installation

Step - 1
Copy the script to a know location e.g. /media/scripts

Step - 2
```bash
sudo add-apt-repository  ppa:stebbins/handbrake-releases
sudo apt-get update
sudo apt-get install handbrake-cli
```
**EDIT** Update the script to reflect the path of HandBrakeCLI"

```bash
chmod +755 /media/scripts/convert.sh
```
Step - 3

Settings->Server-DVR (Beta)->Device Settings (DVR) 

Select "Transcodeing" under [CONVERT VIDEO WHILE RECORDING]

![Alt text](/Plex-DVR-Setup-Transcode.png?raw=true "Plex DVR Setup Transcode")

Step - 4

Setup Post Processing Script

Under DVR Settings->[POSTPROCESSING SCRIPT] - Set the script name to the full path location
![Alt text](/Plex-DVR-Setup.png?raw=true "Plex DVR Setup Script")
