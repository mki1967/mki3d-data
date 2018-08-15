BIN_DIR=`dirname $0`
BIN_DIR=`cd "$BIN_DIR";pwd`
cd $BIN_DIR

# echo "Type CTRL-C to stop the server."
go run main.go
