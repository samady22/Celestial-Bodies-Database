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
    name character varying(100) NOT NULL,
    size integer NOT NULL,
    age integer,
    is_active boolean NOT NULL
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
    size integer,
    atmosphere text,
    is_habitable boolean NOT NULL,
    planet_id integer
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
    type character varying(50),
    distance_from_star numeric,
    has_life boolean NOT NULL,
    star_id integer
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
    type character varying(50),
    temperature integer,
    is_visible boolean NOT NULL,
    galaxy_id integer
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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 13000, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 120000, 11000, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 50000, 9000, true);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 80000, 14000, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 70000, 12000, true);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 60000, 10000, true);
INSERT INTO public.galaxy VALUES (7, 'Pinwheel', 55000, 9500, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (22, 'Luna', 3475, 'None', false, 13);
INSERT INTO public.moon VALUES (23, 'Phobos', 22, 'Thin', false, 14);
INSERT INTO public.moon VALUES (24, 'Deimos', 12, 'Thin', false, 14);
INSERT INTO public.moon VALUES (25, 'Ganymede', 5262, 'Thin', false, 16);
INSERT INTO public.moon VALUES (26, 'Callisto', 4800, 'Thin', false, 16);
INSERT INTO public.moon VALUES (27, 'Europa', 3138, 'Thin', false, 16);
INSERT INTO public.moon VALUES (28, 'Titan', 5150, 'Thick', false, 17);
INSERT INTO public.moon VALUES (29, 'Enceladus', 252, 'Thin', false, 17);
INSERT INTO public.moon VALUES (30, 'Io', 3642, 'Thin', false, 17);
INSERT INTO public.moon VALUES (31, 'Triton', 2706, 'Thin', false, 18);
INSERT INTO public.moon VALUES (32, 'Charon', 606, 'Thin', false, 21);
INSERT INTO public.moon VALUES (33, 'Miranda', 472, 'Thin', false, 21);
INSERT INTO public.moon VALUES (34, 'Phoebe', 213, 'Thin', false, 22);
INSERT INTO public.moon VALUES (35, 'Iapetus', 1468, 'Thin', false, 22);
INSERT INTO public.moon VALUES (36, 'Rhea', 1528, 'Thin', false, 22);
INSERT INTO public.moon VALUES (37, 'Dione', 1120, 'Thin', false, 22);
INSERT INTO public.moon VALUES (38, 'Tethys', 1060, 'Thin', false, 22);
INSERT INTO public.moon VALUES (39, 'Oberon', 1523, 'Thin', false, 20);
INSERT INTO public.moon VALUES (40, 'Titania', 1578, 'Thin', false, 20);
INSERT INTO public.moon VALUES (41, 'Umbriel', 1170, 'Thin', false, 20);
INSERT INTO public.moon VALUES (42, 'Ariel', 1158, 'Thin', false, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Earth', 'Terrestrial', 149.6, true, 1);
INSERT INTO public.planet VALUES (14, 'Mars', 'Terrestrial', 227.9, false, 1);
INSERT INTO public.planet VALUES (15, 'Venus', 'Terrestrial', 108.2, false, 1);
INSERT INTO public.planet VALUES (16, 'Jupiter', 'Gas giant', 778.3, false, 2);
INSERT INTO public.planet VALUES (17, 'Saturn', 'Gas giant', 1427, false, 2);
INSERT INTO public.planet VALUES (18, 'Neptune', 'Ice giant', 4495, false, 3);
INSERT INTO public.planet VALUES (19, 'Mercury', 'Terrestrial', 57.9, false, 1);
INSERT INTO public.planet VALUES (20, 'Uranus', 'Ice giant', 2871, false, 3);
INSERT INTO public.planet VALUES (21, 'Pluto', 'Dwarf planet', 5900, false, 4);
INSERT INTO public.planet VALUES (22, 'Kepler-186f', 'Exoplanet', 500, true, 5);
INSERT INTO public.planet VALUES (23, 'Proxima Centauri b', 'Exoplanet', 4.24, false, 6);
INSERT INTO public.planet VALUES (24, 'HD 209458 b', 'Exoplanet', 159, false, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type', 5778, true, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'Red supergiant', 3500, true, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 'A-type', 9940, true, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 'G-type', 5790, true, 2);
INSERT INTO public.star VALUES (5, 'Alpha Centauri B', 'K-type', 5260, true, 2);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 'M-type', 3040, true, 2);
INSERT INTO public.star VALUES (7, 'VY Canis Majoris', 'Red hypergiant', 3500, true, 3);
INSERT INTO public.star VALUES (8, 'Rigel', 'B-type', 12100, true, 3);
INSERT INTO public.star VALUES (9, 'Antares', 'Red supergiant', 3500, true, 4);
INSERT INTO public.star VALUES (10, 'Pollux', 'K-type', 4780, true, 5);
INSERT INTO public.star VALUES (11, 'Arcturus', 'K-type', 4286, true, 6);
INSERT INTO public.star VALUES (12, 'Aldebaran', 'K-type', 3910, true, 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 42, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 25, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


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

