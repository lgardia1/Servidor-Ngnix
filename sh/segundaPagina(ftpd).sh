# 1.- INSTALACIÓN DEL SITIO WEB CON MI PAGINA WEB Y TRANSFERENCIA DE ARCHIVOS CON FTP

# Creamos el espacio para la página web de proluh
sudo mkdir -p /var/www/proluh-web/html/

# Establecemos permisos para la carpeta web
sudo chown -R www-data:proluh /var/www/proluh-web/
sudo chmod -R 775 /var/www/proluh-web/

# Creamos un enlace simbólico a la carpeta web en el directorio FTP del usuario
sudo ln -s /var/www/proluh-web/ /home/proluh/ftp

# Configuración del sitio de nginx para proluh-web
sudo cp -v /vagrant/config/proluh-web /etc/nginx/sites-available/

# Habilitamos el sitio en nginx
sudo ln -s /etc/nginx/sites-available/proluh-web /etc/nginx/sites-enabled/

# Reiniciamos nginx para aplicar los cambios
sudo systemctl reload nginx

# Establecemos www-data en el mismo grupo de proluh, para que cuando metamos archivos
sudo usermod -aG proluh www-data

# INSTALACION MANUAL DE MI PAGINA WEB CON FILEZILLA