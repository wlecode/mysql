#设置客户端连接服务器的编码
SET NAMES UTF8;
#丢弃数据库xuezi，如果存在
DROP DATABASE IF EXISTS xuezi;
#创建数据库xuezi，设置存储的编码
CREATE DATABASE xuezi CHARSET=UTF8;
#进入该数据库
USE xuezi;
#创建数据表xz_laptop_family
CREATE TABLE xz_laptop_family(
  fid SMALLINT PRIMARY KEY,
  fname VARCHAR(8),
  laptopCount SMALLINT
);
#插入数据
INSERT INTO xz_laptop_family VALUES
(10,'戴尔',3),
(20,'小米',1),
(30,'苹果',2);
#创建xz_laptop
CREATE TABLE xz_laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT, #主键约束
  title VARCHAR(128) UNIQUE, #唯一约束
  price DECIMAL(6,2), #9999.99
  detail VARCHAR(3000) NOT NULL, #非空约束
  shelfTime DATE,
  isOnsale BOOL DEFAULT 1, 
  familyId SMALLINT,
  #familyId取值范围是到另外一个表的fid中去取
  FOREIGN KEY(familyId) REFERENCES xz_laptop_family(fid)
);
#插入数据
INSERT INTO xz_laptop VALUES
(1,'小米AIR',3999.55,NULL,'2018-7-1',1,20),
(2,'戴尔燃7000',5000,'商品描述','2018-10-1',1,10),
(3,'thinkPad',4000,'商品介绍','2016-5-1',0,30),
(4,NULL,8999,'商品介绍','2018-11-1',1,20),
(5,NULL,10000,'商品介绍','2018-12-1',0,30),
(6,'小米PRO',9800,'商品介绍','2018-9-1',DEFAULT,20);

INSERT INTO xz_laptop(lid,detail,shelfTime,familyId) VALUES(7,'这是详情','2017-12-1',NULL);
INSERT INTO xz_laptop VALUES
(NULL,'小米New',7200,'商品描述','2018-9-1',1,20),
(12,'戴尔New',7600,'商品描述','2018-9-22',1,10);

INSERT INTO xz_laptop(lid,detail,shelfTime,familyId) VALUES(NULL,'这是详情','2017-12-1',NULL);








