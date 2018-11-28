#设置客户端连接服务器使用的编码为UTF8
SET NAMES UTF8;
#丢弃数据库xuezi，如果存在
DROP DATABASE IF EXISTS xuezi;
#创建数据库时，设置存储的编码为UTF8
CREATE DATABASE xuezi CHARSET=UTF8;
#进入该数据库
USE xuezi;
#创建数据表user
CREATE TABLE user(
  uid INT,
  uname VARCHAR(18),
  upwd VARCHAR(32),
  email VARCHAR(32),
  phone VARCHAR(11),
  sex VARCHAR(1),  #男->M  女->F
  user_name VARCHAR(8),
  registerTime VARCHAR(10)   #2018-10-30
);
#往user中插入记录
INSERT INTO user VALUES
('1','dingding','123456','dingding@163.com','13512345678','M','文华','2018-10-31'),
('2','dangdang','123456','dangdang@163.com','13812345678','F','杨燕','2018-11-1'),
('3','dongdong','123456','dongdong@qq.com','19112345678','M','东东','2018-9-1');
#更改记录
UPDATE user SET upwd='654321',email='wenhua@tedu.cn' WHERE uid='1';
UPDATE user SET phone='13188888888',sex='M',registerTime='2017-3-1' WHERE uid='2';
#删除记录
DELETE FROM user WHERE uid='3';
#查询所有的记录
SELECT * FROM user;







