inotifywait -m -r /usr/share/applications /var/lib/flatpak/exports/share/applications -e create -e moved_to -e delete|
    while read dir action file; do
        echo $action
        FILEPATH="$dir$file"
        LINKDEDIR=$HOME/Applications
        if  [ "$action" == "CREATE" ]; then
            ln -s $FILEPATH "$LINKDEDIR/$file"
        elif  [ "$action" == "MOVED_TO" ]; then
            ln -s $FILEPATH "$LINKDEDIR/$file"
        elif  [ "$action" == "DELETE" ]; then
            unlink "$LINKDEDIR/$file"
        fi
    done