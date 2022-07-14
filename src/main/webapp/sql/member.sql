create table member (
userid varchar2(50) not null primary key,
passwd varchar2(50) not null,
name varchar2(50) not null,
email varchar2(50),
hp varchar2(50),
zipcode varchar2(7),
address1 varchar2(200),
address2 varchar2(200),
join_date date default sysdate
);

select * from member;

-- 데이터 insert
insert into member(userid,passwd,name,email) values ('kim','1234','김철수','kim@naver.com');
insert into member(userid,passwd,name,email) values ('hong','1234','홍길동','hong@nate.com');

commit;

--로그인 성공
select name from member where userid='kim' and passwd='1234';


