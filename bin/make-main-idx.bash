OUT='data-index.html'

BIN_DIR=`dirname $0`
cd $BIN_DIR/../



encodelines() {
    read LINE; 
    END=$?;
    while [[ ${END} == 0 ]] ;
    do
	echo '     <li>'\
	     '<a href="data/'$LINE'/INDEX_MKI3D_PUBLIC.html">'$LINE'</a>'\
	     '(<a href="data/'$LINE'/">raw dir</a>)'\
	     '</li>'
	echo ' '
	read LINE; 
	END=$?;
    done;
    }
    
cat > $OUT - << EOF
<!DOCTYPE html>
<html>
  <body>
    <h1> MKI3D DATA FOLDERS: </h1>
    <ul>
EOF
ls -1 ./data/ | encodelines >> $OUT
cat >> $OUT - << EOF
    </ul>
  </body>
</html>
EOF
