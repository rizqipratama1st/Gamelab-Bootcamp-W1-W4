create table tbl_siswa(
id int auto_increment primary key,
nama varchar(255) not null
);

create table tbl_nilai(
id int auto_increment primary key,
id_mapel int not null,
id_siswa int not null,
nilai int(255) not null
);

insert into tbl_siswa(nama) value('Uin'),('Mia'),('Milo'),('Marbel');
insert into tbl_nilai(id_mapel,id_siswa,nilai)
value (3,1,80),(3,4,95),(3,2,70),(3,3,85),(4,1,80);

select * from tbl_siswa;
select * from tbl_nilai;

select a.nama,a.nilai from 
(
	select ts.nama,tn.nilai from tbl_siswa ts 
	left join tbl_nilai tn on ts.id = tn.id_siswa group by ts.nama 
) a 
where a.nilai = 
(
	select max(nilai) from tbl_nilai where id_mapel =3 
);