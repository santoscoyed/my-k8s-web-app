FROM nginx:stable
EXPOSE 49860
COPY . /usr/share/nginx/html/
