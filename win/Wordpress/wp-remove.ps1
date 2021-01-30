$origem = pwd
$dir = '`loja-finta`';
cd C:\xampp\htdocs;
rm -Recurse -Force -Verbose .\$dir;
mysql -u root -e "DROP DATABASE IF EXISTS $dir";
cd $origem

pause