drop table QLDSNV
create table QLDSNV(
id int not null,
name varchar(200),
price int
);
-- tao 1 ban ghi chen bang
insert into QLDSNV value ( 1, "nam",100);
-- tao nhieu ban ghi chen bang
insert into QLDSNV values (2," quan",200),(3," tao",400);
-- cu phap truy van
select * from QLDSNV;
-- cu phap truy van 1 thuoc tinh
select name from QLDSNV;
-- them cot
alter table QLDSNV
add chieucao double;
-- Sua kieu du lieu cot
alter table QLDSNV
modify column chieucao int;
-- Sua tên cot
 alter table QLDSNV
 change column chieucao cannang double;
 -- Xóa cột
 alter table QLDSNV
 drop column cannang;
 -- Xoa ban ghi
 delete from QLDSNV where id = 1;
 -- Sửa ban ghi
 SET SQL_SAFE_UPDATES = 0;
 update QLDSNV
 set name = "huong",price = 5 where id=1;