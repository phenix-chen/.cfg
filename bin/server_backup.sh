FILENAME=/root/self_host_$(date +%Y_%m_%d).zip
ssh root@47.120.34.97 "zip -r ${FILENAME} /root/self_host/"
scp root@47.120.34.97:${FILENAME} ~/Documents/server_backup/
ssh root@47.120.34.97 "rm -f ${FILENAME}"
