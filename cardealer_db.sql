--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO postgres;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO postgres;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO postgres;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO postgres;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: cars_car; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cars_car (
    id integer NOT NULL,
    car_title character varying(255) NOT NULL,
    color character varying(100) NOT NULL,
    model character varying(100) NOT NULL,
    year integer NOT NULL,
    price integer NOT NULL,
    description text NOT NULL,
    car_photo character varying(100) NOT NULL,
    car_photo_1 character varying(100) NOT NULL,
    car_photo_2 character varying(100) NOT NULL,
    car_photo_3 character varying(100) NOT NULL,
    car_photo_4 character varying(100) NOT NULL,
    features character varying(195) NOT NULL,
    body_style character varying(100) NOT NULL,
    engine character varying(100) NOT NULL,
    transmission character varying(100) NOT NULL,
    interior character varying(100) NOT NULL,
    doors character varying(10) NOT NULL,
    passengers integer NOT NULL,
    vin_no character varying(100) NOT NULL,
    fuel_type character varying(50) NOT NULL,
    is_featured boolean NOT NULL,
    created_date timestamp with time zone NOT NULL
);


ALTER TABLE public.cars_car OWNER TO postgres;

--
-- Name: cars_car_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cars_car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cars_car_id_seq OWNER TO postgres;

--
-- Name: cars_car_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cars_car_id_seq OWNED BY public.cars_car.id;


--
-- Name: contacts_contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacts_contact (
    id integer NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    car_id integer NOT NULL,
    customer_need character varying(100) NOT NULL,
    car_title character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(100) NOT NULL,
    message text NOT NULL,
    user_id integer NOT NULL,
    create_date timestamp with time zone NOT NULL
);


ALTER TABLE public.contacts_contact OWNER TO postgres;

--
-- Name: contacts_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contacts_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_contact_id_seq OWNER TO postgres;

--
-- Name: contacts_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contacts_contact_id_seq OWNED BY public.contacts_contact.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: pages_team; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages_team (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    designation character varying(255) NOT NULL,
    photo character varying(100) NOT NULL,
    facebook_link character varying(100) NOT NULL,
    twitter_link character varying(100) NOT NULL,
    google_plus_link character varying(100) NOT NULL,
    created_date timestamp with time zone NOT NULL
);


ALTER TABLE public.pages_team OWNER TO postgres;

--
-- Name: pages_teams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pages_teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_teams_id_seq OWNER TO postgres;

--
-- Name: pages_teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pages_teams_id_seq OWNED BY public.pages_team.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: cars_car id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars_car ALTER COLUMN id SET DEFAULT nextval('public.cars_car_id_seq'::regclass);


