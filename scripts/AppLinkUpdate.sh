FILES="/usr/share/applications/*"
LINKDEDIR=$HOME/Applications
for f in $FILES
do
  echo "Processing $f file..."
  ln -s $f "$LINKDEDIR"
  # take action on each file. $f store current file name
#   cat "$f"
done
FILESSNAP="/var/lib/flatpak/exports/share/applications/*"
for f in $FILESSNAP
do
  echo "Processing $f file..."
  ln -s $f "$LINKDEDIR"
  # take action on each file. $f store current file name
#   cat "$f"
done