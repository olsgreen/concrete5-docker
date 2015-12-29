docker run -d -t --volume=/path/to/local/data:/data --name=test -p 80:80 -e DB_NAME=concrete5 -e DB_USER=c5_user -e DB_PASSWORD=MyPassword concrete5

docker run -d -t --volume=/Users/olsgreen/sites/docker-data:/data --name=test -p 80:8080 -e DB_NAME=concrete5 -e DB_USER=c5_user -e DB_PASSWORD=MyPassword concrete5