#!/bin/bash
# ------------------------------------------------------------------
#   Author [Kevin Fowlks] 
#  
#   Date 10/06/2016
#
#   Plex DVR Handbrake convert script for shrinking my recordings from my HDHomeRun CableCard.
#
#   Usage: ./convert.sh <input file>

NOW=$(date +"%m%d%Y")
PGMNAME=/usr/bin/HandBrakeCLI
check_errs()
{
    # Function. Parameter 1 is the return code
      # Para. 2 is text to display on failure.
        if [ "${1}" -ne "0" ]; then
          echo "ERROR # ${1} : ${2}"
          # as a bonus, make our script exit with the right error code.
          exit ${1}
        fi
}

BASEPATH=$(dirname "$1")
BASEFILE=$(basename "$1")
FILENAME="${BASEFILE%%.*}"

echo "Starting $NOW"
$PGMNAME -i "$1" -o "$BASEPATH/$FILENAME.mp4" -e x264 -q22 -B 64 -O -X 720 –preset="Normal"
check_errs $? "Failed to convert file $1"

echo "Removing original file."
rm -f "$1"
check_errs $? "Failed to remove original file $1"

echo "Renaming new video to old name"
mv "$BASEPATH/$FILENAME.mp4" "$1"
check_errs $? "Failed to rename new file to original file name $1"
