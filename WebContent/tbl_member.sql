create table tbl_member(
    id varchar(10) primary key not null,
    passwd varchar(10) not null,
    name varchar(10) not null,
    reg_date datetime,
    hobby varchar(30) not null);