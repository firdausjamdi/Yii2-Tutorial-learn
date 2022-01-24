CREATE TABLE ARTICLE (
id int NOT NULL AUTO_INCREMENT,
title varchar(1024) NOT NULL,
slug varchar(1024) NOT NULL,
body LONGTEXT not null,

created_at int,
updated_at INT,
created_by int,
updated_by int,
    
PRIMARY KEY(id)
);


alter table ARTICLE 
add constraint article_user_created_by_fk
foreign key (created_by) references user (id);


alter table article
add constraint article_user_updated_by_fk
foreign key (updated_by) references user (id)