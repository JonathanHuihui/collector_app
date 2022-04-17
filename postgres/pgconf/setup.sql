CREATE TABLE IF NOT EXISTS public.users (
    id SERIAL PRIMARY KEY,
    username TEXT,
    pswd TEXT);

INSERT INTO public.users (username, pswd) VALUES ('jonathan', 'password');

INSERT INTO public.users (username, pswd) VALUES ('crunchy', 'data');

