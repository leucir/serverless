echo "Defining Openwhisk executable temp folder"
export WSK_TEMP = "~/wsk_temp"

echo "Creating folder :$WSK_TEMP"
mkdir $WSK_TEMP

echo "install openwhisk CLI"
curl -o $WSK_TEMP/wsk -L https://openwhisk.ng.bluemix.net/cli/go/download/linux/amd64/wsk

echo "give access wsk executable access"
chmod +x $WSK_TEMP/wsk
