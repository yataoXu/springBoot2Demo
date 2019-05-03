CREATE TABLE `user` (
  `id`                        INT(11) PRIMARY KEY AUTO_INCREMENT COMMENT '主键ID',
  `name`                      VARCHAR(16) DEFAULT '' COMMENT '名字',
  `age`                        INT(11)   COMMENT '年龄'
  )ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='用户表';