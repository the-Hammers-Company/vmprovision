ssh $(vagrant ssh-config | awk 'NR>1 {print " -o "$1"="$2}') localhost 
