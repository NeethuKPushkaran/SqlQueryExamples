create database players;

create table cricketers(

player_id int,
name varchar(50)
)

insert into cricketers (player_id, name) values (1, 'Virat Kohli');
insert into cricketers (player_id, name) values (2, 'Rohit Sharma');

select * from cricketers;