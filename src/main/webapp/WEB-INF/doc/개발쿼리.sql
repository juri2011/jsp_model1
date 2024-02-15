drop database if exists myMvc1;
create database myMvc1 default character set utf8;
use myMvc1;

create table user (
	userid varchar(50) primary key,
	password varchar(50) not null,
	name varchar(50) not null,
	role varchar(50) default 'User'
) default character set utf8;

alter table user add nickname varchar(50) not null;

desc user;

create table board(
	seq int primary key auto_increment,
	title varchar(50) not null,
	content text not null,
	userid varchar(50) not null,
	nickname varchar(50) not null,
	regdate datetime default now(),
	cnt int default 0
) default character set utf8;

desc board;

insert into user (userid, password, name, nickname, role) values
('juri', '1234', '오주리', '<관리자>주리', 'Admin'),
('duly', '5678', '둘리', '아기공룡둘리', 'User');

select * from user;

insert into board (seq, title, content, userid, nickname, regdate, cnt) values
(1, '첫번째 게시글입니다',
'첫번째 게시글을 작성했습니다. 내용을 추가하고 싶으나 쓸 말이 없으니 아무거나 적겠습니다. 이것은 제가 LA에 있을 때의 일인데요...',
'juri', '<관리자>주리', now(), 0);

select * from board order by seq desc;

insert into board(title, content, userid, nickname) value
('안녕하세요? 저는 둘리예요','저는 둘리예요 빙하를 타고 쌍문동으로 내려왔어요 우리 엄마를 찾고 있어요','duly','둘리');

alter table user drop name;
alter table user rename column nickname to name;
alter table board rename column nickname to name;