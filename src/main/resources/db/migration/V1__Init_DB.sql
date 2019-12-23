create sequence hibernate_sequence start 1 increment 1;

create table contact (
  id int8 not null,
  address varchar(255),
  city varchar(255),
  country varchar(255),
  email varchar(255),
  instagramlink varchar(255),
  scheduleofwork varchar(255),
  vk varchar(255),
  whatsappphone varchar(255),
  user_id int8, primary key (id)
);

create table sectionn (
  id int8 not null,
  item_id varchar(255),
  name varchar(255),
  primary key (id)
);

create table service (
  id int8 not null,
  description varchar(2048),
  name varchar(255),
  price varchar(255),
  section_name varchar(255),
  section_id int8,
  primary key (id)
);

create table telephone (
  id int8 not null,
  number varchar(255),
  tag varchar(255),
  contact_id int8,
  primary key (id)
);

create table user_role (
  user_id int8 not null,
  roles varchar(255)
);

create table usr (
  id int8 not null,
  active boolean not null,
  password varchar(255) not null,
  username varchar(255) not null,
  primary key (id)
);

alter table if exists contact
  add constraint contact_user_fk
  foreign key (user_id) references usr;

alter table if exists service
  add constraint service_sectionn_fk
  foreign key (section_id) references sectionn;

alter table if exists telephone
  add constraint tepephone_contact_fk
  foreign key (contact_id) references contact;

alter table if exists user_role
  add constraint user_role_usr_fk
  foreign key (user_id) references usr;