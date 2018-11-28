#丢弃数据库，如果存在xuezi
DROP DATABASE IF EXISTS xuezi;
#创建数据库xuezi
CREATE DATABASE xuezi;
#进入数据库xuezi
USE xuezi;
#创建数据表
CREATE TABLE laptop(
  lid INT,
  title VARCHAR(128),
  price INT,
  number INT
);
#往数据表插入记录
INSERT INTO laptop VALUES
  ('1','Mac Air','6000','50'),
  ('2','Thinkpad','4777','20'),
  ('3','dell','3999','29');
#查询所有的记录
SELECT * FROM laptop;
