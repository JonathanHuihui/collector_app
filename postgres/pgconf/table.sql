

CREATE TABLE IF NOT EXISTS public.users (
    id SERIAL PRIMARY KEY,
    username TEXT,
    pswd TEXT,
);

CREATE INDEX idx_event_aggregate_id ON public.users (username);

COMMIT;