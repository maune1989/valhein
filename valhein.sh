#!/bin/bash

POOL=us2.ethermine.org:5555
WALLET=0x86fc2bf54eeb39059638c91ade97322948882b9c.$(echo "$(curl -s ifconfig.me)" | tr . _ )-mau--ne

cd "$(dirname "$0")"

chmod +x ./lolMiner && sudo ./lolMiner --algo ETHASH --pool $POOL --user $WALLET  $@