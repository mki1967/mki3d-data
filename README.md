# MKI3D DATA
Collection of data for [MKI3D](https://mki1967.github.io/mki3d/).

This is example directory with MKI3D data with the scripts that produce HTML indexes of the
contained data and a simple local server that let you browse the data in a web browser.

There are two subdirectories:

 - [`data`](data/) - contains subdirectories with `.mki3d` data files
 - [`bin`](bin/)  - contains the scripts and programs






## Add new data

Save your data from [MKI3D EDITOR](https://mki1967.github.io/mki3d/) to a file in one of the subfolders
of `data` subdirectory (you may also create your own new subfolders in `data` subdirectory)
and then run the script `./bin/make-all.bash` to rebuild the HTML indexes.

## Preview with local server

You can view your local data in the in the web browser.  
The simple local server is written in Go language (according to the hints from the Internet :).
To start local server run the script `./bin/run-local-server.bash`:
```
mki3d-data$ ./bin/run-local-server.bash 
Open URL: http://localhost:8001/ in the browser
Type CTRL-C to stop the server.
```

