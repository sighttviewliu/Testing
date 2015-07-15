#!/bin/bash
: <<'EOF'

#cat ~/testing/test-plans-and-scripts/full/jsontest | jsawk -n 'out(this.first)'
#cat ~/testing/test-plans-and-scripts/full/jsontest | jsawk -a 'return this.join("\n")' 'return this.sports.join("\n")'  | sort -u
#DIRECTORYKEYMERKELROOT=$(factom-cli get dblock | jsawk -n 'out(this.Header.PrevBlockKeyMR)'

FACTOIDWALLETADDRESSKEY01=$(factom-cli genfactoidaddr jeff | awk '{print $3}')
echo $FACTOIDWALLETADDRESSKEY01

DIRECTORYKEYMERKELROOT=$(factom-cli get head | jsawk -n 'return(this)')
if [$DIRECTORYKEYMERKELROOT = ""];
then echo DIRECTORYKEYMERKELROOT is null
fi

a='aa'
b='bb'
echo $a $b
until [ $a = \
'c' -o \
$b = 'd' ]; do
          echo 'a =' $a 'b = ' $b
          a='c'
          echo 'a =' $a 'b = ' $b
done


echo 3.2	TRACE  CHAIN
DIRECTORYKEYMERKELROOT=$(factom-cli get head | awk $3)
echo $DIRECTORYKEYMERKELROOT
until [ "$DIRECTORYKEYMERKELROOT" = "" -o "$DIRECTORYKEYMERKELROOT" = \ '0000000000000000000000000000000000000000000000000000000000000000' ]; do
	DIRECTORYKEYMERKELROOT=$(factom-cli get dblock | jsawk -n 'return  this.Header.PrevBlockKeyMR')
	echo $DIRECTORYKEYMERKELROOT
done

echo 3.2	TRACE  CHAIN
HEAD=$(factom-cli get head)
echo $HEAD
DIRECTORYKEYMERKELROOT=$HEAD
echo Previous Block Key Merkel Root - Time Stamp - Sequence Number
until [ "$DIRECTORYKEYMERKELROOT" = "" -o "$DIRECTORYKEYMERKELROOT" = \ '0000000000000000000000000000000000000000000000000000000000000000' ]; do
	HEAD=$(factom-cli get dblock $DIRECTORYKEYMERKELROOT)
	DIRECTORYKEYMERKELROOT=$(echo $HEAD | awk '{printf $2}' | sed 's/^.//')
	TIMESTAMP=$(echo $HEAD | awk '{printf $3}')  	
	SEQNO=$(echo $HEAD | awk '{printf $4}' | sed 's/.$//')
	echo $DIRECTORYKEYMERKELROOT $TIMESTAMP $SEQNO
done

EOF

echo
echo 1	WALLETS
echo 1.1	FACTOID WALLET
echo 1.1.1	CREATE FACTOID WALLET ADDRESSES				
FACTOIDWALLETADDRESSKEY01=$(factom-cli generateaddress fct factoid-wallet-address-name01 | awk '{print $3}')
echo factoid-wallet-address-name01 = $FACTOIDWALLETADDRESSKEY01
FACTOIDWALLETADDRESSKEY02=$(factom-cli generateaddress fct factoid-wallet-address-name02 | awk '{print $3}')
echo factoid-wallet-address-name02 = $FACTOIDWALLETADDRESSKEY02
echo trying to create a factoid wallet with a name too long
factom-cli generateaddress fct factoid-wallet-address-name011111111111111111111111111111111111111111111111111111111
echo

echo 1.1.2	GET FACTOID WALLET ADDRESS BALANCES				
factom-cli balance fct factoid-wallet-address-name01
echo $FACTOIDWALLETADDRESSKEY01
factom-cli balance fct $FACTOIDWALLETADDRESSKEY01
factom-cli balance fct factoid-wallet-address-name02
echo $FACTOIDWALLETADDRESSKEY02
factom-cli balance fct $FACTOIDWALLETADDRESSKEY02
factom-cli balance fct 0000000000000000000000000000000000000000000000000000000000000000
echo






