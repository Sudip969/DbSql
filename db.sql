--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)

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
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: audit; Type: TABLE; Schema: public; Owner: cezojpgn
--

CREATE TABLE public.audit (
    table_name text NOT NULL,
    row_id integer NOT NULL,
    value json,
    operation text NOT NULL,
    modified_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_by integer
);


ALTER TABLE public.audit OWNER TO cezojpgn;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: cezojpgn
--

CREATE TABLE public.customer (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    contact_details json NOT NULL,
    status text,
    country text NOT NULL,
    state text,
    city text,
    address text,
    pincode integer,
    currency text NOT NULL,
    website_url text,
    logo_url text,
    created_by integer,
    created_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    last_modified_by integer,
    last_modified_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.customer OWNER TO cezojpgn;

--
-- Name: customer_id_seq; Type: SEQUENCE; Schema: public; Owner: cezojpgn
--

CREATE SEQUENCE public.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_id_seq OWNER TO cezojpgn;

--
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cezojpgn
--

ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;


--
-- Name: employee; Type: TABLE; Schema: public; Owner: cezojpgn
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    name text NOT NULL,
    entity_id integer
);


ALTER TABLE public.employee OWNER TO cezojpgn;

--
-- Name: employee_id_seq; Type: SEQUENCE; Schema: public; Owner: cezojpgn
--

CREATE SEQUENCE public.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_id_seq OWNER TO cezojpgn;

--
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cezojpgn
--

ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;


--
-- Name: entity; Type: TABLE; Schema: public; Owner: cezojpgn
--

