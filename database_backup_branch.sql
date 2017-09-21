--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: authors; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE authors (
    id integer NOT NULL,
    author character varying
);


ALTER TABLE authors OWNER TO "Guest";

--
-- Name: author_name_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE author_name_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE author_name_id_seq OWNER TO "Guest";

--
-- Name: author_name_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE author_name_id_seq OWNED BY authors.id;


--
-- Name: author_title; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE author_title (
    id integer NOT NULL,
    author_id integer,
    title character varying
);


ALTER TABLE author_title OWNER TO "Guest";

--
-- Name: book_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE book_id_seq OWNER TO "Guest";

--
-- Name: book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE book_id_seq OWNED BY author_title.id;


--
-- Name: books; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE books (
    id integer NOT NULL,
    title character varying
);


ALTER TABLE books OWNER TO "Guest";

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE books_id_seq OWNER TO "Guest";

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE books_id_seq OWNED BY books.id;


--
-- Name: checkouts; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE checkouts (
    id integer NOT NULL,
    book_id integer,
    patron_id integer,
    return date
);


ALTER TABLE checkouts OWNER TO "Guest";

--
-- Name: checkouts_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE checkouts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE checkouts_id_seq OWNER TO "Guest";

--
-- Name: checkouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE checkouts_id_seq OWNED BY checkouts.id;


--
-- Name: patrons; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE patrons (
    id integer NOT NULL,
    patron character varying
);


ALTER TABLE patrons OWNER TO "Guest";

--
-- Name: patrons_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE patrons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE patrons_id_seq OWNER TO "Guest";

--
-- Name: patrons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE patrons_id_seq OWNED BY patrons.id;


--
-- Name: author_title id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY author_title ALTER COLUMN id SET DEFAULT nextval('book_id_seq'::regclass);


--
-- Name: authors id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY authors ALTER COLUMN id SET DEFAULT nextval('author_name_id_seq'::regclass);


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY books ALTER COLUMN id SET DEFAULT nextval('books_id_seq'::regclass);


--
-- Name: checkouts id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY checkouts ALTER COLUMN id SET DEFAULT nextval('checkouts_id_seq'::regclass);


--
-- Name: patrons id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY patrons ALTER COLUMN id SET DEFAULT nextval('patrons_id_seq'::regclass);


--
-- Name: author_name_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('author_name_id_seq', 12, true);


--
-- Data for Name: author_title; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY author_title (id, author_id, title) FROM stdin;
\.


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY authors (id, author) FROM stdin;
\.


--
-- Name: book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('book_id_seq', 4, true);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY books (id, title) FROM stdin;
1	1
2	1
3	1
4	1
5	1
6	1
7	1
8	Robin Hood
9	1
10	1
11	1
12	1
13	1
14	1
15	Where the Red Fern Grows
16	Where the Red Fern Grows
17	Where the Red Fern Grows
18	Where the Red Fern Grows
19	Where the Red Fern Grows
20	Where the Red Fern Grows
21	Where the Red Fern Grows
22	Where the Red Fern Grows
23	Where the Red Fern Grows
24	Where the Red Fern Grows
25	Where the Red Fern Grows
26	Where the Red Fern Grows
27	Where the Red Fern Grows
28	Where the Red Fern Grows
29	Where the Red Fern Grows
30	Where the Red Fern Grows
31	Where the Red Fern Grows
32	Where the Red Fern Grows
33	Where the Red Fern Grows
34	Where the Red Fern Grows
35	Where the Red Fern Grows
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('books_id_seq', 35, true);


--
-- Data for Name: checkouts; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY checkouts (id, book_id, patron_id, return) FROM stdin;
\.


--
-- Name: checkouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('checkouts_id_seq', 1, false);


--
-- Data for Name: patrons; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY patrons (id, patron) FROM stdin;
\.


--
-- Name: patrons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('patrons_id_seq', 1, false);


--
-- Name: authors author_name_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY authors
    ADD CONSTRAINT author_name_pkey PRIMARY KEY (id);


--
-- Name: author_title book_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY author_title
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: checkouts checkouts_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY checkouts
    ADD CONSTRAINT checkouts_pkey PRIMARY KEY (id);


--
-- Name: patrons patrons_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY patrons
    ADD CONSTRAINT patrons_pkey PRIMARY KEY (id);


--
-- Name: author_title book_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY author_title
    ADD CONSTRAINT book_author_id_fkey FOREIGN KEY (author_id) REFERENCES authors(id);


--
-- Name: checkouts checkouts_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY checkouts
    ADD CONSTRAINT checkouts_book_id_fkey FOREIGN KEY (book_id) REFERENCES author_title(id);


--
-- Name: checkouts checkouts_patron_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY checkouts
    ADD CONSTRAINT checkouts_patron_id_fkey FOREIGN KEY (patron_id) REFERENCES patrons(id);


--
-- PostgreSQL database dump complete
--

