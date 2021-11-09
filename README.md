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
and then run the script `bin/update.bash` to rebuild the HTML indexes.


