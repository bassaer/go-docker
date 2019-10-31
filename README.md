# go-docker

## Start on CentOS7

### Install docker

Remove old docker
```
❯ sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine
```

Install required packages
```
❯ sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2
```

Use the following command to set up the stable repository
```
❯ sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
```

Install the latest version of Docker CE,
```
❯ sudo yum -y install docker-ce
```

Start docker
```
❯ sudo systemctl start docker.service
```
### Run go-docker
Pull docker image
```
❯ sudo docker pull bassaer/go-docker
```

Show docker images
```
❯ sudo docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
bassaer/go-docker   latest              f7f8c28f0d53        4 days ago          790MB
```

Run server
```
❯ sudo docker run -p 8080:8080 --name go-server bassaer/go-docker
```

Send request
```
❯ curl 192.168.33.10:8080
OK
```
