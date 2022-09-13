CHILDID="$( xdotool getactivewindow )"
echo $CHILDID
/home/adam/Documents/Qt/MomentoOS/build-WindowManager-Desktop-Debug/Momento-WM $CHILDID
# xdotool windowunmap $CHILDID
# xdotool windowreparent $CHILDID 27262982
# xdotool windowmap --sync $CHILDID
# xdotool windowmove $CHILDID 0 40