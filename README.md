# ubuntu1604

우분투 컨테이너를 편하게 사용하기 위한 repo 입니다.

user생성과 패스워드 설정을 할 수 있고, `ssh`를 통한 접근이 가능합니다.<br>
추가적인 port설정을 통해 간단히 웹서버를 테스트 해볼 수 있습니다.
## 시작하기
### docker와 docker compose 설치
1. 도커 설치하기

    [도커사이트](https://docs.docker.com/get-docker/)에서 자신의 운영체제에 맞는 도커를 설치합니다.
   - 만약 당신이 MacOS를 사용한다면, Docker Destop을 설치할 수 있습니다. 
   - 만약 당신이 ```sudo``` 없이 사용하고 싶다면, 도커를 설치한 후 터미널에서 다음 명령어를 이용하십시오.
  
        ```bash
        $ sudo usermod -aG docker $USER
        ```

2. Docker compose 설치하기

    [이 사이트](https://docs.docker.com/compose/install/)에 접속하고, docker compose를 설치하십시오.
    - MacOS를 사용중이라면, Docker compose는 docker Destop과 함께 설치됩니다. 

### 레포지토리 복제 및 실행

1. 레포지토리 복제

   ```bash
   $ git clone https://gitub.com/siner308/ubuntu1604
   ```

2. 실행하기
  - 복제한 폴더로 이동
    ```bash
    $ cd ubuntu1604
    ```
   - 실행하기
     ```bash
     $ docker-compose up -d #컨테이너를 백그라운드에서 실행합니다.
     ```
   - 실행중인 컨테이너 확인하기
     ```bash
     $ docker ps #ubuntu가 실행중인지 확인합니다
     ```
> docker-compose up 뒤에 -d 옵션은 도커를 백그라운드에서 실행할 수 있게 해줍니다.
3. 실행중인 도커에 접근하기

    다음 명령어를 통해서 unbuntu1604 컨테이너에 접근할 수 있습니다.
    ```bash
    $ docker exec -it ubuntu1604 bash
    ```
4. 컨테이너 종료하기
    다음 명령어를 통해서 컨테이너를 종료할 수 있습니다.
    ```bash
    $ docker-compose down
    ```
    
---
This is a repo for ease of using Ubuntu containers.

You can create a user, set a password, and access it via `ssh`.<br>
You can test the web server simply by configuring additional ports.

## How to start

### Install docker & docker compose
1. Install Docker 
   
   Visit [this website](https://docs.docker.com/get-docker/) and install docker what your os supports.
   - If you are using MacOS, you can install docker desktop.
   - If you want to use docker without ```sudo```, After installing Docker,Run the following command on your Unix system.   
        ```bash
        sudo usermod -aG docker $USER
        ``` 


2. Install Docker compose   
  Visit [this page](https://docs.docker.com/compose/install/) and install docker compose.
   - If you are using MacOS, docker compose is installed with docker desktop at once.

### Clone & Run

1. clone this repository
   ```bash
   $ git clone https://gitub.com/siner308/ubuntu1604
   ```
2. Run docker
 - Move to the cloned repository. 
    ```bash
    $ cd ubuntu1604
    ```
- Run Docker in background
    ```bash
    $ docker-compose up -d # execute container in background
    ```
- check running conatainer
    ```bsah
    $ docker ps # check ubuntu is running
    ```
> -d option after docker-compose up will docker can be run background.

1. Accessing a running ubuntu container 
    you can access ubuntu1604 using following commnad:
     ```bash
     $ docker exec -it ubuntu1604 bash
     ```

4. Down container
    You can down container using following command:
    ```bash
    $ docker-compose down
    ```
    
