BIN_DIR=`dirname $0`
BIN_DIR=`cd "$BIN_DIR";pwd`
cd $BIN_DIR/../data/

for d in $(ls); do
    pushd $d;
    $BIN_DIR/make-public-idx.bash
    popd ;
done 

$BIN_DIR/make-main-idx.bash data-index.html
