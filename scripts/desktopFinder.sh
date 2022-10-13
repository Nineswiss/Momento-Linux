snap=$( awk "/X-SnapInstanceName=/" $1 )
flat=$( awk "/X-Flatpak=/" $1 )
if [ "$snap" != "" ]; then
ogexe=$(echo $snap | awk -F= '{print $2}' )
exec="/snap/bin/"$ogexe
elif [ "$flat" != "" ]; then
ogexe=$(echo $flat | awk -F= '{print $2}' )
exec="/flatpak/"$ogexe
else
ogexe=$( awk "/Exec/ && !/TryExec/" $1 | head -n 1 )
exec=$(echo $ogexe | awk -F= '{print $2}' )
fi
echo $exec