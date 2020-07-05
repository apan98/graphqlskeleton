create table roles (
  id bigserial not null primary key,
  code varchar (255) not null,
  constraint role_code_unq unique (code)
);

insert into roles (code) values ('ROLE_ADMIN');
insert into roles (code) values ('ROLE_USER');

create table users (
  id bigserial not null primary key,
  username varchar (255) not null,
  password varchar(255) not null,
  role_id bigint not null references roles(id),
  constraint users_username_unq unique (username)
);

INSERT INTO users (username, password, role_id) VALUES ('admin', 'admin', 1);
INSERT INTO users (username, password, role_id) VALUES ('user', 'admin', 2);