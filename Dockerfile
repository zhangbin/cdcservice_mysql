FROM mysql:5.7.13
ADD ./replication.cnf /etc/mysql/conf.d
ADD ./initialize-database.sql /docker-entrypoint-initdb.d
RUN chmod +r /etc/mysql/conf.d/replication.cnf /docker-entrypoint-initdb.d/initialize-database.sql