select *  from tbl_users b where id_user_type ="1"

select count(*) from tbl_users where id_user_type ="1";

select * from tbl_users where id_user_type ="2";

ALTER TABLE tbl_users ADD (id_parent  int default null);

update table tbl_users (id_parent) values ("25") where id_user = 2; 


select * from tbl_users a join (select * from tbl_users where id_user_type ="4") where a.id_parent = b.id_user ;




select distinct a.id_parent,b.id_user,a.photo_user as photo,CONCAT(a.first_name,' ',a.last_name) as nama ,gender as jenis_kelamin, tc.class as kelas, tc.id_section as bagian, 
CONCAT(b.first_name,' ',b.last_name) As ortu ,a.address_user as alamat,a.date_of_birth as tanggal_lahir,a.phone_user as no_hp,a.email  from tbl_users a 
left join (select b.id_user,b.first_name,b.last_name  from tbl_users b where id_user_type = 4) b on a.id_parent = b.id_user 
left join tbl_classes tc on a.id_class = tc.id_class left join tbl_sections ts on tc.id_section = tc.id_section where a.id_user_type =1;

select * from tbl_sections tc ;