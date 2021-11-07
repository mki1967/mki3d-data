encodelines() {
    echo '<script>'
    cat - <<'EOF'
function makeUl( names ){
    const mki3dPrefix="https://mki1967.github.io/mki3d/mki3d_www/mki3d.html?input=";
    const travelPrefix="https://mki1967.github.io/mki3d/mki3d_www/travel.html?input=";
    let base=document.URL;
    let ul="<ul>\n";
    for( let i=0; i<names.length; i++){
	url=new URL(names[i], base );
	ul+="<li>"+
            "<a href='"+mki3dPrefix+url+"'>"+names[i]+"</a>, "+
            "<a href='"+travelPrefix+url+"'>TRAVEL</a>, "+
            "<a href='"+url+"'>RAW</a>"+
            "</li>\n"
    }
    ul+="</ul>\n";
    return ul;
}
EOF
    echo 'window.onload = function(){'
    echo '  var names=[];'
    read LINE; 
    END=$?;
    while [[ ${END} == 0 ]] ;
    do
	echo '  names.push("'$LINE'");' 
	read LINE; 
	END=$?;
    done;
    echo '  document.getElementById("items").innerHTML= makeUl( names );'
    echo '}'
    echo '</script>'
}

cat - << 'EOF'
<!DOCTYPE html>
<html>
  <head>
EOF

ls -1 *.mki3d | encodelines 

cat - << 'EOF'
  </head>
  <body>
    <h2>MKI3D DATA:</h2>
    <div id='items'>
    </div>
  </body>
</html>
EOF