CREATE TABLE public.entity (
    id integer NOT NULL,
    name text NOT NULL,
    logo_url text,
    email text NOT NULL,
    contact_details json NOT NULL,
    country text NOT NULL,
    state text,
    city text,
    address text,
    pincode integer,
    tax_id text NOT NULL,
    bank_details json,
    status text DEFAULT 'active'::text,
    currency text NOT NULL,
    created_by integer,
    created_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    last_modified_by integer,
    last_modified_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.entity OWNER TO cezojpgn;

--
-- Name: entity_customer_relation; Type: TABLE; Schema: public; Owner: cezojpgn
--

CREATE TABLE public.entity_customer_relation (
    entity_id integer,
    customer_id integer,
    start_date date NOT NULL,
    end_date date,
    status text DEFAULT 'active'::text,
    template_id integer
);


ALTER TABLE public.entity_customer_relation OWNER TO cezojpgn;

--
-- Name: entity_id_seq; Type: SEQUENCE; Schema: public; Owner: cezojpgn
--

CREATE SEQUENCE public.entity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.entity_id_seq OWNER TO cezojpgn;

--
-- Name: entity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cezojpgn
--

ALTER SEQUENCE public.entity_id_seq OWNED BY public.entity.id;


--
-- Name: invoice; Type: TABLE; Schema: public; Owner: cezojpgn
--

CREATE TABLE public.invoice (
    id integer NOT NULL,
    entity_id integer,
    customer_id integer,
    project_id integer,
    issue_date date NOT NULL,
    due_date date NOT NULL,
    duration_start date NOT NULL,
    duration_end date NOT NULL,
    total_cost double precision NOT NULL,
    status text NOT NULL,
    invoice_pdf_path text,
    created_by integer,
    created_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    last_modified_by integer,
    last_modified_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.invoice OWNER TO cezojpgn;

--
-- Name: invoice_id_seq; Type: SEQUENCE; Schema: public; Owner: cezojpgn
--

CREATE SEQUENCE public.invoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_id_seq OWNER TO cezojpgn;

--
-- Name: invoice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cezojpgn
--

ALTER SEQUENCE public.invoice_id_seq OWNED BY public.invoice.id;


--
-- Name: invoice_items; Type: TABLE; Schema: public; Owner: cezojpgn
--

CREATE TABLE public.invoice_items (
    id integer NOT NULL,
    invoice_line_item jsonb NOT NULL,
    modified_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    modified_by integer
);


ALTER TABLE public.invoice_items OWNER TO cezojpgn;

--
-- Name: invoice_items_id_seq; Type: SEQUENCE; Schema: public; Owner: cezojpgn
--

CREATE SEQUENCE public.invoice_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invoice_items_id_seq OWNER TO cezojpgn;

--
-- Name: invoice_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cezojpgn
--

ALTER SEQUENCE public.invoice_items_id_seq OWNED BY public.invoice_items.id;


--
-- Name: project; Type: TABLE; Schema: public; Owner: cezojpgn
--

CREATE TABLE public.project (
    id integer NOT NULL,
    customer_id integer,
    name text NOT NULL,
    start_date date NOT NULL,
    end_date date,
    billing_type text NOT NULL,
    billing_period text NOT NULL,
    entity_id integer,
    status text NOT NULL,
    created_by integer,
    created_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    last_modified_by integer,
    last_modified_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.project OWNER TO cezojpgn;

--
-- Name: project_id_seq; Type: SEQUENCE; Schema: public; Owner: cezojpgn
--

CREATE SEQUENCE public.project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_id_seq OWNER TO cezojpgn;

--
-- Name: project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cezojpgn
--

ALTER SEQUENCE public.project_id_seq OWNED BY public.project.id;


--
-- Name: project_resource; Type: TABLE; Schema: public; Owner: cezojpgn
--

CREATE TABLE public.project_resource (
    id integer NOT NULL,
    resource_id text,
    project_id integer,
    service_id integer,
    daily_hours integer,
    hourly_rate integer NOT NULL,
    start_date date NOT NULL,
    end_date date,
    created_by integer,
    created_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    last_modified_by integer,
    last_modified_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    status text NOT NULL
);


ALTER TABLE public.project_resource OWNER TO cezojpgn;

--
-- Name: project_resource_id_seq; Type: SEQUENCE; Schema: public; Owner: cezojpgn
--

CREATE SEQUENCE public.project_resource_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_resource_id_seq OWNER TO cezojpgn;

--
-- Name: project_resource_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cezojpgn
--

ALTER SEQUENCE public.project_resource_id_seq OWNED BY public.project_resource.id;


--
-- Name: service; Type: TABLE; Schema: public; Owner: cezojpgn
--

CREATE TABLE public.service (
    id integer NOT NULL,
    name text NOT NULL,
    created_by integer,
    created_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    last_modified_by integer,
    last_modified_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.service OWNER TO cezojpgn;

--
-- Name: service_id_seq; Type: SEQUENCE; Schema: public; Owner: cezojpgn
--

CREATE SEQUENCE public.service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_id_seq OWNER TO cezojpgn;

--
-- Name: service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cezojpgn
--

ALTER SEQUENCE public.service_id_seq OWNED BY public.service.id;


--
-- Name: session; Type: TABLE; Schema: public; Owner: cezojpgn
--

CREATE TABLE public.session (
    sid character varying NOT NULL,
    sess json NOT NULL,
    expire timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.session OWNER TO cezojpgn;

--
-- Name: users; Type: TABLE; Schema: public; Owner: cezojpgn
--

CREATE TABLE public.users (
    id integer NOT NULL,
    first_name text NOT NULL,
    last_name text,
    email text,
    role text DEFAULT 'admin'::text,
    password character varying(100) NOT NULL,
    status text DEFAULT 'active'::text,
    created_by integer,
    created_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    last_modified_by integer,
    last_modified_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    entity_id integer,
    reset_password_token text,
    reset_password_expires timestamp without time zone
);


ALTER TABLE public.users OWNER TO cezojpgn;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: cezojpgn
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO cezojpgn;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cezojpgn
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: customer id; Type: DEFAULT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);


--
-- Name: employee id; Type: DEFAULT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);


--
-- Name: entity id; Type: DEFAULT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.entity ALTER COLUMN id SET DEFAULT nextval('public.entity_id_seq'::regclass);


--
-- Name: invoice id; Type: DEFAULT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.invoice ALTER COLUMN id SET DEFAULT nextval('public.invoice_id_seq'::regclass);


--
-- Name: invoice_items id; Type: DEFAULT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.invoice_items ALTER COLUMN id SET DEFAULT nextval('public.invoice_items_id_seq'::regclass);


--
-- Name: project id; Type: DEFAULT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.project ALTER COLUMN id SET DEFAULT nextval('public.project_id_seq'::regclass);


--
-- Name: project_resource id; Type: DEFAULT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.project_resource ALTER COLUMN id SET DEFAULT nextval('public.project_resource_id_seq'::regclass);


--
-- Name: service id; Type: DEFAULT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.service ALTER COLUMN id SET DEFAULT nextval('public.service_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: audit; Type: TABLE DATA; Schema: public; Owner: cezojpgn
--

COPY public.audit (table_name, row_id, value, operation, modified_on, modified_by) FROM stdin;
\.


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: cezojpgn
--

COPY public.customer (id, name, email, contact_details, status, country, state, city, address, pincode, currency, website_url, logo_url, created_by, created_on, last_modified_by, last_modified_on) FROM stdin;
2	customer	customer1@gmail.com	9876543210	active	India	Gujarat	\N	\N	123456	INR	www.google.com	\N	5	2023-03-09 07:57:29.651232	5	2023-03-09 07:57:29.651232
4			123						\N				16	2023-03-10 17:47:38.198037	16	2023-03-10 17:47:38.198037
7	Amazon	amazon@amazon.com	123						\N				16	2023-03-10 18:10:41.423669	16	2023-03-10 18:10:41.423669
9	aditya	aditya@asd.com	123	active	india	gujrat	vadodara		326644	dollar			20	2023-03-10 19:03:49.342259	20	2023-03-10 19:03:49.342259
10	aditya	aditya@asd.com	123	active	india	gujrat	vadodara		326644	dollar			20	2023-03-10 19:03:59.302373	20	2023-03-10 19:03:59.302373
11	asmdjbajbd	jaskdn@gmail.com	123	active	jkjkjsc	jbkjsbdjks	jnkdfb		154625	asdha			20	2023-03-11 04:24:09.037166	20	2023-03-11 04:24:09.037166
12	asjdbk	bjbj@ga.vom	123	active	bjbjbcj	jhjjhbcjj	bjabs		356465	babhjs			20	2023-03-13 06:47:56.248103	20	2023-03-13 06:47:56.248103
13			123						\N				16	2023-03-16 07:18:15.904172	16	2023-03-16 07:18:15.904172
15	kanchan	kanchan@123	123		IN	MP			\N	INR			16	2023-03-16 07:28:57.530111	16	2023-03-16 07:28:57.530111
26	mldvs	yash@gmail.com	{"primary":"6337213833","secondary":["9876543855","8234567890"]}	active	csssnin	cscsss	ascascd	nksdnkvnsdkvndnvkjnskj	370020	INR	http://google.com	http://google.com	16	2023-03-17 14:12:49.873808	16	2023-03-17 14:12:49.873808
16	nhill	ki@1234	123	active	AO				\N	INR			16	2023-03-16 08:36:26.542817	16	2023-03-16 08:36:26.542817
14	fr	fr@de	123	inactive	IN	MP			\N	INR			16	2023-03-16 07:24:05.544161	16	2023-03-16 07:24:05.544161
6	Meta	meta@meta.com	123	active					\N				16	2023-03-10 18:05:33.995235	16	2023-03-10 18:05:33.995235
5	Google	google@google.com	123	active					\N				16	2023-03-10 18:02:13.124223	16	2023-03-10 18:02:13.124223
8	Apple	apple@apple.com	123	active					\N				16	2023-03-10 18:12:00.729429	16	2023-03-10 18:12:00.729429
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: cezojpgn
--

COPY public.employee (id, name, entity_id) FROM stdin;
1	Naman Ghevariya	24
2	Kanchan Sikder	24
3	Yash Shah	24
4	Aditya Chauhan	24
5	Kavya Patel	28
6	Guneet Singh	28
8	Darshi Jain	24
9	Swapnil Bhadoriya	28
7	Nikhil Sahu	28
\.


--
-- Data for Name: entity; Type: TABLE DATA; Schema: public; Owner: cezojpgn
--

COPY public.entity (id, name, logo_url, email, contact_details, country, state, city, address, pincode, tax_id, bank_details, status, currency, created_by, created_on, last_modified_by, last_modified_on) FROM stdin;
26	Kavya	\N	a@gmail.com	{}	india	\N	\N	\N	\N	1	\N	active	usd	1	2023-03-10 05:37:43.408145	1	2023-03-10 05:37:43.408145
27	Kanchan Sikder	\N	b@gmail.com	{}	india	\N	\N	\N	\N	zxcv	\N	active	usd	1	2023-03-10 05:57:34.013151	1	2023-03-10 05:57:34.013151
48	guneet	\N	guneets@argusoft.com	{}	IN	\N	\N	\N	\N	9707	\N	active		2	2023-03-18 08:34:01.689299	2	2023-03-18 08:35:52.418126
44	Kanchan Sikder	\N	abvfr@gmail.com	{}		\N	\N	\N	\N	1256234	\N	active		2	2023-03-16 08:29:49.872167	2	2023-03-16 15:01:01.57261
42	Drashi Jain	\N	drashijaindj121@gmail.com	{}	IN	\N	\N	\N	\N	4354567567	\N	active		2	2023-03-15 12:48:33.980514	2	2023-03-16 15:01:40.088822
24	Kanchan Sikder	\N	kanchan@gmail.com	{"secondary":[],"primary":null}	IN	MP	\N	\N	654321	123456	\N	active	INR	1	2023-03-09 18:00:33.761118	2	2023-03-17 10:08:22.922598
39	Kavya Patel	\N	kpatel@argusoft.in	{}	IN	\N	\N	\N	\N	579	\N	active		2	2023-03-15 11:02:25.213527	2	2023-03-16 15:11:24.03386
8	test	\N	test@email.com	{}	test	\N	\N	\N	\N	test	\N	inactive	test	1	2023-03-09 14:11:55.790601	2	2023-03-09 14:11:55.790601
28	argusoft Gandhinagar	\N	argusoft@gmail.com	{}	India	\N	\N	\N	\N	1248631	\N	inactive	Rupee	1	2023-03-10 18:33:23.85234	2	2023-03-10 18:33:23.85234
1	Argusoft	\N	argus@argusoft.com	{}	India	\N	\N	\N	\N	GSTIN123	\N	inactive	INR	1	2023-03-07 17:22:31.791463	2	2023-03-07 17:22:31.791463
30	Test1	\N	test1@gmail.com	{}	India	\N	\N	\N	\N	1324677568	\N	inactive	Rupee	2	2023-03-13 06:28:03.143699	2	2023-03-13 06:28:03.143699
36	q1	\N	q1@gmail.com	{}	United States	\N	\N	\N	\N	q1	\N	inactive	JPY	2	2023-03-13 08:44:38.17478	2	2023-03-16 16:53:08.88505
45	Kanchan Sikder	\N	abcv@gmail.com	{}		\N	\N	\N	\N	19786	\N	inactive		2	2023-03-16 16:58:52.459294	2	2023-03-17 06:01:45.123498
13	test	\N	test1@email.com	{}	test	\N	\N	\N	\N	test1	\N	inactive	test	1	2023-03-09 14:58:18.588714	2	2023-03-09 14:58:18.588714
43	Kanchan Sikder	\N	asv@gmail.com	{}	IN	\N	\N	\N	\N	12345678	\N	inactive		2	2023-03-15 13:10:04.259271	2	2023-03-17 10:08:47.108552
41	Arpit	\N	athumar@argusoft.com	{}	IN	\N	\N	\N	\N	789	\N	inactive		2	2023-03-15 12:29:49.940941	2	2023-03-17 10:08:56.587361
40	Kavya	\N	s@argusoft.com	{}	AS	\N	\N	\N	\N	657	\N	inactive	EUR	2	2023-03-15 12:20:37.800543	2	2023-03-17 10:09:01.732995
38	Kavya Patel	\N	kpatel@argusoft.com	{}	IN	\N	\N	\N	\N	129	\N	inactive		2	2023-03-15 08:33:05.4535	2	2023-03-17 10:09:06.755615
34	dd	\N	dd@gmail.com	{}		\N	\N	\N	\N	33	\N	inactive	EUR	2	2023-03-13 08:17:46.204956	2	2023-03-13 08:17:46.204956
37	Kavya	\N	abcd@gmail.com	{}	India (भारत)	\N	\N	\N	\N	12131	\N	inactive		2	2023-03-13 09:37:37.976683	2	2023-03-17 10:09:12.3833
33	cc	\N	cc@gmail.com	{}		\N	\N	\N	\N	44	\N	inactive	EUR	2	2023-03-13 08:15:48.290934	2	2023-03-13 08:15:48.290934
31	aa	\N	aa@gmail.com	{}		\N	\N	\N	\N	12333	\N	inactive		2	2023-03-13 08:10:21.670616	2	2023-03-13 08:10:21.670616
32	bb	\N	bb@gmail.com	{}		\N	\N	\N	\N	34345	\N	inactive	EUR	2	2023-03-13 08:12:31.711079	2	2023-03-13 08:12:31.711079
47	adad	\N	adad@gmail.com	{}	AT	\N	\N	\N	\N	45as51d	\N	inactive		2	2023-03-18 04:04:18.517262	2	2023-03-20 08:22:04.803244
35	a1	\N	a1@gmail.com	{}		\N	\N	\N	\N	a1	\N	inactive	JPY	2	2023-03-13 08:22:08.343829	2	2023-03-16 13:29:19.087361
25	Kavya	\N	k@argusoft.com	{}	India	\N	\N	\N	\N	123	\N	inactive	rupees	1	2023-03-10 05:34:18.477049	2	2023-03-16 14:34:50.353038
46	Swapnil Bhadoriya	\N	test111111111@gmail.com	{}	BW	\N	\N	\N	\N	777777777777777	\N	inactive	EUR	2	2023-03-17 06:03:50.934252	2	2023-03-21 08:55:41.918868
49	Swapnil Bhadoriya	\N	test000000000000000@gmail.com	{}	AQ	\N	\N	\N	\N	999999999	\N	active		2	2023-03-21 07:07:19.636218	2	2023-03-21 16:04:35.21202
\.


--
-- Data for Name: entity_customer_relation; Type: TABLE DATA; Schema: public; Owner: cezojpgn
--

COPY public.entity_customer_relation (entity_id, customer_id, start_date, end_date, status, template_id) FROM stdin;
\.


--
-- Data for Name: invoice; Type: TABLE DATA; Schema: public; Owner: cezojpgn
--

COPY public.invoice (id, entity_id, customer_id, project_id, issue_date, due_date, duration_start, duration_end, total_cost, status, invoice_pdf_path, created_by, created_on, last_modified_by, last_modified_on) FROM stdin;
\.


--
-- Data for Name: invoice_items; Type: TABLE DATA; Schema: public; Owner: cezojpgn
--

COPY public.invoice_items (id, invoice_line_item, modified_on, modified_by) FROM stdin;
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: cezojpgn
--

COPY public.project (id, customer_id, name, start_date, end_date, billing_type, billing_period, entity_id, status, created_by, created_on, last_modified_by, last_modified_on) FROM stdin;
1	6	test1	2022-03-12	\N	fixed	monthly	24	active	16	2023-03-14 18:11:30.84645	\N	2023-03-14 18:11:30.84645
2	6	test2	2022-03-12	\N	fixed	monthly	24	active	16	2023-03-14 18:29:40.532288	\N	2023-03-14 18:29:40.532288
4	26	Test4	2023-03-01	2023-04-01	Recurring	Monthly	24	active	16	2023-03-21 08:36:44.842671	\N	2023-03-21 08:36:44.842671
3	26	Test3	2023-04-01	2023-06-01	Fixed		24	active	16	2023-03-21 08:32:47.535762	\N	2023-03-21 08:32:47.535762
5	16	Test5	2023-04-01	\N	Fixed		24	active	16	2023-03-21 08:47:08.407852	\N	2023-03-21 08:47:08.407852
6	16	Test6	2023-04-01	\N	Recurring	Quaterly	24	200	16	2023-03-21 08:49:28.882718	\N	2023-03-21 08:49:28.882718
17	8	ChatGPT	2023-03-21	2023-03-31	Fixed		24	active	16	2023-03-21 11:36:34.061564	\N	2023-03-21 11:36:34.061564
25	5	final_test	2023-04-01	\N	Fixed		24	active	16	2023-03-21 12:35:26.075896	\N	2023-03-21 12:35:26.075896
26	5	final_test2	2023-04-01	\N	Recurring	Monthly	24	active	16	2023-03-22 06:32:00.476965	\N	2023-03-22 06:32:00.476965
\.


--
-- Data for Name: project_resource; Type: TABLE DATA; Schema: public; Owner: cezojpgn
--

COPY public.project_resource (id, resource_id, project_id, service_id, daily_hours, hourly_rate, start_date, end_date, created_by, created_on, last_modified_by, last_modified_on, status) FROM stdin;
4	2	25	1	3	25	2023-04-01	\N	16	2023-03-21 12:36:37.125954	\N	2023-03-21 12:36:37.125954	active
5	3	25	2	4	25	2023-04-01	\N	16	2023-03-21 12:36:37.136887	\N	2023-03-21 12:36:37.136887	active
6	1	26	1	4	20	2023-04-01	\N	16	2023-03-22 06:33:36.489625	\N	2023-03-22 06:33:36.489625	active
7	4	26	2	3	20	2023-04-07	2023-05-01	16	2023-03-22 06:33:36.49883	\N	2023-03-22 06:33:36.49883	active
8	3	26	7	4	25	2023-04-01	\N	16	2023-03-22 06:33:36.503357	\N	2023-03-22 06:33:36.503357	active
\.


--
-- Data for Name: service; Type: TABLE DATA; Schema: public; Owner: cezojpgn
--

COPY public.service (id, name, created_by, created_on, last_modified_by, last_modified_on) FROM stdin;
1	frontend	2	2023-03-21 05:40:31.580024	\N	2023-03-21 05:40:31.580024
2	backend	2	2023-03-21 05:45:21.197776	\N	2023-03-21 05:45:21.197776
3	QA	2	2023-03-21 05:45:33.237587	\N	2023-03-21 05:45:33.237587
4	{"new":""}	2	2023-03-21 14:16:47.525121	2	2023-03-21 14:16:47.525121
5	{"j":""}	2	2023-03-21 14:21:46.018262	2	2023-03-21 14:21:46.018262
6	k	2	2023-03-21 14:24:39.736019	2	2023-03-21 14:24:39.736019
7	full stack	2	2023-03-21 14:26:47.690784	2	2023-03-21 14:26:47.690784
8	application	2	2023-03-21 15:32:21.574696	2	2023-03-21 15:32:21.574696
9	application	2	2023-03-21 15:32:26.994802	2	2023-03-21 15:32:26.994802
10	application	2	2023-03-21 15:32:30.474825	2	2023-03-21 15:32:30.474825
11	test	2	2023-03-22 04:54:57.458225	2	2023-03-22 04:54:57.458225
\.


--
-- Data for Name: session; Type: TABLE DATA; Schema: public; Owner: cezojpgn
--

COPY public.session (sid, sess, expire) FROM stdin;
c481OuoMZJ3oPXzpYCIQumaPz4f1sBQP	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679467002289d3k700xv36s","captchaText":"JtFX"}}	2023-03-23 06:36:43
YAJLu_OlP3HkjuX2FA9MZYSB0mOTibwI	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679467418388sgumyh9b8b","captchaText":"7jZ8"}}	2023-03-23 06:43:39
wFbYlqjZpKuNPAa-FiEd7G2-0zN-_KIu	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:43:49
fChVmkxutA8uer4du4Rlmryj67DLt6FN	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679468980254nzlv5ibvbo","captchaText":"faiU"}}	2023-03-23 07:09:41
_mDXmGj1McOJXo2wRIY460romKIsxxIH	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 07:09:46
HT6qOIcHoqDE6HLZM9VxKJyJuMKkA_Gl	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:17:38
7twJSBfefrieUJ6ZDVJoZxLShl1RcFu1	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:24:34
9xvWzgD6C9feXHGE2X-CXhJg8Qn0vBM2	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:24:41
py1OaI3A1m3IpbIFGCe4c0t8PoqLUv7F	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:35:13
FuCvuBnsuhCfr2uo4JJq6aDWTfcFdDia	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:39:51
z-11e_IkCr91YDtKG28EmkZYRY2GpyyD	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:47:13
dcFewULjtzeH3VPnUuqXar1zThhZuikZ	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:55:31
H0WMmhVE8bh6ngRYgoqlY2opktcIb9O0	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:03:30
Fyr9QrwBnri34meuhEdOwk4NsgpZjFfc	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:06:27
voV11wQmlwDON5qrNUSeBUiKr76AMgoW	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:10:35
yOXKjdWjpy9GCvpNkBrqBLwkCP4TsBtj	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:16:13
YfdnbCfcduvWOus9CUIDs-5sKuIbpDW4	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:21:36
VEyzADIJQ3uo7rduIj9V0ZdB4ZEBYbvP	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:25:19
kAoooY9PZUd1Riw1Y176TGMwpuwaDfGf	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:34:32
qOYvUJTl25GIL4DQhXY6IyVB2P9enuF0	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:34:40
RGygBNSe53cWaM7kfixgZmjb0wP0Cc8u	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:44:17
HU5rxuAU5lBcCQTZD7kwqc_eNkVV2N_n	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:49:28
jCrqOYYS2WqY9UmttKzXW4HXxo8uaUE2	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:53:00
-li5BycBqTWAX_civ6etOaI5R-UbKq_W	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 10:14:34
uPdl2mxL21LfHUayIc38fvfn_Yd6Jo9C	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 10:33:15
4Sj47jxg0VEcFv_2VCDpScCkRkmbGZYh	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679394800717sqrwh1k4rmn","captchaText":"LCyq"}}	2023-03-22 10:33:21
5p_GVmuq8H9dT15EMDo9xi1hmSykT9uw	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 10:33:31
P2LG6pB7MaJxjKxkwh72aO-AamoPHOdV	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679410088669tq02ozkizp","captchaText":"nCIV"}}	2023-03-22 14:48:09
XQ8EApVufSsvwfGXUniepFB4l-OIh1Sm	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679412703473gqrr8yjnzjv","captchaText":"webD"}}	2023-03-22 15:31:44
xT18cn4OhYwM1qtuqQGOg7TK2hyWefOz	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 15:31:52
TJeeBLKhUW_yQPpbMK4uXnQ3t7oO_1F2	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 17:34:24
_mq7isXO2QmICb2Gg-rN-DcPfC_icbGp	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 17:34:28
06JPWCVf6MT8XkznQbgzcPjHdY0f_C23	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 17:45:53
Imoq9jWlbkwZ8Xw_krDkLk-4c_ba35S4	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 17:45:53
lGvjHBaoTKIu4qBYW1ZcIOc_E8YGQeLP	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 18:05:21
Utym6sAZIdTNH9ytAv9lzO9tJwuR8sCP	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 18:32:53
uagXxu_CmNYMfswLDYguQZBU3AtL7-0J	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679463057894l3tdt4q6aq","captchaText":"MgI1"}}	2023-03-23 05:30:58
lfT2fOUCMuq_c11nzgBiEw3XXuDsa1JP	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 05:53:53
yo1BkkdtE8Ii7d8LQabfnYj0RYgUQnjh	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 05:53:57
1e3xLoGx2P0bgyrI3LNwqM7oHU-zRXgD	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:23:09
C4lUpetXrv2l2hlFcnmFvxaCLEGvxxBI	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:23:11
sZ1TfPinE-wxoVGzLE4krClXxZZ2Ll5F	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:36:59
ztJ_lBy9YAAI3fFTwVU-T4nC9sHAm4ZO	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:37:03
e_BkFuzR2HAfg9uVBf0la1Zsi6J5wSt4	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679467427221wn3rc3gf7if","captchaText":"IEe5"}}	2023-03-23 06:43:48
Mq3O6RryHdRBinUSYEPsI0ButSQnZBSi	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:43:55
GlhtL8ha5a7IXTLbtaZmwndQqp4lyGTG	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679386693147osvii9bnr78","captchaText":"VHkm"}}	2023-03-22 08:18:14
0VjlqundQKOoWfKCyMwBqIppz4G7whEq	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:18:33
Nt9b4aLXVS3Y2WUHoYyBpFQzl3w7sfVC	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:18:39
H0hChVnOe6EfR1d45yyoX6kpNYXPGzLL	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:27:32
zSItoD_Vl72jrB6n7SExYp8WVzl4LlMl	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:36:20
sh2LdavO25QIfPP5NnExOuYPkz23odZO	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:36:27
0LGD7-HHSMXPP6sapgT6ip-f3pwoeM84	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:40:52
sadrc7mhLuqV0A5nk3MKJxFsVRu5S3ts	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:47:49
ZdivZ7RF7Gfh9FM5geflHYRLULwu_CCk	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:57:06
kbJqvRFJYEXjojKI9twhDpYyZCv0swgi	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:57:15
J0LEbUS8iHeI1nO4JNMZuxr6_WweG7aG	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:03:48
nVpvxUGkNw4suqVfRk_8meRyKdoqJrU4	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:07:21
PQPjXdJgB0MKtq8q6C597Ej7_5LC4vHZ	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:11:50
craIHEwngjufKDfhbftfQGTIg6xpya7O	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:16:35
HgYwNFFJUvFwuOL9FYRlGAq5WM3lwBF1	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:16:44
0PR7BMatmMAOVNwwmmMphAn4pCPfDp2O	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:16:49
j4b2S0D86NshxtuAQfalfmhAGuKiWGMP	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:16:53
o31X9UPNq_30dxALl7OeksrswKxxohqS	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:22:23
r1ph70C9J6eO6dbCAQgE2KSlmmH7OgOi	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:22:27
pyzYV6XWeeB6bwwxNYFb02Fdg6-wSsAJ	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:22:37
ZBFozrAvoSJSKr9qOgwkcj_Vgl2kq3Rv	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:31:47
qjNFvdrPuzoym-6gQozV2RDHKdZ4n6PX	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:35:39
Jc3-g3m095E2fNHPHLBpUY-832YYgAs1	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:44:36
DhD9glxJAiqGwyQhsaYu_ia_RPf0JZA0	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:44:40
cPAbg010HZ1KQRDqj12GLj2Rhuwuq0my	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:49:41
FMGyUckZEgR05SlqyHB9dKocZLZMUgPU	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:53:50
TXXrC36WTaMuaNRyQJjeUI3bqroB3iPY	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 10:15:32
pRVIw6uaErUhIDAATbuMNFRcSAHpy0eC	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 10:42:39
Hay3yuvkbEdyrYPCvr1RsPP6it07P5yQ	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679410148763wjx5uk09hye","captchaText":"j3Hp"}}	2023-03-22 14:49:09
aPT3izXKo7Hn6g9G1y_alwmnunhb1Pk0	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679410154565u11msx96x3","captchaText":"NgTs"}}	2023-03-22 14:49:15
CFIFsrqRystwGfFZifuwIu01__cOyY03	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"167941279071208g2x65pr8q","captchaText":"xzKE"}}	2023-03-22 15:33:11
wUEVeoTFy9JsdgH7hE5zlDxRgHk2Dohd	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 17:35:00
yNoy2PKx_KfPbeo0mcfgCP5iOpj_zmGb	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 17:47:50
EnRWVRTpcmUqcR-8ng3coMwCliP9dEEX	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 18:05:43
VkG6Zin74jZaiul_CxBuFrwgiJGwsoEH	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679460818044nwkykw8m2eg","captchaText":"3VYW"}}	2023-03-23 04:53:39
5wQLJhv-KGF7qnm33SVYkXi-VS9r0j3U	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 05:31:17
44jt2618ZPnGbOj2shkvw0S1FPtWoK0W	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 05:57:02
L8gcfEDleLtLLupkeF4GwwWnH60Lcul_	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:24:26
-KcAXr6PxAX0xic-aGFFvNcA8h02VeNu	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:39:40
62eX-2prA1iQXcqBxCaHAmJ_1np_w7uF	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:46:18
_lZuiec1tCCAmFPDfUAj_CiZgoqUzIwk	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:18:44
Ekbegd5vhGShjTMZ-H1wNVMQru7Jf8Ag	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:28:39
PrcpVdvodjesbgurgzLu6DQyq9mrE5AA	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:36:52
Qw1EOVBLgCdVo3PyvmGQJocbe2EW5Pd9	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:41:26
nKk2JX309HybeVpBjXBQuRDXtfKxwQtm	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:50:55
uTRdROkMDdu18h_XblhpdNnUQdlH040Z	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"16793890423098m9v44yb94","captchaText":"0qPL"}}	2023-03-22 08:57:23
duoA9bbnrtqF2pc_HEelRuuJrT36EC6L	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:57:28
6ya_G3lvg7xOfzkBzrtr-YBy2guZHF9v	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:04:04
eUB8ziFvU8sBm98RK5nXZRyGQawEMxNR	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:07:40
Psi62grxAaJ3Th5cBLW69Og5LHWHZTeX	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:12:12
ffM2qY6_5hKwJYD7Ccw2Q0Tigcserfus	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:17:36
NWXGLfEikCdKAkR0ebX1uaPi1T1s-e2u	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:22:48
DqlMUJE1nRl5LrIu5xhda39hSlU0H0JU	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:32:24
OaYTgWzHOtaKFkOv_xJLLt0wZn8o3zVe	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:37:06
l4Hqtl__7QR7SuR7PB8zmTGaVRghKaIi	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:45:01
4Ti9EJD35yId7le3Dvcwt-iww95PUhV4	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:45:08
NODuSWtFgBuiGNzn449PmzHbfmWuGdW1	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:45:12
vcG0Y5Bfnf7KPig4t4x4ie2S8LmCIC4W	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:51:02
0FeoME20AyqdvckPaas2hXZ-KKvqxo22	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:54:04
MhCr4IIEHl6igWjI8TRC7UVRIDdvedkM	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 10:23:29
HNHFemI2Lhr6UrpKO9lG0p5fbCebmPQB	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679395425884oc7zxjzl81k","captchaText":"1Jrg"}}	2023-03-22 10:43:46
LfC-NN1XGYSjvxMoHRBstj-6CpR2zW1Z	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"167941120875758mtxcdy4hl","captchaText":"it6c"}}	2023-03-22 15:06:49
tG8T8lGch2zS_dd2F8mCX-rl9vEizzsc	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679411210387chp5oq4c67a","captchaText":"xbDi"}}	2023-03-22 15:06:51
4Mul1_NgH8D-NC9Sqibug76AIRLDV-Jg	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"167941286011260hvnps68ic","captchaText":"nQ4j"}}	2023-03-22 15:34:21
kATfGASk4Qgmoribzy40Ka-n3-w78FXI	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 15:34:28
Z2nK1xkRhuar2xCoGa4PEXaecoeM5tCX	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 17:37:30
YKqqwgoawJvdqJElyKWEm5_daJWDQy23	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 17:48:17
1H33nQAKdkzGuUWxdquUDfTnRgphYCc-	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 18:10:12
nzPKhd2bU8uUwgflRsO0GSldievKubvA	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 04:53:56
OZmCxILNh4DfDj5PRMnbu6gT2zhH93_M	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679464028618cetu8aunbxh","captchaText":"TKFd"}}	2023-03-23 05:47:09
tKIwcmm2txcsF9HfSiMTiXjL7Q5CWvHJ	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679464031598yzqciya9r4t","captchaText":"jrhh"}}	2023-03-23 05:47:12
z7sHHJtmO-2K8nVQ-ZcArp7VagV0_Kqw	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 05:47:19
WPe8yYTmHqWEM7Jm7N9RBAdtNr9q542c	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679464901670abo1lrybav","captchaText":"MkEI"}}	2023-03-23 06:01:42
tfOSyStVpueyXbBli1ot2JDsRMFw0OLw	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:01:47
5GqFoklwa0QWOlHryrJdWZkalh1RpWBo	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:24:57
NNIeNbSV5CGN-q_81H9uTbm_BiQ3A9MF	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:25:03
3p1RHNNG5bL-QFSyJqLteF0gLNxIKX-X	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:39:55
3DGIRbDVnde0kYKwcD7oO6D1tesSMrg1	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:53:34
2r4X0UWxJCNml2hw2i7nOSHenTHzNplC	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:53:40
n8yxAf1YohTSp3EnFQoq86eFSLa7sQ1a	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"167938336173681gkodp1tis","captchaText":"6rMk"}}	2023-03-22 07:22:42
9d0XaA9usZ5TRaabwhtW8ik7XobTFxeE	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 07:22:51
WHepSC_8AZZuFLqtfFNj82EdHGBFqpy1	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 07:22:57
gvnrXoF7qvbNChq0vHVBn1RGR80X4UgI	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:19:50
Sc4jdhEnmbwYcfsbTxChQhz-y3t7pQWx	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:28:58
CsyDPxuEeT0PqwtdboqUr30q2fGI2Rdf	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:37:24
VrSySv7qJBpel7gTUjSYDQlS_lnRUD5q	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:41:45
SKHdmTZvqcUGhD0VICLsCgNFqOhrgXUz	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:51:30
JhhxVlBJY_MXbuJJaMZKswGHDpMts6v9	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:59:58
wNsSViZVAumJSSVFHubYrxe-zrhnVk4o	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:04:21
ujRPwGhopTr6mGYR6if9XlblkDGGih2w	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:08:03
nzKTsF3CjfrbiYvjXPRJgPJrX0us11WJ	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:13:41
DfxFdnaSQ-iEI6GTg-r3sw_8m6rhahsP	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:18:20
y_09-XU1pB3CaYRYmFNR3DZepvb1YfY_	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:23:18
acUBNlVNLZFYq9n6aPZBXawCR8IC9rBm	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:23:22
YMDJ0r1LvvwhJ_IVTGGq2xfxk69fq0sb	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:32:59
Qo0VRNWxtB7_rQEJp92vpFalha50tEIs	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:39:36
cdXbUXrPIOJHeS9u2jiKuAlTwfcuInhF	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:45:42
i98zORjPykd96cDxq_3Sa-Zfj0p6chT1	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:45:47
qpQPVhXM-ctRMhTwfyy5nJMkI17LR4pL	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:51:15
JV1bX1c97GgceHg_p-ADtUSof3yohyux	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:51:24
Bu2khwhJ5hzsseu7iws5SzBSlWjAQwum	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:54:28
sK1T5EsFQ_j9L_dAafOHq8xPPB3RqVRb	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 10:25:10
vOzaMeojqtksRpb9lAfkbAMq35q5-QE3	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 10:44:09
MUs_GCSMb14b0VZ05SZJRRe9cwi3_Fcm	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 15:07:48
2iBsPuQjqds2m5EbT6D9EvRNKUMA17cF	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 15:34:54
-rxB7Yl_Et3fsA-2C6vg8WmoGvz657rV	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 17:37:59
1lu6lhTHRfoH67lXtoh14l2lL-s-o_ZS	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 17:53:21
wnPjD9h8Bsg0IyXBwE5iE9NctR6dIzg0	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 18:16:01
9-4BoErM6UyVGFWm5dM9r9_8w84qOWeD	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679460849452a6b0f8hr04w","captchaText":"W0Ez"}}	2023-03-23 04:54:10
Q06mWDovDbbc8rUnfyma4IPsV2yoml-u	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 05:48:08
B9qBlz_N6CS_XyrXNVk0GZNyrP43q2U8	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:03:19
NiUgn_fqOFEdYaaPcfyijat2ArwNuiKk	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679466430048bpf2cx8umau","captchaText":"WSHF"}}	2023-03-23 06:27:11
3HLm3-YJEVPv0zM6RbnHr9rheGuq8mCY	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:41:04
PjfZZ09O1jIGeVpvKdElNVrdSzDDdgOD	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679468280971pnlgas24br","captchaText":"4HnT"}}	2023-03-23 06:58:01
2Czuju-bx066vbZxqS2dQIfhZuDrygx5	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:58:06
TDqBjhMq9bBA3xLQb62PdDnDhV9hm-ZM	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:58:10
3QbPQNWVx8BiDXoroPze-gAiveEVt-FW	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679386396901uo0oknoj7c","captchaText":"gLBO"}}	2023-03-22 08:13:17
NiZBrKSIpFGEIMbZHbTtVY8UISa273bB	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:22:49
rrpN1VHz_b9lyHOLxUuM-mnbkRN7d6tP	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:29:39
QmIT4InHpQys919Y_RCf535On9J5ukuh	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:37:38
efQ6HcBDWetqvrWL58xNhZivCieJDf1F	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:42:06
4AyCPrbjuWhS0S8HVIC5cDMMOIjJjLVW	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:51:53
w5EkpYkmv5Db9rp5_X9zbXQjoQWJj9rC	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:00:11
FB6f-Q3CkHyS0pP_9SASpT8IX8XisamN	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:04:34
d9vv4iE53Ie1jNbG2u2AF-PAkoW2GUOx	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:08:26
MDZjipH3ZUCLnoZ6xrwyIIK1G9N4-yl_	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:14:55
WYrqlzyaiKUJ5s81MxPJ_ThTNojjiUup	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:19:31
ai7w4Y_DsQdOHoP37RxyVzRJ4Z5LzsaC	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:23:40
NsI4Gc5jc-G1uY9jrMd1qLgqPCbBudiK	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679391232995375oyfi8tiw","captchaText":"HXma"}}	2023-03-22 09:33:53
c--12RPC1AXu8ds3gQiuf3vCXfpO5N2T	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:34:04
PKzKuBJPu8esMY8fmokXGUyD7YQLbUe4	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:40:27
pQwCI5uwzeRNXTyLQRlZ1s9QKje8u2Vm	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:46:57
WkRhLvjPcUrSjw0MgE-F-eIP2Eq415yC	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"16793923140463rcnki5ffqe","captchaText":"x1C1"}}	2023-03-22 09:51:55
-BD1VeC74T4smkrn0RxjrMendlxhPdkw	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:56:19
3hRSCpHcWuVvR4x1NAwpZ5FKI1yCjrWw	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 10:26:24
m9uFMXn6VW9-TZVYct2HlePgKlfU3QdW	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 11:23:55
o-ETWP5C2WKdaC1d4MzO-p7ti1renJ5A	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679411321073301ymfy7fky","captchaText":"D5Ta"}}	2023-03-22 15:08:42
lMxnNDXaM4Qi1BigKEictYzGILwRHfDT	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 15:08:51
L8qv1ckibpIkQrtHl0_K2HoRHdQiVQOB	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"16794145214642a56odhw2pe","captchaText":"Zj1j"}}	2023-03-22 16:02:02
SX_emCD7XTg7cou6QEH7YnEqPZzfPd-8	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 17:38:57
dB5lE0oGbFbndvr8GQJek1r-8jeoGBaq	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 17:55:24
MZ403ullagKuAtluFSnCBEWA0PmKiD-p	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 18:17:28
UZWJ83sXJvRtZ3sYW6Ce80J7pd_KPBLx	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 04:54:23
d2WpZQToSJX3seTi4m_ekJNoywyvin6z	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 05:50:51
l7COLfhOGqfwbB0F8jZvLMcGKtYP_fk8	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:19:10
jkpUF0fxzP7kJeezptKzwkOwkfOpT432	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:27:27
ai_peTGX6Q98FKQKDBaOyKInAgMrTUvu	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679467304792ee6iswv0ksj","captchaText":"Jeby"}}	2023-03-23 06:41:45
gAHi2jiDeCAqvtwkwX2uvkVJWF5kqERP	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:41:56
FbBIjBcQQs7LZuPBR4h8lB8dLVNCUNR3	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679468778831vvynzsehj","captchaText":"5tuF"}}	2023-03-23 07:06:19
kvNIOluQ-wu6A7oBmjX--2gXM2jQHwy4	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 07:06:25
Ws6JYj7SwwalliuKcGa6jcK2WyAFGpQT	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:13:40
Rir5Dp1nn0ob1PPhWJ7-IDEio6hV6yS9	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:23:33
-9A-ZtNljLRiNCrWUtQQwJyrb797ifSk	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:32:58
BlM8M2W4Zc9DHK8uU3ApPiGV_qTLUeUI	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:38:27
MPtgunrwo_vaSYla_XdeyB399Z18y-32	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:42:59
9Y-2fTiaIX4r9ffq9RXtdbRQCJor4_MA	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679388741147ahhgs9rnxnc","captchaText":"DDcj"}}	2023-03-22 08:52:22
aoI6dbugRCU7E3tTuygMqUpL0XjLV-cL	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:52:26
6WFq618sAVkVTiGoEWQifp3353sJNchs	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:02:14
lREo1xbnWuIHm3nC01YsWd-uMrcXbmpk	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:05:10
Q8OnuQ9UpHvO1CHFBRkCYhtL8WSAJqKv	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:08:50
DlFPBmS1dOdSQNAfXUf4xNJUjIVZFOy0	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:15:40
QLPsCnTbePqtSkWW9CYhx3iJNDDBrmKk	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:19:58
19bYW5tNfcauYyeTnAimjNklxqFwDm0k	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:20:04
xaLgw0RgfZfMXvbqcVG777dPE-i_SUfy	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:23:52
I2duNoNovE6fWIk-gRttG_I0KlQV9Qte	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:33:59
420mus3cblDrS5fF-Zf70g1bxI5snihI	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:41:10
TRJY2oYQ8LSlHP7WwdUNQvVtXn8hksfb	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:48:41
I5QFtRLRjqmWoL8_-SwImwx4Dsf8UDY4	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:52:36
oEC3rqkZGx30ILeKQToFxiVQMkSF_lDA	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:56:51
XUTWRbUxLiamPNZqgaLNZLdZ_rDNJ-fc	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:56:58
NFFKkKPY5nsaWFAXB81-XHTLhdREstyl	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"16793926215832sd4tpjj6cy","captchaText":"Ru70"}}	2023-03-22 09:57:02
8CLnC4hbw1o_-ibBWmiKXE-dzm7MZp8J	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:57:07
f1-3DdcrJ8xByqNrIIp1Lt3BXVHeDwx9	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 10:27:34
hsdO6OhSmSA_g8wgEz-nr7nTiO1EeqJD	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 11:25:26
n2G1hloGRqrGqMJzqwxroQ86kn6L-C4t	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679411823539soiw9r5xbmi","captchaText":"D03U"}}	2023-03-22 15:17:04
zwaJOypidC8-U2GmLIFZLTItlY0MHsJJ	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679411826752jb8majmp0ok","captchaText":"wb01"}}	2023-03-22 15:17:07
qSZ6z5RG1dyxyZZk_2JhuNh2sKLZ0h_D	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 15:17:14
P275MQGeUTBzYLDVoqjtsUc-ZgX4wvKa	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 16:02:36
0E7Nk8O8ijn7-o-UOckExZTpRHx6vujD	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 16:02:42
cCBC4dam0QoMi15lkXBsIwLf1z1YAk6f	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679414650316sayjlc2il08","captchaText":"zl6X"}}	2023-03-22 16:04:11
I_r5j7kGv0ECBJXjjx8MGSFZpHSx06iM	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 16:04:19
fOldSWFGqceID8eofD8eDxVlXfwDeuzt	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 17:43:17
W04dEiuAUu221ZTEYjAoC-9NoXHMruii	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 17:55:45
b7oqFb6Wagbi8vLBAuVpT7HKIBhtAszh	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 18:21:02
NbH0TZ6gXPD59EioeoiMKZuqV9QLgF0Z	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 18:21:08
rfp-y-XoQAvSk3Yt1xKZ4O8CaIJbNFlJ	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679463000314hkrgmg4auom","captchaText":"UeBk"}}	2023-03-23 05:30:01
7fYhHVi0j4pB-R_6XI1nrWbOsAbZOl46	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 05:51:48
pZdAykl_a4Ib5TbdVZqgaO1tS7_m0vfq	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:21:51
RW2cvgW5oZab8Jps-Iey0zOhqqiuDL18	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679466511743vlq0kizva5i","captchaText":"sux4"}}	2023-03-23 06:28:32
8gDvdl_MYW1W4XPtdgafRPl8doZXS2Nx	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:42:10
aM2c0ddCoSeTooiGgBXLII7cP21DH6Py	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 07:06:49
zxEhaRHPwwlye1w-ltBnrx7ouluKPx7e	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:17:14
qgrl4UClh98sekwm-Q2DdW89D3xTBSY7	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:17:17
U8uacofJM2BAqjszfee-qYPF24iMpN4X	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:24:07
SVGyX81X6PLRaMqoMHmkk66mccJOvCmp	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:24:17
UaiEWvF_KkMPrbYAOGMTR0zWFKFHGSwz	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:33:19
AiHzIjMvfT9lhFuIgz4A8R_JAvGP_CiA	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:38:58
9ABujlFR4IdGnivgTHD5UIfQUXgJy_f0	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:45:38
o4Q-0FWLT_kkuX0rvRnMGorJ_EBIrhiy	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 08:54:56
R3aTHecEdnthMSj9HP_g-edl3gjTpmvQ	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:02:30
6e1D2cppTEkKW0IqxnrpxiYUDV9bb9Dn	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:05:46
I0wMRJrI-IhNa5JAaHNQD_SQ0QpoKK6e	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:10:21
_ZFzszeNX4Eo2lafAsWNGSJ15owNf6lT	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:15:56
ZYY-0Ypt8E_uFvF0zgDVc3q9VBbcNLl-	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:20:56
uAmxyCUU1jYMLFAoxWX6n5pw8_D5aEjN	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:24:08
rE7Qf-jVbqJ6TpfUylhVUBqoSs1y8DQh	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:24:12
J6_gL4GHynYa4URw0t1FSdvZqfk0Rmbd	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:34:15
y3Kvg4Wkgbl4tWtCeg9AE4l9qPnwKyl1	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:43:59
NRom4BGyqZ2RbUP8b9jTGVFAk7vDhB-W	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:49:05
fDtwprO6ylV0kW_tecwuzEZJgR9Lw82c	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:49:15
8LIGj7XHIbarKwuKSjhDiM6VRe_BCva8	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 09:52:39
uxamF8GF6yA4MbFDY3hH2Hpy2iVblwGI	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 10:09:22
6Dz2EgvLexZeZTh4p2vxvyrLBmMV--ZG	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"16793947816409ydud59pupk","captchaText":"Aog5"}}	2023-03-22 10:33:02
3ki4CmTOto20FAi2VZaIzgDb0-VWpJqU	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"16794022000265t61hezgx2w","captchaText":"bzAz"}}	2023-03-22 12:36:41
QI5l89xb_dqotG8XO1o4qzHQzOm0V11Z	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 12:36:50
yO_qj4UWSzrIPhCwQdQsMaINw4x6z07s	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 15:31:23
ut5T46sD31nhKygxRDFz87A_4cQeAgdc	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679420045916ib15cv71mg","captchaText":"4b7b"}}	2023-03-22 17:34:06
JP1_zyLF7y8jN0CwYSmnB6JOJNqZKVrq	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"},"captcha":{"captchaId":"1679420643769m9l0rm0y0hm","captchaText":"BPiA"}}	2023-03-22 17:44:04
qFbSly-GYuJCXahP8eeIeHBMQ5_seXYr	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 17:44:15
NTmQ83V_15D9ZCpHnSq0OLiovIOLMhHy	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 17:56:12
tRIZ3epeieRorSnKL3_mC0zOjQrgeYPg	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 18:27:13
FyLD69KCmvA67ytcK3eauZK0XuR3hohN	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 18:27:27
QG8uWzFBdXlFe5nz952iBFuGMBija_oY	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-22 18:27:37
OmzZCae-aGn-iVBjANb8_fhg2g3MKQKg	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 05:30:22
HGBHIzspuuigigfzC2xCbgSckz3qu5Bg	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 05:53:00
yUBjyiKq59J73WlWf6dNNjpSxcSl6nWi	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:22:24
at0-S5fBC2e6EGyzwp1AJEg_spsMVQkB	{"cookie":{"originalMaxAge":null,"expires":null,"httpOnly":true,"path":"/"}}	2023-03-23 06:28:44
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: cezojpgn
--

