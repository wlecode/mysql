#设置连接mysql使用的编码
SET NAMES UTF8;
#丢弃数据库tedu，如果存在
DROP DATABASE IF EXISTS tedu;
#创建数据库,设置存储的编码
CREATE DATABASE tedu CHARSET=UTF8;
#进入该数据库
USE tedu;
#创建部门表dept
CREATE TABLE dept(
  did TINYINT, 
  dname VARCHAR(8),
  empCount SMALLINT
);
#插入数据库
INSERT INTO dept VALUES
(10,'研发部',3),
(20,'市场部',2),
(30,'运营部',1);
#创建员工表 
CREATE TABLE emp(
  eid SMALLINT PRIMARY KEY, #主键约束
  ename VARCHAR(8),   #姓名
  sex BOOL,           #1-男 0-女
  birthday DATE,      #生日
  salary DECIMAL(7,2),#99999.99
  deptId TINYINT
);
#插入数据
INSERT INTO emp VALUES
(2,'lucy',0,'1995-10-22',7000,20),
(3,'jerry',1,'1997-5-2',10000,30),
(1,'tom',1,'1993-3-2',8000,10),
(4,NULL,0,NULL,7500,20),
(5,'scott',1,'1997-2-22',5000,10);

SET NAMES=UTF8;
DROP DATABASE IF EXISTS xuezi;
CREATE DATABSE xuezi;
USE xuezi;
CREATE TABLE laptop(
  lid         INT PRIMARY KEY UNIQUE NOT NULL,
  title       VARCHAR,
  price       DECIMAL(8.2),
  stockCount  SMALLINT,
  shelfTime   DATATIME,
  inIndex     BOOL,
);
INSERT INTO laptop VALUES
  (1,mac,13388.88,888,2018-12-1 21:23:25,1),
  (2,thinkpad,5338,888,2018-11-1 22:23:25,1),
  (3,dell,6388.88,888,2018-10-1 22:23:25,1),
  (4,lenovel,4388.88,888,2018-05-1 22:23:25,1),
  (5,huawei,6388.88,888,2018-06-1 20:23:25,1),
  (6,samsung,7388,888,2018-09-1 20:23:25,1);
UPDATE laptop SET 
price='13888',title='Macbook pro'
WHERE lid=1;
DELETE FROM laptop WHERE lid='4'; 
 







