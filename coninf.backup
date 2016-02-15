--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: allocation_allocation; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE allocation_allocation (
    id integer NOT NULL,
    employee character varying(16) NOT NULL,
    department double precision NOT NULL,
    area double precision NOT NULL,
    date_joined date NOT NULL,
    is_active boolean NOT NULL,
    device_id integer NOT NULL
);


ALTER TABLE allocation_allocation OWNER TO coninf;

--
-- Name: allocation_allocation_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE allocation_allocation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE allocation_allocation_id_seq OWNER TO coninf;

--
-- Name: allocation_allocation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE allocation_allocation_id_seq OWNED BY allocation_allocation.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO coninf;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO coninf;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO coninf;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO coninf;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO coninf;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO coninf;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO coninf;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO coninf;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO coninf;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO coninf;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO coninf;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO coninf;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO coninf;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO coninf;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO coninf;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO coninf;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO coninf;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO coninf;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO coninf;

--
-- Name: equipment_device; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE equipment_device (
    id integer NOT NULL,
    code character varying(16) NOT NULL,
    serial character varying(34),
    part character varying(32),
    state character varying(16),
    invoice character varying(16),
    date_purchase date,
    date_warranty date,
    specifications json,
    model_id integer NOT NULL,
    provider_id integer
);


ALTER TABLE equipment_device OWNER TO coninf;

--
-- Name: equipment_device_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE equipment_device_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE equipment_device_id_seq OWNER TO coninf;

--
-- Name: equipment_device_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE equipment_device_id_seq OWNED BY equipment_device.id;


--
-- Name: equipment_model; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE equipment_model (
    id integer NOT NULL,
    name character varying(128) NOT NULL,
    specifications json,
    type_id integer NOT NULL,
    trademark_id integer NOT NULL
);


ALTER TABLE equipment_model OWNER TO coninf;

--
-- Name: equipment_model_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE equipment_model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE equipment_model_id_seq OWNER TO coninf;

--
-- Name: equipment_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE equipment_model_id_seq OWNED BY equipment_model.id;


--
-- Name: equipment_trademark; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE equipment_trademark (
    id integer NOT NULL,
    name character varying(32) NOT NULL
);


ALTER TABLE equipment_trademark OWNER TO coninf;

--
-- Name: equipment_trademark_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE equipment_trademark_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE equipment_trademark_id_seq OWNER TO coninf;

--
-- Name: equipment_trademark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE equipment_trademark_id_seq OWNED BY equipment_trademark.id;


--
-- Name: equipment_type; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE equipment_type (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    is_part boolean NOT NULL,
    specifications json
);


ALTER TABLE equipment_type OWNER TO coninf;

--
-- Name: equipment_type_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE equipment_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE equipment_type_id_seq OWNER TO coninf;

--
-- Name: equipment_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE equipment_type_id_seq OWNED BY equipment_type.id;


--
-- Name: providers_provider; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE providers_provider (
    id integer NOT NULL,
    ruc character varying(13) NOT NULL,
    name character varying(32) NOT NULL,
    representative character varying(128),
    address character varying(128) NOT NULL,
    city character varying(32),
    cellphone character varying(10),
    telephone character varying(10)
);


ALTER TABLE providers_provider OWNER TO coninf;

--
-- Name: providers_provider_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE providers_provider_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE providers_provider_id_seq OWNER TO coninf;

--
-- Name: providers_provider_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE providers_provider_id_seq OWNED BY providers_provider.id;


--
-- Name: technical_assistance_maintenance; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE technical_assistance_maintenance (
    id integer NOT NULL,
    date date NOT NULL,
    problem text NOT NULL,
    activity text NOT NULL,
    device_id integer NOT NULL
);


ALTER TABLE technical_assistance_maintenance OWNER TO coninf;

--
-- Name: technical_assistance_maintenance_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE technical_assistance_maintenance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE technical_assistance_maintenance_id_seq OWNER TO coninf;

--
-- Name: technical_assistance_maintenance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE technical_assistance_maintenance_id_seq OWNED BY technical_assistance_maintenance.id;


--
-- Name: technical_assistance_parts; Type: TABLE; Schema: public; Owner: coninf; Tablespace: 
--

CREATE TABLE technical_assistance_parts (
    id integer NOT NULL,
    is_active boolean NOT NULL,
    part_id integer NOT NULL,
    maintenance_id integer NOT NULL
);


