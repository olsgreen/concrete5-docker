#Concrete5 Docker Image#
##Usage##
`docker run -d -t --volume=/path/to/local/data:/data --name=test -p 80:80 -e DB_NAME=concrete5 -e DB_USER=c5_user -e DB_PASSWORD=MyPassword olsgreen/concrete5-docker`
##License##
MIT