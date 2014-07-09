Install the debian package from the release folder with

    dpkg -i release/mouse-speed.deb

Or copy the PPA-file

    sudo cp release/mouse-speed.list /etc/apt/sources.list.d/
    sudo apt-get update
    sudo apt-get install mouse-speed

this will install the mouse-speed script in `/usr/bin`
