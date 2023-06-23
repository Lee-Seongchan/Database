# 날짜 : 2023/06/23
# 이름 : 이성찬
# 내용 SQL 연습문제4 



#실습 4-1
CREATE DATABASE `BookStore`;
CREATE USER 'admin4'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `BookStore`.* TO 'admin4'@'%';
FLUSH PRIVILEGES 



#실습 4-2
CREATE TABLE `Customer`(
	`custId`	INT AUTO_INCREMENT PRIMARY KEY, 
	`name` VARCHAR(10) NOT NULL ,
	`address` VARCHAR(20) DEFAULT NULL,
	`phone` CHAR(13) DEFAULT NULL
);

CREATE TABLE `Book`(
	`bookId`	INT PRIMARY KEY,
	`bookName` VARCHAR(20) NOT NULL, 
	`publisher` VARCHAR(20) NOT NULL,
	`price` INT DEFAULT NULL 
);

CREATE TABLE `Order`(
	`orderId`	INT AUTO_INCREMENT PRIMARY KEY,
	`custId` 	INT NOT NULL,
	`bookId`		INT NOT NULL,
	`salePrice`	INT NOT NULL,
	`orderDate`	DATE NOT NULL
);
#실습 4-3
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES('박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES('김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES('장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES('추신수', '미국 클리브랜드', '000-8000-0001');
INSERT INTO `Customer` (`name`, `address`) VALUES('박세리', '대한민국 대전타');


INSERT INTO `book` (`bookid`, `bookname`, `publisher`,`price`) VALUES (1,'축구의 역사','굿스포츠',7000);
INSERT INTO `book` (`bookid`, `bookname`, `publisher`,`price`) VALUES (2,'축구 아는 여자','나무수',13000);
INSERT INTO `book` (`bookid`, `bookname`, `publisher`,`price`) VALUES (3,'축구의 이해','대한미디어',22000);
INSERT INTO `book` (`bookid`, `bookname`, `publisher`,`price`) VALUES (4,'골프 바이블','대한미디어',35000);
INSERT INTO `book` (`bookid`, `bookname`, `publisher`,`price`) VALUES (5,'피겨 교본','굿스포츠',8000);
INSERT INTO `book` (`bookid`, `bookname`, `publisher`,`price`) VALUES (6,'역도 단계별기술','굿스포츠',6000);
INSERT INTO `book` (`bookid`, `bookname`, `publisher`,`price`) VALUES (7,'야구의 추억','이상미디어',20000);
INSERT INTO `book` (`bookid`, `bookname`, `publisher`,`price`) VALUES (8,'야구를 부탁해','이상미디어',13000);
INSERT INTO `book` (`bookid`, `bookname`, `publisher`,`price`) VALUES (9,'올림픽 이야기','삼성당',7500);
INSERT INTO `book` (`bookid`, `bookname`, `publisher`,`price`) VALUES (10,'Olympic Champions','Person',13000);


INSERT INTO `Order` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1, 1, 6000, '2014-07-01'); 
INSERT INTO `Order` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1, 3, 21000, '2014-07-03'); 
INSERT INTO `Order` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (2, 5, 8000, '2014-07-03'); 
INSERT INTO `Order` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3, 6, 6000, '2014-07-04'); 
INSERT INTO `Order` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (4, 7, 20000, '2014-07-05'); 
INSERT INTO `Order` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1, 2, 12000, '2014-07-07'); 
INSERT INTO `Order` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (4, 8, 13000, '2014-07-07'); 
INSERT INTO `Order` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3, 10, 12000, '2014-07-08'); 
INSERT INTO `Order` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (2, 10, 7000, '2014-07-09'); 
INSERT INTO `Order` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3, 8, 13000, '2014-07-10'); 

#실습 4-4
SELECT `custid`, `name`, `address`
FROM `Customer`;

#실습 4-5
SELECT `bookname`,`price`
FROM `Book`;

#실습 4-6
SELECT `price`,`bookname`
FROM `Book`;

