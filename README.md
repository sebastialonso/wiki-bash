Wiki-sh
=======
This is a Shell Wikipedia Fetcher. It fetches the introductory extract of the QUERY article in the argument, for you to see quickly in your shell.

##Requirements
Wiki-sh uses jq to quickly parse JSON. You can download the binary and see the documentation [here](http://stedolan.github.io/jq/).

##Usage:

```shell
$ wiki QUERY
```

Words like *Electronic Arts* will be converted automatically to *Electronic_Arts*

###With zsh
If you use zsh, need to add the following lines to ```zshrc```. I have put the jq binary in /home/seba/.bin so it must be added to the PATH. Identically, the wiki-sh script is in /.bin/wiki, and it's also added to the PATH.

```shell
#Custom binaries 
export PATH=/home/you/.bin:$PATH
export PATH=/home/you/.bin/wiki:$PATH

#Functions
#--------------------------
#Wikipedia Extract Fetcher
#Requires: the excellent jq binary to work (http://stedolan.github.io/jq/)
#Usage: wiki QUERY
wiki() { wiki.sh $1 $2 }
```

##To do

- [ ] Dealing successfully with redirects
- [ ] Option for fetching in other languages
- [ ] Add link to the article at the end of the extract
