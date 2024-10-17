create table if not exists customers (
  customer_id serial primary key,
  phone varchar(20) unique,
  name varchar(30)
);

create table if not exists appointments (
  appointment_id serial primary key,
  customer_id int references customers(customer_id),
  service_id int references services(service_id),
  time varchar(30)
);

create table if not exists services (
  service_id serial primary key,
  name varchar(30)
);

insert into services(name) values('cut'), ('color'), ('perm'), ('style'), ('trim');