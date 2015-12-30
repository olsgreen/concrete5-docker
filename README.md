#Concrete5 Docker Image#

##Build Tags##
- **5.7.5** - current release (5.7.5.3)
- **5.7.4** - old release (5.7.4.2)
- **5.7.3** - old release (5.7.3.1)
- **5.7.2** - old release (5.7.2.1)
- **5.7.1** - old release (5.7.1.0)
- **5.7.0** - old release (5.7.0.4)
- **5.6.3** - current legacy release (5.6.3.3)

##Quickstart##

To run an instance of the current release of concrete5.7.x using the in-built MySQL server run:
`docker run -d -t --volume=/tmp/concrete5:/data --name=concrete5 -p 80:80 -e DB_NAME=concrete5 -e DB_USER=c5_user -e DB_PASSWORD=MyPassword olsgreen/concrete5-docker`

You can not view `http://your-container/` and finish setting up the concrete5 instance with the database credentials specified in the run command above. e.g:

    Server			127.0.0.1
    MySQL Username 	c5_user
    MySQL Password 	MyPassword
    Database Name 	concrete5

MySQL & public_html data can be found in the `/tmp/concrete5` directory.

## Advanced usage

### Run a specific release
You can run a specific release of concrete5 by specifying the releases build tag from above. An example to run an instance of concrete5.6.3 would be:

`docker run -d -t --volume=/tmp/concrete563:/data --name=concrete5 -p 80:80 -e DB_NAME=concrete5 -e DB_USER=c5_user -e DB_PASSWORD=MyPassword olsgreen/concrete5-docker:5.6.3`

### Database ###
Omitting the database parameters will tell the container setup process not to setup the inbuilt database:

`docker run -d -t --volume=/tmp/concrete5:/data --name=concrete5 -p 80:80 olsgreen/concrete5-docker`

You can then specify your own database server / container connection while setting up concrete.