you will have to install Expect if you don't already have it:https://linux.die.net/man/1/expect

Change the login details to yours obviously

as of fall 2018 lw0d is the name of the printer in 7th floor kitchen of gould simpson. change that too.

command to use from you laptop/machine outside lectura vlan: ./printLectura.sh zlib.pdf

for mac: `brew install expect`

also I would strictly suggest using ssh key
`ssh-keygen -t rsa`
`ssh-copy-id -i ~/.ssh/id_rsa.pub yourname@lectura.cs.arizona.edu`

If you do that, you can just remove the password fields and use scp line and ssh lines alone. Lectura should log you in with your public key.




