# savemypix.sh
# Copies a corrupted iPhoto Library's contents to an external disk.
# Ryan McGinnis (rmcginnis@apple.com)
# Apple Store San Francisco (R075)

bt=$(date "+%m_%d_%Y")

if [ $# -eq 0 ]; then
	des=$(df -lh | awk '{print $9}' | tail -n 1)
	src=("$HOME/Pictures/iPhoto Library"*"/Masters/")
	mkdir $des/iPhotoBackup$bt
	sudo rsync -aPv "$src" "$des/iPhotoBackup$bt/"
else	
	mkdir $2/iPhotoBackup$bt
	sudo rsync -aPv $1/ $2/iPhotoBackup$bt/
fi
