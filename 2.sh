ccrypt -d -k arun arun.env.cpt
sleep 5
docker-compose up -d --force-recreate
ccrypt -e -k arun arun.env
rm -f arun 



