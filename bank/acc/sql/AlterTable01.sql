use acc;
show databases;
select * from payment;
alter table payment drop no;
select str_to_date(reg_date,'%Y-%m-%d일 %p:%h:%i:%s')
as '등록일' from payment;
insert into payment values(now(), '선홍', '피자', 30000, now());
alter table payment change reg_date reg_date timestamp;