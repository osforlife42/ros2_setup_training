# ros2_setup_training
ros2 setup training self exercise


## Tags changes

### v1.0.0
Should be good for tutorial `configuring environment`
And `using turtlesim and rqt` until install lines : 
```
sudo apt update

sudo apt install ros-galactic-turtlesim
```

### v2.0.0
Added turtlesim and rqt installations 

Should be good to finish the tutorial `using turtlesim and rqt`

### v3.0.0
Added examples and interfaces to workspace in dockerfile . 

Should be good for `using colcon to build packages` tutorial one-time. 

For a more comfortable dev-environment check the next version.


### v3.1.0
Changed to working workspace with better scripts and with example packages inside the src folder.

This version has the same abilities as v3.0.0 but now the example packages are presented at the src folder just like packages you'll need to develop. 

Moreover, volumes have been added to make developing in the workspace much more efficient - 


`src`, `build` and `install` folders volumed to allow easy development and to save build time. 

`docker_save` folder is a folder which helps to copy files from inside the docker outside to save outputs for later usage. 

Also, scripts in the scripts folder are now more generic with the help of the initial script - `setup_host_env.sh` which exports environment variables to the usage of other scripts. 

**Remember in every new shell to run**
```
source ./scripts/setup_host_env.sh
```

Should be good for the tutorials: `using colcon to build packages`  and `creating a package`. 

Skipping over `creating a workspace` as getting rosdep to work is not fun and not so much fascinating.


### v3.2.0
The final tutorial project after finishing the tutorial: `creating a package`. 
