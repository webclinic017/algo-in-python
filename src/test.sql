use test;
/* NOT NULL CHECK */
create table pktest (id int, fname varchar(10), lname varchar(10),primary key (id, fname, lname) );