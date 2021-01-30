# iniciar xampp
# if(ps xampp-control){ echo Xampp rodando... }else{ C:\xampp\xampp-control.exe }
$origem = pwd
$dir = 'wordpress';
cd C:\xampp\htdocs;
mkdir $dir;
rm -Recurse -Force -Verbose .\$dir\;
mysql -u root -e "DROP DATABASE IF EXISTS $dir";
wp core download --path=$dir;
cd $dir;
wp core config --dbhost=localhost --dbname=$dir --dbuser=root --dbpass= --dbprefix=wp_;
wp db create; 
wp core install --url=http://localhost/$dir --title=WP-CLI --admin_user=phcamargo23 --admin_password=123 --admin_email=ph.camargo23@gmail.com;
wp language core install pt_BR;
wp language core activate pt_BR;
wp plugin install all-in-one-wp-migration;
wp plugin activate all-in-one-wp-migration;
mysql -u root -D $dir -e "UPDATE wp_users SET user_pass='`$P`$BqMN.c/qo2fWuYIup0cvzPLqgQoxRT0' WHERE
user_login = 'phcamargo23' "

# Criação de arquivo pelo Powershell sai com BOM
"php_value upload_max_filesize 512M" >> "temp"
"php_value post_max_size 512M" >> "temp"
"php_value memory_limit 1024M" >> "temp"
"php_value max_execution_time 300" >> "temp"
"php_value max_input_time 300" >> "temp"
Get-Content ./temp | out-file -encoding ASCII .htaccess
rm .\temp

cd $origem