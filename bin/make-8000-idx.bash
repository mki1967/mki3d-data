export MKI3D_APP='http://localhost:8000/mki3d_www/mki3d.html'

BIN_DIR=`dirname $0`
$BIN_DIR/make-mki3d-idx.bash > INDEX_MKI3D_8000.html

