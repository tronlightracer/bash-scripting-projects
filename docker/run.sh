# $1 is the contaier name
# $2 is the port number
# $3 is the image name
echo "1st pos arg = container name 2nd pos arg = port 3rd pos arg = image name"
docker run -t -d -p $2:$2 --name $1 $3
