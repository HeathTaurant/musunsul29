use musunsul29;
create table member (
mem_pk int  auto_increment primary key, 
mem_id  varchar(50), 
mem_email varchar(50), 
mem_pw  varchar(50),
mem_phonnumber  varchar(50),
mem_nickname  varchar(50),
mem_name  varchar(50),
mem_birthday date,
mem_age int,
mem_image varchar(100));

create table ethanol (
et_pk int  auto_increment primary key, 
et_name  varchar(50),
et_kind  varchar(50),
et_image  varchar(50),
et_producer  varchar(50),
et_country  varchar(50),
et_count  varchar(50),
et_alcohol_proof  varchar(50),
et_jmt  varchar(1000),
et_smell  varchar(50),
et_sweet  varchar(50),
et_body  varchar(50),
et_co2  varchar(50),
et_tmi  varchar(1000));

create table review(
re_pk int  auto_increment primary key,
et_pk  varchar(50),
re_date  date,
mem_id  varchar(50),
mem_nickname  varchar(50),
re_star  varchar(50),
re_like  varchar(50),
re_tmi  varchar(1000),
re_image  varchar(100));

