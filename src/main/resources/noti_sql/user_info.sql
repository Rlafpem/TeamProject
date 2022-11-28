use ezen;

CREATE TABLE `USER_INFO` (
  `USER_NUM` int NOT NULL AUTO_INCREMENT,
  `USER_ID` VARCHAR(70) NOT NULL UNIQUE,
  `USER_NAME` varchar(70)  NOT NULL,
  `USER_EMAIL` varchar(40)  NOT NULL,
  `PASSWORD` VARCHAR(200) NOT NULL,
  `ROLE` varchar(45) DEFAULT 'ROLE_USER' ,
  PRIMARY KEY (`USER_NUM`)
);

INSERT INTO USER_INFO(USER_NAME, USER_ID,USER_EMAIL, PASSWORD, ROLE)
VALUES('TEST','TEST','test@test.com','$2a$10$L2MZTl98j51KWWKvCLuRgefrGGHVram//JoBuIz6YHiDbqtaW5yHm','ROLE_ADMIN');

SELECT APPLY_NUM  FROM APPLY A INNER JOIN STUDY B ON A.APPLY_MENTORID = B.STUDY_USER_ID WHERE B.STUDY_NUM = 240 AND A.APPLY_MENTEEID = 'mentee';