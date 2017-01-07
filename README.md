# savemypix.sh

This script uses rsync to automatically move files from a corrupted Photos Library to an external disk. Written under macOS and tested for Sierra.

It assumes that you only have one external disk mounted, and that your Photos Library is in the default location. You can also pass in a .photoslibrary and a desired path at the command line.

# Use Case

If a Photos Library becomes corrupted and cannot be repaired by Photos, unless the Library is backed up, the data is not easily recoverable.

# Instructions

1. Download savemypix.sh
2. Open Terminal
3. Run the script using `sh ~/path/to/script/savemypix.sh` or `sh ~/path/to/script/savemypix.sh ~/path/to/library.photoslibrary ~/Volumes/externaldiskpath`
