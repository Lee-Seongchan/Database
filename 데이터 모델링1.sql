INSERT INTO `Student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`)VALUES('20101001',10,'P10101', '정우성','760121-1234567', '010-1101-7601','서울');
INSERT INTO `Student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`)VALUES('20101002',10,'P10101', '이정재','770611-1234567', '010-1102-7506','서울');
INSERT INTO `Student` VALUES ('20111011', 11, 'P11103', '전지현', '890530-1234567', '010-1103-8905', 'jjh@naver.com','대전');
INSERT INTO `Student` VALUES ('20111013', 11, 'P11103', '이나영', '790413-1234567', '010-2101-7904', 'lee@naver.com','대전');
INSERT INTO `Student` VALUES ('20111014', 11, 'P11104', '원빈', '660912-1234567', '010-2104-6609', 'one@daum.com','대전');
INSERT INTO `Student` VALUES ('21221010', 22, 'P22110', '장동건', '790728-1234567', '010-3101-7907', 'jang@naver.com','대구');
INSERT INTO `Student` VALUES ('22231002', 23, 'P23102', '고소영', '840615-1234567', '010-4101-8406', 'goso@daum.com','대구');
INSERT INTO `Student` VALUES ('22311014', 31, 'P31104', '김연아', '651021-1234567', '010-5101-6510', 'yuna@daum.com','대구');
INSERT INTO `Student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`)VALUES('22311014',31,'P31104', '유재석','920907-1234567', '010-6101-7211','부산');
INSERT INTO `Student` (`stdNo`,`depNo`,`proNo`,`stdName`,`stdJumin`,`stdHp`,`stdAddr`)VALUES('22401001',40,'P40101', '강호동','891209-1234567', '010-7104-8912','부산');
INSERT INTO `Student` VALUES ('22401002', 40, 'P31104', '조인성', '891209-1234567', '010-7104-8912', 'join@gmail.com','광주');
INSERT INTO `Student` VALUES ('22421003', 42, 'P31104', '강동원', '770314-1234567', '010-8101-7703', 'dong@naver.com','광주');

INSERT INTO `Department` VALUES(10, '국어국문학과', '051-510-1010');
INSERT INTO `Department` VALUES(11, '영어영문학과', '051-510-1011');
INSERT INTO `Department` VALUES(20, '경영학과', '051-510-1020');
INSERT INTO `Department` VALUES(21, '경제학과', '051-510-1021');
INSERT INTO `Department` VALUES(22, '정치외교학과', '051-510-1022');
INSERT INTO `Department` VALUES(23, '사회복지학과', '051-510-1023');
INSERT INTO `Department` VALUES(30, '수학과', '051-510-1030');
INSERT INTO `Department` VALUES(31, '통계학과', '051-510-1031');
INSERT INTO `Department` VALUES(32, '생명과학과', '051-510-1032');
INSERT INTO `Department` VALUES(40, '기계공학과', '051-510-1040');
INSERT INTO `Department` VALUES(41, '전자공학과', '051-510-1041');
INSERT INTO `Department` VALUES(42, '컴퓨터공학과', '051-510-1042');


INSERT INTO `Professor` VALUES ('P10101',10,'김유신','750120-1234567','010-1101-1976','kimys@ha.ac.kr','서울');
INSERT INTO `Professor` VALUES ('P10102',10,'계백','740610-1234567','010-1102-1975','gaeback@ha.ac.kr','서울');
INSERT INTO `Professor` VALUES ('P11101',11,'김관창','880529-1234567','010-1103-1989','kwanch@ha.ac.kr','대전');
INSERT INTO `Professor` VALUES ('P11103',11,'김춘추','780412-1234567','010-2101-1979','kimcc@ha.ac.kr','대전');
INSERT INTO `Professor` VALUES ('P11104',11,'이사부','650911-1234567','010-2104-1966','leesabu@ha.ac.kr','대전');
INSERT INTO `Professor` VALUES ('P22110',22,'장보고','780727-1234567','010-3101-1979','jangbg@ha.ac.kr','대구');
INSERT INTO `Professor` VALUES ('P23102',23,'선덕여왕','830614-1234567','010-4101-1984','gueen@ha.ac.kr','대구');
INSERT INTO `Professor` VALUES ('P31101',31,'강감찬','641020-1234567','010-5101-1965','kang@ha.ac.kr','대구');
INSERT INTO `Professor` VALUES ('P31104',31,'신사임당','711127-1234567','010-6101-1972','sinsa@ha.ac.kr','부산');
INSERT INTO `Professor` VALUES ('P40101',40,'이이','910906-1234567','010-7103-1992','leelee@ha.ac.kr','부산');
INSERT INTO `Professor` VALUES ('P40102',40,'이황','881208-1234567','010-7104-1989','hwang@ha.ac.kr','광주');
INSERT INTO `Professor` VALUES ('P42103',42,'송상현','760313-1234567','010-8101-1977','ssh@ha.ac.kr','광주');


