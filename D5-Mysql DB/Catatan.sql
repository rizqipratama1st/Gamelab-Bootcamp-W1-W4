-- Membuat database;
create database nama_database;

-- Membuat table

create table nama_table(
kolom1,
kolom2,
) ENGINE=storage_engine;


-- format kolom
nama_kolom tipe_data(lenght) [NOT NULL] [DEFAULT VALUE] [AUTO_INCREMENT] column_constraint;

-- format Rename Table
rename table nama_table_lama to nama_table_baru;

-- format menambah isi table (ALTER TABLE)
-- first : ditambahkan di kolom paling depan
-- after : setelah folder tertentu
alter table nama_table add nama_kolom_baru definsisi_kolom [first | after nama_kolom]

-- format menhapus kolom
alter table tbl_name drop column nama_kolom [RESTRICT|CASCADE]

-- memodifikasi kolom
alter table nama_tabel modify column nama_kolom definisi_kolom [FIRST|AFTER nama_kolom]

-- Menghapus kolom
drop [TEMPORARY] table [if exists] nama_table, nama table ...

-- --------------------------------------------

-- insert singgle row
insert into table_name(kolom1, kolom2, ...)
values (value1, value2, ...);

-- insert multiple row
insert into table_name(kolom1, kolom2, ...)
values (value1, value2, ...), (value1, value2, ...);


-- --------------------------------------------------
-- Querry Update

update [LOW PRIORITY] [IGNORE] nama_table
SET 
nama_kolom = value,
nama_kolom = value,
...
[where contition];


-- --------------------------------------------------
-- replace 

update nama_kolom set 
nama_kolom = replace(nama_kolom, 'kata_yang_mau_diganti','kata_kata_baru');

-- ------------------------------------------------------
-- delete record

delete from nama_table where kondidi;

-- ----------------------------------------------
-- Truncate Table
truncate table nama_tabel;

----------------------------------------------------
-- Multiple Select
select kolom1,kolom2,... from nama_table;

-- Dengan Ekspresi
select kolom1,kolom2,...[*/-+...] from nama_table;

-- --------------------------------------------------
-- Sorting and Filtering


-- Order by
select nama_kolom from nama_table ORDER BY nama_kolom_yang_menjadi_acuan [ASC | DESC];

-- Order By --with expresi
select nama_kolom from nama_table ORDER BY Ekspresi [ASC | DESC];

-- dengan FIELD();
select nama_kolom,.. from nama_table ORDER BY 
FIELD(nama_kolom_acuan, 'value_kolom_yang_menjadi_acuan1',
'value_kolom_yang_menjadi_acuan'
...);

-- kondisi pencarian (Advance Where)
select nama_kolom from nama_table 
where [ = | AND | OR | BETWEEN | LIKE | LIKE | IN | IS NULL  ];

-- contoh
select nama_kolom from nama_table where nama_kolom = 'value';
select nama_kolom from nama_table where nama_kolom = 'value' AND nama_kolom = 'value';
select nama_kolom from nama_table where nama_kolom = 'value' OR nama_kolom = 'value';
select nama_kolom from nama_table where nama_kolom between numeric_value AND numeric_value;

select nama_kolom from nama_table where nama_kolom LIKE '___';
select nama_kolom from nama_table where nama_kolom LIKE '%son%'; 

select nama_kolom from nama_table where nama_kolom IN ('value1', 'value2', 'value3', ... );

select nama_kolom from nama_table where nama_kolom IS NULL;


select nama_kolom, ... from nama_table where nama_kolom [ = | <> | != | < | > | <= | >= ]

select nama_kolom, ... from nama_table where [ekspresi | nama_kolom] IN ('Value1', 'Value2', ...);

select nama_kolom, ... from nama_table where nama_kolom NOT IN ('value1', 'value2', 'value3', ... );

-- IN Sub Querry
Select orderNumber, CustomerNumber,status,shippedDate from orders where orderNumber 
IN ( Select orderNumber from orderDetails group by orderNumber 
having SUM(quantityOrder * priceEach) > 60000 );

-- LIMIT -------------------- 

select nama_kolom from nama_table limit index_awal, maksimal_row;


-- ------------------------------------------------------------------------
-- ALIAS & advance select


select [nama_kolom | ekspresi] AS nama_alias from nama_table

-- contoh :
-- CONCAT_WS berfungsi menggabungkan beberapa value dari beberapa kolom.
select CONCAT_WS('Pemisah', nama_kolom1, nama_kolom2, ...) AS 'Nama Alias' from nama_table

-- alias bisa untuk memfiltering

select CONCAT_WS('Pemisah', nama_kolom1, nama_kolom2, ...) 
AS 'Nama Alias' from nama_table order by 'nama alias';

-- Alias untuk mengaliasi nama_table

use tugas9;
show tables;
select * from tbl_member;


-- alias berfungsi mengaliasi nama_table, "from nama_table nama_alias_tabel"
select e.name,e.username from tbl_member as e order by e.name;


-- --------------------------------------------------------------------------------
-- format querry inner join.
-- Lihat sql kondisi

select a.kolom1, b.kolom2, ... from table1 
inner join table2 on [Kondisi_join]
inner join table3 on [Kondisi_join]
... ;

-- USING digunakan menggantikan ON 
-- ketika ada nama kolom yang sama di setiap mengabungkan table.

select a.kolom1, b.kolom2, ... from table1 
inner join table2 USING (kolom_yang_sama_antara_t1_t2)
inner join table3 USING (kolom_yang_sama_antara_t2_t3)
... ;

-- format left join 

select a.kolom1, b.kolom2, ... from table1 
left join tabel2 on [Kondisi_join];

-- format right join

select a.kolom1, b.kolom2, ... from table1 
right join tabel2 on [Kondisi_join];

-- -----------------------------------------------------------------------

-- format cross join
-- didalam cross join tidak bisa menggunakan USING maupun ON

select * from table1 cross join table2 where tabel1.id = table2.id;






