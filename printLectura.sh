#! /usr/bin/expect -f
set filename [lindex $argv 0];
spawn scp "$filename" mithunpaul@lectura.cs.arizona.edu:.
expect "password"
send "YourPassword\r"
interact
spawn ssh mithunpaul@lectura.cs.arizona.edu
expect "password"
send "YourPassword\r"
expect "$ "
send "lpr -P lw11 $filename\r"
exit
interact
