FILES="/usr/share/applications/*"
LINKDEDIR=$HOME/Applications
for f in $FILES
do
if [[ $f == *.desktop ]]; then
  echo "Processing $f file..."
  ln -s $f "$LINKDEDIR"
fi
  # take action on each file. $f store current file name
#   cat "$f"
done
FILESFLAT="/var/lib/flatpak/exports/share/applications/*"
for f in $FILESFLAT
do
  if [[ $f == *.desktop ]]; then
  echo "Processing $f file..."
  ln -s $f "$LINKDEDIR"
fi
  # take action on each file. $f store current file name
#   cat "$f"
done