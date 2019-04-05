#! /usr/bin/expect -f
set filename [lindex $argv 0];
spawn scp "$filename" mithunpaul@lectura.cs.arizona.edu:./
interact
spawn ssh mithunpaul@lectura.cs.arizona.edu
expect "$ "
send "lpr -P lw0 $filename\r"
exit
interact
