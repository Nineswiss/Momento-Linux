inotifywait -m -r /home/$USER -e create -e moved_to -e delete|
    while read dir action file; do
        echo "The file '$file' appeared in directory '$dir' via '$action'"
        # do something with the file
    done