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
-- Name: fifth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth (
    fifth_id integer NOT NULL,
    name character varying NOT NULL,
    planet text NOT NULL,
    moon_id integer
);


ALTER TABLE public.fifth OWNER TO freecodecamp;

--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_fifth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_fifth_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_fifth_id_seq OWNED BY public.fifth.fifth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    distance_from_earth numeric NOT NULL,
    magnitude integer,
    diameter integer,
    visible_from_earth boolean,
    has_life boolean
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
    name character varying NOT NULL,
    description text,
    magnitude integer,
    diameter integer,
    visible_from_earth boolean,
    has_life boolean,
    planet_id integer,
    distance_from_planet numeric
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
    name character varying NOT NULL,
    description text,
    distance_from_earth numeric NOT NULL,
    magnitude integer,
    diameter integer,
    visible_from_earth boolean,
    has_life boolean,
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
    name character varying NOT NULL,
    description text,
    distance_from_earth numeric NOT NULL,
    magnitude integer,
    diameter integer,
    visible_from_earth boolean,
    has_life boolean,
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
-- Name: fifth fifth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth ALTER COLUMN fifth_id SET DEFAULT nextval('public.fifth_fifth_id_seq'::regclass);


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
-- Data for Name: fifth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth VALUES (1, 'A', 'Earth', NULL);
INSERT INTO public.fifth VALUES (2, 'B', 'Jupiter', NULL);
INSERT INTO public.fifth VALUES (3, 'C', 'Saturn', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our Galaxy', 0, 1, 105700, true, true);
INSERT INTO public.galaxy VALUES (2, 'Malin 1', 'Discovered by David Malin', 209000, -2, 201909, true, false);
INSERT INTO public.galaxy VALUES (3, 'Fireworks Galaxy', 'cause fireworks are awesome', 859000, 1, 29292929, false, false);
INSERT INTO public.galaxy VALUES (5, 'Malin 2', 'Discovered by David Malin', 1459000, 3, 636309, true, false);
INSERT INTO public.galaxy VALUES (4, 'Mice Galaxies', 'Looks like a mouse', 9090000, 22, 144442929, false, false);
INSERT INTO public.galaxy VALUES (6, 'Malin 3', 'Discovered by David Malin', 334000, -3, 2366309, true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Europa', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (2, 'Aitne', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (3, 'Ananke', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (4, 'Callisto', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (5, 'Autonoe', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (6, 'Aoede', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (7, 'Adrastea', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (8, 'Callirrhoe', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (9, 'Carme', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (10, 'Carpo', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (11, 'Dia', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (12, 'Moon', NULL, NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES (13, 'Titan', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (14, 'Enceladus', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (15, 'Mimas', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (16, 'Dione', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (17, 'Lapetus', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (18, 'Tethys', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (19, 'Hyperion', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (20, 'Telesto', NULL, NULL, NULL, NULL, NULL, 4, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Avg Temp 354F', 127000000, -1, 1516, true, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Brightest in the sky', 124000000, -5, 3760, true, false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Biggest in our solar system', 540000000, -3, 43441, true, false, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Has rings', 999000000, 1, 36184, true, false, 1);
INSERT INTO public.planet VALUES (5, 'Mars', NULL, 142000000, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', NULL, 1790000000, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', NULL, 2880000000, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Pluto', NULL, 3670000000, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Earth', NULL, 0, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'C2', NULL, 13342000000, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'T7', NULL, 210000000, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (12, 'N77', NULL, 88880000000, NULL, NULL, NULL, NULL, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Our sun', 92, -26, 432690, true, false, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Second Brightest of our stars', 8.6, -1, 860000, true, false, 1);
INSERT INTO public.star VALUES (3, '1980K', 'Supernova', 25000000, 11, 437373, false, false, 2);
INSERT INTO public.star VALUES (4, '1948B', 'Supernova', 25000000, 15, 858472, false, false, 1);
INSERT INTO public.star VALUES (5, '4676B', 'Supernova', 293874483, 22, 848423, false, false, 3);
INSERT INTO public.star VALUES (6, '3835C', 'Casey', 28447737372, 21, 847988, false, false, 4);
INSERT INTO public.star VALUES (7, 'C99', 'HOT', 47487472, 47, 432690, true, false, 5);
INSERT INTO public.star VALUES (8, 'D44', 'HOTTER', 77677467, 46, 860000, false, false, 6);


--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_fifth_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: fifth fifth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_name_key UNIQUE (name);


--
-- Name: fifth fifth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_pkey PRIMARY KEY (fifth_id);


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
-- Name: fifth fk_fifth_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fk_fifth_moon FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

