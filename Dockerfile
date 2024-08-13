FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
#RUN rm -rf /usr/share/nginx/html/
#COPY index.html /usr/share/nginx/html/index.html
#RUN nginx -s reload
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
