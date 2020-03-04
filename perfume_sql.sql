use perfume_sql; 

-- 用户
drop table if exists users;
create table users(
	user_id int not null primary key auto_increment,
	user_name varchar(20) not null,
	user_pwd varchar(18) not null,
	user_phone varchar(11) not null
);

-- 目录表
drop table if exists catalog;
create table catalog(
	cg_id int not null primary key auto_increment,
	cg_alias varchar(20) not null unique,
	cg_url varchar(255) not null
);

-- 品牌分类列表
drop table if exists brandClass;
create table brandClass(
	bc_id int not null primary key auto_increment,
	bc_name varchar(10) not null unique
);

-- 品牌banner 
drop table if exists brandbanner;
create table brandbanner(
	bb_id int not null primary key auto_increment,
	bb_img varchar(255) not null,
	bc_id int not null
);

-- 品牌内容
drop table if exists brandClassContent;
create table brandClassContent(
	bcc_id int not null primary key auto_increment,
	bcc_img varchar(255) not null,
	bcc_name_ch varchar(255) not null unique,
	bcc_name_eh varchar(255) not null unique,
	bcc_url varchar(255) not null,
	bc_id int not null,
	foreign key(bc_id) references brandClass(bc_id)
);

-- 调香师简介
drop table if exists perfumerIntroduce;
create table perfumerIntroduce(
	p_id int not null primary key auto_increment,
	p_content text not null,
	p_imgurl varchar(255) not null unique
);

-- 调香师
drop table if exists perfumer;
create table perfumer(
	pc_id int not null primary key auto_increment,
	pc_img varchar(255) not null,
	pc_name varchar(255) not null,
	pc_introduce text not null,
	pc_url varchar(255) not null
);

-- 调香师详细内容
drop table if exists perfumercon;
create table perfumercon(
	pf_id int not null primary key auto_increment,
	pf_img varchar(255) not null, -- 作品图片
	pf_name varchar(255) not null, -- 作品名称
	pf_score float not null, -- 分数，满分10分
	pf_num int not null, -- 评价人数
	pf_first varchar(255), -- 前调
  pf_in varchar(255), -- 中调
	pf_after varchar(255), -- 后调
	pf_smell varchar(255), -- 气味
	pc_id int not null,
	foreign key(pc_id) references perfumer(pc_id)
);
