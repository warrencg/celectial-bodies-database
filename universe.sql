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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(40) NOT NULL,
    is_there_black_hole boolean
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_of_galaxy numeric(8,2),
    galaxy_type character varying(40),
    galaxy_size boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    moon_size integer,
    moon_type boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_types boolean NOT NULL,
    age_of_planet integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    star_types text,
    number_of_stars integer,
    size_of_star integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'phoenix_A', true);
INSERT INTO public.black_hole VALUES (2, 'ton_618', true);
INSERT INTO public.black_hole VALUES (3, 'holmberg_15A', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 10.01, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'sombrero', 13.25, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'needle', 13.24, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'black_eye', 13.28, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'pinwheel', 21.00, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'cigar', 13.30, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', 3425, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'callirrhoe', 9, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'phobos', 11, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'deimos', 6, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'ganymede', 2634, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'callisto', 2410, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'lo', 1821, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'amalthea', 83, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'himalia', 85, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'europa', 83, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'thebe', 49, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'elera', 43, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'pasiphea', 18, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'metis', 21, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'carme', 23, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'sinope', 35, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'lysithea', 36, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'anauke', 14, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'leda', 10, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'adrastea', 8, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', true, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'earth', true, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'jupiter', true, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'uranus', true, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'venus', true, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'mars', true, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'saturn', true, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'neptune', true, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'kepler-186f', true, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'kepler-16b', true, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'kepler-22b', true, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'orisis', true, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'acamar', 'binary', NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'achenar', 'b-type', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'acubens', 'binary', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'acrab', 'blue_main_sequence', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'acrux', 'blue_main_sequence', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'adhara', 'b2ll', NULL, NULL, NULL);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: star galaxy_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
