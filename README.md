# Docker 사용법
## 저장소에서 image 검색

   sudo docker search ubuntu
   
## image 가져오기

   sudo docker pull ubuntu

## local image 검색

   sudo docker images

## image 실행하기
image로부터 컨테이너를 생성하여 실행시킨다.

   sudo docker run -i -t ubuntu:latest 

## container 확인

   sudo docker ps -a

## container에 접속
container에 접속하려면 container가 반드시 시작된 상태여야 한다.

   sudo docker start abce
   sudo docker attach abcd


## commit images & push images to docker hub
    didw@jongyeol-gram:~/Docker/docker-sample$ 
    didw@jongyeol-gram:~/Docker/docker-sample$ sudo docker ps -a
    CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS                         PORTS               NAMES
    839eaa65d3f2        ubuntu:latest       "/bin/bash"         About an hour ago   Up About an hour                                   sharp_pike
    632eca718fcc        0a6ba66e537a        "/hello"            About an hour ago   Exited (0) About an hour ago                       reverent_meitner
    didw@jongyeol-gram:~/Docker/docker-sample$ 
    didw@jongyeol-gram:~/Docker/docker-sample$ sudo docker commit 839 ubuntu:14.04
    b643e6376bc2802699d291834dc536a654cdbe0535061a0e01a5b76c359a3e20
    didw@jongyeol-gram:~/Docker/docker-sample$ 
    didw@jongyeol-gram:~/Docker/docker-sample$ sudo docker images
    REPOSITORY          TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
    ubuntu              14.04               b643e6376bc2        9 seconds ago       230.6 MB
    ubuntu              latest              e9ae3c220b23        2 weeks ago         187.9 MB
    
    didw@jongyeol-gram:~/Docker/docker-sample$ sudo docker tag ubuntu:14.04 didw/ubuntu:14.04
    didw@jongyeol-gram:~/Docker/docker-sample$ sudo docker images
    REPOSITORY          TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
    didw/ubuntu         14.04               b643e6376bc2        39 seconds ago      230.6 MB
    ubuntu              14.04               b643e6376bc2        39 seconds ago      230.6 MB
    ubuntu              latest              e9ae3c220b23        2 weeks ago         187.9 MB
    didw@jongyeol-gram:~/Docker/docker-sample$ sudo docker login
    Username: didw
    Password: 
    Email: yangjy0113@gmail.com
    WARNING: login credentials saved in /home/didw/.docker/config.json
    Login Succeeded

    didw@jongyeol-gram:~/Docker/docker-sample$ sudo docker push didw/ubuntu:14.04
    The push refers to a repository [docker.io/didw/ubuntu] (len: 1)
    b643e6376bc2: Pushed 
    e9ae3c220b23: Pushed 
    a6785352b25c: Pushed 
    0998bf8fb9e9: Pushed 
    0a85502c06c9: Pushed 
    14.04: digest: sha256:8275161c714693984de47eb3508acd732bc04cf9c0e59d2fcb37310b65f13166 size: 8021
    didw@jongyeol-gram:~/Docker/docker-sample$ 

