#! /usr/bin/expect -f
set filename [lindex $argv 0];
set printer [lindex $argv 1];
spawn scp "$filename" mithunpaul@lectura.cs.arizona.edu:./
interact
spawn ssh mithunpaul@lectura.cs.arizona.edu
expect "$ "
send "lpr -P $printer $filename\r"
exit
interact
