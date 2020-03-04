-- 插入数据
-- 用户
insert into users values(0,'admin','123456','17797519915');
insert into users values(0,'admin1','123456','17797519915');
insert into users values(0,'admin2','123456','17797519915');
update users set user_name = 'admin12',user_pwd = '123123' where user_id = 18
-- 目录
insert into catalog values(0,'首页','api/homepage'),(0,'品牌','api/brand'),(0,'香调','api/fragrancenotes'),
(0,'气味','api/smell'),(0,'调香师','api/perfumer'),(0,'专题','api/zhuanti'); 

-- 品牌分类
insert into brandClass values(0,'商业'),(0,'沙龙'),(0,'A'),(0,'B'),(0,'C'),(0,'D'),(0,'E'),(0,'F'),(0,'G'),(0,'H'),
(0,'I'),(0,'J'),(0,'K'),(0,'L'),(0,'M'),(0,'N'),(0,'O'),(0,'P'),(0,'Q'),(0,'R'),(0,'S'),(0,'T'),(0,'U'),(0,'V'),
(0,'W'),(0,'X'),(0,'Y'),(0,'Z');

-- 品牌内容
insert into brandClassContent values(0,'https://img.xssdcdn.com/brand/49142.jpg','香奈儿','Chanel','https://www.nosetime.com/pinpai/10096010-diao-dior.html',1);
insert into brandClassContent values(0,'https://img.xssdcdn.com/brand/49142.jpg','迪奥','Dior','https://www.nosetime.com/pinpai/10096010-diao-dior.html',1);
insert into brandClassContent values(0,'https://img.xssdcdn.com/brand/49142.jpg','爱马仕','Hermes','https://www.nosetime.com/pinpai/10096010-diao-dior.html',1);
insert into brandClassContent values(0,'https://img.xssdcdn.com/brand/49142.jpg','古驰','Gucci','https://www.nosetime.com/pinpai/10096010-diao-dior.html',1);
insert into brandClassContent values(0,'https://img.xssdcdn.com/brand/49142.jpg','博柏利','Burberry','https://www.nosetime.com/pinpai/10096010-diao-dior.html',1);
insert into brandClassContent values(0,'https://img.xssdcdn.com/brand/49142.jpg','宝格丽','Bvlgari','https://www.nosetime.com/pinpai/10096010-diao-dior.html',1);
insert into brandClassContent values(0,'https://img.xssdcdn.com/brand/49142.jpg','祖玛珑','Jo Malone','https://www.nosetime.com/pinpai/10096010-diao-dior.html',1);

-- 品牌banner
insert into brandbanner values(0,'http://localhost:8088/public/images/brandbannr.png',1);

