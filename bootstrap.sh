apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
apt-get install -y gcc
apt-get install -y gcc-multilib
#apt-get install -y libc6
apt-get install -y make
apt-get install -y cmake
apt-get install -y build-essential gdb
apt-get install -y tcl-dev
