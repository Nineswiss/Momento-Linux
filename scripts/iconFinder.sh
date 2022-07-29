Folders="/var/lib/flatpak/exports/share/icons/hicolor/96x96/ 
/var/lib/flatpak/exports/share/icons/hicolor/128x128/ 
/var/lib/flatpak/exports/share/icons/hicolor/64x64/ 
/var/lib/flatpak/exports/share/icons/hicolor/72x72/ 
/usr/share/icons/hicolor/scalable/apps/
/usr/share/icons/hicolor/96x96/ 
/usr/share/icons/hicolor/128x128/ 
/usr/share/icons/hicolor/64x64/ 
/usr/share/icons/hicolor/72x72/ 
/usr/share/pixmaps/"
echo "$( find $Folders \( $1 \) )" 