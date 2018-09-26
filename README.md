# MKI3D DATA
[Collection of data](https://mki1967.github.io/mki3d-data/) for [MKI3D MODELER](https://mki1967.github.io/mki3d/).

This is example directory containing some MKI3D data and the scripts that produce HTML indexes of the
contained data and a simple local server that let you browse the data in a web browser.

There are two subdirectories:

 - [`data`](data/) - contains subdirectories with `.mki3d` data files
 - [`bin`](bin/)  - contains the scripts and programs for re-building HTML indexes and running local server


## Add new data

Save your data from [MKI3D EDITOR](https://mki1967.github.io/mki3d/) to a file in one of the subfolders
of `data` subdirectory (you may also create your own new subfolders in `data` subdirectory)
and then run the script `./bin/update.bash` to rebuild the HTML indexes.


## Work locally with local server


You can work on your local data in the in the web browser.
The simple local server is written in Go language (according to the hints from the Internet :).
To start local server run the script `./bin/run-local-server.bash`:
```
mki3d-data$ ./bin/run-local-server.bash 
REBUILDING LOCAL SERVER ...
STARTING LOCAL SERVER ... (OPEN URL: http://localhost:8000/mki3d-data IN THE BROWSER)
Serving files in: /home/kik/go/src/github.com/mki1967/mki3d-data/bin/../../
Server address is: http://localhost:8000/
Type CTRL-C to stop the server.
```
Note that the server serves the directory one level above `mki3d-data` repository
under the address `http://localhost:8000/`.
This (served) directory should also contain the clone of `https://github.com/mki1967/mki3d`
side by side with `mki3d-data` repository.

The listing of data folders contains the links displayed as `(raw dir)` with the access to raw directory listings,
where you can find index files `INDEX_MKI3D_8000.html` prepared for your work with the local server and
the apps from your clone of `https://github.com/mki1967/mki3d`.

(Make the updates of your clone of `https://github.com/mki1967/mki3d` by `git pull` commands in the `master` branch.)

