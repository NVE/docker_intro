FROM ubuntu
RUN apt update
RUN apt install -y python3
COPY ../webroot /webroot
CMD ["python3","-m","http.server","8080", "--directory", "/webroot"]
EXPOSE 8080