COPY public.users (id, first_name, last_name, email, role, password, status, created_by, created_on, last_modified_by, last_modified_on, entity_id, reset_password_token, reset_password_expires) FROM stdin;
3	SuperAdmin	\N	swapnilbhadriya00@gmail.com	Super Admin	1234	inactive	1	2023-03-07 17:22:31.791463	2	2023-03-07 17:22:31.791463	1	\N	\N
22	SuperAdmin	\N	nghevariya@argusoft.com	Super Admin	$2a$10$dr9DmJ7z4KIUOkNYjjY/V.AY/qKPyxu5SibO5iJ9MfgfvmJ3nhP9C	inactive	2	2023-03-13 06:28:03.143699	2	2023-03-13 06:28:03.143699	30	\N	\N
40	SuperAdmin	\N	kpatel@argusoft.in	Super Admin	$2a$10$YzTWS7lYLVlmHQe5sbXTue/42.nK1VHEOC8SwsyXWV0dXiSPfzMTO	active	2	2023-03-15 11:02:25.213527	2	2023-03-16 15:11:24.03386	39	\N	\N
26	SuperAdmin	\N	11@gmail.com	Super Admin	$2a$10$jmsldg2HcflB6qNIfSGZSO0nLuQSKVBiO.6.yB434hcxS1thyt8hm	inactive	2	2023-03-13 08:17:46.204956	2	2023-03-13 08:17:46.204956	34	\N	\N
25	SuperAdmin	\N	01@gmail.com	Super Admin	$2a$10$61a2wq.gjTiTUjE6CPC0ruqLXVvMH9BYTOEewoXEH8yox6eKAQ/Ui	inactive	2	2023-03-13 08:15:48.290934	2	2023-03-13 08:15:48.290934	33	\N	\N
1	kavya	\N	\N	manager	manager	active	\N	2023-03-06 12:54:01.518565	\N	2023-03-06 12:54:01.518565	\N	\N	\N
5	admin1	\N	admin1@gmail.com	admin	$2a$12$HHBSyRBmzfmWTe/fjuJ1B.v560jtsz/qEDhhEXTRBS2.9.KE5WvBm	active	\N	2023-03-09 07:09:20.530292	\N	2023-03-09 07:09:20.530292	\N	\N	\N
20	Aditya	Chauhan	adichauhan0007@gmail.com	Super Admin	$2a$10$S4zjtbN7cT0mBIUKFia2i.6puvdm.UlObZCYdiGRVeJBfIfBX.rFe	inactive	1	2023-03-10 18:33:23.85234	20	2023-03-21 18:31:24.81631	28	\N	\N
12	SuperAdmin	\N	swapnilbhadoriya10@gmail.com	Super Admin	$2a$10$kEiK5cLJCO.Q1fwZBnTLYe6hAIwOR8CEKmHqKRxHYXyOzVt0c36ou	inactive	1	2023-03-09 14:58:18.588714	2	2023-03-09 14:58:18.588714	13	\N	\N
2	Braj	Dangi	admin@gmail.com	manager	$2a$12$HHBSyRBmzfmWTe/fjuJ1B.v560jtsz/qEDhhEXTRBS2.9.KE5WvBm	active	\N	2023-03-06 17:59:20.547147	2	2023-03-22 05:48:12.844839	\N	85f4ace401bba7dfba390f5d6cc15c6fd93d4321d3d5b6110c92c73af224d81b7cffbe66d80ef53f59be519199bf8f2b	2023-03-20 14:21:19.805
53	Kanchan		kanchan@123	Admin	$2a$10$7HvqvoYl2qacdqNdA4edrOwzIFhhVSuEXVS0ild7Bzv5sziFsNra2	active	16	2023-03-16 17:16:38.342144	2	2023-03-21 07:18:38.67609	24	\N	\N
44	SuperAdmin	\N	0112cs191050@gmail.com	Super Admin	$2a$10$B8S9LTf9uXAu.C7wET5xKeqZRraE3LkMjlH60ez9zIw4d8VTK5mnK	inactive	2	2023-03-15 13:10:04.259271	2	2023-03-17 10:08:47.108552	43	\N	\N
23	SuperAdmin	\N	0112cs191038@gmail.com	Super Admin	$2a$10$JpqHsmpf0KXwJdRjY8VvDeDAdUMHA9Q/D39jYnrMJ3QWYiRERt/.y	inactive	2	2023-03-13 08:10:21.670616	2	2023-03-13 08:10:21.670616	31	\N	\N
13	admin1	argusoft1	kishan31333@gmail.com	manager	$2a$10$DspCnerlSrTypKCWNAWuEOyEglu1wP1smMWoX9duBOFCZSoNwWuje	active	\N	2023-03-09 17:07:29.318763	\N	2023-03-09 17:07:29.318763	\N	\N	\N
51	SuperAdmin	\N	abc@gmail.com	Super Admin	$2a$10$yFIM3Rz043a5zUvCRk4TyOll6FhHg7vSnCbb9N9WEvj3hAl9/qYUu	active	2	2023-03-16 08:29:49.872167	2	2023-03-16 15:01:01.57261	44	\N	\N
43	SuperAdmin	\N	drashijaindj121@gmail.com	Super Admin	$2a$10$0v3l9cz7.9MuxZWK.VrcIOENjZFhCW.8iOaImEx4CAN5/RZKz7Ccu	active	2	2023-03-15 12:48:33.980514	2	2023-03-16 15:01:40.088822	42	\N	\N
52	SuperAdmin	\N	0112cs1191050@gmail.com	Super Admin	$2a$10$UDRk6cWma4OGjuFju4N6e.O65FihdJo8SS4F/g9vj.cgJlzIZwDOK	inactive	2	2023-03-16 16:58:52.459294	2	2023-03-17 06:01:45.123498	45	\N	\N
16	Kanchan	Sikder	kanchansikder1408@gmail.com	Super Admin	$2a$10$kQaL3Z90q6UQq5.whyHsD.6cTSHz5V/eJ2eYhC3k.xFJA312FY2Ly	active	1	2023-03-09 18:00:33.761118	2	2023-03-17 10:08:22.922598	24	\N	\N
42	SuperAdmin	\N	athumar@argusoft.com	Super Admin	$2a$10$.b7umUAGndOsOAV0TWdPy.QW9Z./6IQbRw/eoVxSlBpgFRVapiecC	inactive	2	2023-03-15 12:29:49.940941	2	2023-03-17 10:08:56.587361	41	\N	\N
58	bejik	bejik	bejik32690@galcake.com	Admin	$2a$10$lTb/YHwFa8umfnPkwW6bL.mZ4cNBzeNo/RZXTu/dzOS0pv7ZI78Qy	active	20	2023-03-18 04:16:50.894927	20	2023-03-18 04:16:50.894927	28	\N	\N
61	SuperAdmin	\N	ssssssssss@gmail.com	Super Admin	$2a$10$6Q5JmV95wJrrzYbJ7oLlXOhl3S8NsRgeOsIO0E6fB/OI5/r8ZYYXO	active	2	2023-03-21 07:07:19.636218	2	2023-03-21 16:04:35.21202	49	\N	\N
33	ArgusAdmin	\N	swapnilbhadoriya00@gmail.com	Admin	$2a$10$IdoxADsVyxyglL8FYbmIIOSBuTSG0GSe9yUVie6v5l/1E9bNvlpfW	inactive	16	2023-03-13 12:49:39.654937	2	2023-03-22 06:15:29.308079	24	5fd176150ff5d39246a587fb2868bd0e33217df79a09a92290f615423ab1f93c1083eadfbcd4787fd1a0ddf65923f8db	2023-03-17 12:19:16.696
59	SuperAdmin	\N	guneets@argusoft.com	Super Admin	$2a$10$l/.pyBdHx4Pq7iImfoLOguWEvAGaDb1TTwINkvAvkfiYDNRSCozcy	active	2	2023-03-18 08:34:01.689299	59	2023-03-18 08:38:52.064579	48	\N	\N
55	K		ka@123	Admin	$2a$10$3Mknd2PxraaeKnRxVzT.s.QF/SiekvIuHYx01dQSyOMhkcPCsbYri	active	16	2023-03-16 17:45:55.34799	2	2023-03-19 19:39:13.422721	24	\N	\N
65	Kavya		kavya@gmail.com	Admin	$2a$10$9WYjFTSLZqdSvsNGD4P3Gu0rcjNZOeuoRCqRELLfRWFiRVB5T2mhO	active	16	2023-03-21 09:55:23.655515	16	2023-03-21 09:55:23.655515	24	\N	\N
66	Kavya	Patel	kpatelargusoft.in	Admin	$2a$10$8bTmRX5IDAq7VVE/pmbGNOLBSM0YPwRnHEpcW0sxaB1WSaoTmKz2e	active	16	2023-03-21 10:09:36.647624	16	2023-03-21 10:09:36.647624	24	\N	\N
41	SuperAdmin	\N	kpatel@argusoftww.com	Super Admin	$2a$10$2NodXpXSLuSGDUQbS2930uS46.RuPvi0lyjGVzi4hHhaXBJnI7lGy	inactive	2	2023-03-15 12:20:37.800543	2	2023-03-17 10:09:01.732995	40	\N	\N
24	SuperAdmin	\N	0112cs19108@gmail.com	Super Admin	$2a$10$5mymunwKuQs48WUqmn3qvePV3HFXbpQ3i0RKPTrvxL7fgZiEUr8aq	inactive	2	2023-03-13 08:12:31.711079	2	2023-03-13 08:12:31.711079	32	\N	\N
17	SuperAdmin	\N	a@argusoft.com	Super Admin	$2a$10$5a4wkMrhVz0OgxA5UdicL.PfQKtpP4LEQC9NY/PAWPhuJrbhfIavi	inactive	1	2023-03-10 05:34:18.477049	2	2023-03-10 05:34:18.477049	25	\N	\N
39	SuperAdmin	\N	k@gmail.com	Super Admin	$2a$10$E6tUQrr8LNB8K7HhYBNNMebfHjVSap5.e3c8R4E/Ki1qBZWY6QHI2	inactive	2	2023-03-15 08:33:05.4535	2	2023-03-17 10:09:06.755615	38	\N	\N
27	SuperAdmin	\N	a1@gmail.com	Super Admin	$2a$10$RBMM4jOHA5E1gQMfQ71fEuYnQki5ncnnILZBnVA2jykx0lfG6QlZS	inactive	2	2023-03-13 08:22:08.343829	2	2023-03-13 08:22:08.343829	35	\N	\N
29	SuperAdmin	\N	ksikder@argusoft.com	Super Admin	$2a$10$M9KPDdRH.scyQHqOS3umgukpdmSrWEDvIZuSwLuGUx9LaGeUg35DC	inactive	2	2023-03-13 09:37:37.976683	2	2023-03-17 10:09:12.3833	37	\N	\N
28	SuperAdmin	\N	q1@gmail.com	Super Admin	$2a$10$uVsyGEvz21JDRsjmjD3tJuzV9XM4uL8exKiSOQe6SyoRsZynv77FG	inactive	2	2023-03-13 08:44:38.17478	2	2023-03-16 16:53:08.88505	36	\N	\N
56	SuperAdmin	\N	sbhadoriya@argusoft.com	Super Admin	$2a$10$2M8IXMY2NlF1HFikqq.VBOFR7TyYKYZzPiJbsRpJx.Y/IuSKdDzlu	inactive	2	2023-03-17 06:03:50.934252	2	2023-03-21 08:55:41.918868	46	\N	\N
45	Kanchan	Sikder	kanchan1234@gmail.com	Admin	$2a$10$mJpMHfeJwYq1im45P2eQaOouYDsbt97ilIHl3gSJv070wDTUImCN.	inactive	16	2023-03-16 05:33:26.0387	2	2023-03-17 10:08:09.656418	24	\N	\N
54				Admin	$2a$10$ZxKP1QAbeezZCX4KQ0HWg.3HzkHCOOm9xocv8GQdFKY44Fue7zITK	inactive	16	2023-03-16 17:22:04.668444	2	2023-03-17 10:08:09.656418	24	\N	\N
50	Drashi		drashi123@gmail.com	Admin	$2a$10$QY4i.yQa1ikOgVtncWmhZeIUd/ktnM7CcJ7NwZdwFxsmrsFvmyzn.	inactive	16	2023-03-16 07:17:43.555799	2	2023-03-17 10:08:09.656418	24	\N	\N
49	Kavya		kavya123@gmail.com	Admin	$2a$10$LN1WN3CQ5xDz3/KciBQTyOZRuepqDGGjGtxzi5ox0AoelIHJcLgxS	inactive	16	2023-03-16 07:14:30.471643	2	2023-03-17 10:08:09.656418	24	\N	\N
60	Guneet	singh	guneetk404@gmail.com	Admin	$2a$10$Iy9Ozat530n6bGqzcrapb.fnTmzyxlD1wqDpx9YdaXedlN7Uqhhbq	inactive	59	2023-03-18 09:08:35.201287	59	2023-03-18 09:08:56.972436	48	\N	\N
57	SuperAdmin	\N	ad@gmail.com	Super Admin	$2a$10$Tk5GW1pDsusdYzbR39lHUel0j4Wb5kN9O/MkNAGSHeWzyNkvxhD4a	inactive	2	2023-03-18 04:04:18.517262	2	2023-03-20 08:22:04.803244	47	\N	\N
62	Kavya		jfyr	Admin	$2a$10$Am5mMHO56dfJNNUtOFwhAuwZZZK1/NS5KlOVxLePqS00uJGL8LbW2	inactive	16	2023-03-21 09:43:29.895419	16	2023-03-21 09:44:02.097866	24	\N	\N
63	Kavya		kpatel	Admin	$2a$10$O3j0YEKPh2NWdkMQ9DkqBeGwdeNsCJJKhjJK.QPSXiemsXHL44MVG	inactive	16	2023-03-21 09:45:14.307201	16	2023-03-21 09:45:37.050873	24	\N	\N
64	Kavya	Patel	kavya	Admin	$2a$10$bQVGz52PDHmbRcgBkO42B.I6KtJmTN/xoGwWPZ5NSbww4W761W8bq	inactive	16	2023-03-21 09:50:10.533302	16	2023-03-21 09:50:26.142997	24	\N	\N
\.