#실습 4-7
SELECT `bookid`, `bookname`, `publisher`,`price`
FROM `Book`;

#실습 4-8
SELECT `publisher`
FROM `book`;

#실습 4-9
SELECT DISTINCT `publisher`
FROM `book`;

SELECT `publisher` 
FROM `book`
GROUP BY `publisher`;


#실습 4-10
SELECT `bookid`, `bookname`, `publisher`, `price`
FROM `book`
WHERE `price` >= 20000;

#실습 4-11
SELECT `bookid`, `bookname`, `publisher`,`price`
FROM `book`
WHERE `price` < 20000;

#실습 4-12
SELECT `bookid`, `bookname`, `publisher`,`price`
FROM `book`
WHERE `price` BETWEEN 10000 AND 20000;


#실습 4-13
SELECT `bookid`, `bookname`,`price`
FROM `book`
WHERE `price` BETWEEN 15000 AND 30000;


#실습 4-14
SELECT `bookid`, `bookname`, `publisher`,`price`
FROM `book`
WHERE `bookid` = 2 OR `bookid`= 3 OR `bookid`=5;

SELECT `bookid`, `bookname`, `publisher`,`price`
FROM `book`
WHERE `bookid` IN(2, 3, 5);


#실습 4-15
SELECT `bookid`, `bookname`, `publisher`,`price`
FROM `book`
WHERE (bookid % 2) = 0;

SELECT `bookid`, `bookname`, `publisher`,`price`
FROM `book`
WHERE MOD(bookid,2) = 0;



#실습 4-16
SELECT `custid`, `name`, `address`, `phone`
FROM `Customer` 
WHERE `name` LIKE '박%';

#실습 4-17
SELECT `custid`, `name`, `address`, `phone`
FROM `Customer` 
WHERE `address` LIKE '대한민국%';


#실습 4-18
SELECT `custid`, `name`, `address`, `phone`
FROM `Customer` 
WHERE `phone` IS NOT NULL;


#실습 4-19
SELECT `bookid`, `bookname`, `publisher`,`price`
FROM `book`
WHERE `publisher` = '굿스포츠' OR `publisher` = '대한미디어';


#실습 4-20
SELECT `publisher`
FROM `book`
WHERE `bookname` = '축구의 역사';

#실습 4-20
SELECT `publisher`
FROM `book`
WHERE `bookname` LIKE '%축구%';

#실습 4-21
SELECT `bookid`, `bookname`, `publisher`,`price`
FROM `book`
WHERE `publisher` = '굿스포츠' OR `publisher` = '대한미디어';

#실습 4-22
SELECT `bookid`, `bookname`, `publisher`,`price`
FROM `book`
WHERE `bookname` LIKE '_구%';

#실습 4-23
SELECT `bookid`, `bookname`, `publisher`,`price`
FROM `book`
WHERE `bookname` LIKE '축구%' AND `price` >= 20000;


#실습 4-24
SELECT * 
FROM `book`
order BY `bookname`;

#실습 4-25
SELECT * 
FROM `book`
order BY `price`, `bookname`;

#실습 4-26
SELECT * 
FROM `book`
order BY `price` DESC, `bookname`;


#실습 4-27
SELECT * 
FROM `book` 
ORDER BY `price` DESC
LIMIT 3;

#실습 4-28
SELECT * 
FROM `book` 
ORDER BY price
LIMIT 3;

#실습 4-29
SELECT SUM(`salePrice`) AS `총판매액`
FROM `Order`;


#실습 4-30
SELECT SUM(`salePrice`) AS 총판매액, 
		 AVG(`salePrice`) AS 평균값, 
		 MIN(`salePrice`) AS 최저가, 
		 MAX(`salePrice`) AS 최고가
FROM `Order`;

SELECT *
FROM `Order`;

#실습 4-31
SELECT COUNT(orderid) AS `판매건수`
FROM `Order`;

#실습 4-32
SELECT 
	`bookid`,
	REPLACE(`bookName`,'야구','농구') AS `bookname`,
	`publsher`,
	`price`,
