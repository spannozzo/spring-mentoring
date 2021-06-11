--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: hello_message; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.hello_message (
    id integer NOT NULL,
    table_field_for_message text
);


ALTER TABLE public.hello_message OWNER TO root;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO root;

--
-- Name: 16395; Type: BLOB; Schema: -; Owner: root
--

SELECT pg_catalog.lo_create('16395');


ALTER LARGE OBJECT 16395 OWNER TO root;

--
-- Data for Name: hello_message; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.hello_message (id, table_field_for_message) VALUES (1, '16395');


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.hibernate_sequence', 1, true);


--
-- Data for Name: BLOBS; Type: BLOBS; Schema: -; Owner: -
--

BEGIN;

SELECT pg_catalog.lo_open('16395', 131072);
SELECT pg_catalog.lowrite(0, '\x7b226d657373616765223a22646f636b6572206d657373616765227d');
SELECT pg_catalog.lo_close(0);

COMMIT;

--
-- Name: hello_message hello_message_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.hello_message
    ADD CONSTRAINT hello_message_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

