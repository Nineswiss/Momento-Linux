inotifywait -m -r --includei "\.(jpg|png|jpeg|bmp|tiff|svg)" /home/$USER -e create -e moved_to -e delete|
    while read dir action file; do
        # echo "The file '$file' appeared in directory '$dir' via '$action'"
        echo $action
        FILEPATH="$dir$file"
        FILEMD5=($(md5sum $FILEPATH))
        FILE="$HOME/.cache/thumbnails/momento/$FILEMD5.jpg"
        if [ -f "$FILE" ] ; then
            echo "$FILE exists."
        elif  [ "$action" != "DELETE" ]; then
            
            echo "$FILE does not exist. Create Thumb"
            WIDTH=256
            iwidth=`identify -format "%w" $FILEPATH`
          
            if [ $iwidth -gt $WIDTH ]
            then
                convert -thumbnail ${WIDTH}x $FILEPATH $FILE
            fi
        fi
        
    done