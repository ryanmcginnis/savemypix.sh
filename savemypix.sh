# savemypix.sh
# Copies a corrupted iPhoto Library's contents to an external disk.
# Ryan McGinnis (rmcginnis@apple.com)
# Apple Store San Francisco (R075)

bt=$(date "+%m_%d_%Y")
pext='.photoslibrary'

if [ $# -eq 0 ]; then
	des=$(df -lh | awk '{print $9}' | tail -n 1)
	src=("$HOME/Pictures/Photos Library"$pext"/Masters/")
	if [ ! -f "$HOME/Pictures/Photos Library.photoslibrary" ]; then
		mkdir $des/PhotosBackup$bt
		rsync -aPv "$src" "$des/PhotosBackup$bt/"
	elif [ ! -f "$HOME/Pictures/iPhoto Library.iphotolibrary" ]; then
		mkdir $des/iPhotoBackup$bt
		rsync -aPv "$src" "$des/iPhotoBackup$bt/"
	else
		echo "No Photos or iPhoto Library, or its filename is not default."
		exit
	fi
else	
	mkdir $2/PhotosBackup$bt
	rsync -aPv $1/ $2/PhotosBackup$bt/
fi
