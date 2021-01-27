CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS public.base
(
    id uuid DEFAULT uuid_generate_v4(),
    is_active boolean NOT NULL,
    is_archived boolean NOT NULL,
    created_dt timestamp without time zone NOT NULL,
    created_by character varying(300) NOT NULL,
    lastchanged_dt timestamp without time zone,
    PRIMARY KEY (id)
);

ALTER TABLE public.base
    OWNER to postgres;

-- Table: public.item

-- DROP TABLE public.item;

CREATE TABLE IF NOT EXISTS public.item
(
    -- Inherited from table public.base: id uuid NOT NULL,
    -- Inherited from table public.base: is_active boolean NOT NULL,
    -- Inherited from table public.base: is_archived boolean NOT NULL,
    -- Inherited from table public.base: created_dt timestamp without time zone NOT NULL,
    -- Inherited from table public.base: created_by character varying(300) COLLATE pg_catalog."default" NOT NULL,
    -- Inherited from table public.base: lastchanged_dt timestamp without time zone,
    name character varying(300) COLLATE pg_catalog."default" NOT NULL,
    description character varying(300) COLLATE pg_catalog."default" NOT NULL
)
    INHERITS (public.base)
TABLESPACE pg_default;

ALTER TABLE public.item
    OWNER to postgres;