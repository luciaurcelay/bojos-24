#!/usr/bin/expect -f

# sudo apt install expect
# Define the source folder and the destination server
set SOURCE_FOLDER "bojos-ai/"
set DESTINATION_SERVER "dt01.bsc.es"

# Loop over the user numbers from 041 to 066
for {set i 41} {$i <= 66} {incr i} {
# Define the username and the destination path
    set PASSWORD [format %03d $i]
    set USERNAME [format "%03d" $i]
    set DESTINATION_PATH "${USERNAME}@${DESTINATION_SERVER}:/home/${USERNAME}/bojos-ai/"

    # Send the folder using SCP
    spawn rsync -av --exclude ".git" --exclude ".ipynb_checkpoints" --exclude "copy_to_mn.sh" --delete $SOURCE_FOLDER $DESTINATION_PATH
    expect "password:"
    send "${PASSWORD}\r"
    expect eof
}