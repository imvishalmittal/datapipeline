yes|sudo yum install wget
yes|sudo yum install lsof

echo "Installing build with Kafka Plugin enabled"
gpm install -f gpm.yml

echo "Run Server"
./gwb runServer

sleep 400

httpStatus=$(curl -IL --silent http://localhost:8180/pc | grep HTTP)
 echo $httpStatus
 if [[ $httpStatus = *"200"* ]] then
    echo "server started"
 fi
