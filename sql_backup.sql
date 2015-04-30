--2015.04.30
--文章
create table article
(
article_id varchar(20) not null,
article_genre_id varchar(20) not null,
author_id varchar(20) not null,
tile tinytext not null,
content text,
count int unsigned not null,
creation_date datetime not null,
last_modified_date datetime not null,
removed enum('Y','N') not null,
primary key (article_id)
);

--产品
create table product
(
product_id varchar(20) not null,
product_genre_id varchar(20) not null,
product_name varchar(20) not null,
description text,
count int unsigned not null,
creation_date datetime not null,
last_modified_date datetime not null,
removed enum('Y','N') not null,
primary key (product_id)
);

--用户
create table user
(
user_id varchar(20) not null,
user_name varchar(20) not null,
password varchar(100) not null,
authority enum('U','N','A') comment "U:unchecked, N:nomarl, A:admin",
primary key (user_id)
);

--文章分类
create table article_genre
(
article_genre_id varchar(20) not null,
article_genre_name varchar(20) not null,
primary key (article_genre_id)
);

--产品分类
create table product_genre
(
product_genre_id varchar(20) not null,
product_genre_name varchar(20) not null,
primary key (product_genre_id)
);

--添加外码约束(文章-文章分类 产品-产品分类 文章-用户)
alter table article
add foreign key (article_genre_id)
references article_genre(article_genre_id);

alter table product
add foreign key (product_genre_id)
references product_genre(product_genre_id);

alter table article
add foreign key (author_id)
references user(user_id);
