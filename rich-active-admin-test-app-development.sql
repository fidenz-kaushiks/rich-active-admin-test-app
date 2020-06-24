--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.active_admin_comments (
    id bigint NOT NULL,
    namespace character varying,
    body text,
    resource_type character varying,
    resource_id bigint,
    author_type character varying,
    author_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_admin_comments OWNER TO pguser;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_admin_comments_id_seq OWNER TO pguser;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.active_admin_comments_id_seq OWNED BY public.active_admin_comments.id;


--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO pguser;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO pguser;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO pguser;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO pguser;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_folder_attachments; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.active_storage_folder_attachments (
    id bigint NOT NULL,
    active_storage_folder_id integer,
    active_storage_attachment_id integer,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_folder_attachments OWNER TO pguser;

--
-- Name: active_storage_folder_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.active_storage_folder_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_folder_attachments_id_seq OWNER TO pguser;

--
-- Name: active_storage_folder_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.active_storage_folder_attachments_id_seq OWNED BY public.active_storage_folder_attachments.id;


--
-- Name: active_storage_folders; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.active_storage_folders (
    id bigint NOT NULL,
    folder_name character varying,
    parent_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_folders OWNER TO pguser;

--
-- Name: active_storage_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.active_storage_folders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_folders_id_seq OWNER TO pguser;

--
-- Name: active_storage_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.active_storage_folders_id_seq OWNED BY public.active_storage_folders.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.admin_users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    rich_rich_file_id integer
);


ALTER TABLE public.admin_users OWNER TO pguser;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.admin_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO pguser;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO pguser;

--
-- Name: rich_rich_files; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.rich_rich_files (
    id bigint NOT NULL,
    rich_file_file_name character varying,
    rich_file_content_type character varying,
    rich_file_file_size integer,
    rich_file_updated_at timestamp without time zone,
    uri_cache text,
    simplified_type character varying DEFAULT 'file'::character varying,
    storage_folder_id integer DEFAULT 0,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.rich_rich_files OWNER TO pguser;

--
-- Name: rich_rich_files_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.rich_rich_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rich_rich_files_id_seq OWNER TO pguser;

--
-- Name: rich_rich_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.rich_rich_files_id_seq OWNED BY public.rich_rich_files.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO pguser;

--
-- Name: users; Type: TABLE; Schema: public; Owner: pguser
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO pguser;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: pguser
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO pguser;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pguser
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_admin_comments id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.active_admin_comments ALTER COLUMN id SET DEFAULT nextval('public.active_admin_comments_id_seq'::regclass);


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_folder_attachments id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.active_storage_folder_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_folder_attachments_id_seq'::regclass);


--
-- Name: active_storage_folders id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.active_storage_folders ALTER COLUMN id SET DEFAULT nextval('public.active_storage_folders_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: rich_rich_files id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.rich_rich_files ALTER COLUMN id SET DEFAULT nextval('public.rich_rich_files_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.active_admin_comments (id, namespace, body, resource_type, resource_id, author_type, author_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
62	files	Rich::StorageFolder	12	62	2020-06-18 11:05:11.134875
69	files	Rich::StorageFolder	14	69	2020-06-19 04:20:09.882523
70	files	Rich::StorageFolder	14	70	2020-06-19 04:21:36.358455
91	files	Rich::StorageFolder	22	91	2020-06-19 06:24:21.3254
95	files	Rich::StorageFolder	22	95	2020-06-19 06:43:50.536839
101	files	Rich::StorageFolder	34	101	2020-06-23 09:33:47.901174
102	files	Rich::StorageFolder	1	102	2020-06-23 09:36:29.393283
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
95	0o75uwbj8c3mr9go6udu9y8b4m2u	download%20(1).jpeg	image/jpeg	{"identified":true,"width":278,"height":181,"analyzed":true}	13669	SmLCfqdJJzBLIadpmD47rg==	2020-06-19 06:43:50.530606
91	aqrivduzufczoy48j67trsbi2m85	dreamstime_xxl_65780868_small.jpg	image/jpeg	{"identified":true,"width":512,"height":512,"analyzed":true}	32355	x234g4Ux5j9ryzEmhTc+nA==	2020-06-19 06:24:21.315876
62	lgfxhjx06ccfxspgc6sr669fbiry	download%20(1).jpeg	image/jpeg	{"identified":true,"width":278,"height":181,"analyzed":true}	13669	SmLCfqdJJzBLIadpmD47rg==	2020-06-18 11:05:11.126681
101	5eg534lfb3t1jmnyjzu2eswhgcjj	dreamstime_xxl_65780868_small.jpg	image/jpeg	{"identified":true,"width":512,"height":512,"analyzed":true}	32355	x234g4Ux5j9ryzEmhTc+nA==	2020-06-23 09:33:47.893671
69	v5sxcguvj2x6zlvj8kwv5mnztyjq	town.jpeg	image/jpeg	{"identified":true,"width":275,"height":183,"analyzed":true}	9679	yMYDMvGbylJsCGeCXGObKQ==	2020-06-19 04:20:09.869824
70	o4940gjnhpp3xbxwq1big9fp93wn	fw9.pdf	application/pdf	{"identified":true,"analyzed":true}	153049	GxTvffPaGTZR8D14wikzvA==	2020-06-19 04:21:36.35026
102	zsilziuuwbgdawbzxrz5ms56fobn	active.jpeg	image/jpeg	{"identified":true,"width":275,"height":183,"analyzed":true}	5174	IdNMARiIVVpIWl6dHba3zQ==	2020-06-23 09:36:29.386549
\.


--
-- Data for Name: active_storage_folder_attachments; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.active_storage_folder_attachments (id, active_storage_folder_id, active_storage_attachment_id, created_at) FROM stdin;
\.


--
-- Data for Name: active_storage_folders; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.active_storage_folders (id, folder_name, parent_id, created_at, updated_at) FROM stdin;
14	new-folder	11	2020-06-18 11:03:26.111119	2020-06-19 04:21:36.36323
22	new-folder	21	2020-06-19 06:10:12.744959	2020-06-19 06:43:50.541928
23	new-folder	22	2020-06-19 06:47:59.45135	2020-06-19 06:47:59.45135
26	new-folder	23	2020-06-19 07:38:58.35946	2020-06-19 07:38:58.35946
27	new-folder	23	2020-06-19 07:38:59.851117	2020-06-19 07:38:59.851117
28	new-folder	26	2020-06-19 07:39:02.050581	2020-06-19 07:39:02.050581
31	new-folder	30	2020-06-19 07:43:35.919658	2020-06-19 07:43:35.919658
8	sdfhksjhdf	4	2020-06-18 10:16:32.661461	2020-06-18 10:51:15.715362
11	werqwerqwer123	10	2020-06-18 10:52:22.726205	2020-06-18 11:03:07.12113
1	parent\n	-1	2020-06-16 10:12:34.325286	2020-06-23 09:36:29.399041
34	folder	1	2020-06-23 09:29:33.008131	2020-06-23 11:19:24.38801
15	321	12	2020-06-18 11:04:49.678596	2020-06-18 11:04:52.431965
12	asdfasfd	11	2020-06-18 11:03:11.430275	2020-06-18 11:05:11.138258
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.admin_users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, rich_rich_file_id) FROM stdin;
1	admin@example.com	$2a$11$zpAfejy3ElCTc6HMCNeEr.3loQpngw3UXpAkDYmsfncYrF/NQPssu	\N	\N	\N	2020-05-27 08:52:49.871496	2020-05-27 09:07:20.354734	2
2	peterben@example.com	$2a$11$vRJQKXlZyGuYV38blGxIwekdasDIZ0cpiIc.LgRRj4lcIeXdTnjXS	\N	\N	\N	2020-06-16 05:51:57.94834	2020-06-16 05:51:57.94834	\N
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-05-27 08:52:40.324118	2020-05-27 08:52:40.324118
\.


--
-- Data for Name: rich_rich_files; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.rich_rich_files (id, rich_file_file_name, rich_file_content_type, rich_file_file_size, rich_file_updated_at, uri_cache, simplified_type, storage_folder_id, created_at, updated_at) FROM stdin;
1	untitle	folder	67	2020-05-27 08:55:24.27164	{"original":"/system/rich/rich_files/rich_files/000/000/001/original/untitle"}	folder	0	2020-05-27 08:55:26.82144	2020-05-27 08:55:26.833464
2	download.jpeg	image/jpeg	5159	2020-05-27 08:55:31.628835	{"thumb":"/system/rich/rich_files/rich_files/000/000/002/thumb/download.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/002/rich_thumb/download.jpeg","original":"/system/rich/rich_files/rich_files/000/000/002/original/download.jpeg"}	image	0	2020-05-27 08:55:33.317525	2020-05-27 08:55:33.328531
25	download.jpeg	image/jpeg	5159	2020-06-23 12:08:23.621431	{"thumb":"/system/rich/rich_files/rich_files/000/000/025/thumb/download.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/025/rich_thumb/download.jpeg","original":"/system/rich/rich_files/rich_files/000/000/025/original/download.jpeg"}	image	1	2020-06-23 12:08:23.923213	2020-06-23 12:08:23.964071
17	fw9.pdf	application/pdf	153049	2020-06-23 09:28:55.213881	{"original":"/system/rich/rich_files/rich_files/000/000/017/original/fw9.pdf"}	file	1	2020-06-23 09:28:55.235456	2020-06-23 09:28:55.25393
18	town.jpeg	image/jpeg	9679	2020-06-23 09:29:51.890882	{"thumb":"/system/rich/rich_files/rich_files/000/000/018/thumb/town.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/018/rich_thumb/town.jpeg","original":"/system/rich/rich_files/rich_files/000/000/018/original/town.jpeg"}	image	34	2020-06-23 09:29:52.071964	2020-06-23 09:29:52.103209
26	download-20-1-.jpeg	image/jpeg	13669	2020-06-23 12:08:24.11981	{"thumb":"/system/rich/rich_files/rich_files/000/000/026/thumb/download-20-1-.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/026/rich_thumb/download-20-1-.jpeg","original":"/system/rich/rich_files/rich_files/000/000/026/original/download-20-1-.jpeg"}	image	1	2020-06-23 12:08:24.464317	2020-06-23 12:08:24.511695
27	sophie2.jpg	image/jpeg	13443	2020-06-23 12:08:24.107706	{"thumb":"/system/rich/rich_files/rich_files/000/000/027/thumb/sophie2.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/027/rich_thumb/sophie2.jpg","original":"/system/rich/rich_files/rich_files/000/000/027/original/sophie2.jpg"}	image	1	2020-06-23 12:08:24.483672	2020-06-23 12:08:24.518891
19	asfd.jpeg	image/jpeg	13669	2020-06-23 09:44:19.358864	{"thumb":"/system/rich/rich_files/rich_files/000/000/019/thumb/asfd.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/019/rich_thumb/asfd.jpeg","original":"/system/rich/rich_files/rich_files/000/000/019/original/asfd.jpeg"}	image	1	2020-06-23 09:44:19.552525	2020-06-23 09:44:22.021722
10	qweqwe.jpg	image/jpeg	32355	2020-06-23 09:17:24.773098	{"thumb":"/system/rich/rich_files/rich_files/000/000/010/thumb/qweqwe.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/010/rich_thumb/qweqwe.jpg","original":"/system/rich/rich_files/rich_files/000/000/010/original/qweqwe.jpg"}	image	1	2020-06-23 09:17:25.022393	2020-06-23 09:17:45.854699
28	dreamstime-xxl-65780868-small.jpg	image/jpeg	32355	2020-06-23 12:08:24.249944	{"thumb":"/system/rich/rich_files/rich_files/000/000/028/thumb/dreamstime-xxl-65780868-small.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/028/rich_thumb/dreamstime-xxl-65780868-small.jpg","original":"/system/rich/rich_files/rich_files/000/000/028/original/dreamstime-xxl-65780868-small.jpg"}	image	1	2020-06-23 12:08:24.601145	2020-06-23 12:08:24.63439
20	lake.jpeg	image/jpeg	5174	2020-06-23 12:08:06.378008	{"thumb":"/system/rich/rich_files/rich_files/000/000/020/thumb/lake.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/020/rich_thumb/lake.jpeg","original":"/system/rich/rich_files/rich_files/000/000/020/original/lake.jpeg"}	image	1	2020-06-23 12:08:06.616534	2020-06-23 12:08:06.650372
21	town.jpeg	image/jpeg	9679	2020-06-23 12:08:06.379371	{"thumb":"/system/rich/rich_files/rich_files/000/000/021/thumb/town.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/021/rich_thumb/town.jpeg","original":"/system/rich/rich_files/rich_files/000/000/021/original/town.jpeg"}	image	1	2020-06-23 12:08:06.648963	2020-06-23 12:08:06.706786
22	dreamstime-xxl-65780868-small.jpg	image/jpeg	32355	2020-06-23 12:08:06.318957	{"thumb":"/system/rich/rich_files/rich_files/000/000/022/thumb/dreamstime-xxl-65780868-small.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/022/rich_thumb/dreamstime-xxl-65780868-small.jpg","original":"/system/rich/rich_files/rich_files/000/000/022/original/dreamstime-xxl-65780868-small.jpg"}	image	1	2020-06-23 12:08:06.696061	2020-06-23 12:08:06.740622
23	lake.jpeg	image/jpeg	5174	2020-06-23 12:08:23.619397	{"thumb":"/system/rich/rich_files/rich_files/000/000/023/thumb/lake.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/023/rich_thumb/lake.jpeg","original":"/system/rich/rich_files/rich_files/000/000/023/original/lake.jpeg"}	image	1	2020-06-23 12:08:23.869975	2020-06-23 12:08:23.927399
24	town.jpeg	image/jpeg	9679	2020-06-23 12:08:23.624308	{"thumb":"/system/rich/rich_files/rich_files/000/000/024/thumb/town.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/024/rich_thumb/town.jpeg","original":"/system/rich/rich_files/rich_files/000/000/024/original/town.jpeg"}	image	1	2020-06-23 12:08:23.888931	2020-06-23 12:08:23.948007
29	lake.jpeg	image/jpeg	5174	2020-06-23 12:08:28.398617	{"thumb":"/system/rich/rich_files/rich_files/000/000/029/thumb/lake.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/029/rich_thumb/lake.jpeg","original":"/system/rich/rich_files/rich_files/000/000/029/original/lake.jpeg"}	image	1	2020-06-23 12:08:28.659569	2020-06-23 12:08:28.691358
30	download.jpeg	image/jpeg	5159	2020-06-23 12:08:28.399381	{"thumb":"/system/rich/rich_files/rich_files/000/000/030/thumb/download.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/030/rich_thumb/download.jpeg","original":"/system/rich/rich_files/rich_files/000/000/030/original/download.jpeg"}	image	1	2020-06-23 12:08:28.670351	2020-06-23 12:08:28.714782
31	town.jpeg	image/jpeg	9679	2020-06-23 12:08:28.406896	{"thumb":"/system/rich/rich_files/rich_files/000/000/031/thumb/town.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/031/rich_thumb/town.jpeg","original":"/system/rich/rich_files/rich_files/000/000/031/original/town.jpeg"}	image	1	2020-06-23 12:08:28.698974	2020-06-23 12:08:28.726014
32	download-20-1-.jpeg	image/jpeg	13669	2020-06-23 12:08:28.881726	{"thumb":"/system/rich/rich_files/rich_files/000/000/032/thumb/download-20-1-.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/032/rich_thumb/download-20-1-.jpeg","original":"/system/rich/rich_files/rich_files/000/000/032/original/download-20-1-.jpeg"}	image	1	2020-06-23 12:08:29.183886	2020-06-23 12:08:29.20685
33	sophie2.jpg	image/jpeg	13443	2020-06-23 12:08:28.863431	{"thumb":"/system/rich/rich_files/rich_files/000/000/033/thumb/sophie2.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/033/rich_thumb/sophie2.jpg","original":"/system/rich/rich_files/rich_files/000/000/033/original/sophie2.jpg"}	image	1	2020-06-23 12:08:29.249691	2020-06-23 12:08:29.282265
34	dreamstime-xxl-65780868-small.jpg	image/jpeg	32355	2020-06-23 12:08:28.921728	{"thumb":"/system/rich/rich_files/rich_files/000/000/034/thumb/dreamstime-xxl-65780868-small.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/034/rich_thumb/dreamstime-xxl-65780868-small.jpg","original":"/system/rich/rich_files/rich_files/000/000/034/original/dreamstime-xxl-65780868-small.jpg"}	image	1	2020-06-23 12:08:29.280147	2020-06-23 12:08:29.320978
35	download.jpeg	image/jpeg	5159	2020-06-23 12:48:15.394897	{"thumb":"/system/rich/rich_files/rich_files/000/000/035/thumb/download.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/035/rich_thumb/download.jpeg","original":"/system/rich/rich_files/rich_files/000/000/035/original/download.jpeg"}	image	1	2020-06-23 12:48:15.590527	2020-06-23 12:48:15.621251
36	download.jpeg	image/jpeg	5159	2020-06-23 13:31:51.572121	{"thumb":"/system/rich/rich_files/rich_files/000/000/036/thumb/download.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/036/rich_thumb/download.jpeg","original":"/system/rich/rich_files/rich_files/000/000/036/original/download.jpeg"}	image	1	2020-06-23 13:31:51.989677	2020-06-23 13:31:52.06919
40	sophie2.jpg	image/jpeg	13443	2020-06-23 13:31:52.488533	{"thumb":"/system/rich/rich_files/rich_files/000/000/040/thumb/sophie2.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/040/rich_thumb/sophie2.jpg","original":"/system/rich/rich_files/rich_files/000/000/040/original/sophie2.jpg"}	image	1	2020-06-23 13:31:53.025625	2020-06-23 13:31:53.094545
43	lake.jpeg	image/jpeg	5174	2020-06-23 13:31:55.789663	{"thumb":"/system/rich/rich_files/rich_files/000/000/043/thumb/lake.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/043/rich_thumb/lake.jpeg","original":"/system/rich/rich_files/rich_files/000/000/043/original/lake.jpeg"}	image	1	2020-06-23 13:31:56.154735	2020-06-23 13:31:56.251911
47	dreamstime-xxl-65780868-small.jpg	image/jpeg	32355	2020-06-23 13:31:56.731985	{"thumb":"/system/rich/rich_files/rich_files/000/000/047/thumb/dreamstime-xxl-65780868-small.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/047/rich_thumb/dreamstime-xxl-65780868-small.jpg","original":"/system/rich/rich_files/rich_files/000/000/047/original/dreamstime-xxl-65780868-small.jpg"}	image	1	2020-06-23 13:31:57.231063	2020-06-23 13:31:57.307464
49	download.jpeg	image/jpeg	5159	2020-06-23 13:32:00.193284	{"thumb":"/system/rich/rich_files/rich_files/000/000/049/thumb/download.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/049/rich_thumb/download.jpeg","original":"/system/rich/rich_files/rich_files/000/000/049/original/download.jpeg"}	image	1	2020-06-23 13:32:00.537091	2020-06-23 13:32:00.62145
52	download-20-1-.jpeg	image/jpeg	13669	2020-06-23 13:32:01.016286	{"thumb":"/system/rich/rich_files/rich_files/000/000/052/thumb/download-20-1-.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/052/rich_thumb/download-20-1-.jpeg","original":"/system/rich/rich_files/rich_files/000/000/052/original/download-20-1-.jpeg"}	image	1	2020-06-23 13:32:01.432118	2020-06-23 13:32:01.516459
55	lake.jpeg	image/jpeg	5174	2020-06-23 13:32:04.897828	{"thumb":"/system/rich/rich_files/rich_files/000/000/055/thumb/lake.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/055/rich_thumb/lake.jpeg","original":"/system/rich/rich_files/rich_files/000/000/055/original/lake.jpeg"}	image	1	2020-06-23 13:32:05.301502	2020-06-23 13:32:05.393156
97	sophie2.jpg	image/jpeg	13443	2020-06-23 13:35:03.71883	{"thumb":"/system/rich/rich_files/rich_files/000/000/097/thumb/sophie2.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/097/rich_thumb/sophie2.jpg","original":"/system/rich/rich_files/rich_files/000/000/097/original/sophie2.jpg"}	image	1	2020-06-23 13:35:03.92692	2020-06-23 13:35:03.951033
37	town.jpeg	image/jpeg	9679	2020-06-23 13:31:51.670689	{"thumb":"/system/rich/rich_files/rich_files/000/000/037/thumb/town.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/037/rich_thumb/town.jpeg","original":"/system/rich/rich_files/rich_files/000/000/037/original/town.jpeg"}	image	1	2020-06-23 13:31:52.043339	2020-06-23 13:31:52.087896
57	download-20-1-.jpeg	image/jpeg	13669	2020-06-23 13:32:05.82718	{"thumb":"/system/rich/rich_files/rich_files/000/000/057/thumb/download-20-1-.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/057/rich_thumb/download-20-1-.jpeg","original":"/system/rich/rich_files/rich_files/000/000/057/original/download-20-1-.jpeg"}	image	1	2020-06-23 13:32:06.214403	2020-06-23 13:32:06.283278
62	lake.jpeg	image/jpeg	5174	2020-06-23 13:32:10.176406	{"thumb":"/system/rich/rich_files/rich_files/000/000/062/thumb/lake.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/062/rich_thumb/lake.jpeg","original":"/system/rich/rich_files/rich_files/000/000/062/original/lake.jpeg"}	image	1	2020-06-23 13:32:10.591484	2020-06-23 13:32:10.662195
63	sophie2.jpg	image/jpeg	13443	2020-06-23 13:32:10.940099	{"thumb":"/system/rich/rich_files/rich_files/000/000/063/thumb/sophie2.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/063/rich_thumb/sophie2.jpg","original":"/system/rich/rich_files/rich_files/000/000/063/original/sophie2.jpg"}	image	1	2020-06-23 13:32:11.43596	2020-06-23 13:32:11.479408
68	town.jpeg	image/jpeg	9679	2020-06-23 13:32:14.912158	{"thumb":"/system/rich/rich_files/rich_files/000/000/068/thumb/town.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/068/rich_thumb/town.jpeg","original":"/system/rich/rich_files/rich_files/000/000/068/original/town.jpeg"}	image	1	2020-06-23 13:32:15.361206	2020-06-23 13:32:15.425261
41	dreamstime-xxl-65780868-small.jpg	image/jpeg	32355	2020-06-23 13:31:52.697201	{"thumb":"/system/rich/rich_files/rich_files/000/000/041/thumb/dreamstime-xxl-65780868-small.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/041/rich_thumb/dreamstime-xxl-65780868-small.jpg","original":"/system/rich/rich_files/rich_files/000/000/041/original/dreamstime-xxl-65780868-small.jpg"}	image	1	2020-06-23 13:31:53.190239	2020-06-23 13:31:53.252922
42	download.jpeg	image/jpeg	5159	2020-06-23 13:31:55.788059	{"thumb":"/system/rich/rich_files/rich_files/000/000/042/thumb/download.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/042/rich_thumb/download.jpeg","original":"/system/rich/rich_files/rich_files/000/000/042/original/download.jpeg"}	image	1	2020-06-23 13:31:56.122858	2020-06-23 13:31:56.22383
46	download-20-1-.jpeg	image/jpeg	13669	2020-06-23 13:31:56.781328	{"thumb":"/system/rich/rich_files/rich_files/000/000/046/thumb/download-20-1-.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/046/rich_thumb/download-20-1-.jpeg","original":"/system/rich/rich_files/rich_files/000/000/046/original/download-20-1-.jpeg"}	image	1	2020-06-23 13:31:57.179649	2020-06-23 13:31:57.226246
48	lake.jpeg	image/jpeg	5174	2020-06-23 13:32:00.192628	{"thumb":"/system/rich/rich_files/rich_files/000/000/048/thumb/lake.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/048/rich_thumb/lake.jpeg","original":"/system/rich/rich_files/rich_files/000/000/048/original/lake.jpeg"}	image	1	2020-06-23 13:32:00.502766	2020-06-23 13:32:00.57633
65	dreamstime-xxl-65780868-small.jpg	image/jpeg	32355	2020-06-23 13:32:11.081861	{"thumb":"/system/rich/rich_files/rich_files/000/000/065/thumb/dreamstime-xxl-65780868-small.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/065/rich_thumb/dreamstime-xxl-65780868-small.jpg","original":"/system/rich/rich_files/rich_files/000/000/065/original/dreamstime-xxl-65780868-small.jpg"}	image	1	2020-06-23 13:32:11.634666	2020-06-23 13:32:11.708258
67	download.jpeg	image/jpeg	5159	2020-06-23 13:32:14.906142	{"thumb":"/system/rich/rich_files/rich_files/000/000/067/thumb/download.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/067/rich_thumb/download.jpeg","original":"/system/rich/rich_files/rich_files/000/000/067/original/download.jpeg"}	image	1	2020-06-23 13:32:15.257206	2020-06-23 13:32:15.335574
51	sophie2.jpg	image/jpeg	13443	2020-06-23 13:32:00.963493	{"thumb":"/system/rich/rich_files/rich_files/000/000/051/thumb/sophie2.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/051/rich_thumb/sophie2.jpg","original":"/system/rich/rich_files/rich_files/000/000/051/original/sophie2.jpg"}	image	1	2020-06-23 13:32:01.394919	2020-06-23 13:32:01.487258
54	town.jpeg	image/jpeg	9679	2020-06-23 13:32:04.89515	{"thumb":"/system/rich/rich_files/rich_files/000/000/054/thumb/town.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/054/rich_thumb/town.jpeg","original":"/system/rich/rich_files/rich_files/000/000/054/original/town.jpeg"}	image	1	2020-06-23 13:32:05.23595	2020-06-23 13:32:05.277665
59	dreamstime-xxl-65780868-small.jpg	image/jpeg	32355	2020-06-23 13:32:05.871244	{"thumb":"/system/rich/rich_files/rich_files/000/000/059/thumb/dreamstime-xxl-65780868-small.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/059/rich_thumb/dreamstime-xxl-65780868-small.jpg","original":"/system/rich/rich_files/rich_files/000/000/059/original/dreamstime-xxl-65780868-small.jpg"}	image	1	2020-06-23 13:32:06.410771	2020-06-23 13:32:06.519021
61	download.jpeg	image/jpeg	5159	2020-06-23 13:32:10.106785	{"thumb":"/system/rich/rich_files/rich_files/000/000/061/thumb/download.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/061/rich_thumb/download.jpeg","original":"/system/rich/rich_files/rich_files/000/000/061/original/download.jpeg"}	image	1	2020-06-23 13:32:10.539587	2020-06-23 13:32:10.606927
69	sophie2.jpg	image/jpeg	13443	2020-06-23 13:32:15.672726	{"thumb":"/system/rich/rich_files/rich_files/000/000/069/thumb/sophie2.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/069/rich_thumb/sophie2.jpg","original":"/system/rich/rich_files/rich_files/000/000/069/original/sophie2.jpg"}	image	1	2020-06-23 13:32:16.145886	2020-06-23 13:32:16.220104
73	town.jpeg	image/jpeg	9679	2020-06-23 13:32:19.257328	{"thumb":"/system/rich/rich_files/rich_files/000/000/073/thumb/town.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/073/rich_thumb/town.jpeg","original":"/system/rich/rich_files/rich_files/000/000/073/original/town.jpeg"}	image	1	2020-06-23 13:32:19.658589	2020-06-23 13:32:19.766068
81	download-20-1-.jpeg	image/jpeg	13669	2020-06-23 13:32:24.690054	{"thumb":"/system/rich/rich_files/rich_files/000/000/081/thumb/download-20-1-.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/081/rich_thumb/download-20-1-.jpeg","original":"/system/rich/rich_files/rich_files/000/000/081/original/download-20-1-.jpeg"}	image	1	2020-06-23 13:32:25.164835	2020-06-23 13:32:25.241526
85	download.jpeg	image/jpeg	5159	2020-06-23 13:32:28.199651	{"thumb":"/system/rich/rich_files/rich_files/000/000/085/thumb/download.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/085/rich_thumb/download.jpeg","original":"/system/rich/rich_files/rich_files/000/000/085/original/download.jpeg"}	image	1	2020-06-23 13:32:28.678367	2020-06-23 13:32:28.799146
88	sophie2.jpg	image/jpeg	13443	2020-06-23 13:32:29.161323	{"thumb":"/system/rich/rich_files/rich_files/000/000/088/thumb/sophie2.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/088/rich_thumb/sophie2.jpg","original":"/system/rich/rich_files/rich_files/000/000/088/original/sophie2.jpg"}	image	1	2020-06-23 13:32:29.753355	2020-06-23 13:32:29.851144
91	lake.jpeg	image/jpeg	5174	2020-06-23 13:32:36.695046	{"thumb":"/system/rich/rich_files/rich_files/000/000/091/thumb/lake.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/091/rich_thumb/lake.jpeg","original":"/system/rich/rich_files/rich_files/000/000/091/original/lake.jpeg"}	image	1	2020-06-23 13:32:37.054009	2020-06-23 13:32:37.107362
70	download-20-1-.jpeg	image/jpeg	13669	2020-06-23 13:32:15.782438	{"thumb":"/system/rich/rich_files/rich_files/000/000/070/thumb/download-20-1-.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/070/rich_thumb/download-20-1-.jpeg","original":"/system/rich/rich_files/rich_files/000/000/070/original/download-20-1-.jpeg"}	image	1	2020-06-23 13:32:16.156842	2020-06-23 13:32:16.222151
72	lake.jpeg	image/jpeg	5174	2020-06-23 13:32:19.245378	{"thumb":"/system/rich/rich_files/rich_files/000/000/072/thumb/lake.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/072/rich_thumb/lake.jpeg","original":"/system/rich/rich_files/rich_files/000/000/072/original/lake.jpeg"}	image	1	2020-06-23 13:32:19.589606	2020-06-23 13:32:19.669373
75	sophie2.jpg	image/jpeg	13443	2020-06-23 13:32:20.235596	{"thumb":"/system/rich/rich_files/rich_files/000/000/075/thumb/sophie2.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/075/rich_thumb/sophie2.jpg","original":"/system/rich/rich_files/rich_files/000/000/075/original/sophie2.jpg"}	image	1	2020-06-23 13:32:20.672993	2020-06-23 13:32:20.721132
80	town.jpeg	image/jpeg	9679	2020-06-23 13:32:23.716923	{"thumb":"/system/rich/rich_files/rich_files/000/000/080/thumb/town.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/080/rich_thumb/town.jpeg","original":"/system/rich/rich_files/rich_files/000/000/080/original/town.jpeg"}	image	1	2020-06-23 13:32:24.195074	2020-06-23 13:32:24.280485
71	dreamstime-xxl-65780868-small.jpg	image/jpeg	32355	2020-06-23 13:32:15.998281	{"thumb":"/system/rich/rich_files/rich_files/000/000/071/thumb/dreamstime-xxl-65780868-small.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/071/rich_thumb/dreamstime-xxl-65780868-small.jpg","original":"/system/rich/rich_files/rich_files/000/000/071/original/dreamstime-xxl-65780868-small.jpg"}	image	1	2020-06-23 13:32:16.433405	2020-06-23 13:32:16.488778
74	download.jpeg	image/jpeg	5159	2020-06-23 13:32:19.250402	{"thumb":"/system/rich/rich_files/rich_files/000/000/074/thumb/download.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/074/rich_thumb/download.jpeg","original":"/system/rich/rich_files/rich_files/000/000/074/original/download.jpeg"}	image	1	2020-06-23 13:32:19.731321	2020-06-23 13:32:19.84647
76	download-20-1-.jpeg	image/jpeg	13669	2020-06-23 13:32:20.334775	{"thumb":"/system/rich/rich_files/rich_files/000/000/076/thumb/download-20-1-.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/076/rich_thumb/download-20-1-.jpeg","original":"/system/rich/rich_files/rich_files/000/000/076/original/download-20-1-.jpeg"}	image	1	2020-06-23 13:32:20.745745	2020-06-23 13:32:20.827607
79	lake.jpeg	image/jpeg	5174	2020-06-23 13:32:23.714843	{"thumb":"/system/rich/rich_files/rich_files/000/000/079/thumb/lake.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/079/rich_thumb/lake.jpeg","original":"/system/rich/rich_files/rich_files/000/000/079/original/lake.jpeg"}	image	1	2020-06-23 13:32:24.104201	2020-06-23 13:32:24.177127
82	sophie2.jpg	image/jpeg	13443	2020-06-23 13:32:24.584772	{"thumb":"/system/rich/rich_files/rich_files/000/000/082/thumb/sophie2.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/082/rich_thumb/sophie2.jpg","original":"/system/rich/rich_files/rich_files/000/000/082/original/sophie2.jpg"}	image	1	2020-06-23 13:32:25.155176	2020-06-23 13:32:25.216531
86	town.jpeg	image/jpeg	9679	2020-06-23 13:32:28.213964	{"thumb":"/system/rich/rich_files/rich_files/000/000/086/thumb/town.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/086/rich_thumb/town.jpeg","original":"/system/rich/rich_files/rich_files/000/000/086/original/town.jpeg"}	image	1	2020-06-23 13:32:28.72521	2020-06-23 13:32:28.811167
87	download-20-1-.jpeg	image/jpeg	13669	2020-06-23 13:32:29.269501	{"thumb":"/system/rich/rich_files/rich_files/000/000/087/thumb/download-20-1-.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/087/rich_thumb/download-20-1-.jpeg","original":"/system/rich/rich_files/rich_files/000/000/087/original/download-20-1-.jpeg"}	image	1	2020-06-23 13:32:29.682754	2020-06-23 13:32:29.760792
90	fw9.pdf	application/pdf	153049	2020-06-23 13:32:30.188274	{"original":"/system/rich/rich_files/rich_files/000/000/090/original/fw9.pdf"}	file	1	2020-06-23 13:32:30.293291	2020-06-23 13:32:30.358594
93	town.jpeg	image/jpeg	9679	2020-06-23 13:32:36.718992	{"thumb":"/system/rich/rich_files/rich_files/000/000/093/thumb/town.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/093/rich_thumb/town.jpeg","original":"/system/rich/rich_files/rich_files/000/000/093/original/town.jpeg"}	image	1	2020-06-23 13:32:37.174112	2020-06-23 13:32:37.244129
95	download-20-1-.jpeg	image/jpeg	13669	2020-06-23 13:32:37.573596	{"thumb":"/system/rich/rich_files/rich_files/000/000/095/thumb/download-20-1-.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/095/rich_thumb/download-20-1-.jpeg","original":"/system/rich/rich_files/rich_files/000/000/095/original/download-20-1-.jpeg"}	image	1	2020-06-23 13:32:38.052036	2020-06-23 13:32:38.156204
77	dreamstime-xxl-65780868-small.jpg	image/jpeg	32355	2020-06-23 13:32:20.626313	{"thumb":"/system/rich/rich_files/rich_files/000/000/077/thumb/dreamstime-xxl-65780868-small.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/077/rich_thumb/dreamstime-xxl-65780868-small.jpg","original":"/system/rich/rich_files/rich_files/000/000/077/original/dreamstime-xxl-65780868-small.jpg"}	image	1	2020-06-23 13:32:21.038508	2020-06-23 13:32:21.090913
78	download.jpeg	image/jpeg	5159	2020-06-23 13:32:23.633056	{"thumb":"/system/rich/rich_files/rich_files/000/000/078/thumb/download.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/078/rich_thumb/download.jpeg","original":"/system/rich/rich_files/rich_files/000/000/078/original/download.jpeg"}	image	1	2020-06-23 13:32:24.031952	2020-06-23 13:32:24.115843
83	dreamstime-xxl-65780868-small.jpg	image/jpeg	32355	2020-06-23 13:32:24.902768	{"thumb":"/system/rich/rich_files/rich_files/000/000/083/thumb/dreamstime-xxl-65780868-small.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/083/rich_thumb/dreamstime-xxl-65780868-small.jpg","original":"/system/rich/rich_files/rich_files/000/000/083/original/dreamstime-xxl-65780868-small.jpg"}	image	1	2020-06-23 13:32:25.404506	2020-06-23 13:32:25.452724
84	lake.jpeg	image/jpeg	5174	2020-06-23 13:32:28.196909	{"thumb":"/system/rich/rich_files/rich_files/000/000/084/thumb/lake.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/084/rich_thumb/lake.jpeg","original":"/system/rich/rich_files/rich_files/000/000/084/original/lake.jpeg"}	image	1	2020-06-23 13:32:28.604329	2020-06-23 13:32:28.666741
94	dreamstime-xxl-65780868-small.jpg	image/jpeg	32355	2020-06-23 13:32:37.612383	{"thumb":"/system/rich/rich_files/rich_files/000/000/094/thumb/dreamstime-xxl-65780868-small.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/094/rich_thumb/dreamstime-xxl-65780868-small.jpg","original":"/system/rich/rich_files/rich_files/000/000/094/original/dreamstime-xxl-65780868-small.jpg"}	image	1	2020-06-23 13:32:38.026109	2020-06-23 13:32:38.101093
89	dreamstime-xxl-65780868-small.jpg	image/jpeg	32355	2020-06-23 13:32:29.268113	{"thumb":"/system/rich/rich_files/rich_files/000/000/089/thumb/dreamstime-xxl-65780868-small.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/089/rich_thumb/dreamstime-xxl-65780868-small.jpg","original":"/system/rich/rich_files/rich_files/000/000/089/original/dreamstime-xxl-65780868-small.jpg"}	image	1	2020-06-23 13:32:29.843535	2020-06-23 13:32:29.925702
92	download.jpeg	image/jpeg	5159	2020-06-23 13:32:36.695875	{"thumb":"/system/rich/rich_files/rich_files/000/000/092/thumb/download.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/092/rich_thumb/download.jpeg","original":"/system/rich/rich_files/rich_files/000/000/092/original/download.jpeg"}	image	1	2020-06-23 13:32:37.079327	2020-06-23 13:32:37.146283
96	sophie2.jpg	image/jpeg	13443	2020-06-23 13:32:37.483384	{"thumb":"/system/rich/rich_files/rich_files/000/000/096/thumb/sophie2.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/096/rich_thumb/sophie2.jpg","original":"/system/rich/rich_files/rich_files/000/000/096/original/sophie2.jpg"}	image	1	2020-06-23 13:32:38.095527	2020-06-23 13:32:38.171023
38	lake.jpeg	image/jpeg	5174	2020-06-23 13:31:51.649633	{"thumb":"/system/rich/rich_files/rich_files/000/000/038/thumb/lake.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/038/rich_thumb/lake.jpeg","original":"/system/rich/rich_files/rich_files/000/000/038/original/lake.jpeg"}	image	1	2020-06-23 13:31:52.021407	2020-06-23 13:31:52.134138
39	download-20-1-.jpeg	image/jpeg	13669	2020-06-23 13:31:52.521407	{"thumb":"/system/rich/rich_files/rich_files/000/000/039/thumb/download-20-1-.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/039/rich_thumb/download-20-1-.jpeg","original":"/system/rich/rich_files/rich_files/000/000/039/original/download-20-1-.jpeg"}	image	1	2020-06-23 13:31:52.988771	2020-06-23 13:31:53.055389
44	town.jpeg	image/jpeg	9679	2020-06-23 13:31:55.787113	{"thumb":"/system/rich/rich_files/rich_files/000/000/044/thumb/town.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/044/rich_thumb/town.jpeg","original":"/system/rich/rich_files/rich_files/000/000/044/original/town.jpeg"}	image	1	2020-06-23 13:31:56.213534	2020-06-23 13:31:56.287108
45	sophie2.jpg	image/jpeg	13443	2020-06-23 13:31:56.607441	{"thumb":"/system/rich/rich_files/rich_files/000/000/045/thumb/sophie2.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/045/rich_thumb/sophie2.jpg","original":"/system/rich/rich_files/rich_files/000/000/045/original/sophie2.jpg"}	image	1	2020-06-23 13:31:57.039806	2020-06-23 13:31:57.085675
50	town.jpeg	image/jpeg	9679	2020-06-23 13:32:00.195688	{"thumb":"/system/rich/rich_files/rich_files/000/000/050/thumb/town.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/050/rich_thumb/town.jpeg","original":"/system/rich/rich_files/rich_files/000/000/050/original/town.jpeg"}	image	1	2020-06-23 13:32:00.594114	2020-06-23 13:32:00.679804
53	dreamstime-xxl-65780868-small.jpg	image/jpeg	32355	2020-06-23 13:32:01.04931	{"thumb":"/system/rich/rich_files/rich_files/000/000/053/thumb/dreamstime-xxl-65780868-small.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/053/rich_thumb/dreamstime-xxl-65780868-small.jpg","original":"/system/rich/rich_files/rich_files/000/000/053/original/dreamstime-xxl-65780868-small.jpg"}	image	1	2020-06-23 13:32:01.550683	2020-06-23 13:32:01.616338
56	download.jpeg	image/jpeg	5159	2020-06-23 13:32:04.901233	{"thumb":"/system/rich/rich_files/rich_files/000/000/056/thumb/download.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/056/rich_thumb/download.jpeg","original":"/system/rich/rich_files/rich_files/000/000/056/original/download.jpeg"}	image	1	2020-06-23 13:32:05.334775	2020-06-23 13:32:05.401861
58	sophie2.jpg	image/jpeg	13443	2020-06-23 13:32:05.705765	{"thumb":"/system/rich/rich_files/rich_files/000/000/058/thumb/sophie2.jpg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/058/rich_thumb/sophie2.jpg","original":"/system/rich/rich_files/rich_files/000/000/058/original/sophie2.jpg"}	image	1	2020-06-23 13:32:06.312154	2020-06-23 13:32:06.415093
60	town.jpeg	image/jpeg	9679	2020-06-23 13:32:10.186331	{"thumb":"/system/rich/rich_files/rich_files/000/000/060/thumb/town.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/060/rich_thumb/town.jpeg","original":"/system/rich/rich_files/rich_files/000/000/060/original/town.jpeg"}	image	1	2020-06-23 13:32:10.531021	2020-06-23 13:32:10.597075
64	download-20-1-.jpeg	image/jpeg	13669	2020-06-23 13:32:11.079244	{"thumb":"/system/rich/rich_files/rich_files/000/000/064/thumb/download-20-1-.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/064/rich_thumb/download-20-1-.jpeg","original":"/system/rich/rich_files/rich_files/000/000/064/original/download-20-1-.jpeg"}	image	1	2020-06-23 13:32:11.593014	2020-06-23 13:32:11.689504
66	lake.jpeg	image/jpeg	5174	2020-06-23 13:32:14.882116	{"thumb":"/system/rich/rich_files/rich_files/000/000/066/thumb/lake.jpeg","rich_thumb":"/system/rich/rich_files/rich_files/000/000/066/rich_thumb/lake.jpeg","original":"/system/rich/rich_files/rich_files/000/000/066/original/lake.jpeg"}	image	1	2020-06-23 13:32:15.219192	2020-06-23 13:32:15.292091
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.schema_migrations (version) FROM stdin;
20200525104320
20200525104450
20200525104453
20200527085035
20200527104130
20200527110044
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: pguser
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
\.


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.active_admin_comments_id_seq', 1, false);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 102, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 102, true);


--
-- Name: active_storage_folder_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.active_storage_folder_attachments_id_seq', 1, false);


--
-- Name: active_storage_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.active_storage_folders_id_seq', 34, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 2, true);


--
-- Name: rich_rich_files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.rich_rich_files_id_seq', 97, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pguser
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: active_admin_comments active_admin_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.active_admin_comments
    ADD CONSTRAINT active_admin_comments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_folder_attachments active_storage_folder_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.active_storage_folder_attachments
    ADD CONSTRAINT active_storage_folder_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_folders active_storage_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.active_storage_folders
    ADD CONSTRAINT active_storage_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: rich_rich_files rich_rich_files_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.rich_rich_files
    ADD CONSTRAINT rich_rich_files_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON public.active_admin_comments USING btree (author_type, author_id);


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_active_admin_comments_on_namespace ON public.active_admin_comments USING btree (namespace);


--
-- Name: index_active_admin_comments_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_active_admin_comments_on_resource_type_and_resource_id ON public.active_admin_comments USING btree (resource_type, resource_id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: pguser
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_admin_users_on_email; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_admin_users_on_email ON public.admin_users USING btree (email);


--
-- Name: index_admin_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_admin_users_on_reset_password_token ON public.admin_users USING btree (reset_password_token);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: pguser
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: pguser
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- PostgreSQL database dump complete
--

