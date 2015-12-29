FROM linode/lamp

MAINTAINER Oliver Green green2go@gmail.com

ENV DB_NAME new_database
ENV DB_USER new_user
ENV DP_PASSWORD new_password

ADD run_stack /usr/local/bin/

RUN rm -v /etc/mysql/my.cnf
RUN rm -v /etc/apache2/apache2.conf
RUN rm -v /etc/apache2/sites-available/example.com.conf

ADD conf/my.cnf /etc/mysql/
ADD conf/apache2.conf /etc/apache2/
ADD conf/example.com.conf /etc/apache2/sites-available/

ADD database_setup /installer/

RUN apt-get update

RUN apt-get install virt-what unzip wget php5-mysql php5-mcrypt php5-gd -y

RUN cp -R "/var/www/example.com" "/installer"

RUN  wget -O /installer/concrete.zip http://www.concrete5.org/download_file/-/view/84191/ && \
  unzip /installer/concrete.zip -d /installer/

RUN rm -Rf /installer/example.com/public_html/ && \
  mv /installer/concrete5*/ /installer/example.com/public_html/

ADD conf/htaccess.txt /installer/example.com/public_html/

ENTRYPOINT ["/usr/local/bin/run_stack"]
