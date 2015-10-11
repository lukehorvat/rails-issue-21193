FROM rails:onbuild
RUN apt-get update -q
RUN apt-get install -qy nginx
ADD nginx.conf /etc/nginx/sites-enabled/default
EXPOSE 9000
ENTRYPOINT /usr/src/app/run.sh