--
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cezojpgn
--

SELECT pg_catalog.setval('public.customer_id_seq', 26, true);


--
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cezojpgn
--

SELECT pg_catalog.setval('public.employee_id_seq', 9, true);


--
-- Name: entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cezojpgn
--

SELECT pg_catalog.setval('public.entity_id_seq', 49, true);


--
-- Name: invoice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cezojpgn
--

SELECT pg_catalog.setval('public.invoice_id_seq', 1, false);


--
-- Name: invoice_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cezojpgn
--

SELECT pg_catalog.setval('public.invoice_items_id_seq', 1, false);


--
-- Name: project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cezojpgn
--

SELECT pg_catalog.setval('public.project_id_seq', 26, true);


--
-- Name: project_resource_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cezojpgn
--

SELECT pg_catalog.setval('public.project_resource_id_seq', 8, true);


--
-- Name: service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cezojpgn
--

SELECT pg_catalog.setval('public.service_id_seq', 11, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cezojpgn
--

SELECT pg_catalog.setval('public.users_id_seq', 66, true);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- Name: entity entity_email_key; Type: CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.entity
    ADD CONSTRAINT entity_email_key UNIQUE (email);


--
-- Name: entity entity_pkey; Type: CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.entity
    ADD CONSTRAINT entity_pkey PRIMARY KEY (id);


--
-- Name: entity entity_tax_id_key; Type: CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.entity
    ADD CONSTRAINT entity_tax_id_key UNIQUE (tax_id);


--
-- Name: invoice_items invoice_items_pkey; Type: CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.invoice_items
    ADD CONSTRAINT invoice_items_pkey PRIMARY KEY (id);


--
-- Name: invoice invoice_pkey; Type: CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_pkey PRIMARY KEY (id);


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (id);


--
-- Name: project_resource project_resource_pkey; Type: CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.project_resource
    ADD CONSTRAINT project_resource_pkey PRIMARY KEY (id);


--
-- Name: service service_pkey; Type: CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_pkey PRIMARY KEY (id);


--
-- Name: session session_pkey; Type: CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY (sid);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: IDX_session_expire; Type: INDEX; Schema: public; Owner: cezojpgn
--

CREATE INDEX "IDX_session_expire" ON public.session USING btree (expire);


--
-- Name: audit audit_modified_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.audit
    ADD CONSTRAINT audit_modified_by_fkey FOREIGN KEY (modified_by) REFERENCES public.users(id);


--
-- Name: customer customer_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id);