ALTER TABLE technical_assistance_parts OWNER TO coninf;

--
-- Name: technical_assistance_parts_id_seq; Type: SEQUENCE; Schema: public; Owner: coninf
--

CREATE SEQUENCE technical_assistance_parts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE technical_assistance_parts_id_seq OWNER TO coninf;

--
-- Name: technical_assistance_parts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: coninf
--

ALTER SEQUENCE technical_assistance_parts_id_seq OWNED BY technical_assistance_parts.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY allocation_allocation ALTER COLUMN id SET DEFAULT nextval('allocation_allocation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY equipment_device ALTER COLUMN id SET DEFAULT nextval('equipment_device_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY equipment_model ALTER COLUMN id SET DEFAULT nextval('equipment_model_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY equipment_trademark ALTER COLUMN id SET DEFAULT nextval('equipment_trademark_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY equipment_type ALTER COLUMN id SET DEFAULT nextval('equipment_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY providers_provider ALTER COLUMN id SET DEFAULT nextval('providers_provider_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY technical_assistance_maintenance ALTER COLUMN id SET DEFAULT nextval('technical_assistance_maintenance_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY technical_assistance_parts ALTER COLUMN id SET DEFAULT nextval('technical_assistance_parts_id_seq'::regclass);


--
-- Data for Name: allocation_allocation; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY allocation_allocation (id, employee, department, area, date_joined, is_active, device_id) FROM stdin;
1	1400598759	12	3	2015-08-17	t	1
2	1400598759	12	3	2015-08-17	t	2
3	1400598759	12	3	2015-08-17	t	3
4	1400598759	12	3	2015-08-17	t	4
5	1400598759	12	3	2015-08-17	t	5
6	1400422414	7	3	2015-08-17	t	6
7	1400422414	7	3	2015-08-17	t	7
8	1400422414	7	3	2015-08-17	t	8
9	1400422414	7	3	2015-08-17	t	9
10	1400422414	7	3	2015-08-17	t	10
11	1400446918	6	4	2015-08-17	t	31
12	1400446918	6	4	2015-08-17	t	32
13	1400446918	6	4	2015-08-17	t	33
14	1400446918	6	4	2015-08-17	t	34
15	1400446918	6	4	2015-08-17	t	35
16	1709527418	7	2	2015-08-17	t	26
17	1709527418	7	2	2015-08-17	t	27
18	1709527418	7	2	2015-08-17	t	28
19	1709527418	7	2	2015-08-17	t	29
20	1709527418	7	2	2015-08-17	t	30
21	0103801932	6	4	2015-08-17	t	21
22	0103801932	6	4	2015-08-17	t	22
23	0103801932	6	4	2015-08-17	t	23
24	0103801932	6	4	2015-08-17	t	24
25	0103801932	6	4	2015-08-17	t	25
26	0104852710	6	4	2015-08-17	t	16
27	0104852710	6	4	2015-08-17	t	17
28	0104852710	6	4	2015-08-17	t	18
29	0104852710	6	4	2015-08-17	t	19
30	0104852710	6	4	2015-08-17	t	20
31	1400435770	12	3	2015-08-17	t	11
32	1400435770	12	3	2015-08-17	t	12
33	1400435770	12	3	2015-08-17	t	13
34	1400435770	12	3	2015-08-17	t	14
35	1400435770	12	3	2015-08-17	t	15
46	1400194518	3	5	2016-01-26	t	36
47	1400194518	3	5	2016-01-26	t	37
48	1400194518	3	5	2016-01-26	t	38
49	1400194518	3	5	2016-01-26	t	39
50	1400194518	3	5	2016-01-26	t	40
51	1400649305	3	5	2016-01-26	t	42
52	1400649305	3	5	2016-01-26	t	43
53	1400649305	3	5	2016-01-26	t	44
54	1400649305	3	5	2016-01-26	t	45
55	1400649305	3	5	2016-01-26	t	41
56	1400479802	3	5	2016-01-26	t	46
57	1400479802	3	5	2016-01-26	t	47
58	1400479802	3	5	2016-01-26	t	48
59	1400479802	3	5	2016-01-26	t	49
60	1400479802	3	5	2016-01-26	t	50
61	0201360815	3	5	2016-01-26	t	51
62	0201360815	3	5	2016-01-26	t	52
63	0201360815	3	5	2016-01-26	t	53
64	0201360815	3	5	2016-01-26	t	54
65	0201360815	3	5	2016-01-26	t	55
66	1401022601	16	2	2016-01-26	t	56
67	1400307409	14	4	2016-01-26	t	57
68	1400363287	16	2	2016-01-27	t	58
69	1400306609	11	5	2016-01-27	t	60
70	1400306609	11	5	2016-01-27	t	61
71	1400306609	11	5	2016-01-27	t	62
72	1400306609	11	5	2016-01-27	t	63
73	1400306609	11	5	2016-01-27	t	64
74	1400306609	11	5	2016-01-27	t	65
75	1400306609	11	5	2016-01-27	t	66
76	1400306609	11	5	2016-01-27	t	67
77	1400306609	11	5	2016-01-27	t	69
78	1400306609	11	5	2016-01-27	t	68
\.


--
-- Name: allocation_allocation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('allocation_allocation_id_seq', 78, true);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add trademark	7	add_trademark
20	Can change trademark	7	change_trademark
21	Can delete trademark	7	delete_trademark
22	Can add type	8	add_type
23	Can change type	8	change_type
24	Can delete type	8	delete_type
25	Can add model	9	add_model
26	Can change model	9	change_model
27	Can delete model	9	delete_model
28	Can add device	10	add_device
29	Can change device	10	change_device
30	Can delete device	10	delete_device
31	Can add allocation	11	add_allocation
32	Can change allocation	11	change_allocation
33	Can delete allocation	11	delete_allocation
34	Can add department	12	add_department
35	Can change department	12	change_department
36	Can delete department	12	delete_department
37	Can add section	13	add_section
38	Can change section	13	change_section
39	Can delete section	13	delete_section
40	Can add contributor	14	add_contributor
41	Can change contributor	14	change_contributor
42	Can delete contributor	14	delete_contributor
43	Can add employee	15	add_employee
44	Can change employee	15	change_employee
45	Can delete employee	15	delete_employee
46	Can add provider	16	add_provider
47	Can change provider	16	change_provider
48	Can delete provider	16	delete_provider
49	Can add maintenance	17	add_maintenance
50	Can change maintenance	17	change_maintenance
51	Can delete maintenance	17	delete_maintenance
52	Can add parts	18	add_parts
53	Can change parts	18	change_parts
54	Can delete parts	18	delete_parts
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('auth_permission_id_seq', 54, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	equipment	trademark
8	equipment	type
9	equipment	model
10	equipment	device
11	allocation	allocation
12	organization	department
13	organization	section
14	organization	contributor
15	organization	employee
16	providers	provider
17	technical_assistance	maintenance
18	technical_assistance	parts
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('django_content_type_id_seq', 18, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-11-19 15:40:46.600425-05
2	auth	0001_initial	2015-11-19 15:40:46.667731-05
3	admin	0001_initial	2015-11-19 15:40:46.694632-05
4	allocation	0001_initial	2015-11-19 15:40:46.709139-05
5	contenttypes	0002_remove_content_type_name	2015-11-19 15:40:46.767276-05
6	auth	0002_alter_permission_name_max_length	2015-11-19 15:40:46.786906-05
7	auth	0003_alter_user_email_max_length	2015-11-19 15:40:46.80849-05
8	auth	0004_alter_user_username_opts	2015-11-19 15:40:46.84662-05
9	auth	0005_alter_user_last_login_null	2015-11-19 15:40:46.865985-05
10	auth	0006_require_contenttypes_0002	2015-11-19 15:40:46.867786-05
11	sessions	0001_initial	2015-11-19 15:40:46.879224-05
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('django_migrations_id_seq', 11, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: equipment_device; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY equipment_device (id, code, serial, part, state, invoice, date_purchase, date_warranty, specifications, model_id, provider_id) FROM stdin;
22	1266	3CQ5024KGT		1	7616	2015-08-17	2018-08-17	{}	3	2
3	1274T	BDMHEOCHH7WAFI		1	7616	2015-08-17	\N	{}	4	2
4	1274M	FCMHHOAHD8KOB8		1	7616	2015-08-17	\N	{}	5	2
23	1277T	BDMHE0CHH7WAWH		1	7616	2015-08-17	\N	{}	4	2
5	1274R	2432APB25762404145		1	7616	2015-08-17	2017-08-17	{}	6	2
24	1277M	FCMHHOAHD8KOBA		1	7616	2015-08-17	\N	{}	5	2
7	1269	3CQ5024KGL		1	7616	2015-08-17	2018-08-17	{}	3	2
8	1273T	BDMHE0CHH7WAWI		1	7616	2015-08-17	\N	{}	4	2
9	1273M	FCMHHOAHD8KO86		1	7616	2015-08-17	\N	{}	5	2
10	1273R	2432APBL5762404146		1	7616	2015-08-17	2017-08-17	{}	6	2
6	1273	2UA5231Y2X		1	7616	2015-08-17	2018-08-17	{"Usuario": "USER4", "Ip": "172.16.10.161", "Ram": "8GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "1TB SATA", "Bits": "64 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "XEON 3.4 Ghz", "Sistema Operativo": "WINDOWS 7 PROFESIONAL"}	2	2
2	1267	3CQ5024KGB		1	7616	2015-08-17	2018-08-17	{}	3	2
39	785M	FATSQ0EDR1BOBT	417441-002	1		\N	\N	{}	11	\N
31	1272	2UA5231Y30		1	7616	2015-08-17	2018-08-17	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "FRUBIO", "Ip": "172.16.9.15", "Ram": "8GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "1 TB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "XEON 3.4 Ghz", "Bits": "64 BITS"}	2	2
32	1264	3CQ5024KGD		1	7616	2015-08-17	2018-08-17	{}	3	2
33	1272T	BDMHE0CHH7WAON		1	7616	2015-08-17	\N	{}	4	2
34	1272M	FCMHHOAHD8KOB5		1	7616	2015-08-17	\N	{}	5	2
35	1272R	2432APBC5762404143		1	7616	2015-08-17	2017-08-17	{}	6	2
26	1278	2UA5231Y2F		1	7616	2015-08-17	2018-08-17	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "SMONTALUISA", "Ip": "172.16.10.142", "Ram": "8 GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "1TB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "XEON  3.4 Ghz", "Bits": "64 BITS"}	2	2
27	1265	3CQ5024KFZ		1	7616	2015-08-17	2018-08-17	{}	3	2
28	1278T	BDMHEOC5Y8K05B		1	7616	2015-08-17	\N	{}	4	2
29	1278M	X75270801846		1	7616	2015-08-17	\N	{}	5	2
30	1278R	2432APBL5762404148		1	7616	2015-08-17	2017-08-17	{}	6	2
21	1277	2UA5231Y2R		1	7616	2015-08-17	2018-08-17	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "VLOPEZ", "Ip": "172.16.9.32", "Ram": "8GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "1 TB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "XEON 3.4 Ghz", "Bits": "64 BITS"}	2	2
25	1277R	2432APBL5762404147		1	7616	2015-08-17	2017-08-17	{}	6	2
16	1276	2UA5231Y34		1	7616	2015-08-17	2018-08-17	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "MBARAHONA", "Ip": "172.16.9.37", "Ram": "8GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "1TB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "XEON 3.4 Ghz", "Bits": "64 BITS"}	2	2
17	1268	3CQ5024K8G		1	7616	2015-08-17	2018-08-17	{}	3	2
18	1276T	BDMHEOCHH7WAFG		1	7616	2015-08-17	\N	{}	4	2
19	1276M	FCMHHOAHD8KOB9		1	7616	2015-08-17	\N	{}	5	2
20	1276R	2432APBL5762404144		1	7616	2015-08-17	2017-08-17	{}	6	2
12	1271	3CQ5024KGX		1	7616	2015-08-17	2018-08-17	{}	3	2
13	1275T	BDMHEOCHH7WAOO		1	7616	2015-08-17	\N	{}	4	2
14	1275M	FCMHHOAHD8KOB1		1	7616	2015-08-17	\N	{}	5	2
15	1275R	2432APBL5762404141		1	7616	2015-08-17	2017-08-17	{}	6	2
1	1274	2UA5231435		1	7616	2015-08-17	2018-08-17	{"Usuario": "USER7", "Ip": "172.16.11.88", "Ram": "8 GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "1 TB SATA", "Bits": "64 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "XEON (R) 3.4 Ghz", "Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Acceso Remoto": "NO"}	2	2
40	842	SMAVR1006		1		\N	\N	{}	10	\N
42	710	102UXUN58782		1		\N	\N	{}	13	\N
46	981	GCM3020BR3		1		\N	\N	{}	18	\N
47	251	BDAEV0QVB3Q6B3	434820-167	1		\N	\N	{}	9	\N
48	980M	FCGLH0DN33U387	600553-002	1		\N	\N	{}	19	\N
49	225	225		1		\N	\N	{}	20	\N
50	980	MXL3021QP9		1		\N	\N	{"Sistema Operativo": "UBUNTU", "Usuario": "tculcay", "Acceso Remoto": "SI", "Ip": "172.16.8.219", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500 GB", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7 3770 3.40 GHz", "Bits": "64 BITS"}	17	\N
36	785	MXL1491FKR		1		\N	\N	{"Usuario": "mpalacios", "Acceso Remoto": "SI", "Ip": "172.16.8.214", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500 GB", "Bits": "32 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL CORE I7 2600 3.40Ghz", "Sistema Operativo": "UBUNTU"}	7	\N
37	797	CNC119R7CN	625366-001	1		\N	\N	{}	8	\N
38	785T	B77670AVBQF2LX	352750-161	1		\N	\N	{}	9	\N
43	1169T	ZCE1A1600999		1		\N	\N	{}	14	\N
44	1169M	X75270801857		1		\N	\N	{}	15	\N
45	693	09061604003028		1		\N	\N	{}	16	\N
41	1169			1		\N	\N	{"Usuario": "hp", "Acceso Remoto": "SI", "Ip": "172.16.8.212", "Ram": "2GB", "Unidad Optica": "DVD Writer", "Disco": "350GB", "Bits": "32 BITS", "Unidad Lectora": "CARD READER", "Procesador": "DUAL CORE E2220 2.40 GHz", "Sistema Operativo": "UBUNTU"}	12	\N
51	913	6CM2300Q5H	675802-001	1		\N	\N	{}	18	\N
52	914T	BAUDU0OVB3CD26		1		\N	\N	{}	9	\N
53	914M	FCGLH0DHD3KVTO		1		\N	\N	{}	21	\N
54	142	L245APBL5710712001		1		\N	\N	{}	6	\N
55	914	MXL2470937		1		\N	\N	{"Sistema Operativo": "UBUNTU", "Usuario": "walarcon", "Acceso Remoto": "NO", "Ip": "172.16.8.216", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7 3770 3.40 GHz", "Bits": "32 BITS"}	17	\N
56	950	VNB3D12656		1		\N	\N	{"Ip": "172.16.12.130"}	22	\N
57	582	CNBSD01066		1		\N	\N	{"Ip": "172.16.11.130"}	23	\N
58	498	CNHC81107X		1		\N	\N	{"Ip": "PLUG AND PLAY"}	24	\N
59	945	VNB3K13607		1		\N	\N	{}	22	\N
61	696	 CNB9068816		1		\N	\N	{"Ip": "172.16.11.4"}	25	\N
62	657	YC5RH9LZ908313D	5670972	1		\N	\N	{}	28	\N
60	345	MXD42806GS	DV670A#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS XP PROFESIONAL", "Usuario": "fmontenegro", "Acceso Remoto": "NO", "Ip": "172.16.11.20", "Ram": "512MB DDR", "Unidad Optica": "CD Writer", "Disco": "40GB", "Unidad Lectora": "FLOPPY", "Procesador": "PENTIUM 4 2.80GHz", "Bits": "32 BITS"}	27	\N
63	345M	FATSQ0EDR1BOWU	417441-002	1		\N	\N	{}	11	\N
64	345T	C0405223396		1		\N	\N	{}	29	\N
66	789	CNC119RH5D	XJ311A	1		\N	\N	{}	8	\N
67	777M	FB7330AN3W80OEY	417966-001	1		\N	\N	{}	11	\N
69	391	9428BY0LS436401363		1		\N	\N	{}	30	\N
68	777T	BAUDU0OVB1J77M	537745-161	1		\N	\N	{}	9	\N
11	1275	2UA5231932		1	7616	2015-08-17	2018-08-17	{"Usuario": "AREYES", "Ip": "172.16.11.89", "Ram": "8 GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "1 TB SATA", "Bits": "64 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "XEON 3.4Ghz", "Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Acceso Remoto": "NO"}	2	2
65	777	MXL1491FQ5	XL504AV#244	1	1	2016-02-23	2016-02-24	{"Usuario": "fmontenegro", "Ip": "172.16.11.35", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Bits": "32 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7 2600 3.40 GHz", "Sistema Operativo": "UBUNTU", "Acceso Remoto": "SI"}	7	\N
\.


--
-- Name: equipment_device_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('equipment_device_id_seq', 69, true);


--
-- Data for Name: equipment_model; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY equipment_model (id, name, specifications, type_id, trademark_id) FROM stdin;
1	COMPUTADOR SOFISTICADO	{}	1	2
2	WORKSTATION Z230 TWR	{}	1	1
3	Z23I	{"Dimension": "23", "Tipo": "LCD"}	2	1
4	KB 57211	{"Conector": "USB"}	3	1
5	MOFYUO	{"Conector": "USB"}	4	1
6	VR2008R	{}	5	3
7	COMPAQ 6200 PRO MT	{}	1	1
8	S1933	{"Dimension": "18.5\\"", "Tipo": "LCD"}	2	1
9	KB-0316	{"Conector": "PS2"}	3	1
10	SPEEDMIND	{}	5	4
11	M-SBF96	{"Conector": "PS2"}	4	1
12	GENERICO	{}	1	5
13	W1943SI	{"Dimension": "18.5\\"", "Tipo": "LCD"}	2	6
14	GK-070008	{"Conector": "PS2"}	3	7
15	GM-03022P	{"Conector": "PS2"}	4	7
16	CDP	{}	5	8
17	COMPAQ 6300 PRO MT	{}	1	1
18	LV1911	{"Dimension": "18.5\\"", "Tipo": "LCD"}	2	1
19	S0005O	{"Conector": "PS2"}	4	1
20	LS1000X	{}	5	3
21	MOFX40	{"Conector": "PS2"}	4	1
22	LASERJET PRO 400	{"Cart. Negro": "80A", "Tipo": "MONOCROMATICA", "Suministro": "TONNER"}	6	1
23	COLOR LASERJET CP2025DN	{"Cart. Magenta": "CC533A", "Tipo": "COLOR", "Cart. Cyan": "CC531A", "Cart. Negro": "CC530A", "Cart. Amarillo": "CC532A", "Suministro": "TONNER"}	6	1
24	COLOR LASERJET 2605DN	{"Cart. Magenta": "Q6003A", "Tipo": "COLOR", "Cart. Cyan": "Q6001A", "Cart. Negro": "Q6000A", "Cart. Amarillo": "Q6002A", "Suministro": "TONNER"}	6	1
26	LASERJET P2015	{"Cart. Negro": "53A", "Tipo": "MONOCROMATICA", "Suministro": "TONNER"}	6	1
25	LASERJET P2055DN	{"Cart. Negro": "CE505X", "Tipo": "MONOCROMATICA", "Suministro": "TONNER"}	6	1
27	COMPAQ D220 MT	{}	1	1
28	B1930N	{"Dimension": "18\\"                                                                                                         ", "Tipo": "LCD"}	2	11
29	SK-1688	{"Conector": "PS2"}	3	1
30	5WSUSA	{}	5	3
31	PRODESK 400 G1 MT	{}	1	1
\.


--
-- Name: equipment_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('equipment_model_id_seq', 31, true);


--
-- Data for Name: equipment_trademark; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY equipment_trademark (id, name) FROM stdin;
1	HP
2	ARI
3	TRIPP LITE
4	SPEEDMIND
5	CLON
6	LG
7	GENIUS
8	CDP
9	EPSON
10	CANNON
11	SAMSUNG
12	LEXMARK
\.


--
-- Name: equipment_trademark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('equipment_trademark_id_seq', 12, true);


--
-- Data for Name: equipment_type; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY equipment_type (id, name, is_part, specifications) FROM stdin;
2	MONITOR	f	[{"specification": ["Tipo"], "options": ["LED", "LCD", "PLASTA"], "for": "model"}, {"specification": ["Dimension"], "options": [], "for": "model"}]
3	TECLADO	f	[{"specification": ["Conector"], "options": ["USB", "PS2"], "for": "model"}]
4	MOUSE	f	[{"specification": ["Conector"], "options": ["USB", "PS2"], "for": "model"}]
5	REGULADOR	f	[]
1	CPU	f	[{"specification": ["Procesador", "Ram", "Disco"], "options": [], "for": "device"}, {"specification": ["Unidad Optica"], "options": ["DVD Writer", "DVD Rom", "CD Writer", "CD Rom"], "for": "device"}, {"specification": ["Unidad Lectora"], "options": ["CARD READER", "FLOPPY", "NINGUNO"], "for": "device"}, {"specification": ["Ip", "Usuario"], "options": [], "for": "allocation"}, {"specification": ["Sistema Operativo"], "options": ["WINDOWS 7 PROFESIONAL", "WINDOWS XP PROFESIONAL", "UBUNTU", "UBUNTU SERVER", "CENTOS"], "for": "allocation"}, {"specification": ["Bits"], "options": ["32 BITS", "64 BITS"], "for": "allocation"}, {"specification": ["Acceso Remoto"], "options": ["SI", "NO"], "for": "allocation"}]
6	IMPRESORA	f	[{"specification": ["Suministro"], "options": ["TONNER", "TINTA", "CINTA"], "for": "model"}, {"specification": ["Tipo"], "options": [{"name": "MONOCROMATICA", "suboptions": ["Cart. Negro"]}, {"name": "COLOR", "suboptions": ["Cart. Cyan", "Cart. Magenta", "Cart. Negro", "Cart. Amarillo"]}], "for": "model"}, {"specification": ["Ip"], "options": [], "for": "allocation"}]
\.


--
-- Name: equipment_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('equipment_type_id_seq', 6, true);


--
-- Data for Name: providers_provider; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY providers_provider (id, ruc, name, representative, address, city, cellphone, telephone) FROM stdin;
1	1710124882001	COPI.COM	MONICA ELIZABETH PEREZ PAREDES	ACUÑA OE1-41 Y AV. 10 DE AGOSTO	QUITO		022236710
2	1791772229001	TECNOPLUS	SANDRA ARACELY ROCA MERA	JIPIJAPA, ISLA SAN CRISTOBAL N44-534 E ISLA SEYMOUR	QUITO		022272459
\.


--
-- Name: providers_provider_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('providers_provider_id_seq', 2, true);


--
-- Data for Name: technical_assistance_maintenance; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY technical_assistance_maintenance (id, date, problem, activity, device_id) FROM stdin;
\.


--
-- Name: technical_assistance_maintenance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('technical_assistance_maintenance_id_seq', 1, false);


--
-- Data for Name: technical_assistance_parts; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY technical_assistance_parts (id, is_active, part_id, maintenance_id) FROM stdin;
\.


--
-- Name: technical_assistance_parts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('technical_assistance_parts_id_seq', 1, false);


--
-- Name: allocation_allocation_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY allocation_allocation
    ADD CONSTRAINT allocation_allocation_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: equipment_device_code_key; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY equipment_device
    ADD CONSTRAINT equipment_device_code_key UNIQUE (code);


--
-- Name: equipment_device_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY equipment_device
    ADD CONSTRAINT equipment_device_pkey PRIMARY KEY (id);


--
-- Name: equipment_device_serial_key; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY equipment_device
    ADD CONSTRAINT equipment_device_serial_key UNIQUE (serial);


--
-- Name: equipment_model_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY equipment_model
    ADD CONSTRAINT equipment_model_pkey PRIMARY KEY (id);


--
-- Name: equipment_trademark_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY equipment_trademark
    ADD CONSTRAINT equipment_trademark_pkey PRIMARY KEY (id);


--
-- Name: equipment_type_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY equipment_type
    ADD CONSTRAINT equipment_type_pkey PRIMARY KEY (id);


--
-- Name: providers_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY providers_provider
    ADD CONSTRAINT providers_provider_pkey PRIMARY KEY (id);


--
-- Name: technical_assistance_maintenance_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY technical_assistance_maintenance
    ADD CONSTRAINT technical_assistance_maintenance_pkey PRIMARY KEY (id);


--
-- Name: technical_assistance_parts_pkey; Type: CONSTRAINT; Schema: public; Owner: coninf; Tablespace: 
--

ALTER TABLE ONLY technical_assistance_parts
    ADD CONSTRAINT technical_assistance_parts_pkey PRIMARY KEY (id);


--
-- Name: allocation_allocation_9379346c; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX allocation_allocation_9379346c ON allocation_allocation USING btree (device_id);


--
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_51b3b110094b8aae_like; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: equipment_device_32ca2ddc; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX equipment_device_32ca2ddc ON equipment_device USING btree (provider_id);


--
-- Name: equipment_device_477cbf8a; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX equipment_device_477cbf8a ON equipment_device USING btree (model_id);


--
-- Name: equipment_device_code_1701a15ba01fdf93_like; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX equipment_device_code_1701a15ba01fdf93_like ON equipment_device USING btree (code varchar_pattern_ops);


--
-- Name: equipment_device_serial_7bbd21cf3a1d06f8_like; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX equipment_device_serial_7bbd21cf3a1d06f8_like ON equipment_device USING btree (serial varchar_pattern_ops);


--
-- Name: equipment_model_02a81214; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX equipment_model_02a81214 ON equipment_model USING btree (trademark_id);


--
-- Name: equipment_model_94757cae; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX equipment_model_94757cae ON equipment_model USING btree (type_id);


--
-- Name: technical_assistance_maintenance_9379346c; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX technical_assistance_maintenance_9379346c ON technical_assistance_maintenance USING btree (device_id);


--
-- Name: technical_assistance_parts_68aae59d; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX technical_assistance_parts_68aae59d ON technical_assistance_parts USING btree (maintenance_id);


--
-- Name: technical_assistance_parts_b4e61b8d; Type: INDEX; Schema: public; Owner: coninf; Tablespace: 
--

CREATE INDEX technical_assistance_parts_b4e61b8d ON technical_assistance_parts USING btree (part_id);


--
-- Name: D02a76ba9803a9b451d0185ae7042440; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY technical_assistance_parts
    ADD CONSTRAINT "D02a76ba9803a9b451d0185ae7042440" FOREIGN KEY (maintenance_id) REFERENCES technical_assistance_maintenance(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: allocation_al_device_id_4fe69b741c3fd228_fk_equipment_device_id; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY allocation_allocation
    ADD CONSTRAINT allocation_al_device_id_4fe69b741c3fd228_fk_equipment_device_id FOREIGN KEY (device_id) REFERENCES equipment_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: equipme_trademark_id_1ac4c22d08691093_fk_equipment_trademark_id; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY equipment_model
    ADD CONSTRAINT equipme_trademark_id_1ac4c22d08691093_fk_equipment_trademark_id FOREIGN KEY (trademark_id) REFERENCES equipment_trademark(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: equipment_device_model_id_f363451fd7860d_fk_equipment_model_id; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY equipment_device
    ADD CONSTRAINT equipment_device_model_id_f363451fd7860d_fk_equipment_model_id FOREIGN KEY (model_id) REFERENCES equipment_model(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: equipment_model_type_id_6fd9b110e822d2f9_fk_equipment_type_id; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY equipment_model
    ADD CONSTRAINT equipment_model_type_id_6fd9b110e822d2f9_fk_equipment_type_id FOREIGN KEY (type_id) REFERENCES equipment_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: equipment_provider_id_131457271f77d150_fk_providers_provider_id; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY equipment_device
    ADD CONSTRAINT equipment_provider_id_131457271f77d150_fk_providers_provider_id FOREIGN KEY (provider_id) REFERENCES providers_provider(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: technical_ass_device_id_4a0b718b5dc70b7e_fk_equipment_device_id; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY technical_assistance_maintenance
    ADD CONSTRAINT technical_ass_device_id_4a0b718b5dc70b7e_fk_equipment_device_id FOREIGN KEY (device_id) REFERENCES equipment_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: technical_assis_part_id_384dc63de4260294_fk_equipment_device_id; Type: FK CONSTRAINT; Schema: public; Owner: coninf
--

ALTER TABLE ONLY technical_assistance_parts
    ADD CONSTRAINT technical_assis_part_id_384dc63de4260294_fk_equipment_device_id FOREIGN KEY (part_id) REFERENCES equipment_device(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

