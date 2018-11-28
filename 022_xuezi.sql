#设置连接服务器使用的编码
SET NAMES UTF8;
#丢弃数据库xuezi，如果存在
DROP DATABASE IF EXISTS xuezi;
#创建数据库，设置存储的编码
CREATE DATABASE xuezi CHARSET=UTF8;
#进入该数据库
USE xuezi;
#创建数据表laptop
CREATE TABLE laptop(
  lid INT,
  title VARCHAR(128), 
  price DECIMAL(7,2),  #99999.99
  stockCount SMALLINT,
  shelfTime DATE,
  isIndex BOOL
);
#插入数据
INSERT INTO laptop VALUES
(1,'小米AIR',4666,500,'2018-5-1',TRUE),
(2,'联想Thinkpad',5000.99,1000,'2017-12-1',FALSE),
(3,'戴尔燃700',8000,233,'2018-4-1',1);










