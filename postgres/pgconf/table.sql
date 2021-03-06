/* the following are required for other container operations */
alter user postgres password 'PG_ROOT_PASSWORD';

create user PG_PRIMARY_USER with REPLICATION  PASSWORD 'PG_PRIMARY_PASSWORD';
create user PG_USER with password 'PG_PASSWORD';

create table primarytable (key varchar(20), value varchar(20));
grant all on primarytable to PG_PRIMARY_USER;

create database PG_DATABASE;

grant all privileges on database PG_DATABASE to PG_USER;

\c PG_DATABASE
\c PG_DATABASE PG_USER;

CREATE TABLE IF NOT EXISTS public.users (
    id INTEGER PRIMARY KEY,
    username TEXT,
    pswd TEXT);

create table public.customtable (
	key varchar(30) primary key,
	value varchar(50) not null,
	updatedt timestamp not null
);

insert into public.customtable (key, value, updatedt) values ('CPU', '256', now());

