Emp
USERID(PK)	아이디(PK)	VARCHAR2(50)	NOT NULL
EMPNO	사원번호	NUMBER	NOT NULL
EMPPWD	암호	VARCHAR2(100)	NOT NULL
ENAME	이름	VARCHAR2(50)	NOT NULL
EMPTEL	사내전화	VARCHAR2(50)	NULL
DEPTCODE(FK)	부서코드(FK)	NUMBER	NOT NULL
TEAMCODE(FK)	팀 코드(FK)	NUMBER	NOT NULL
POSCODE(FK)	직급코드(FK)	NUMBER	NOT NULL
EMPAPPROVE	승인여부	NUMBER	NOT NULL


INSERT INTO EMP(USERID,EMPNO,EMPPWD,ENAME,EMPTEL,DEPTCODE,TEAMCODE,POSCODE,EMPAPPROVE) VALUES(?,EMP_EMPNO.NEXTVAL,?,?,?,?,?,?,0);
--계쩡 삽입

update EMP SET EMPAPPROVE = 1 where USERID=?;
--승인여부 업데이트

select * from EMP WHERE EMPAPPROVE = 0;
--승인처리 되지않은 계정들 불러오기

UPDATE EMP set EMPPWD=?,ENAME=?,EMPTEL=?,DEPTCODE=?,TEAMCODE=?,POSCODE=? WHERE USERID=?;
--사원 계정 수정

SELECT * FROM EMP WHERE USERID=?;

create sequence EMP_EMPNO
start with 1
increment by 1
nocache;
--EMPNO 시퀀스

EmpInfo
USERID(PK)(FK)	아이디(PK)(FK)	VARCHAR2(50)	NOT NULL
USERPHOTO	사진	VARCHAR2(100)	NULL
USEREMAIL	이메일	VARCHAR2(50)	NULL
BIRTH	생년월일	DATE	NULL
USERADDR	자택주소	VARCHAR2(100)	NULL
USERTEL	자택전화	VARCHAR2(50)	NULL
USERMOBILE	핸드폰	VARCHAR2(50)	NULL
HIREDATE	입사일	DATE	NULL
FIREDATE	퇴사일	DATE	NULL

insert into empinfo(USERID,USERPHOTO,USEREMAIL,BIRTH,USERADDR,USERTEL,USERMOBILE,HIREDATE,FIREDATE) values(?,?,?,?,?,?,?,sysdate,?);
--개인정보 삽입

UPDATE EMPINFO SET USERPHOTO=?,USEREMAIL=?,USERADDR=?,USERTEL=?,USERMOBILE=?,FIREDATE WHERE USERID=?;

SELECT * FROM EMPINFO WHERE USERID=?;


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             