--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

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

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

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

--
-- PostgreSQL database dump complete
--

--
-- Database "test_db" dump
--

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

--
-- Name: test_db; Type: DATABASE; Schema: -; Owner: root
--

CREATE DATABASE test_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


ALTER DATABASE test_db OWNER TO root;

\connect test_db

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

--
-- Name: 24577; Type: BLOB; Schema: -; Owner: root
--

SELECT pg_catalog.lo_create('24577');


ALTER LARGE OBJECT 24577 OWNER TO root;

--
-- Data for Name: hello_message; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.hello_message (id, table_field_for_message) VALUES (1, '24577');


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.hibernate_sequence', 1, true);


--
-- Data for Name: BLOBS; Type: BLOBS; Schema: -; Owner: -
--

BEGIN;

SELECT pg_catalog.lo_open('24577', 131072);
SELECT pg_catalog.lowrite(0, '\x7b0d0a20202020226d657373616765223a2268656c6c6f20646f636b65722d636f6d706f7365206462220d0a7d');
SELECT pg_catalog.lo_close(0);

COMMIT;

--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

