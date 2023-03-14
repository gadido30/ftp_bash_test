#!/usr/bin/env bash
#https://stackoverflow.com/questions/29293309/write-a-ftp-script-in-between-shell-script

FTP_PASS=password
FTP_HOST=IP
FTP_USER=username
REMOTEDIR="/"

FOO=$(
{
cat << EOF
open ${FTP_HOST}
user ${FTP_USER} ${FTP_PASS}
binary
cd ${REMOTEDIR}
get server_version
quit
EOF
} | ftp -inv)

echo "Resultss:"
echo "$FOO"
