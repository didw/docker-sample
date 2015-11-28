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

