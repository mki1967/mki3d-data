BIN_DIR=`dirname $0`
BIN_DIR=`cd "$BIN_DIR";pwd`
cd $BIN_DIR

# echo "Type CTRL-C to stop the server."
# go run main.go # old version
echo "REBUILDING LOCAL SERVER ..."
go build -o tmp-server # build local server in local directory
echo "STARTING LOCAL SERVER ... (OPEN URL: http://localhost:8000/mki3d-data IN THE BROWSER)"
./tmp-server -port 8000 -path ${PWD}'/../../'
