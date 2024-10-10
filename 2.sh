ccrypt -d -k arun arun.env.cpt
sleep 5
docker-compose up -d 
ccrypt -e -k arun arun.env
rm -f arun 


docker exec  my_nginx /bin/bash -c "cd /usr/share/nginx/html/ && echo '${name}' > index.html"
