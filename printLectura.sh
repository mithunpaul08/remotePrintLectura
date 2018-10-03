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


#use the below part if you have got your ssh set up
#! /usr/bin/expect -f
set filename [lindex $argv 0];
spawn scp "$filename" mithunpaul@lectura.cs.arizona.edu:./
interact
spawn ssh mithunpaul@lectura.cs.arizona.edu
expect "$ "
send "lpr -P lw0 $filename\r"
exit
interact
