inotifywait -m -r /usr/share/applications /var/lib/snapd/desktop/applications -e create -e moved_to -e delete|
    while read dir action file; do
        echo $action
        FILEPATH="$dir$file"
        LINKDEDIR=$HOME/Applications
        if  [ "$action" == "CREATE" ]; then
            ln -s $FILEPATH "$LINKDEDIR/$file"
        elif  [ "$action" == "DELETE" ]; then
            unlink "$LINKDEDIR/$file"
        fi
    done