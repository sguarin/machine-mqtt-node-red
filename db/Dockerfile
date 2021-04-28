FROM postgres:9

#ADD pg_hba.conf /var/lig/postgresql/data/
ADD db.sql /docker-entrypoint-initdb.d
#ADD init.sh /docker-entrypoint-initdb.d
#RUN chmod 755 /docker-entrypoint-initdb.d/init.sh

