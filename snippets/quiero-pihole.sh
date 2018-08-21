docker run -d \
    --name pihole3 \
    -p 53:53/tcp -p 53:53/udp \
    -p 67:67/udp \
    -p 8080:80 \
    -p 8443:443 \
    -v "${DOCKER_CONFIGS}/pihole/:/etc/pihole/" \
    -v "${DOCKER_CONFIGS}/dnsmasq.d/:/etc/dnsmasq.d/" \
    -e ServerIP="192.168.1.2" \
    -e WEBPASSWORD="" \
    --restart=unless-stopped \
    --cap-add=NET_ADMIN \
    pihole/pihole:latest

