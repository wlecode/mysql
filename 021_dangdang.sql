#设置连接服务器使用的编码
SET NAMES UTF8;
#丢弃数据库dangdang,如果存在的话
DROP DATABASE IF EXISTS dangdang;
#创建数据库dangdang
CREATE DATABASE dangdang CHARSET=UTF8;
#进入该数据库
USE dangdang;
#创建数据表book
CREATE TABLE book(
  bid INT,
  title VARCHAR(32),
  price INT,
  pubDate VARCHAR(10), #'2017-10-20'
  isJia INT
);
#插入数据
INSERT INTO book VALUES
('1','盗墓笔记','99','1997-1-1','1'),
('2','西游记','108','2001-5-10','0'),
('3','红楼梦','88','2002-3-10','1'),
('4','三国演义','188','2012-4-10','0');
#修改第2本书
UPDATE book SET price='139',pubDate='2017-10-1' WHERE bid='2';
#删除第3本书
DELETE FROM book WHERE bid='3';




