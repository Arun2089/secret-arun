ccrypt -d -k arun arun.env.cpt
docker-compose up -d 
ccrypt -e -k arun arun.env
rm -f arun 
