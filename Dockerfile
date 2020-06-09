FROM busybox

COPY ./index.html /www/index.html
ENTRYPOINT ["/bin/busybox"] 
CMD ["httpd", "-f", "-p", "80", "-h", "/www"]
EXPOSE 80/tcp
