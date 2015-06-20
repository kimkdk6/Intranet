
Board
BOARDCODE(FK)	게시판코드(FK)	NUMBER	NOT NULL
BOARDNUM(PK)	게시글번호(PK)	NUMBER	NOT NULL
BOARDNOTICE	공지여부	NUMBER	NULL
USERID(FK)	아이디(FK)	VARCHAR2(50)	NOT NULL
BOARDTITLE	글제목	VARCHAR2(100)	NOT NULL
BOARDCONTENT	글내용	VARCHAR2(1000)	NOT NULL
BOARDDATE	작성일	DATE	NOT NULL
BOARDCOUNT	조회수	NUMBER	NOT NULL
BOARDFILESRC	파일경로	VARCHAR2(100)	NULL
BOARDREF	답글	NUMBER	NULL
BOARDDEPTH	들여쓰기	NUMBER	NULL
BOARDSTEP	답글계층	NUMBER	NULL

NUM,    ref,  depth,  step 
1        1      0       0                원본 
2        1      1       4 +1 4           1번 답변
3        1      1       3 +1 3           현재 1 step 0 보다 큰것 +1
4        1      1       1
5        5      0       0
6        1      2       2                 4번 답변글에 대한 답변


select * from board order by ref desc , step asc;

--답글 : 최신 답변이 위로
--화면출력
  5번 ....
  1번
    4번
      6번
    3번
    2번

NUM,    ref,  depth,  step 
1		1		0		0
2		1		1		1+1+1
3		1		1		1+1
4		1		1		1
5		5		0		0
6		1		?		?		4번글의 대한 답변
								4번글의 refer는 4가아닌 1이다 1번글의 답글이기때문이다. 그러기에 6번글의 refer값은 1을 따라간다. (원본글의 refer 값을 따라감.)
								4번글의 depth는 1이다 그러기에 6번글의 depth값은 1에 +1 값엔 2가된다.						  (원본글의 depth값에 +1 하면된다.)
								4번글의 step은 1이다. refer가 1인 글들의 step을 +1해주고 6번글은 원본글 step에 +1값을 넣어주면 된다.	(원본글의 step값에 +1 하면된다.)
																													(원본글 refer와 같고 원본글의 step보다 큰 글들의 step 값을 +1해준다)

NUM,    ref,  depth,  step 
1		1		0		0
2		1		1		3+1
3		1		1		2+1
4		1		1		1
5		5		0		0
6		1		2		(1+1)
																													   
하지만 이 로직을 따라갈 경우 3번글에 답글을 달경우 STEP은 어찌 될것인가?

NUM,    ref,  depth,  step 
1		1		0		0
2		1		1		4
3		1		1		3
4		1		1		1
5		5		0		0
6		1		2		2


--답글 : 최신 답변이 위로
--화면출력
  5번 ....
  1번
    4번
      6번
    3번
      7번
    2번



결국 답글에서 STEP 값은 원본글의 step값 이상값을 가진 글들의 step을 1씩 올리고
새로 들어오는 답글이 원본글의 step값을 가진다

BUT 
원본글 STEP이 0인경우는 STEP값에 1이 들어간다.



정리
글쓰기

NUM:  시퀀스 값 사용
REFER: NVL(MAX(NUM),0)+1
DEPTH: 기본값인 0
STEP : 기본값인 0

답글쓰기
NUM:  시퀀스 값 사용
REFER:원본글의 REFER 값을 따라간다.
DEPTH:원본글의 DEPTH 값에 +1 
STEP: 원본글의 STEP 값에 +1 해주면 된다
	  단 원본글의 REFER 값과 같고 원본글의 STEP 값보다 큰 글들의 STEP 값을 +1 만큼 해준다

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
본격적인 SQL문 시작

글쓰기


Board
BOARDCODE(FK)	게시판코드(FK)	NUMBER	NOT NULL
BOARDNUM(PK)	게시글번호(PK)	NUMBER	NOT NULL
BOARDNOTICE	공지여부	NUMBER	NULL
USERID(FK)	아이디(FK)	VARCHAR2(50)	NOT NULL
BOARDTITLE	글제목	VARCHAR2(100)	NOT NULL
BOARDCONTENT	글내용	VARCHAR2(1000)	NOT NULL
BOARDDATE	작성일	DATE	NOT NULL
BOARDCOUNT	조회수	NUMBER	NOT NULL
BOARDFILESRC	파일경로	VARCHAR2(100)	NULL
BOARDREF	답글	NUMBER	NULL
BOARDDEPTH	들여쓰기	NUMBER	NULL
BOARDSTEP	답글계층	NUMBER	NULL


