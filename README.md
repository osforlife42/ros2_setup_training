# ros2_setup_training
ros2 setup training self exercise

## Training Flow
This training is largely based upon the ros2 official docs. If you were doing it on the internet, your instructors would be as happy as a bunny on a sunday shiny morning. But because you're doing it on a remote network we've prepared you all the sources you need inside dockers in order to work seemlesly. 

At each stage you'll have a different project tag to work with - with new sources, new docker and new scripts which are meant to help with the official docs tutorials. The slight variations in each tag offer insights into how a ROS2 development workspace evolves and provide key elements for easy ROS development in Docker. Take the time to see the changes between each tag and understand how they help you in each stage. At the end of this README.md you'll also find a summary of these changes. 

### Stage 1 - configuring, turtlesim and rqt
Checkout to v2.0.0 tag and do the following tutorials in ros2 docs - 

https://docs.ros.org/en/galactic/Tutorials/Beginner-CLI-Tools/Configuring-ROS2-Environment.html

(skip ROS_DOMAIN_ID and ROS_LOCALHOST_ONLY sections - they're not interesting for now). 

https://docs.ros.org/en/galactic/Tutorials/Beginner-CLI-Tools/Introducing-Turtlesim/Introducing-Turtlesim.html

### Stage 2 - colcon build without "memory" 
Checkout to v3.0.0 tag and do the following tutorials in ros2 docs - 

https://docs.ros.org/en/galactic/Tutorials/Beginner-Client-Libraries/Colcon-Tutorial.html

### Stage 2 - colcon build with "memory" 
Checkout to v3.1.0 tag and understand thoroughly the changes from v3.0.0 ! 

Now repeat the last tutorial https://docs.ros.org/en/galactic/Tutorials/Beginner-Client-Libraries/Colcon-Tutorial.html - with this project. 


### Stage 3 - creating development package
In v3.1.0 tag do the following tutorials in ros2 docs -

https://docs.ros.org/en/galactic/Tutorials/Beginner-Client-Libraries/Creating-Your-First-ROS2-Package.html

After finishing this tutorial your project should really be the same (or close enough) to v3.2.0 version. 

That's it for now! you can use the project as a template (or the key elements from it) for your later projects and assignments in ros2 :) 


## Tags Changes

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

This version has the same abilities as v3.0.0 but now the example packages are presented at the src folder just like packages you'll need to develop, and as explained in the tutorial: `creating a workspace` which we are going to skip. 

Moreover, volumes have been added to make developing in the workspace much more efficient - 


`src`, `build` and `install` folders volumed to allow easy development and to save build time. 

`docker_save` folder is a folder which helps to copy files from inside the docker outside to save outputs for later usage. 

Also, scripts in the scripts folder are now more generic with the help of the initial script - `setup_host_env.sh` which exports environment variables to the usage of other scripts. 

**Remember in every new shell to run**
```
source ./scripts/setup_host_env.sh
```

Should be good for the tutorials: `using colcon to build packages`  and `creating a package`. 

Skipping over `creating a workspace` tutorial as getting rosdep to work is not fun and not so much fascinating.


### v3.2.0
The final tutorial project after finishing the tutorial: `creating a package`. 
