#날짜 : 2023/06/20
#이름 : 이성찬
#내용 : SQL 연습문제 1

#실습 1-1
CREATE DATABASE`SHOP`;
CREATE USER 'admin1'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON Shop.* TO 'admin1'@'%';
FLUSH PRIVILEGES;
#실습 1-2
CREATE TABLE `Customer`(
	`custld` VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10) DEFAULT NULL,
	`hp`	CHAR(13) UNIQUE KEY, 
	`addr`	VARCHAR(100) DEFAULT NULL,
	`rdate` DATE NOT NULL
);

CREATE TABLE `Product`(
	`proNo` INT PRIMARY KEY,
	`prodName` VARCHAR(10) NOT NULL,
	`stock` INT DEFAULT 0,
	`price` INT DEFAULT NULL,
	`company` VARCHAR(10) NOT NULL
);

CREATE TABLE `Order`(
	`orderNo`	INT PRIMARY KEY,
	`orderld`	VARCHAR(10) NOT NULL,
	`orderProduct` INT NOT NULL,
	`orderCount`INT DEFAULT 1,
	`orderDate` DATETIME NOT null
);

#실습 1-3
INSERT INTO `Customer` (`custld`,`name`,`hp`,`addr`,`rdate`)VALUES('c101', '김유신', '010-1234-1001', '김해시 봉황동', '2022-01-01');
INSERT INTO `Customer` (`custld`,`name`,`hp`,`addr`,`rdate`)VALUES('c102', '김춘추', '010-1234-1002', '경주시 보문동', '2022-01-02');
INSERT INTO `Customer` (`custld`,`name`,`hp`,`addr`,`rdate`)VALUES('c103', '장보고', '010-1234-1003', '완주군 청산면', '2022-01-03');
INSERT INTO `Customer` (`custld`,`name`,`hp`,`addr`,`rdate`)VALUES('c104', '강감찬', '010-1234-1004', '서울시 마포구', '2022-01-04');
INSERT INTO `Customer` (`custld`,`name`,`rdate`)VALUES('c105', '이성계', '2022-01-05');
INSERT INTO `Customer` (`custld`,`name`,`hp`,`addr`,`rdate`)VALUES('c106', '정철', '010-1234-1006', '경기도 용인시동', '2022-01-06');
INSERT INTO `Customer` (`custld`,`name`,`rdate`)VALUES('c107', '허준', '2022-01-07');
INSERT INTO `Customer` (`custld`,`name`,`hp`,`addr`,`rdate`)VALUES('c108', '이순신', '010-1234-1008', '서울시 영등포구', '2022-01-08');
INSERT INTO `Customer` (`custld`,`name`,`hp`,`addr`,`rdate`)VALUES('c109', '송상현', '010-1234-1009', '부산시 동래구동', '2022-01-09');
INSERT INTO `Customer` (`custld`,`name`,`hp`,`addr`,`rdate`)VALUES('c110', '정약용', '010-1234-1010', '경기도 광주시', '2022-01-10');

INSERT INTO `Product` VALUES('1','새우깡','5000','1500','농심');
INSERT INTO `Product` VALUES('2','초고파이','2500','2500','오리온');
INSERT INTO `Product` VALUES('3','포카칩','3600','1700','오리온');
INSERT INTO `Product` VALUES('4','양파링','1250','1800','농심');
INSERT INTO `Product` (`proNo`,`prodName`,`stock`,`company`) VALUES(5,'죠리퐁',2200,'크라운');
INSERT INTO `Product` VALUES('6','마가렛트','3500','3500','롯데');
INSERT INTO `Product` VALUES('7','뿌셔뿌셔','1650','1200','오뚜기');

INSERT INTO `Order` VALUES (1,'c102', 3, 2, '2022-07-01 13:15:10');
INSERT INTO `Order` VALUES (2,'c101', 4, 1, '2022-07-01 14:16:11');
INSERT INTO `Order` VALUES (3,'c108', 1, 1, '2022-07-01 17:23:18');
INSERT INTO `Order` VALUES (4,'c109', 6, 5, '2022-07-02 10:46:36');
INSERT INTO `Order` VALUES (5,'c102', 2, 1, '2022-07-03 09:15:37');
INSERT INTO `Order` VALUES (6,'c101', 7, 3, '2022-07-03 12:15:12');
INSERT INTO `Order` VALUES (7,'c110', 4, 2, '2022-07-03 16:55:36');
INSERT INTO `Order` VALUES (8,'c104', 2, 4, '2022-07-04 14:23:23');
INSERT INTO `Order` VALUES (9,'c102', 1, 3, '2022-07-04 21:54:34');
INSERT INTO `Order` VALUES (10,'c107', 6, 1, '2022-07-05 14:21:03');



