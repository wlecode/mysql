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
  eid SMALLINT,
  ename VARCHAR(8),   #姓名
  sex BOOL,           #1-男 0-女
  birthday DATE,      #生日
  salary DECIMAL(7,2),#99999.99
  deptId TINYINT
);
#插入数据
INSERT INTO emp VALUES
(1,'tom',1,'1993-3-2',8000,10),
(2,'lucy',0,'1995-10-22',7000,20),
(3,'jerry',1,'1997-5-2',10000,30);





