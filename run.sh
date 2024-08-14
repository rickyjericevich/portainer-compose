#!/bin/sh

{ # try
    docker compose up -d
} || { # catch
    # this catch should only be triggered when the 'docker' command fails or is run in a WSL distro that isn't enabled in Docker Desktop
    # even if the WSL distro is not enabled in Docker Desktop, you can still run docker commands by using the 'docker.exe' command but there are various disadvantages to this
        echo
	    echo "'docker' command failed."
		echo 
	    echo "If you are using WSL, make sure Docker Desktop for Windows is running and that this WSL distro is enabled in Docker Desktop."
	    echo "Otherwise, install and run docker as pers this repo: https://github.com/rickyjericevich/docker-setup-on-linux"
}