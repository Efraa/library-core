CREATE DATABASE IF NOT EXISTS library;

-- Table: public.books

-- DROP TABLE public.books;

CREATE TABLE public.books
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY,
    name text COLLATE pg_catalog."default" NOT NULL,
    isbn text COLLATE pg_catalog."default" NOT NULL,
    description text COLLATE pg_catalog."default",
    publisher text COLLATE pg_catalog."default",
    publicdate date,
    paperback integer,
    language text COLLATE pg_catalog."default",
    code text COLLATE pg_catalog."default" NOT NULL,
    "createdAt" date,
    "updatedAt" date,
    CONSTRAINT books_pkey PRIMARY KEY (id),
    CONSTRAINT books_name_check CHECK (name <> ''::text),
    CONSTRAINT books_isbn_check CHECK (isbn <> ''::text),
    CONSTRAINT books_code_check CHECK (code <> ''::text)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.books
    OWNER to root;