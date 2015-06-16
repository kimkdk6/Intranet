------ 결재 메인에 미결재 문서 나오게 하기-------

select rownum as 번호, docnum as 문서번호, dept as 부서, team as 팀, userid as 사원아이디, signtype as 문서종류, signstate as 문서상태, DRAFTDATE as 기안일, signtitle as 문서제목
from sign
where signer2 like 'm4' or SIGNER3 like 'm4' or SIGNER4 like 'm4' or SIGNER5 like 'm4' and signstate = 0;


------ 결재 메인에 상신 문서 나오게 하기

select rownum, s.docnum as 문서번호, s.dept as 부서, s.team as 팀, s.userid as 사원아이디, s.signtype as 문서종류, s.signstate as 문서상태, s.draftdate as 기안일, s.signtitle as 제목, s.signer1 as 기안자, s.signer2 as 결재자, s.signer3 as 결재자, s.signer4 as 결재자, s.signer5 as 결재자, sl.SIGNNING as 최종결재자
from sign s join signline sl
on s.DOCNUM = sl.DOCNUM
where (signer2 like 'm5' or signer3 like 'm5' or signer4 like 'm5' or signer5 like 'm5') and (sl.SIGNOK2 = 1 or sl.signok3 = 1 or sl.SIGNOK4 = 1 or sl.SIGNOK5 = 1);


------ 결재 완료 문서 나오게 하기

