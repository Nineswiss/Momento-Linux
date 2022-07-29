# find ~/Applications -iname *$1* -exec grep "Icon" {} \;
# echo "$( find /var/lib/flatpak/exports/share/icons/hicolor /usr/share/pixmaps/  /usr/share/icons/hicolor/  \( -iname "*qtcreator*"  -iname "*qtproject*" \) )"
# LIST="-iname *google* -iname *chrome*"

# echo "$( find /var/lib/flatpak/exports/share/icons/hicolor /usr/share/pixmaps/  /usr/share/icons/hicolor/  \( $1 \) )"

icons=$( find ~/Applications \( $1 \) -exec grep "Icon" {} \; )
# exec=$( find ~/Applications \( $1 \) -exec grep "Exec" {} \; )
echo $icons
# echo $exec