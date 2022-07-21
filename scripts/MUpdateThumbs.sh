FILES="/home/*"
find "/home" \( -iname \*.jpg -o -iname \*.jpeg -o -iname \*.png -o -iname \*.gif \) -print0 | while read -r -d $'\0' filePath; do
  # base="${file##*/}" $base is the file name with all the directory stuff stripped off
  # dir="${file%/*}    $dir is the directory with the file name stripped off
  echo $filePath
  FILEMD5=($(md5sum $filePath))
  echo $FILEMD5
  FILE="$HOME/.cache/thumbnails/momento/$FILEMD5.jpg"
        if [ -f "$FILE" ] ; then
            echo "$FILE exists."
       else
            echo "$FILE does not exist. Create Thumb"
            WIDTH=256
            iwidth=`identify -format "%w" $filePath`
            echo $iwidth
            if [ $iwidth -gt $WIDTH ];
            then
                convert -thumbnail ${WIDTH}x $filePath $FILE
            fi
        fi
#   mogify -resize '112x112!' "$file"
done