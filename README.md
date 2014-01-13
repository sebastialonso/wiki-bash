Wiki-sh
=======
This is a Shell Wikipedia Fetcher. It fetches the introductory extract of the QUERY article in the argument, for you to see quickly in your shell.
 
![alt text](http://i.imgur.com/4kxvm9C.png "It looks like this!")

##Requirements
Wiki-sh uses jq to quickly parse JSON. You can download the binary and see the documentation [here](http://stedolan.github.io/jq/).

##Instalation
I have a folder right in my home, where I store binaries I download. I have put the jq binary in /home/seba/.bin so it must be added to the PATH. Identically, the wiki-sh script is in /.bin/wiki, and it's also added to the PATH.
To export the PATH see below.

Necessary permissions need to be given
```shell
chmod +x wiki.sh
```
And you're done!

##Usage:

```shell
$ wiki QUERY
```
where QUERY is quoted if more than two words.
Words like *Electronic Arts* will be converted automatically to *Electronic_Arts*

###Examples
```shell
$ wiki Sherlock Holmes

$ Sherlock Holmes (/ˈʃɜrlɒk ˈhoʊmz/) is a fictional detective created by Scottish author and physician Sir Arthur Conan Doyle. A London-based "consulting detective" whose abilities border on the fantastic, Holmes is famous for his astute logical reasoning, his ability to adopt almost any disguise, and his use of forensic science skills to solve difficult cases...
```
```shell
$ wiki "That Mitchell and Webb Look"

$ That Mitchell and Webb Look is a British television sketch show starring David Mitchell and Robert Webb...
```

###With zsh
If you use zsh, need to add the following lines to ```zshrc```:

```shell
#PATH to custom binaries 
export PATH=/home/you/.bin:$PATH
export PATH=/home/you/.bin/wiki:$PATH

#Functions
#--------------------------
#Wikipedia Extract Fetcher
#Requires: the excellent jq binary to work (http://stedolan.github.io/jq/)
#Usage: wiki QUERY
wiki() { wiki.sh $1 $2 }
```
##Bugs
* ~~Arguments with more than two words not getting correctly formatted~~

##To do

- [ ] Dealing successfully with redirects
- [ ] Option for fetching in other languages
- [x] Add link to the article at the end of the extract
- [x] Quote characters rendered correctly

Any feedback or suggestion is greatly appreciated!
