FROM nginx

EXPOSE 80/tcp

ADD . /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
