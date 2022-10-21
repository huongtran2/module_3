create table DSNV(
id int,
name varchar(200),
price double
);
-- chen 1 ban ghi vao bang
insert into DSNV values (1, "nguyen van a", "100");

-- chen nhieu ban ghi bang
insert into DSNV values (2, "nguyen van b", "100"), (3, "nguyen thi c", 200);
select * from DSNV;
-- Them
ALTER TABLE DSNV
ADD chieucao double;

-- Sua kieu du lieu cot
ALTER TABLE DSNV
modify column chieucao int;

-- sua ten cot
ALTER TABLE DSNV
change column chieucao cannang int;
-- xoa cot
ALTER TABLE DSNV
 drop column cannang;
 -- xoa ban ghi
 
 delete from dsnv where id = 1;
 -- sua ban ghi
 
update dsnv
set name = "mai van d" , price = 5
where id = 1;

