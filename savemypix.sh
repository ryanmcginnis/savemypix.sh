# savemypix.sh
# Copies a corrupted iPhoto Library's contents to an external disk.

bt=$(date "+%m_%d_%Y")
pext=".photoslibrary"

if [ $# -eq 0 ]; then # if no paths are passed, use defaults
	des=$(df -lh | awk "{print $9}" | tail -n 1)
	src=("$HOME/Pictures/Photos Library"$pext"/Masters/") # default path
	if [ -e "$src" ]; then # checks if file exists
		mkdir $des/PhotosBackup$bt
		rsync -aPv "$src" "$des/PhotosBackup$bt/"
	else
		echo "No Photos Library, or its filename is not default."
		exit
	fi
else # provide paths at command-line
	mkdir $2/PhotosBackup$bt
	rsync -aPv $1/ $2/PhotosBackup$bt/
fi