--
-- Name: employee employee_entity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_entity_id_fkey FOREIGN KEY (entity_id) REFERENCES public.entity(id);


--
-- Name: entity_customer_relation entity_customer_relation_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.entity_customer_relation
    ADD CONSTRAINT entity_customer_relation_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(id);


--
-- Name: entity_customer_relation entity_customer_relation_entity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.entity_customer_relation
    ADD CONSTRAINT entity_customer_relation_entity_id_fkey FOREIGN KEY (entity_id) REFERENCES public.entity(id);


--
-- Name: invoice invoice_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id);


--
-- Name: invoice invoice_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(id);


--
-- Name: invoice invoice_entity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_entity_id_fkey FOREIGN KEY (entity_id) REFERENCES public.entity(id);


--
-- Name: invoice invoice_last_modified_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_last_modified_by_fkey FOREIGN KEY (last_modified_by) REFERENCES public.users(id);


--
-- Name: invoice invoice_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id);


--
-- Name: project project_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id);


--
-- Name: project project_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(id);


--
-- Name: project project_entity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_entity_id_fkey FOREIGN KEY (entity_id) REFERENCES public.entity(id);


--
-- Name: project project_last_modified_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_last_modified_by_fkey FOREIGN KEY (last_modified_by) REFERENCES public.users(id);


--
-- Name: project_resource project_resource_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.project_resource
    ADD CONSTRAINT project_resource_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id);


--
-- Name: project_resource project_resource_last_modified_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.project_resource
    ADD CONSTRAINT project_resource_last_modified_by_fkey FOREIGN KEY (last_modified_by) REFERENCES public.users(id);


--
-- Name: project_resource project_resource_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.project_resource
    ADD CONSTRAINT project_resource_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.project(id);


--
-- Name: project_resource project_resource_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.project_resource
    ADD CONSTRAINT project_resource_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.service(id);


--
-- Name: service service_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.users(id);


--
-- Name: service service_last_modified_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_last_modified_by_fkey FOREIGN KEY (last_modified_by) REFERENCES public.users(id);


--
-- Name: users users_entity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cezojpgn
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_entity_id_fkey FOREIGN KEY (entity_id) REFERENCES public.entity(id);


--
-- PostgreSQL database dump complete
--

