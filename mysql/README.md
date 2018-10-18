# Mysql using Docker container 
해당 코드는 내부에서 직접 MYSQL을 설치하지 않고, 도커를 활용하여 사용하는 방법을 정리한것이다.

## how to setup
In .env file, there are several configuration in .env.
```
MYSQL_ROOT_PASSWORD=1111
MYSQL_DATABASE=whalex
MYSQL_USER=admin
MYSQL_PASSWORD=1111
```

### Privileges
```/bash/bin shell
// Move to container
$ docker exec -it /bin/bash mysql1

// Access mysql server
bash-4.2# mysql -uarun -ppassword

// Grant privileges to 'admin'
mysql> GRANT ALL PRIVILEGES ON * . * TO 'admin'@'%';
Query OK, 0 rows affected (0.00 sec)
```

### 


