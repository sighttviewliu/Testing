# We cd to the given directory, look and see if the branch exists...
# If it does, we make sure we are in that branch.
# Then we go back to the previous directory.
#
# In all cases we do a pull.  Something might have changed.
checkout() {
       	    cd ~/go/src/github.com/FactomProject/$1
	    echo $1
	    go clean
	    git pull
	    if [[ `git branch --list $2` ]]
	    then
		git checkout $2
	    fi
	    cd ..
	   }
compile() {
       	    cd ~/go/src/github.com/FactomProject/$1
	    echo $1
	    go install
	    cd ..
	   }

	checkout btcd $1
	checkout factom $1
	checkout factom-cli  $1
	checkout FactomCode $1
	checkout factoid $1


	compile btcd
	compile factom
	compile factom-cli
	compile FactomCode/factomd
	compile factoid 
	compile factoid/fctwallet


