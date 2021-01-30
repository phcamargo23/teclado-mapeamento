mkdir C:\tools\wp-cli
curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o C:\tools\wp-cli\wp-cli.phar
setx /M PATH "%PATH%;C:\tools\wp-cli"
copy .\wp.bat C:\tools\wp-cli