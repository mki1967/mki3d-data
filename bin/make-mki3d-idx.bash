# export MKI3D_APP='https://mki1967.github.io/mki3d/mki3d_www/mki3d.html'
# export MKI3D_APP='../mki3d/mki3d_www/mki3d.html'


encodelines() {
    read LINE; 
    END=$?;
    while [[ ${END} == 0 ]] ;
    do
	# urlencode $LINE
	# echo '"'$LINE'"'
	echo '     <li>'\
	     '<a href="'$MKI3D_APP'?input='$LINE'">'$LINE'</a>'\
	     '(<a href="'$MKI3D_TRAVEL'?input='$LINE'">'travel'</a>, '\
	     '<a href="'$LINE'">raw</a>)'\
	     '</li>'
	echo ' '
	read LINE; 
	END=$?;
    done;
    }
    
cat - << EOF
<!DOCTYPE html>
<html>
  <body>
    <h2>MKI3D DATA:</h2>
    <ul>
EOF
# for x in $(ls -1 *.mki3d | encodelines ); do echo '     <li><a href="'$MKI3D_APP'?input='$x'">'$x'</a></li>'; done
ls -1 *.mki3d | encodelines 
cat - << EOF
    </ul>
  </body>
</html>
EOF
