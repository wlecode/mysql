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
  lid INT PRIMARY KEY,
  title VARCHAR(128),
  price DECIMAL(6,2), #9999.99
  detail VARCHAR(3000),
  shelfTime DATE,
  isOnsale BOOL,
  familyId SMALLINT
);
#插入数据
INSERT INTO xz_laptop VALUES
(1,'小米AIR',3999.55,NULL,'2018-7-1',1,20),
(2,'戴尔燃7000',5000,'商品描述','2018-10-1',1,10),
(3,'thinkPad',4000,'商品介绍','2016-5-1',0,30);








