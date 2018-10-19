# Mysql using Docker container 
해당 코드는 내부에서 직접 MYSQL을 설치하지 않고, 도커를 활용하여 사용하는 방법을 정리한것이다.

## 사용순서
일반적으로 docker를 사용하여 로컬에서 mysql을 그냥 실행하게 되면 로컬에서 액세스가 제한된다.
이를 해결하기 위해서는 아래와 같이 해결가능하다.

### 루트 액세스 가능하게 실행
In .env file, there are several configuration in .env.

For root Sign-in
```
MYSQL_ROOT_PASSWORD=1111
MYSQL_ROOT_HOST=%
```

## 유저 생성

```
use mysql;
CREATE USER 'admin'@'%' IDENTIFIED WITH mysql_native_password BY '1111';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';
flush privileges;
```

### 권할 설정 방법
```/bash/bin shell
// Move to container
$ docker exec -it /bin/bash mysql1

// Access mysql server
bash-4.2# mysql -uarun -ppassword

// Grant privileges to 'admin'
mysql> GRANT ALL PRIVILEGES ON * . * TO 'admin'@'%';
Query OK, 0 rows affected (0.00 sec)
```

### 실행방법
아래의 명령어로 실행가능함
```
$ ./run_mysql.sh
```
### 종료 및 삭제 방법
docker 실행 시 '--rm' 옵션을 주었기 때문에 stop시 컨테이너가 바로 삭제됨.