select * from board order by ref desc , step asc;
--보드리스트 기본적인 로직...

insert into Board(BOARDCODE,BOARDNUM,BOARDNOTICE,USERID,BOARDTITLE,BOARDCONTENT,BOARDDATE,BOARDCOUNT,BOARDFILESRC,BOARDREF,BOARDDEPTH,BOARDSTEP)
values(?,board_boardnum.nextval,?,?,?,?,?,?,?,NVL(MAX(NUM),0)+1,0,0); 
--새글쓰기

update Board set BOARDNOTICE=?, USERID=?, BOARDTITLE=?, BOARDCONTENT=?, BOARDFILESRC=? where BOARDNUM=?;
--글 수정 하기

update BOARD SET BOARDCOUNT=BOARDCOUNT+1 where BOARDNUM=?;
--조회수 올리기

delete from BOARD where BOARDNUM=?;
--글 삭제하기.

select NVL(MAX(NUM),0)+1 from board;


--답글쓰기에 필요한 쿼리문--

select * from board where BOARDNUM=?;
--원본글의 REFER,DEPTH,STEP 값이 필요하다.
--원본글의 게시판 코드도 필요할까??.



Reply	댓글
REPLYNUM(PK)	댓글번호(PK)	NUMBER	NOT NULL
BOARDNUM(FK)	게시글번호(FK)	NUMBER	NOT NULL
USERID(FK)	아이디(FK)	VARCHAR2(50)	NOT NULL
REPLYCONTENT	글내용	VARCHAR2(1000)	NOT NULL
REPLYDATE	작성일	DATE	NOT NULL

select * from Reply where BOARDNUM=? order by REPLYDATE asc;
--해당게시글의 댓글들 보기

insert into Reply(REPLYNUM,BOARDNUM,USERID,REPLYCONTENT,REPLYDATE) values(reply_replyno.nextval,?,?,?,?)
--댓글 쓰기

delete from Reply where REPLYNUM=?
--댓글 삭제하기

update Reply set REPLYCONTENT=? where REPLYNUM=?;
--댓글 수정하기




a

--페이징처리
 SELECT BOARDCODE,BOARDNUM,BOARDNOTICE,USERID,BOARDTITLE,BOARDCONTENT,BOARDDATE,BOARDCOUNT,BOARDFILESRC,BOARDREF,BOARDDEPTH,BOARDSTEP FROM (
 	SELECT ROWNUM RN , BOARDCODE,BOARDNUM,BOARDNOTICE,USERID,BOARDTITLE,BOARDCONTENT,BOARDDATE,BOARDCOUNT,BOARDFILESRC,BOARDREF,BOARDDEPTH,BOARDSTEP 
 		FROM (SELECT * FROM Board ORDER  BY refer DESC , step ASC)  
 	) WHERE RN BETWEEN ? AND ?;
 	
 	
-- cpage : 1 , pagesize : 5 	 start : 1 , end : 5
-- cpage : 2 , pagesize : 5 	 start : 6 , end : 10
-- cpage : 11 , pagesize : 5 	 start : 51 , end : 55


 	


cpage 하나 부여했을때....

ex) cpage=3

-- cpage: 3 , pagesize : 10  start : 31 end : 40


int start = cpage * pagesize - (pagesize - 1);
int end = cpage * pagesize;

SELECT BOARDCODE,BOARDNUM,BOARDNOTICE,USERID,BOARDTITLE,BOARDCONTENT,BOARDDATE,BOARDCOUNT,BOARDFILESRC,BOARDREF,BOARDDEPTH,BOARDSTEP
	FROM (select ROWNUM , BOARDCODE,BOARDNUM,BOARDNOTICE,USERID,BOARDTITLE,BOARDCONTENT,BOARDDATE,BOARDCOUNT,BOARDFILESRC,BOARDREF,BOARDDEPTH,BOARDSTEP
		FROM (SELECT * FROM BOARD WHERE BOARDCODE = #{boardcode} ORDER BY BOARDREF DESC,BOARDSTEP ASC) WHERE ROWNUM BETWEEN #{startboard} AND #{endboard})

 	
BOARDLIST.JSP

BOARDCODE 필수
CPAGE	  DEFAULT 1
PAGESIZE  DEFAULT 10, -> 선택가능.