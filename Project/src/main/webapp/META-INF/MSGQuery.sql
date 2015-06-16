쪽지	message
쪽지번호(PK)	MSGNUM(PK)	NUMBER	NOT NULL
보낸사원(FK)	SENDID(FK)	VARCHAR2(50)	NOT NULL
받는사원(FK)	RECEIVEID(FK)	VARCHAR2(50)	NOT NULL
쪽지제목	MSGTITLE	VARCHAR2(100)	NOT NULL
쪽지내용	MSGCONTENT	VARCHAR2(1000)	NOT NULL
작성일	MSGDATE	DATE	NOT NULL
보낸삭제	SENDDEL	NUMBER	NOT NULL
받은삭제	RECDEL	NUMBER	NOT NULL


select * from message where MSGTITLE=?;
--메세지 제목으로 찾음
delete from message where MSGNUM=?;
--메세지 넘버로 지움

insert into message(MSGNUM,SENDID,RECEIVEID,MSGTITLE,MSGCONTENT,MSGDATE,SENDDEL,RECDEL)
values(message_MSGNUM.nextval,'보낸사람ID','받을사람ID','제목','내용',sysdate,'보낸쪽지함저장여부','받은쪽지함저장여부');

insert into message(MSGNUM,SENDID,RECEIVEID,MSGTITLE,MSGCONTENT,MSGDATE,SENDDEL,RECDEL)
values(message_MSGNUM.nextval,?,?,?,?,sysdate,?,?);
--메세지 보낼때

select * from message where SENDID = ?;

select * from message where RECEIVEID = ?;


