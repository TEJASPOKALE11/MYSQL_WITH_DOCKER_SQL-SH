FROM mysql
ARG Password
ENV MYSQL_ROOT_PASSWORD=${Password}
COPY init.sql /docker-entrypoint-initdb.d/
COPY init.sh /docker-entrypoint-initdb.d/
EXPOSE 3306
CMD ["mysqld"]
