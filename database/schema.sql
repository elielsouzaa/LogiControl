--
-- PostgreSQL database dump
--

\restrict ZD6eneLahIP0YuEOTOJygb3AiuPuqSjcvIfBd9QMcZEcs0Cpoyk2cau0wzLPs46

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-03-03 19:50:16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 16392)
-- Name: user_inf; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_inf (
    id integer CONSTRAINT user_id_not_null NOT NULL,
    first_name character varying(50) CONSTRAINT user_first_name_not_null NOT NULL,
    last_name character varying(50) CONSTRAINT user_last_name_not_null NOT NULL,
    email character varying(100) CONSTRAINT user_email_not_null NOT NULL,
    creation_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    password character varying(255) NOT NULL
);


ALTER TABLE public.user_inf OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16391)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_id_seq OWNER TO postgres;

--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 219
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public.user_inf.id;


--
-- TOC entry 4855 (class 2604 OID 16395)
-- Name: user_inf id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_inf ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- TOC entry 5009 (class 0 OID 16392)
-- Dependencies: 220
-- Data for Name: user_inf; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_inf (id, first_name, last_name, email, creation_date, password) FROM stdin;
\.


--
-- TOC entry 5016 (class 0 OID 0)
-- Dependencies: 219
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 3, true);


--
-- TOC entry 4858 (class 2606 OID 16403)
-- Name: user_inf user_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_inf
    ADD CONSTRAINT user_email_key UNIQUE (email);


--
-- TOC entry 4860 (class 2606 OID 16401)
-- Name: user_inf user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_inf
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


-- Completed on 2026-03-03 19:50:16

--
-- PostgreSQL database dump complete
--

\unrestrict ZD6eneLahIP0YuEOTOJygb3AiuPuqSjcvIfBd9QMcZEcs0Cpoyk2cau0wzLPs46

