There are three ways to install mouse-speed on your system:

1. On Ubuntu add the PPA-file to your sources:
```
    sudo add-apt-repository ppa:rubo77/ppa-mouse-speed
    sudo apt-get update
    sudo apt-get install mouse-speed
```
2. On Debian:
```
    sudo cp release/mouse-speed.list /etc/apt/sources.list.d/
    sudo apt-get update
    sudo apt-get install mouse-speed
```  
3. Install the debian package from the release folder with
```
    dpkg -i release/mouse-speed.deb
```   
Either of this will install the mouse-speed script in `/usr/bin`
