FROM nginx:latest
RUN sed -i 's/nginx/akhibou/g' /usr/share/nginx/html/index.html
EXPOSE 80
