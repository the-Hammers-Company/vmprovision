# vmprovision
Vagrant provisioning files


To connect to the VM with X11 forwarding, use the following command (for zsh environments):
```zsh
ssh $(vagrant ssh-config | awk 'NR>1 {print " -o "$1"="$2}') localhost
```

To connect to the web server, point your browser to:
```
http://localhost:4567
```
