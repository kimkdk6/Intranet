--스케쥴 SQL

스케쥴 카테고리	 SCHCategory
카테고리 코드(PK)	CATECODE(PK)	NUMBER	NOT NULL
카테고리 이름	CATENAME	VARCHAR2(100)	NOT NULL
부서코드(FK)	DEPTCODE(FK)	NUMBER	NULL
팀 코드(FK)	TEAMCODE(FK)	NUMBER	NULL
아이디(FK)	USERID(FK)	VARCHAR2(50)	NOT NULL
카테고리 내용	CATECONTENT	VARCHAR2(1000)	NOT NULL
카테고리 색깔	COLOR	VARCHAR2(100)	NOT NULL


insert into SCHCATEGORY(CATECODE,CATENAME,DEPTCODE,TEAMCODE,USERID,CATECONTENT,COLOR) values(SCHCATEGORY_CATECODE.NEXTVAL,?,?,?,?,?,?);

-- 부서코드가 not null 팀코드가	 null  일경우 부서스케쥴
-- 부서코드가	  null 팀코드가  not null 일경우 팀스케쥴
-- 부서코드가	  null 팀코드가 	 null  일경우 개인스케쥴


select * from SCHCATEGORY where userid=?;
--내 카테고리(관리) USERID가 나인것만 찾으면됨...

select * from SCHCATEGORY where userid != ? and DEPTCODE = (select DEPTCODE from emp where USERID = ?);
--부서 카테고리 USERID가 내가 아니면서, DEPTCODE 는 내코드인것.

select * from SCHCATEGORY where userid != ? and TEAMCODE = (select TEAMCODE from emp where USERID = ?);
--팀 카테고리 USERID가 내가 아니면서 , TEAMCODE는 내 코드인것


delete from SCHCATEGORY where CATECODE = ?;
--카테고리 삭제...


스케쥴		Schedule
SCHNUM(PK)	스케쥴번호(PK)	NUMBER	NOT NULL
CATECODE(FK)	카테고리 코드(FK)	NUMBER	NOT NULL
USERID(FK)	아이디(FK)	VARCHAR2(50)	NOT NULL
SCSTART	시작시간	DATE	NOT NULL
SCEND	끝나는시간	DATE	NOT NULL
SCTITLE	제목	VARCHAR2(100)	NOT NULL
SCCONTENT	내용	VARCHAR2(1000)	NOT NULL


insert into SCHEDULE(SCHNUM,CATECODE,USERID,SCSTART,SCEND,SCTITLE,SCCONTENT) values(SCHEDULE_SCHNUM.NEXTVAL,?,?,?,?,?,?);
-- 일정추가 카테고리가 먼저 등록이 되어있어야 하며 등록된 카테고리코드를 이용함.

select * from SCHEDULE where CATECODE=카테고리코드;

update SCHEDULE set CATECODE= ? ,SCSTART= ? ,SCEND= ? ,SCTITLE= ? ,SCCONTENT= ? where SCHNUM = ?;

delete from SCHEDULE where SCHNUM = ?;


