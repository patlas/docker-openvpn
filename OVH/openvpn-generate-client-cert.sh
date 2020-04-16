DATA=/home/docker-volumes/ovpn-data-container/_data
CLIENTNAME=${1}

echo "#### REMEMBER THAT AFTER ASK OF PASSPHRASE ENTER ADMIN PASS PRASE NOT ONE FOR USER!! ###"

docker run -v ${DATA}:/etc/openvpn --log-driver=none --rm -it kylemanna/openvpn easyrsa build-client-full ${CLIENTNAME} nopass
docker run -v ${DATA}:/etc/openvpn --log-driver=none --rm kylemanna/openvpn ovpn_getclient ${CLIENTNAME} > ${CLIENTNAME}.ovpn

