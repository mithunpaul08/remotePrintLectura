## Prerequisites

- Expect (you will have to install Expect if you don't already have it:https://linux.die.net/man/1/expect . for mac: `brew install expect`)


# command to print without ssh
after you manually fill in your login details here command to use from you laptop/machine outside lectura vlan: `./printLecturaNoSsh.sh zlib.pdf ` where zlib.pdf is the name of file and clj1d is the name of the printer

# to print with ssh

also I would strictly suggest using ssh key instead of plain text

`ssh-keygen -t rsa`

`ssh-copy-id -i ~/.ssh/id_rsa.pub yourname@lectura.cs.arizona.edu`

If you do that, you can just remove the password fields and use scp line and ssh lines alone. Lectura should log you in with your public key.

after you have ssh set up here is the command to use from you laptop/machine outside lectura vlan: `./printLectura_ssh.sh zlib.pdf clj1d` where zlib.pdf is the name of file and clj1d is the name of the printer


# Notes
- for no ssh change the login details to yours obviously

- as of fall 2018 lw0dand clj1d are the names of the printer in 7th floor kitchen of gould simpson. change that too.

- make sure the printers are not asleep