-- 调香师简介
insert into perfumerIntroduce values(0,'
<h1 style="width: 100%;font-size: 23px;font-weight: normal;color: #F19BAA;
					padding: 18px 0 8px;list-style: none;text-align: center;">调香师</h1>
					<div class="desc" style="width: 96%;color: #4a4a4a;line-height: 30px;
					margin: 10px 10px 17px;display: block;">
						<p style="text-indent: 2em;line-height: 35px;">调香师就是创作香水的艺术家，他们往往被称为“Nose (鼻子)”，但是这并不是一个恰当
							的字眼，事实上调香师是用大脑来工作的。他们可能需要记住3500种不同的香气。</p>
						<p style="text-indent: 2em;line-height: 35px;">当然他也要有一只灵敏的鼻子，但是相对于创造力，以及对各种香料知识的掌握而言，鼻
							子更多地只是在香气测定方面帮助调香师。</p>
						<p style="text-indent: 2em;line-height: 35px;">调制香水是一门艺术，香水不是香料的简单堆砌，调香师需要考虑香料之间的比例和搭配，
							使几种普通的气味混合在一起能调和成一种新的气味。香水的创作，如同任何其它艺术作品的
							创作一样，取决于调香师的想象力和嗅觉记忆力，这是需要通过长年累月的锻炼来习得的。如
							果你特别喜欢某一款香水，不妨了解一下创作它的调香师，以及他手中的其他作品。</p>
					</div>
','/public/images/createurs_thierry-wasseur.png');

-- 调香师
insert into perfumer values(0,
'https://img.xssdcdn.com/nosevi/12041103.jpg',
'Aaron Way',
'<h1 style="font-size: 22px;&#10;&#9;color: #F19BAA;&#10;&#9;padding: 10px 0 0;&#10;&#9;font-weight: normal;">
    Ernest Beaux
</h1>
<p style="color: dimgray; line-height: 30px; text-indent: 2em; font-size: 13px;">
    &nbsp; &nbsp;
						Ernest Beaux (1881 - 1961)于1882年在俄罗斯莫斯科出生。他的父亲是Rallet香水公司
						的总监，他的弟弟在Alphonse Rallet &amp; Co.公司工作。1902年，他开始在Rallet香水公司
						的主任A. Lemercier手下学习。5年后的1907年，Ernest顶替了老师，成为了Rallet香水公
						司的主要调香师。Ernest是拿破仑的狂热者，他在1912年推出香水“Bouquet de Napoleon”。 俄国革命后移民，1920年创造出了举世闻名的香奈儿5号。1961年，Ernest辞去了香奈尔及Bourgeoisie的工作。没过多久，这位伟大的香水大师于1962年逝世。
</p>',
'api/perfumercon');
insert into perfumer values(0,
'https://img.xssdcdn.com/nosevi/12041103.jpg',
'Agatha Brown',
'<h1 style="font-size: 22px;&#10;&#9;color: #F19BAA;&#10;&#9;padding: 10px 0 0;&#10;&#9;font-weight: normal;">
    Ernest Beaux
</h1>
<p style="color: dimgray; line-height: 30px; text-indent: 2em; font-size: 13px;">
    &nbsp; &nbsp;
						Ernest Beaux (1881 - 1961)于1882年在俄罗斯莫斯科出生。他的父亲是Rallet香水公司
						的总监，他的弟弟在Alphonse Rallet &amp; Co.公司工作。1902年，他开始在Rallet香水公司
						的主任A. Lemercier手下学习。5年后的1907年，Ernest顶替了老师，成为了Rallet香水公
						司的主要调香师。Ernest是拿破仑的狂热者，他在1912年推出香水“Bouquet de Napoleon”。 俄国革命后移民，1920年创造出了举世闻名的香奈儿5号。1961年，Ernest辞去了香奈尔及Bourgeoisie的工作。没过多久，这位伟大的香水大师于1962年逝世。
</p>',
'api/perfumercon');
insert into perfumer values(0,
'https://img.xssdcdn.com/nosevi/12041103.jpg',
'Barbara Zoebelein',
'<h1 style="font-size: 22px;&#10;&#9;color: #F19BAA;&#10;&#9;padding: 10px 0 0;&#10;&#9;font-weight: normal;">
    Ernest Beaux
</h1>
<p style="color: dimgray; line-height: 30px; text-indent: 2em; font-size: 13px;">
    &nbsp; &nbsp;
						Ernest Beaux (1881 - 1961)于1882年在俄罗斯莫斯科出生。他的父亲是Rallet香水公司
						的总监，他的弟弟在Alphonse Rallet &amp; Co.公司工作。1902年，他开始在Rallet香水公司
						的主任A. Lemercier手下学习。5年后的1907年，Ernest顶替了老师，成为了Rallet香水公
						司的主要调香师。Ernest是拿破仑的狂热者，他在1912年推出香水“Bouquet de Napoleon”。 俄国革命后移民，1920年创造出了举世闻名的香奈儿5号。1961年，Ernest辞去了香奈尔及Bourgeoisie的工作。没过多久，这位伟大的香水大师于1962年逝世。
</p>',
'api/perfumercon');
insert into perfumer values(0,
'https://img.xssdcdn.com/nosevi/12041103.jpg',
'Belinda Cook',
'<h1 style="font-size: 22px;&#10;&#9;color: #F19BAA;&#10;&#9;padding: 10px 0 0;&#10;&#9;font-weight: normal;">
    Ernest Beaux
</h1>
<p style="color: dimgray; line-height: 30px; text-indent: 2em; font-size: 13px;">
    &nbsp; &nbsp;
						Ernest Beaux (1881 - 1961)于1882年在俄罗斯莫斯科出生。他的父亲是Rallet香水公司
						的总监，他的弟弟在Alphonse Rallet &amp; Co.公司工作。1902年，他开始在Rallet香水公司
						的主任A. Lemercier手下学习。5年后的1907年，Ernest顶替了老师，成为了Rallet香水公
						司的主要调香师。Ernest是拿破仑的狂热者，他在1912年推出香水“Bouquet de Napoleon”。 俄国革命后移民，1920年创造出了举世闻名的香奈儿5号。1961年，Ernest辞去了香奈尔及Bourgeoisie的工作。没过多久，这位伟大的香水大师于1962年逝世。
</p>',
'api/perfumercon');

-- 调香师内容
insert into perfumercon values(0,
'https://img.xssdcdn.com/nosevi/12058684.jpg',
'Ernest Beaux',8.3,168,'橙花,依兰,香柠檬,柠檬,醛',
'鸢尾花,茉莉,鸢尾根,玫瑰,铃兰',
'香根草,麝香,檀香木,广藿香,橡木苔,琥珀,香草,麝猫香',
'香根草,麝香,檀香木,广藿香,橡木苔,琥珀,香草,麝猫香',2);
-- 查询
delete from users where user_id = 1
select * from users;
select * from users where user_id = 16
select * from users where user_name like '%1%';
select * from catalog;
select * from brandClass;
select * from brandClassContent;
select * from brandbanner;
select * from perfumerIntroduce;
select * from perfumer;
select * from perfumer where pc_id = 1;
select count(*) from perfumer;
select * from perfumercon a inner join perfumer b on a.pc_id =b.pc_id where b.pc_id =2;
-- 分类分页查询
select a.*,b.bc_name from brandClassContent a inner join brandClass b on a.bc_id=b.bc_id where b.bc_name= '商业' limit 0,4;
select a.*,b.bc_name from brandClassContent a inner join brandClass b on a.bc_id=b.bc_id where b.bc_name= '商业' limit 5,8;
select a.*,b.bc_name from brandbanner a inner join brandClass b on a.bc_id=b.bc_id where b.bc_name = '商业';
