sudo docker run -d infracloudio/csvserver:latest
sudo docker logs f9b66e339c4e
touch gencsv.sh
chmod +x ./gencsv.sh
./gencsv.sh
cat inputFile
sudo docker run -d -v $PWD/solution/inputFile:/csvserver/inputdata infracloudio/csvserver:latest
sudo docker exec -i 173905bc546c /bin/bash
sudo netstat -tulpn | grep LISTEN
sudo docker run -d -p 9393:9300 -e CSVSERVER_BORDER=Orange -v $PWD/solution/inputFile:/csvserver/inputdata infracloudio/csvserver:latest