create table memo (
idx number not null primary key, --글번호
writer varchar2(50) not null, --이름
memo varchar2(4000) not null, --내용
post_date date default sysdate -- 날짜
);

insert into memo (idx,writer,memo) values (1, 'kim', '메모');
insert into memo (idx,writer,memo) values (2, '김철수', '메모');
insert into memo (idx,writer,memo) values (3, 'park', '메모');

select * from memo;

commit;