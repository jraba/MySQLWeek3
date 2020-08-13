create database if not exists socialmedia_hw;

use socialmedia_hw;

drop table if exists username;
drop table if exists posts;
drop table if exists comments;

create table username (
	id INT(10) not null,
	password CHAR(8) not null,
	email VARCHAR(25) not null,
	phone_number CHAR(10),
	birth_date DATE,
	primary key (id)

);

create table posts (
	id INT(10) not null auto_increment,
	username_id INT(10) not null,
	post_content VARCHAR(4000) not null,
	date_time timestamp default CURRENT_TIMESTAMP,
	primary key(id),
	foreign key(username_id) references username(id)

);	

create table comments (
	id INT(10) not null auto_increment,
	username_id INT(10) not null,
	posts_id INT(10) not null,
	comment VARCHAR(500) not null,
	date_time timestamp default CURRENT_TIMESTAMP,
	primary key(id),
	foreign key(username_id) references username(id),
	foreign key(posts_id) references posts(id)

);