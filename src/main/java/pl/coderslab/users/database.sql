create database workshop3;
create table users (
                       id int auto_increment primary key,
                       username varchar(100),
                       email varchar(100) unique ,
                       password varchar(100)
);