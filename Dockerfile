FROM mysql:latest

COPY init-sql.sql /
COPY init.sh /

ENTRYPOINT ["/init.sh"]

EXPOSE 3306
CMD ["mysqld"]
