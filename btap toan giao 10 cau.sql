create database bai1;
create table NhaCungCap(
maNCC int primary key,
tenNCC varchar(200),
diachi varchar(200),
soDT varchar(200),
masoThue varchar(200)
);

create table MucPhi(
maMP int primary key,
dongia int,
mota varchar(200)
);

create table LoaiDV(
maloaiDV int primary key,
tenloaiDV varchar(200)
);

create table DongXe(
dongxe varchar(200) primary key,
hangxe varchar(200),
sochongoi int
);

create table DangKyCungCap(
maDKCC int primary key,
maNCC int,
maLoaiDV int,
dongXe varchar(200),
maMP int,
ngayBDCC date,
ngayKTCC date,
SLxeDK int,
 foreign key (dongxe) references dongxe(dongxe),
 foreign key (maMP) references MucPhi(maMP),
 foreign key (maloaiDV) references LoaiDV(maloaiDV),
 foreign key (maNCC) references NhaCungCap(maNCC)
);

-- cau 3
select * from DongXe  where ( sochongoi > 5);

-- cau 4
select NhaCungCap.* from NhaCungCap 
join DangKyCungCap on NhaCungCap.maNCC = DangKyCungCap.maNCC
join DongXe on DangKyCungCap.dongxe = DongXe.dongxe
 join MucPhi on DangKyCungCap.maMP = MucPhi.maMP
where HangXe = "Mazda" and Dongia>= 15000;


-- cau 5
select * from NhaCungCap;

 -- cau 6
 select tenNCC, count(maDKCC) as 'số lượng DKCC'
  from NhaCungCap join DangKyCungCap on NhaCungCap.maNCC = DangKyCungCap.maNCC
  where ngayBDCC > '2022-11-20'
  group by tenNCC;
 


-- cau 7
select distinct hangxe from DongXe ;
-- cau 8
select maDKCC,maNCC, diachi, masoThue from NhaCungCap;

-- cau 9
select * from NhaCungCap join DangKyCungCap on NhaCungCap.MaNCC = DangKyCungCap.maNCC
where dongxe = " Hi" or dongxe = "suv";

-- cau 10
select NhaCungCap.* from NhaCungCap left join DangKyCungCap on NhaCungCap.maNCC = DangKyCungCap.maNCC
where maDKCC is null;





