#copy both
#https://openwhisk.ng.bluemix.net/cli/go/download/linux/amd64/OpenWhisk_CLI-linux.tgz
#https://openwhisk.ng.bluemix.net/cli/go/download/linux/amd64/wsk

#create temp folder
mkdir ~/wsk_temp

#install openwhisk CLI
curl -o ~/wsk_temp/wsk -L https://openwhisk.ng.bluemix.net/cli/go/download/linux/amd64/wsk