INSERT INTO `Lectures` VALUES('101001', 'P10101', '대학 글쓰기', 2, 10, '본102');
INSERT INTO `Lectures` VALUES('101002', 'P10102', '한국어음운론', 3, 30, '본102');
INSERT INTO `Lectures` VALUES('101003', 'P10102', '현대현대문학사', 3, 30, '본103');
INSERT INTO `Lectures` VALUES('111011', 'P11103', '중세영문학', 3, 25, '본201');
INSERT INTO `Lectures` VALUES('111012', 'P11104', '영미시', 3, 25, '본201');
INSERT INTO `Lectures` VALUES('231110', 'P23102', '사회복지개론', 1, 8, '별관103');
INSERT INTO `Lectures` VALUES('311002', 'P31101', '통계학의 이해', 2, 16, '별관303');
INSERT INTO `Lectures` VALUES('311003', 'P31104', '기초 통계학', 3, 26, '별관303');
INSERT INTO `Lectures` VALUES('401019', 'P40101', '기계역학', 3, 36, '공학관102');
INSERT INTO `Lectures` VALUES('421012', 'P42103', '데이터베이스', 3, 32, '공학관103');


INSERT INTO `Register` (`stdNo`,`lecNo`,`proNo`) VALUES ('20101001', '101001','P10101');
INSERT INTO `Register` (`stdNo`,`lecNo`,`proNo`) VALUES ('20101001', '101002','P10102');
INSERT INTO `Register` (`stdNo`,`lecNo`,`proNo`) VALUES ('20111013', '111011','P11103');
INSERT INTO `Register` (`stdNo`,`lecNo`,`proNo`) VALUES ('21231002', '231110','P23102');
INSERT INTO `Register` (`stdNo`,`lecNo`,`proNo`) VALUES ('22401001', '401019','P40101');
INSERT INTO `Register` (`stdNo`,`lecNo`,`proNo`) VALUES ('22401001', '421012','P42103');
INSERT INTO `Register` (`stdNo`,`lecNo`,`proNo`) VALUES ('20101001', '101003','P10102');
INSERT INTO `Register` (`stdNo`,`lecNo`,`proNo`) VALUES ('22421003', '311003','P31104');
INSERT INTO `Register` (`stdNo`,`lecNo`,`proNo`) VALUES ('22421003', '421012','P42103');
INSERT INTO `Register` (`stdNo`,`lecNo`,`proNo`) VALUES ('20111013', '111012','P10104');


#문제 1 모든 학생의 학생번호, 이름, 휴대폰 번호, 학과번호, 학과명을 조회하시오.
SELECT `stdNo`,`stdName`, `stdHp`, a.`depNo`, `depName`
FROM `Student` AS a 
JOIN `Department` AS b 
ON a.depNo = b.depNo;

SELECT *
FROM `student`;


#문제2. 모든 교수의 교수번호, 이름, 휴대폰번호, 학과번호, 학과명을 조회하시오.
SELECT 
		`proNo`,
		`proName`,
		`proHp`,
		a.`depNo`,
		`depName`
FROM `Professor`AS a
JOIN `Department` AS b 
ON a.depNo = b.depNo;

#문제3. 모든 강좌의 강좌번호, 강좌명, 담당교수명, 휴대폰을 조회하시오.
SELECT `lecNo`,`lecName`, a.`proNo`, `proHp`
FROM `lectures` AS a 
JOIN `professor` AS b 
ON a.proNo = b.proNo;
#문제4.모든 강좌의 강좌번호, 강좌명, 담당교수 번호, 담당교수명, 휴대폰, 학과번호, 학과명을 조회하시오.
SELECT 
	`lecNo`, 
	`lecName`, 
	a.`proNo`,
	`proName`, 
	`proHp`,
	b.`depNo`,
	`depName`
FROM `lectures` AS a 
JOIN `professor` AS b 
ON a.proNo = b.proNo
JOIN `Department` AS c 
ON b.depNo = c.depNo; 


#문제5 수강신청 내에서 학생번호, 학생명, 강좌번호, 강좌명, 교수번호, 교수명을 조회하시오.
SELECT 
	b.`stdNo`,
	`stdName`, 
	e.`lecNo`,
	`lecName`,
	c.`proNo`,
	c.`proName`
FROM `register` AS a 
JOIN `Student` AS b 
ON a.stdNo = b.stdNo
JOIN `Professor` AS c 
ON b.proNo = c.proNo
JOIN `department` AS d 
ON c.depNo = d.depNo
JOIN `lectures` AS e 
ON b.proNo = e.proNo; 



# 문제 6 수강신청 테이블에 출석점수, 중간고사 점수, 기말고사 점수를 임의로 입력하시오
UPDATE `register` 
SET `regAttenScore` = 80 , `regMdiScore` = 100, `regFinalScore` = 70
	WHERE `stdNo` = '20101001' ;
	
UPDATE `register` 
SET `regAttenScore` = 55 , `regMdiScore` = 20, `regFinalScore` = 80
	WHERE `stdNo` = '20111013' ;	
	
UPDATE `Register` SET 
						`regAttenScore` = CEIL(RAND()*100),
						`regMdiScore`   = CEIL(RAND()*100),
						`regfinalScore` = CEIL(RAND()*100);

#문제 7 
UPDATE `register` SET 
							`regTotal` = (`regAttenScore` + `regMdiScore` + `regfinalScore`) / 3;
							

#문제 8
UPDATE `register` SET 
							`regGrade` = if(`regTotal` >= 90, 'A',
											 if(`regTotal` >= 80, 'B',
									       if(`regTotal` >= 70, 'C',
									       if(`regTotal` >= 60, 'D', 'F'))));
												


# 문제9. 
SELECT `regTotal` FROM `register` ORDER BY `regtotal` DESC LIMIT 1;

#문제 10. 수강 테이블에서 정우성 학생의 총점의 평균 조회
SELECT AVG(`regTotal`)
FROM `register` AS a
JOIN `Student` AS b
ON a.stdNo = b.stdNo 
WHERE stdName = '정우성' ; 