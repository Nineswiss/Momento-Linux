FILES="/usr/share/applications/*"
LINKDEDIR=$HOME/Applications
for f in $FILES
do
  echo "Processing $f file..."
  ln -s $f "$LINKDEDIR"
done
FILESSNAP="/var/lib/snapd/desktop/applications/*"
for f in $FILESSNAP
do
  ln -s $f "$LINKDEDIR"
done