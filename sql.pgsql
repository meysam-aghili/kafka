  create database test_db ;

  SET search_path TO test_db;

  CREATE SCHEMA sails;
  drop table if exists sails.holding;
  CREATE TABLE sails.orders (
      id int,
      note varchar(8),
      quantity int,
      created_at timestamp,
      primary key(id)
  );
  ALTER TABLE sails.orders replica identity FULL;
  insert into sails.orders values (1, 'VFIAX', 10, now());

  select * from sails.orders;


 insert into sails.orders values (9, 'uuuuu', 56, now());

 UPDATE sails.orders set quantity=30 where id = 2;