--
-- Name: contacts_contact id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_contact ALTER COLUMN id SET DEFAULT nextval('public.contacts_contact_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: pages_team id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_team ALTER COLUMN id SET DEFAULT nextval('public.pages_teams_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add car	1	add_car
2	Can change car	1	change_car
3	Can delete car	1	delete_car
4	Can view car	1	view_car
5	Can add team	2	add_team
6	Can change team	2	change_team
7	Can delete team	2	delete_team
8	Can view team	2	view_team
9	Can add contact	3	add_contact
10	Can change contact	3	change_contact
11	Can delete contact	3	delete_contact
12	Can view contact	3	view_contact
13	Can add log entry	4	add_logentry
14	Can change log entry	4	change_logentry
15	Can delete log entry	4	delete_logentry
16	Can view log entry	4	view_logentry
17	Can add permission	5	add_permission
18	Can change permission	5	change_permission
19	Can delete permission	5	delete_permission
20	Can view permission	5	view_permission
21	Can add group	6	add_group
22	Can change group	6	change_group
23	Can delete group	6	delete_group
24	Can view group	6	view_group
25	Can add user	7	add_user
26	Can change user	7	change_user
27	Can delete user	7	delete_user
28	Can view user	7	view_user
29	Can add content type	8	add_contenttype
30	Can change content type	8	change_contenttype
31	Can delete content type	8	delete_contenttype
32	Can view content type	8	view_contenttype
33	Can add session	9	add_session
34	Can change session	9	change_session
35	Can delete session	9	delete_session
36	Can view session	9	view_session
37	Can add site	10	add_site
38	Can change site	10	change_site
39	Can delete site	10	delete_site
40	Can view site	10	view_site
41	Can add email address	11	add_emailaddress
42	Can change email address	11	change_emailaddress
43	Can delete email address	11	delete_emailaddress
44	Can view email address	11	view_emailaddress
45	Can add email confirmation	12	add_emailconfirmation
46	Can change email confirmation	12	change_emailconfirmation
47	Can delete email confirmation	12	delete_emailconfirmation
48	Can view email confirmation	12	view_emailconfirmation
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$180000$qDrvdufBiMLs$cDXWMz3MP4KQyJSEvFtjTsQPacXgQBulB2zyouJIHiU=	2023-06-06 12:40:00.908989+00	t	Yassine				t	t	2023-06-06 12:30:47+00
3	pbkdf2_sha256$180000$1wxX4QbiBttW$WbdH1dB1we0syvOWMKXrg4GHt4fKEhqkCu2uTOIzJqg=	2023-06-06 13:59:00.449155+00	f	Adnan	Adnan	Anjar	anjar.adan@gmail.com	f	t	2023-06-06 13:59:00.29756+00
4	pbkdf2_sha256$180000$8jlLeLLxIVTD$/XXWToJLRQLgCjLSNz6O38M2Gdx5D0xB0H1JDkd8wgI=	2023-06-07 15:03:16.375528+00	f	Akram	Akram	Nahi	nahi.akram@gmail.com	f	t	2023-06-07 15:03:16.185005+00
1	pbkdf2_sha256$180000$Ke5QoDmtq9Ub$FpfZIvDPxxKcZ3mKoOINfRavPjC5SWkwsyFnML849ag=	2023-06-07 15:04:50.426851+00	t	Zakariae			harimezakariae@gmail.com	t	t	2023-06-06 01:08:28.987157+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: cars_car; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cars_car (id, car_title, color, model, year, price, description, car_photo, car_photo_1, car_photo_2, car_photo_3, car_photo_4, features, body_style, engine, transmission, interior, doors, passengers, vin_no, fuel_type, is_featured, created_date) FROM stdin;
36	2023 Lamborghini Aventador SVJ	Orange	Aventador SVJ	2023	500000	<p>The Lamborghini Aventador SVJ is a limited-production supercar manufactured by the Italian automotive company Lamborghini. It is the most powerful version of the Aventador and is designed for high-performance track driving.</p>\r\n\r\n<p>The Aventador SVJ is equipped with a naturally aspirated 6.5-liter V12 engine that produces an astonishing 759 horsepower, allowing it to accelerate from 0 to 60 mph in just 2.8 seconds. It features advanced aerodynamics, including an active rear wing and aero vectoring, which enhance its performance and handling.</p>\r\n\r\n<p>Inside the Aventador SVJ, you'll find a luxurious and sporty interior with premium materials and modern technology. It offers a comfortable seating arrangement for two passengers and includes features such as a touchscreen infotainment system, premium audio system, and carbon fiber accents.</p>	photos/2023/05/30/th-41096962.jpg	photos/2023/05/30/th-2552590400.jpg	photos/2023/05/30/th-3738237238.jpg			Adaptive Suspension, Carbon Ceramic Brakes, Launch Control, GPS Navigation, Apple CarPlay, Android Auto, Lane Departure Warning, Reverse Camera	Coupe	6.5L V12	Automatic	Black	2	2	ZXY9876543210	Petrol	t	2023-06-07 15:09:42.673429+00
40	Lamborghini Revuelto	Red	Revuelto	2023	600000	<p>The Lamborghini Revuelto is a luxury sports car manufactured by Lamborghini. It features a sleek design and powerful performance, making it a true masterpiece of engineering.</p>	photos/2023/05/30/th-842608322.jpg	photos/2023/05/30/th-2288692250.jpg	photos/2023/05/30/th-3826454088.jpg			Adaptive Suspension, Carbon Ceramic Brakes, Launch Control, GPS Navigation, Apple CarPlay, Android Auto, Lane Departure Warning, Reverse Camera	Coupe	6.8L V12	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-07 17:13:01.046562+00
45	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-07 18:20:51.953258+00
48	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-07 19:01:20.851949+00
49	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-07 19:01:42.667405+00
50	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-07 19:01:43.682763+00
51	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-07 19:02:07.171116+00
52	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-07 19:02:08.219574+00
53	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-07 19:09:02.589024+00
54	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-07 22:48:19.758871+00
55	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-07 22:51:08.633498+00
56	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-07 22:51:09.549026+00
57	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-07 22:55:48.415149+00
58	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-07 22:55:49.318725+00
59	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-08 14:06:09.713183+00
60	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-08 14:06:11.843583+00
61	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-08 14:31:08.471125+00
62	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-08 14:31:09.621561+00
63	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-08 21:22:31.137581+00
64	Dodge Hennessey Venom F5	Yellow	Hennessey Venom F5	2023	1800000	<p>The Dodge Hennessey Venom F5 is a high-performance supercar built by Hennessey Performance Engineering based on the Dodge platform. It is a true speed demon with mind-blowing acceleration and top speed.</p>	photos/2023/05/30/th-3193446790.jpg	photos/2023/05/30/th-3294177422.jpg	photos/2023/05/30/th-2405398302.jpg			Carbon Ceramic Brakes,Launch Control,GPS Navigation,Apple CarPlay,Android Auto	Coupe	8.8L V8	Automatic	Black	2	2	ABC1234567890	Petrol	t	2023-06-08 21:22:32.878922+00
\.


--
-- Data for Name: contacts_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contacts_contact (id, first_name, last_name, car_id, customer_need, car_title, city, state, email, phone, message, user_id, create_date) FROM stdin;
2	Akram	Nahi	35	I'm interested in this	2023 Lamborghini Aventador SVJ			nahi.akram@gmail.com			4	2023-06-07 15:04:14.626487+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2023-06-06 12:30:47.273847+00	2	Yassine	1	[{"added": {}}]	7	1
2	2023-06-06 12:36:12.239638+00	2	Yassine	2	[{"changed": {"fields": ["Superuser status"]}}]	7	1
3	2023-06-06 12:36:31.656273+00	2	Yassine	2	[{"changed": {"fields": ["Staff status"]}}]	7	1
4	2023-06-07 15:07:25.437104+00	1	harimezakariae@gmail.com	3		3	1
5	2023-06-07 15:11:16.539065+00	35	2023 Lamborghini Aventador SVJ	3		1	1
6	2023-06-07 15:11:16.543058+00	34	2023 Lamborghini Aventador SVJ	3		1	1
7	2023-06-07 15:11:16.544054+00	33	2023 Lamborghini Aventador SVJ	3		1	1
8	2023-06-07 15:11:16.546067+00	32	2023 Lamborghini Aventador SVJ	3		1	1
9	2023-06-07 15:11:16.548046+00	31	2023 Lamborghini Aventador SVJ	3		1	1
10	2023-06-07 15:11:16.549039+00	30	2023 Lamborghini Aventador SVJ	3		1	1
11	2023-06-07 15:11:16.550037+00	29	2023 Lamborghini Aventador SVJ	3		1	1
12	2023-06-07 15:11:16.551035+00	28	2023 Lamborghini Aventador SVJ	3		1	1
13	2023-06-07 15:11:16.552032+00	27	2023 Lamborghini Aventador SVJ	3		1	1
14	2023-06-07 15:11:16.553029+00	26	2023 Lamborghini Aventador SVJ	3		1	1
15	2023-06-07 15:11:16.554026+00	25	2023 Lamborghini Aventador SVJ	3		1	1
16	2023-06-07 15:11:16.554026+00	24	2023 Lamborghini Aventador SVJ	3		1	1
17	2023-06-07 15:11:16.555054+00	23	2023 Lamborghini Aventador SVJ	3		1	1
18	2023-06-07 15:11:16.558015+00	22	2023 Lamborghini Aventador SVJ	3		1	1
19	2023-06-07 15:11:16.56001+00	21	2023 Lamborghini Aventador SVJ	3		1	1
20	2023-06-07 15:11:16.562004+00	20	2023 Lamborghini Aventador SVJ	3		1	1
21	2023-06-07 15:11:16.564+00	19	2023 Lamborghini Aventador SVJ	3		1	1
22	2023-06-07 15:11:16.564998+00	18	2023 Lamborghini Aventador SVJ	3		1	1
23	2023-06-07 15:24:42.2679+00	37	Lamborghini Revuelto	3		1	1
24	2023-06-07 17:14:33.121508+00	39	Lamborghini Revuelto	3		1	1
25	2023-06-07 17:14:33.128488+00	38	Lamborghini Revuelto	3		1	1
26	2023-06-07 18:21:33.225769+00	44	Dodge Hennessey Venom F5	3		1	1
27	2023-06-07 18:21:33.231754+00	43	Dodge Hennessey Venom F5	3		1	1
28	2023-06-07 18:21:33.232752+00	42	Dodge Hennessey Venom F5	3		1	1
29	2023-06-07 18:21:33.234746+00	41	Dodge Hennessey Venom F5	3		1	1
30	2023-06-07 18:45:53.464896+00	47	Dodge Hennessey Venom F5	3		1	1
31	2023-06-07 18:45:53.467888+00	46	Dodge Hennessey Venom F5	3		1	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	cars	car
2	pages	team
3	contacts	contact
4	admin	logentry
5	auth	permission
6	auth	group
7	auth	user
8	contenttypes	contenttype
9	sessions	session
10	sites	site
11	account	emailaddress
12	account	emailconfirmation
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-06-05 00:03:56.613149+00
2	auth	0001_initial	2023-06-05 00:03:56.671093+00
3	account	0001_initial	2023-06-05 00:03:56.787802+00
4	account	0002_email_max_length	2023-06-05 00:03:56.822664+00
5	admin	0001_initial	2023-06-05 00:03:56.845602+00
6	admin	0002_logentry_remove_auto_add	2023-06-05 00:03:56.870536+00
7	admin	0003_logentry_add_action_flag_choices	2023-06-05 00:03:56.879525+00
8	contenttypes	0002_remove_content_type_name	2023-06-05 00:03:56.901453+00
9	auth	0002_alter_permission_name_max_length	2023-06-05 00:03:56.90644+00
10	auth	0003_alter_user_email_max_length	2023-06-05 00:03:56.919437+00
11	auth	0004_alter_user_username_opts	2023-06-05 00:03:56.92938+00
12	auth	0005_alter_user_last_login_null	2023-06-05 00:03:56.939352+00
13	auth	0006_require_contenttypes_0002	2023-06-05 00:03:56.942344+00
14	auth	0007_alter_validators_add_error_messages	2023-06-05 00:03:56.953348+00
15	auth	0008_alter_user_username_max_length	2023-06-05 00:03:56.972264+00
16	auth	0009_alter_user_last_name_max_length	2023-06-05 00:03:56.984232+00
17	auth	0010_alter_group_name_max_length	2023-06-05 00:03:56.996232+00
18	auth	0011_update_proxy_permissions	2023-06-05 00:03:57.009199+00
19	cars	0001_initial	2023-06-05 00:03:57.029112+00
20	cars	0002_auto_20200706_1659	2023-06-05 00:03:57.071997+00
21	cars	0003_alter_car_year	2023-06-05 00:03:57.085962+00
22	cars	0004_auto_20230605_0103	2023-06-05 00:03:57.090978+00
23	contacts	0001_initial	2023-06-05 00:03:57.105926+00
24	pages	0001_initial	2023-06-05 00:03:57.122892+00
25	pages	0002_auto_20200625_1755	2023-06-05 00:03:57.14181+00
26	sessions	0001_initial	2023-06-05 00:03:57.156772+00
27	sites	0001_initial	2023-06-05 00:03:57.177715+00
28	sites	0002_alter_domain_unique	2023-06-05 00:03:57.19268+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
4ph5j5xuzfbfxyc6h7few44f4up7d9ae	OThkZjNlYTIyM2I1NDM0YjVkOWVkZTY2MTliNDFhMWJjYzAyNTlkYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZGM1YWVhOTA5ZWRmOTAwZmNiMjI3YTk5NGYwNDBiYmUyMWNiNTA1In0=	2023-06-21 15:04:50.430854+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: pages_team; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages_team (id, first_name, last_name, designation, photo, facebook_link, twitter_link, google_plus_link, created_date) FROM stdin;
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, false);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: cars_car_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cars_car_id_seq', 64, true);


--
-- Name: contacts_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contacts_contact_id_seq', 2, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 31, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: pages_teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pages_teams_id_seq', 1, false);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: cars_car cars_car_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cars_car
    ADD CONSTRAINT cars_car_pkey PRIMARY KEY (id);


--
-- Name: contacts_contact contacts_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_contact
    ADD CONSTRAINT contacts_contact_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: pages_team pages_teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages_team
    ADD CONSTRAINT pages_teams_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

