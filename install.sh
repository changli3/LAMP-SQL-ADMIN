apt-get -y update


export MYSQLROOTPASSWORD="$1"
export GUACAPASSWORD="$2"

debconf-set-selections <<< "mysql-server mysql-server/root_password password $MYSQLROOTPASSWORD"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $MYSQLROOTPASSWORD"
apt-get -y install mysql-server mysql-client

apt-get -y install apache2 php-bcmath php7.0 libapache2-mod-php7.0 php-mysql php-pgsql php-sqlite3 php-curl php7.0-gmp
git clone https://github.com/changli3/LAMP-SQL-ADMIN.git
mv LAMP-SQL-ADMIN/sqladmin /var/www/html/sqladmin
chmod +r -R /var/www/html/sqladmin
chown -R www-data /var/www/html/sqladmin

service apache2 restart