#실습 1-4
SELECT * FROM `Customer`;

#실습 1-5
SELECT `custld`, `name`, `hp`
FROM `Customer`;
#실습 1-6
SELECT * 
FROM `Product`;

#실습 1-7
SELECT company
FROM `Product`;

#실습 1-8
SELECT DISTINCT `company`
FROM `Product`


#실습 1-9
SELECT `prodName`, `price`
FROM `Product`;

#실습 1-10
SELECT `prodName`, `price` + 500 AS `조정단가`
FROM `Product`;

#실습 1-11
SELECT `prodName`, `stock`, `price`
FROM `Product`
WHERE `company` = '오리온'

#실습 1-12
SELECT `orderProduct`, `orderCount`, `orderDate` 
FROM `Order`
WHERE `orderld` = 'c102';


#실습 1-13
SELECT `orderProduct`, `orderCount`, `orderDate` 
FROM `Order`
WHERE `orderld` = 'c102' AND orderProduct >= 2;

#실습 1-14
SELECT * 
FROM `Product` 
WHERE `price` BETWEEN 1000 AND 2000;

SELECT * 
FROM `Product` 
WHERE `price` >= 1000 AND `price` <= 2000;

#실습 1-15
SELECT `custld`, `name`, `hp`, `addr`
FROM  `Customer` 
WHERE `name` LIKE '김%';


#실습 1-16
SELECT `custld`, `name`, `hp`, `addr`
FROM  `Customer` 
WHERE `name` Like '__';

#실습 1-17
SELECT `custld`, `name`, `hp`, `addr`,`rdate`
FROM  `Customer` 
WHERE `hp` IS NULL;

#실습 1-18
SELECT `custld`, `name`, `hp`, `addr`,`rdate`
FROM  `Customer` 
WHERE `addr` IS NOT NULL;


#실습 1-19
SELECT `custld`, `name`, `hp`, `addr`,`rdate`
FROM  `Customer` 
ORDER BY `rdate` DESC;

#실습 1-20
SELECT *
FROM `Order`
WHERE `orderCount` >= 3 
ORDER BY `orderCount` DESC,
			`orderld` ASC;
			
#실습 1-21
SELECT AVG(`price`)
FROM `Product`;

#실습 1-22
SELECT SUM(`stock`) AS `재고량 합계`
FROM `Product`
WHERE company = '농심';

#실습 1-23
SELECT COUNT(`custld`) AS `고객수`
FROM `Customer`;

#실습 1-24
SELECT COUNT(DISTINCT `company`) AS `제조업체 수`
FROM `Product`;

#실습 1-25
SELECT `orderProduct` AS `주문 상품번호`, SUM(`orderCount`) AS `총 주문수량`
FROM `Order`
GROUP BY `orderProduct`
ORDER BY `orderProduct`;


#실습 1-26
SELECT *
FROM `Product`

SELECT `company` AS `제조업체`, COUNT(*) AS `제품수`, MAX(`price`) AS `최고가` 
FROM `Product`
GROUP BY `company`;

#실습 1-27
SELECT `company` AS `제조업체`, COUNT(*) AS `제품수`, MAX(`price`) AS `최고가` 
FROM `Product`
GROUP BY `company`
HAVING `제품수` >=2;

#실습 1-28
SELECT *
FROM `Order`;

SELECT `orderProduct`, `orderld`,SUM(`orderCount`)AS `총 주문수량` 
FROM `Order`
GROUP BY `orderProduct`, `orderld`
order BY `orderProduct`;


#실습 1-29
SELECT a.orderld, b.prodName
FROM `Order` AS a
JOIN `Product`AS b  
ON a.orderProduct = b.proNo
WHERE `orderld` = 'c102';

#실습 1-30
SELECT `orderld`, `name`, `prodName`,`orderDate` 
FROM `Order` AS a
JOIN `Customer` AS b
ON a.orderld = b.custld
JOIN `product` AS c 
ON a.orderProduct = c.proNo
WHERE SUBSTR(`orderDate`, 1, 10) = '2022-07-03';

