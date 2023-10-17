select * from payment;

alter table payment add significant varchar(200);

drop table payment;

create table event(
	event_name varchar(50) primary key,
	start_date date,
	end_date date
	);

create table payment(
	member varchar(10),
	amount double,
	item varchar(100)
	);
