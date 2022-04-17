
INSERT INTO public.users (username, pswd) VALUES ('jonathan', 'password');

INSERT INTO public.users (username, pswd) VALUES ('crunchy', 'data');

/*CREATE INDEX idx_event_aggregate_id ON users (username);*/

grant all on customtable to PG_PRIMARY_USER;