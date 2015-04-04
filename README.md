# docker mysql

- build
  ```
  docker build --tag mysql-test .
  ```
  
- run (init.sql 자동 실행)
  ```
  docker run --name mysql-test -e MYSQL_ROOT_PASSWORD=mysql -e MYSQL_USER=dev -e MYSQL_PASSWORD=dev -e MYSQL_DATABASE=dev -p 3306:3306 -d mysql:latest
  ```

- sql 실행 (optional)
  ```
  docker exec -i mysql-test mysql -udev -pdev dev < ./init-script.sql 
  ```
  
- process 가 foreground로 실행 되어야함.(종료되면 docker contianer 도 종료)
