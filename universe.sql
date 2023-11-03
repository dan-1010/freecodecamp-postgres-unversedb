--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    galaxy_stars integer NOT NULL,
    galaxy_planets integer,
    galaxy_moons integer,
    description text,
    unique_num integer
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
    name character varying(20),
    has_life boolean,
    moon_volume numeric(10,5),
    description text,
    planet_id integer NOT NULL,
    unique_id integer
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
    name character varying(20),
    has_life boolean,
    planet_volume numeric(10,5),
    description text,
    star_id integer NOT NULL,
    unique_id integer
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
-- Name: random; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.random (
    random_id integer NOT NULL,
    name character varying(10) NOT NULL,
    age integer NOT NULL,
    height integer NOT NULL,
    phone integer
);


ALTER TABLE public.random OWNER TO freecodecamp;

--
-- Name: random_random_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.random_random_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.random_random_id_seq OWNER TO freecodecamp;

--
-- Name: random_random_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.random_random_id_seq OWNED BY public.random.random_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    star_temp numeric(5,5),
    star_volume numeric(10,5),
    description text,
    galaxy_id integer NOT NULL,
    unique_id integer
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
-- Name: random random_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random ALTER COLUMN random_id SET DEFAULT nextval('public.random_random_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1, 2, 4, 'Barred sprial galaxy', NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 100, 800, 1200, 'Spiral galaxy', NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 200, 300, 700, 'Sprial Galaxy', NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 233, 455, 555, 'Round', NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 564, 344, 555, 'Red', NULL);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 455, 300, 456, 'Black', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', true, 45.00000, 'my moon', 3, NULL);
INSERT INTO public.moon VALUES (2, 'orange', true, 56.00000, 'my moon', 3, NULL);
INSERT INTO public.moon VALUES (3, 'our moon', false, 55.00000, 'new moon', 4, NULL);
INSERT INTO public.moon VALUES (4, 'cream', true, 34.00000, 'my moon', 3, NULL);
INSERT INTO public.moon VALUES (5, 'full moon', false, 22.00000, 'new moon', 1, NULL);
INSERT INTO public.moon VALUES (6, 'crown', true, 55.00000, 'my moon', 5, NULL);
INSERT INTO public.moon VALUES (7, 'crescnet', false, 11.00000, 'blackoon', 7, NULL);
INSERT INTO public.moon VALUES (8, 'round', true, 67.00000, 'cloudy', 2, NULL);
INSERT INTO public.moon VALUES (9, 'crown', true, 55.00000, 'my moon', 5, NULL);
INSERT INTO public.moon VALUES (10, 'crescnet', false, 11.00000, 'blackoon', 7, NULL);
INSERT INTO public.moon VALUES (11, 'round', true, 67.00000, 'cloudy', 2, NULL);
INSERT INTO public.moon VALUES (12, 'crown', true, 55.00000, 'my moon', 5, NULL);
INSERT INTO public.moon VALUES (13, 'crescnet', false, 11.00000, 'blackoon', 7, NULL);
INSERT INTO public.moon VALUES (14, 'round', true, 67.00000, 'cloudy', 2, NULL);
INSERT INTO public.moon VALUES (15, 'crown', true, 55.00000, 'my moon', 5, NULL);
INSERT INTO public.moon VALUES (16, 'crescnet', false, 11.00000, 'blackoon', 7, NULL);
INSERT INTO public.moon VALUES (17, 'round', true, 67.00000, 'cloudy', 2, NULL);
INSERT INTO public.moon VALUES (18, 'crown', true, 55.00000, 'my moon', 5, NULL);
INSERT INTO public.moon VALUES (19, 'crescnet', false, 11.00000, 'blackoon', 7, NULL);
INSERT INTO public.moon VALUES (20, 'round', true, 67.00000, 'cloudy', 2, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, 34.00000, 'first', 7, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', true, 56.00000, 'second', 7, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', false, 34.00000, 'third', 7, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', true, 88.00000, 'fourth', 7, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', true, 65.00000, 'fifth', 7, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 87.00000, 'sixth', 7, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', true, 23.00000, 'seventh', 7, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', true, 81.00000, 'eighth', 7, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 87.00000, 'sixth', 7, NULL);
INSERT INTO public.planet VALUES (10, 'Roy', true, 23.00000, 'seventh', 7, NULL);
INSERT INTO public.planet VALUES (11, 'Rider', true, 81.00000, 'eighth', 7, NULL);
INSERT INTO public.planet VALUES (12, 'Jason', false, 88.00000, 'twelth', 7, NULL);


--
-- Data for Name: random; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.random VALUES (1, 'Raj', 10, 23, NULL);
INSERT INTO public.random VALUES (2, 'Rohan', 33, 198, NULL);
INSERT INTO public.random VALUES (3, 'Ricky', 87, 22, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha', 0.42340, 34.00000, 'brightest', 1, NULL);
INSERT INTO public.star VALUES (2, 'Pi', 0.34600, 23.00000, 'cool', 1, NULL);
INSERT INTO public.star VALUES (3, 'Delta', 0.34700, 87.00000, 'Round', 1, NULL);
INSERT INTO public.star VALUES (4, 'Serius', 0.89340, 34.00000, 'brightest', 2, NULL);
INSERT INTO public.star VALUES (5, 'Vega', 0.87600, 23.00000, 'cool', 2, NULL);
INSERT INTO public.star VALUES (6, 'Relegeus', 0.87600, 87.00000, 'Round', 2, NULL);
INSERT INTO public.star VALUES (7, 'Sun', 0.86780, 46.00000, 'Our sun', 2, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: random_random_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.random_random_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_num_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_num_key UNIQUE (unique_num);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_id_key UNIQUE (unique_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_id_key UNIQUE (unique_id);


--
-- Name: random random_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random
    ADD CONSTRAINT random_phone_key UNIQUE (phone);


--
-- Name: random random_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random
    ADD CONSTRAINT random_pkey PRIMARY KEY (random_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_id_key UNIQUE (unique_id);


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

