#날짜 : 2023/06/16
#이름 : 이성찬
#내용 : 3. 데이터베이스 관리

#실습 3-1 
CREATE DATABASE `TestDB`;
CREATE USER 'test'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON TestDB.* TO 'tester'@'%';
FLUSH PRIVILEGES;

#실습 3-2
ALTER USER 'test'@'%' IDENTIFIED BY '12345';
FLUSH PRIVILEGES;

