export MKI3D_APP='http://localhost:8000/mki3d/mki3d_www/mki3d.html'
export MKI3D_TRAVEL='http://localhost:8000/mki3d/mki3d_www/travel.html'

BIN_DIR=`dirname $0`
$BIN_DIR/make-mki3d-idx.bash > INDEX_MKI3D_8000.html

