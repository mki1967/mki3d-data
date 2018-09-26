/* srever of data accessible by CORS */
/* start with: go run main.go */

package main


import (
	"strconv"
	"strings"
	"flag"
	"net/http"
	"log"
	"fmt"
)


// const port=":8000"




func enableCors(w *http.ResponseWriter) {
	(*w).Header().Set("Access-Control-Allow-Origin", "*")
}

// var fileServer = http.FileServer(http.Dir("../../")) // instance of file server handler (serves directory above 'mki3d-data')

var fileServer  http.Handler 

var  fileServerPtr= &fileServer // pointer to the variable 


type myHandler struct{}

func (myHandler) ServeHTTP(w http.ResponseWriter, req *http.Request){
	enableCors(&w)
	(*fileServerPtr).ServeHTTP(w, req)
}

func main() {
	
	portPtr := flag.Int("port", 8000, "port number")
	pathPtr := flag.String("path", "./" , "path to the served directory")
	flag.Parse()

	fileServer = http.FileServer(http.Dir(*pathPtr))
	fmt.Printf("Serving files in: %s\n", *pathPtr )
	fmt.Printf("Server address is: http://localhost:%d/\n", *portPtr )
	fmt.Println("Type CTRL-C to stop the server.")
	err := 	http.ListenAndServe(strings.Join([]string{":",strconv.Itoa(*portPtr)},""), new(myHandler) )
	if err != nil {
		log.Fatal("ListenAndServe: ", err)
	}
	
}

