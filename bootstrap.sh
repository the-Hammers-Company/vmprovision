apt-get update
# Install web server
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
# Install FSW build tools
apt-get install -y gcc
apt-get install -y gcc-multilib
#apt-get install -y libc6
apt-get install -y make
apt-get install -y cmake
apt-get install -y build-essential gdb
apt-get install -y tcl-dev
# Set up for X11 port forwarding
apt-get install -y xauth
apt-get install -y x11-apps
apt-get install -y xterm
# Install cFS Ground System build tools
apt-get install -y python3-pyqt5
apt-get install -y python3-zmq
apt-get install -y libcanberra-gtk-module
