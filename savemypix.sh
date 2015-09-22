# savemypix.sh
# Copies a corrupted iPhoto Library's contents to an external disk.
# Ryan McGinnis (rmcginnis@*****.com)

des=$(df | grep '/Volumes/' | cut -c 82-100) # if only one external disk is mounted, only one disk will be displayed in df
src=("$HOME/Pictures/iPhoto Library"*"/Masters/") # sometimes the package may be named .photolibrary or .migratedphotolibrary
bt=$(date "+%m_%d_%Y") # date of backup
mkdir $des/iPhotoBackup$bt # make a directory for the backup on the external disk 
sudo rsync -aPv "$src" "$des/iPhotoBackup$bt/"
