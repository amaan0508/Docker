FROM ubuntu:latest
ADD index.html /var/www/html
RUN  apt update -y
	 apt install apache2 -y
	 
ENV  ENV_NAME=DHUB
ENTRYPOINT service  apache2 start
	   ufw allow 'Apache'
EXPOSE 80
