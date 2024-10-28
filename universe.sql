--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: comment; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comment (
    comment_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color text
);


ALTER TABLE public.comment OWNER TO freecodecamp;

--
-- Name: comment_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comment_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_comment_id_seq OWNER TO freecodecamp;

--
-- Name: comment_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comment_comment_id_seq OWNED BY public.comment.comment_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_types integer,
    distance_from_earth numeric,
    name character varying(30),
    age_in_millions_of_years integer NOT NULL,
    color text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type text,
    planet_id integer,
    diameter numeric,
    habitable boolean DEFAULT false,
    discovered_by integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type text,
    star_id integer,
    radius numeric,
    has_water boolean DEFAULT true,
    population integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type text,
    galaxy_id integer,
    mass numeric,
    age integer NOT NULL,
    habitable boolean DEFAULT true
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: comment comment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comment ALTER COLUMN comment_id SET DEFAULT nextval('public.comment_comment_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comment VALUES (1, 'Etuk', 'Red');
INSERT INTO public.comment VALUES (2, 'Udoh', 'Green');
INSERT INTO public.comment VALUES (3, 'Fidelis', 'Pink');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Whawan', true, true, 3, 9065667, 'Juel', 89, 'White');
INSERT INTO public.galaxy VALUES (2, 'Base d on', false, true, 12, 123457, 'Liquid', 76, 'Black');
INSERT INTO public.galaxy VALUES (3, 'Whayasaywan', true, true, 3, 54425, 'Virginus', 89, 'Pink');
INSERT INTO public.galaxy VALUES (4, 'Larrry xandebennny', true, false, 3, 5667, 'Fairy', 53, 'Orange');
INSERT INTO public.galaxy VALUES (5, 'Quasw gtfsd', true, true, 3, 9065667, 'React', 89, 'Brown');
INSERT INTO public.galaxy VALUES (6, 'Whawa gtdfn', true, true, 3, 9065667, 'Jupitel', 89, 'White');
INSERT INTO public.galaxy VALUES (7, 'BaseonB', false, true, 17, 3457, 'Leicester', 76, 'Blue');
INSERT INTO public.galaxy VALUES (8, 'Whaya say wan', true, true, 3, 54425, 'Vaenus', 89, 'Pink');
INSERT INTO public.galaxy VALUES (9, 'Larrry xanny', true, false, 34, 566763537, 'Faestus', 53, 'Violet');
INSERT INTO public.galaxy VALUES (10, 'Buasw rref', true, true, 43, 907, 'Reduxx', 890, 'Black');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Natural Satellite', 1, 3474.8, false, 0);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Natural Satellite', 2, 22.4, false, 1);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Natural Satellite', 2, 12.4, false, 1);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Natural Satellite', 3, 5262.4, false, 2);
INSERT INTO public.moon VALUES (5, 'Europa', 'Natural Satellite', 3, 3121.6, true, 2);
INSERT INTO public.moon VALUES (6, 'Callisto', 'Natural Satellite', 4, 4820.6, false, 2);
INSERT INTO public.moon VALUES (7, 'Io', 'Natural Satellite', 4, 3642.6, false, 2);
INSERT INTO public.moon VALUES (8, 'Titan', 'Natural Satellite', 4, 5149.5, true, 3);
INSERT INTO public.moon VALUES (9, 'Triton', 'Natural Satellite', 5, 2706.8, false, 3);
INSERT INTO public.moon VALUES (10, 'Nereid', 'Natural Satellite', 5, 340.0, false, 3);
INSERT INTO public.moon VALUES (11, 'Proteus', 'Natural Satellite', 5, 420.0, false, 3);
INSERT INTO public.moon VALUES (12, 'Enceladus', 'Natural Satellite', 6, 504.2, true, 3);
INSERT INTO public.moon VALUES (13, 'Mimas', 'Natural Satellite', 6, 396.4, false, 3);
INSERT INTO public.moon VALUES (14, 'Iapetus', 'Natural Satellite', 6, 1436.6, false, 3);
INSERT INTO public.moon VALUES (15, 'Rhea', 'Natural Satellite', 6, 1527.6, false, 3);
INSERT INTO public.moon VALUES (16, 'Oberon', 'Natural Satellite', 7, 1523.4, false, 4);
INSERT INTO public.moon VALUES (17, 'Titania', 'Natural Satellite', 8, 1578.6, false, 4);
INSERT INTO public.moon VALUES (18, 'Umbriel', 'Natural Satellite', 9, 1169.4, false, 4);
INSERT INTO public.moon VALUES (19, 'Ariel', 'Natural Satellite', 10, 1157.8, false, 4);
INSERT INTO public.moon VALUES (20, 'Miranda', 'Natural Satellite', 11, 471.6, false, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', 1, 6371.0, true, 800);
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestrial', 1, 3389.5, false, 0);
INSERT INTO public.planet VALUES (3, 'Venus', 'Terrestrial', 1, 6051.8, false, 0);
INSERT INTO public.planet VALUES (4, 'Jupiter', 'Gas Giant', 1, 69911.0, false, 0);
INSERT INTO public.planet VALUES (5, 'Saturn', 'Gas Giant', 1, 58232.0, false, 0);
INSERT INTO public.planet VALUES (6, 'Proxima Centauri b', 'Terrestrial', 2, 6350.0, true, 0);
INSERT INTO public.planet VALUES (7, 'Alpha Centauri Bb', 'Terrestrial', 3, 7000.0, false, 0);
INSERT INTO public.planet VALUES (8, 'Alpha Centauri Bc', 'Terrestrial', 4, 7500.0, false, 0);
INSERT INTO public.planet VALUES (9, 'Betelgeuse b', 'Gas Giant', 5, 115000.0, false, 0);
INSERT INTO public.planet VALUES (10, 'Rigel b', 'Gas Giant', 6, 118000.0, false, 0);
INSERT INTO public.planet VALUES (11, 'Rigel c', 'Gas Giant', 6, 118000.0, false, 0);
INSERT INTO public.planet VALUES (12, 'Rigel d', 'Gas Giant', 6, 118000.0, false, 0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-Type', 1, 1.0, 5, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'M-Type', 2, 0.123, 5, false);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'G-Type', 1, 1.1, 5, true);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 'K-Type', 1, 0.907, 5, true);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 'M-Type', 3, 20.0, 8, false);
INSERT INTO public.star VALUES (6, 'Rigel', 'B-Type', 4, 21.0, 8, false);


--
-- Name: comment_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comment_comment_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comment comment_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_name_key UNIQUE (name);


--
-- Name: comment comment_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (comment_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

