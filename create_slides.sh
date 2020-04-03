#!/usr/bin/fish
for i in (seq -w 1 87); ./create.sh 0{$i} 50000 30000 30000; end
