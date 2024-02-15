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
	nickname
	regdate
)