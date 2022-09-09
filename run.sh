#!/bin/sh

if ! [ -z "$certFile" ]; then
    certFile="-certFile $certFile"
fi

if ! [ -z "$db" ]; then
    db="-db $db"
fi

if [ "$https" == 'True' ]; then
    https="-https"
fi

if ! [ -z "$keyFile" ]; then
    keyFile="-keyFile $keyFile"
fi

if ! [ -z "$listenip" ]; then
    listenip="-listenip $listenip"
fi

if ! [ -z "$listenport" ]; then
    listenport="-listenport $listenport"
fi

if [ "$reverseProxy" == 'True' ]; then
    reverseProxy="-reverseProxy"
fi

if ! [ -z "$reverseProxyPort" ]; then
    reverseProxyPort="-reverseProxyPort $reverseProxyPort"
fi

if ! [ -z "$sshport" ]; then
    sshport="-sshport $sshport"
fi

hostname="-hostname $(hostname -f)"

echo "Using the following settings:" $hostname $certFile $db $https $keyFile $listenip $listenport $reverseProxy $reverseProxyPort $sshport

exec su-exec hak5 /app/c2_amd64_linux $hostname $certFile $db $https $keyFile $listenip $listenport $reverseProxy $reverseProxyPort $sshport

