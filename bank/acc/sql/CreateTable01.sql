show databases;
use acc;
create table payment(
no int(4) auto_increment primary key,
day date,
member varchar(10),
item varchar(100),
amount double,
reg_date date
);

select * from payment where member = '선홍';
select * from payment;

