drop table board_comments
select * from board_comments

delete from board_comments

select * from user_page

delete from user_page;

commit
insert into board_comments values(0,1,2,'jack@naver.com','2등',sysdate)
create table board_comments(
	board_id int,
	board_no int,
	comment_no int,
	comment_writer varchar2(20) not null,
	comment_contents varchar2(100) not null,
	comment_date date not null,
	constraint primary_comment primary key (board_id, board_no, comment_no) 
)
ALTER TABLE board_comments
 ADD CONSTRAINT foreign_comment1 FOREIGN KEY (board_id)
 REFERENCES board_contents (board_id) on delete cascade

 ALTER TABLE board_comments
 ADD CONSTRAINT foreign_comment2 FOREIGN KEY (board_no)
 REFERENCES board_contents (board_no) on delete cascade

select * 
from (select * from board_contents where board_id=0 and board_no=1) contents
	join (select * from board_comments where board_id=0 and board_no=1) comments 
on contents.board_id = comments.board_id
and contents.board_no = comments.board_no

order by board_no comment_no

select * from user_info
delete from USER_INFO where user_mail != 'a@naver.com'
commit
create table user_info(
	user_mail varchar2(30) primary key,
	user_name varchar2(20) not null,
	user_password varchar2(20) not null
)

create table board_info(
	board_id int primary key,	
	board_location varchar2(100) not null,
	board_name varchar2(20) not null
)

select * from board_info
insert into board_info values(0,'index','notice')
insert into board_info values(1,'index','freeBoard')
insert into board_info values(2,'index','qnaBoard')

commit

select * from board_info
delete from board_info where board_id>2
create table board_contents(
	board_id int,
	board_no int,
	board_writer varchar2(20) not null, 
	board_subject varchar2(50) not null,
	board_contents varchar2(500) not null,
	constraint primary_board primary key (board_id, board_no),
	constraint foreign_board foreign key (board_id) references board_info(board_id)
)
select * from board_contents
insert into board_contents values(3,1,'kim','예제 공지','example입니다.',sysdate)
delete from board_contents where board_id>2
alter table board_contents add board_date date not null;

commit

create table user_page(
	user_mail varchar2(30),
	page_id number,
	templte_name varchar2(30),
	page_name varchar2(30),
	constraint primary_page primary key (user_mail, page_id)
)


create table url(
	url_name varchar2(20) primary key,
	user_mail varchar2(20) not null,
	project_name varchar2(30) not null
)
select * from url
delete from url