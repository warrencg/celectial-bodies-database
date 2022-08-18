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
    galaxy_black_hole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    moon_size integer,
    planet_id integer,
    moon_type boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_type boolean NOT NULL,
    star_id integer,
    age_of_planet integer
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
    galaxy_id integer,
    size_of_star integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'phoenix_A', true);
INSERT INTO public.black_hole VALUES (2, 'TON_618', true);
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
INSERT INTO public.moon VALUES (4, 'deimos', 6, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'ganymede', 2634, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'callisto', 2410, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'lo', 1821, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'europa', 1560, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'amalthea', 83, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'himalia', 85, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'thebe', 49, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'elara', 43, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'pasiphea', 18, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'metis', 21, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'carme', 23, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'sinope', 35, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'lysithea', 36, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'anauke', 14, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'leda', 10, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'adrastea', 8, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'callirrhoe', 9, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'phobos', 11, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', true, NULL, 5);
INSERT INTO public.planet VALUES (2, 'earth', true, NULL, 5);
INSERT INTO public.planet VALUES (3, 'jupiter', true, NULL, 5);
INSERT INTO public.planet VALUES (4, 'uranus', true, NULL, 5);
INSERT INTO public.planet VALUES (5, 'venus', true, NULL, 5);
INSERT INTO public.planet VALUES (6, 'mars', true, NULL, 5);
INSERT INTO public.planet VALUES (7, 'saturn', true, NULL, 5);
INSERT INTO public.planet VALUES (8, 'neptune', true, NULL, 5);
INSERT INTO public.planet VALUES (9, 'kepler-186f', true, NULL, 4);
INSERT INTO public.planet VALUES (10, 'kepler-16b', true, NULL, 4);
INSERT INTO public.planet VALUES (11, 'kepler-22b', true, NULL, 4);
INSERT INTO public.planet VALUES (12, 'osiris', true, NULL, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'acamar', 'binary', NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'achernar', 'B-type', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'acubens', 'binary', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'acrab', 'blue_main_sequence', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'acrux', 'blue_main_sequence', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'adhara', 'B2ll', NULL, NULL, NULL);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star unique_n; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_n UNIQUE (name);


--
-- Name: planet unique_na; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_na UNIQUE (name);


--
-- Name: moon unique_nam; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_nam UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: black_hole unique_names; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT unique_names UNIQUE (name);


--
-- Name: star galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
