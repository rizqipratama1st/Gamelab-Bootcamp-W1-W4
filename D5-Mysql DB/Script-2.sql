create database suggest_me_db;
use suggest_me_db;

drop table if exists tbl_users;
create table tbl_users(
	id_user int auto_increment primary key,
	roles varchar(11) default null,
	nama_depan varchar(255) not null,
	nama_belakang varchar(255) not null,
	email varchar(255) not null,
	username varchar(255) default null,
	password varchar(255) not null,
	created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	update_at TIMESTAMP default NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	soft_delete char(1)
);

drop table if exists tbl_admins;
create table tbl_admins(
	id_admin int auto_increment primary key,
	roles varchar(11) default null,
	nama_depan varchar(255) not null,
	nama_belakang varchar(255) not null,
	email varchar(255) not null,
	username varchar(255) not null,
	password varchar(255) not null,
	created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	update_at TIMESTAMP default NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop table if exists tbl_barja;
create table tbl_barja(
	id_barja int not null primary key,
	nama_barja varchar(255) not null,
	deskripsi_barja varchar(255) default null,
	created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	update_at TIMESTAMP default NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop table if exists tbl_kriteria;
create table tbl_kriteria(
	id_kriteria int(11) not null primary key,
	nama_kriteria varchar(11) not null,
	deskripsi_kriteria varchar(255) default null,
	created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	update_at TIMESTAMP default NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop table if exists tbl_handphone;
create table tbl_handphone (
	id_barang int(11) not null auto_increment primary key,
	id_barja int(11) not null,
	nama_barang varchar(255),
	soc int(11) DEFAULT NULL,
	ram int(11) DEFAULT NULL,
	rom int(11) DEFAULT NULL,
	kamera int(11) DEFAULT NULL,
	layar int(11) DEFAULT NULL,
	nfc int(11) DEFAULT NULL,
	jaringan int(11) DEFAULT NULL,
	battre int(11) DEFAULT NULL,
	harga int(11) DEFAULT NULL,
	gambar text DEFAULT NULL,
	berat int(11) DEFAULT NULL,
	gsm_area_url varchar(255) DEFAULT null,
	created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	update_at TIMESTAMP default NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

drop table if exists tbl_item_tersimpan;
create table tbl_item_tersimpan (
	id_item_tersimpan int auto_increment primary key,
	id_user int not null,
	id_barja int not null,
	id_kriteria int not null,
	id_barang int not null,
	created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	update_at TIMESTAMP default NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

select * from tbl_handphone;
select * from tbl_users;
select * from tbl_barja;
select * from tbl_admins;
select * from tbl_kriteria;



-- Dibwah ini adalah data dummy

insert into tbl_users(roles,nama_depan,nama_belakang,email,username,password) values ('admin','Shinoshuke','nohara','shinosukenohara@gmail.com','shincan','shincan');
insert into tbl_admins(roles,nama_depan,nama_belakang,email,username,password) values  ('user','Shinoshuke','nohara','shinosukenohara@gmail.com','shincan','shincan');
insert into tbl_barja(id_barja, nama_barja,deskripsi_barja) values (1,'handphone','id 1 Untuk handphone'),(2,'laptop','id 2 Untuk kriteria laptop');
insert into tbl_kriteria(id_kriteria, nama_kriteria,deskripsi_kriteria) values (1,'gaming','id 1 Untuk kriteria gaming'),(2,'fotografi','id 2 Untuk kriteria fotografi');
INSERT INTO tbl_handphone(id_barja, nama_barang, soc, ram, rom, kamera, layar, nfc, jaringan, battre, harga, gambar, berat)
VALUES (1,'Realme 8 Pro', 171415, 8, 128, 89, 6, 0, 4, 4500, 4499000, 'realme-8-pro-ofic-3.jpg', 500),
       (1,'Vivo V19', 117743, 8, 256, 90, 6, 0, 4, 4500, 4200000, 'vivo-v20-2.jpg', 500),
       (1,'Realme 7 Pro', 171415, 8, 128, 79, 6, 0, 4, 4500, 4000000, 'realme-7-pro-11.jpg', 500),
       (1,'Oppo Reno 5', 171415, 8, 128, 88, 6, 0, 4, 4310, 4200000, 'oppo-reno-5-4g-.jpg', 500),
       (1,'Samsung Galaxy A51', 104687, 8, 128, 87, 6, 0, 4, 4000, 4399000, 'gsmarena_001.jpg', 500),
       (1,'Samsung Galaxy M30', 69078, 4, 64, 64, 6, 0, 4, 5000, 3100000, 'samsung-galaxy-m30-sm-m305f-1.jpg', 500),
       (1,'Samsung Galaxy A21s', 67883, 6, 128, 76, 6, 0, 4, 5000, 2600000, 'samsung-galaxy-a21s-0.jpg', 500),
       (1,'Samsung Galaxy M31', 104687, 6, 128, 84, 6, 0, 4, 6000, 2800000, 'samsung-galaxy-m31-sm-m315f-red.jpg', 500),
       (1,'Samsung Galaxy S9', 228312, 4, 64, 100, 6, 0, 4, 3000, 5300000, 'samsung-galaxy-s9-1.jpg', 500),
       (1,'Samsung Galaxy S10 Plus', 284546, 8, 512, 116, 6, 0, 4, 4100, 9400000, 'samsung-galaxy-s10-plus-2-ceramic.jpg', 500),
       (1,'Samsung Galaxy S10', 284546, 8, 128, 113, 6, 0, 4, 3400, 7100000, 'samsung-galaxy-s10-1.jpg', 500),
       (1,'Samsung Galaxy S20 Plus', 370815, 8, 128, 118, 6, 1, 4, 4500, 9200000, 'samsung-galaxy-s20-11.jpg', 500),
       (1,'Samsung Galaxy S20', 370815, 8, 128, 115, 6, 0, 4, 4000, 8300000, 'samsung-galaxy-s20-2.jpg', 500),
       (1,'Realme C11', 58843, 3, 32, 98, 6, 0, 4, 5000, 1400000, 'realme-c11-2.jpg', 500),
       (1,'Xiaomi Redmi 9C', 58843, 4, 64, 64, 6, 0, 4, 5000, 1300000, 'xiaomi-redmi-note-9-pro-global-01.jpg', 500),
       (1,'Xiaomi Redmi 9C', 58843, 4, 64, 64, 6, 0, 4, 5000, 1500000, 'gsmarena_002.jpg', 500),
       (1,'Realme C15', 58843, 4, 64, 64, 6, 0, 4, 6000, 1700000, 'realme-c15-1.jpg', 500),
       (1,'Xiaomi Redmi 9', 119093, 4, 64, 64, 6, 0, 4, 5020, 1600000, 'xiaomi-redmi-9c-1.jpg', 500),
       (1,'Realme Nazro 30A', 108560, 4, 64, 64, 6, 0, 4, 6000, 1800000, 'realme-narzo-30a-1.jpg', 500),
       (1,'Xiaomi Poco M3', 108560, 4, 64, 86, 6, 0, 4, 5020, 1700000, 'xiaomi-poco-m3-31.jpg', 500),
       (1,'Realme 8', 184478, 8, 128, 98, 6, 0, 4, 5000, 3500000, 'realme-8-1.jpg', 500),
       (1,'Vivo Y12', 44874, 8, 128, 72, 6, 0, 4, 5000, 1600000, 'vivo-y15-01.jpg', 500),
       (1,'Xiaomi Redmi Note 7', 94297, 4, 64, 79, 6, 0, 4, 4000, 2100000, 'xiaomi-redmi-note-7-2.jpg', 500),
       (1,'Xiaomi MI 6X', 94297, 4, 64, 86, 6, 0, 4, 3000, 3200000, 'xiaomi-mi-a2-1.jpg', 500),
       (1,'realme 7i', 103969, 8, 128, 76, 6, 0, 4, 5000, 2800000, 'realme-7i-1.jpg', 500),
       (1,'Xiaomi Redmi 9T', 103969, 4, 64, 76, 6, 0, 4, 5020, 1800000, 'xiaomi-redmi-9-power-0.jpg', 500),
       (1,'Xiaomi Mi 11 Ultra', 103969, 12, 256, 143, 6, 0, 4, 5000, 16900000, 'xiaomi-mi11-ultra-5g-k1-11.jpg', 500),
       (1,'Xiaomi Poco M3', 103969, 4, 64, 86, 6, 0, 4, 6000, 1700000, 'gsmarena_003.jpg', 500),
       (1,'Xiaomi poco M3', 103969, 6, 128, 84, 6, 0, 4, 6000, 2100000, 'xiaomi-poco-m3-3.jpg', 500),
       (1,'Xiaomi Redmi Note 8', 105355, 4, 64, 80, 6, 0, 4, 4000, 2300000, 'xiaomi-redmi-note-8-1.jpg', 500),
       (1,'Realme 5i', 105355, 4, 64, 66, 6, 0, 4, 5000, 2100000, 'realme-5i-3.jpg', 500),
       (1,'Xiaomi Redmi Note 10', 138560, 4, 64, 98, 6, 0, 4, 5000, 2300000, 'xiaomi-redmi-note10-11.jpg', 500),
       (1,'Realme 6 Pro', 171415, 8, 128, 109, 6, 0, 4, 4300, 3300000, 'realme-6-pro-1.jpg', 500),
       (1,'Xiaomi Redmi Note 9 Pro', 171415, 6, 64, 89, 6, 0, 4, 5020, 2800000, 'xiaomi-redmi-note-9-pro-global-0.jpg', 500),
       (1,'Oppo Reno4', 171415, 8, 128, 112, 6, 0, 4, 4015, 3600000, 'oppo-reno4-2.jpg', 500),
       (1,'Oppo Reno4 Pro', 171415, 8, 256, 110, 6, 0, 4, 4000, 5600000, 'oppo-reno4-pro-2.jpg', 500),
       (1,'Realme 7 Pro', 171415, 8, 128, 98, 6, 0, 4, 4500, 3800000, 'realme-7-pro-1.jpg', 500),
       (1,'Oppo Reno5', 171415, 8, 128, 98, 6, 0, 4, 4310, 4300000, 'oppo-reno5-5g-1.jpg', 500),
       (1,'Vivo V20', 171415, 8, 128, 98, 6, 0, 4, 4000, 3800000, 'vivo-v20-1.jpg', 500),
       (1,'Xiaomi Mi 11 Lite', 177806, 6, 64, 98, 6, 0, 4, 4250, 3700000, 'xiaomi-mi-11-lite-4g-11.jpg', 500),
       (1,'Xiaomi Mi 11', 177806, 8, 256, 100, 6, 0, 4, 4600, 9700000, 'xiaomi-mi11-ultra-5g-k1-1.jpg', 500),
       (1,'Xiaomi X3 NFC', 177806, 6, 64, 103, 6, 0, 4, 5160, 2800000, 'xiaomi-poco-x3-nfc-1.jpg', 500),
       (1,'Realme X3 Super Zoom', 342211, 12, 256, 102, 6, 0, 4, 4200, 6400000, 'realme-x3-superzoom-1.jpg', 500),
       (1,'Xiaomi Mi 10T Pro 5G', 403331, 8, 128, 118, 6, 0, 4, 5000, 6300000, 'xiaomi-mi-10t-pro-02.jpg', 500);