FROM `book`;


UPDATE `BOOK`
SET `Bookname` = REPLACE(`bookname`,'야구','농구')
WHERE `Bookname` LIKE '%야구%' ;

SELECT *
FROM `book`;


#실습 4-33

SELECT `custid`, COUNT(custid) AS `수량`
FROM `Order`
WHERE saleprice >= 8000
GROUP BY `custid`
HAVING `수량` >= 2;


#실습 4-34
SELECT *
FROM `Customer` AS a 
JOIN `Order` AS b 
ON a.custId = b.custId;

SELECT *
FROM `Customer`
JOIN `Order` 
USING(`custId`);

SELECT * 
FROM `Customer` a, `Order` b 
WHERE a.custId = b.custId;


#실습 4-35
SELECT *
FROM `Customer` AS a 
JOIN `Order` AS b 
ON a.custId = b.custId
order BY a.`custid`;


#실습 4-36
SELECT `name`, `saleprice`
FROM `Customer` AS a 
JOIN `Order` AS b 
ON a.custId = b.custId;


#실습 4-37
SELECT `name`, SUM(`saleprice`) 
FROM `Customer` AS a 
JOIN `Order` AS b 
ON a.custId = b.custId
GROUP BY a.custid
ORDER BY `name`; 


#실습 4-38
SELECT `name`, `bookname`
FROM `Customer` AS a 
JOIN `Order` AS b 
ON a.custId = b.custId
JOIN `book` AS c 
ON b.bookid  = c.bookid;




#실습 4-39
SELECT `name`, `bookname`
FROM `Customer` AS a 
JOIN `Order` AS b 
ON a.custId = b.custId
JOIN `book` AS c 
ON b.bookid  = c.bookid
WHERE b.`saleprice` = 20000;


#실습 4-40
SELECT `name`, `price`
FROM `Customer` AS a 
LEFT JOIN `Order` AS b 
ON a.custId = b.custId
LEFT JOIN `book` AS c 
ON b.bookid  = c.bookid;


SELECT `name`, `saleprice`
FROM `Customer` AS a 
LEFT JOIN `Order` AS b 
ON a.custId  = b.custid;


SELECT *
FROM `customer`;

SELECT * 
FROM `order`;

SELECT *
FROM `book`;



#실습 4-41

SELECT SUM(`saleprice`) AS '총매출'
FROM `Customer` AS a 
JOIN `Order` AS b 
ON a.custId = b.custId
JOIN `book` AS c 
ON b.bookid  = c.bookid
WHERE a.`name` = '김연아';

SELECT SUM(`saleprice`) AS '총매출'
FROM `Customer` AS a 
JOIN `Order` AS b 
ON a.custId = b.custId 
WHERE `name` = '김연아';


SELECT 
SUM(`salePrice`) AS  `총매출`
FROM `order`
WHERE `custid`=(SELECT `custid` FROM `Customer` WHERE `name` = '김연아');




#실습 4-42
SELECT `bookname`
FROM `book` 
order BY `price`DESC
LIMIT 1;


SELECT `bookname`
FROM `book` 
WHERE `price`=(SELECT MAX(`price`) FROM `Book`); 


#실습 4-43
SELECT `name`
FROM `Customer` AS a 
LEFT JOIN `Order` AS b 
ON a.custId = b.custId
LEFT JOIN `book` AS c 
ON b.bookid  = c.bookid
WHERE b.`saleprice` IS NULL; 


SELECT `name`
FROM `Customer` AS a 
LEFT JOIN `Order` AS b 
ON a.custId = b.custId
WHERE `orderId` IS NULL; 


#실습 4-44
INSERT INTO `book` (`bookid`,`bookname`,`publisher`) VALUES(11,'스포츠의학','한솔의학서적'); 

#실습 4-45
UPDATE `Customer` 
SET address = '대한민국 부산'
WHERE custid = 5;

#실습 4-46
DELETE FROM `Customer`
WHERE custid = 5;

