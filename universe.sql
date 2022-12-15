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
-- Name: civ; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civ (
    name character varying(30) NOT NULL,
    kardashev integer NOT NULL,
    warpspeed boolean,
    civ_id integer NOT NULL
);


ALTER TABLE public.civ OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    systems integer,
    lightyearslen integer,
    humantraveled boolean,
    size integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    craters integer,
    tasty boolean,
    batchno numeric,
    traveled boolean,
    moon_id integer NOT NULL,
    size integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    hazardtohumanlife boolean,
    alienciv text,
    water boolean,
    distancefromearth integer,
    planet_id integer NOT NULL,
    size integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    age numeric,
    postredgiant boolean,
    solaraflareact boolean,
    size integer,
    star_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: civ; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civ VALUES ('Terran', 1, true, 1);
INSERT INTO public.civ VALUES ('Zerg', 0, false, 2);
INSERT INTO public.civ VALUES ('Protoss', 2, true, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('MilkyWay', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('CanisPrinicpal', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES ('Sagittarius', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES ('Andromeda', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES ('Draco', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES ('Magellanic', NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Snickerdoodle', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('OatmealRaisin', NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.moon VALUES ('ChocolateChip', NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES ('GingerSnap', NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES ('Shortbread', NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('PeanutButter', NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('WhoopiePie', NULL, NULL, NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('Sugar', NULL, NULL, NULL, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('Molasses', NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO public.moon VALUES ('Kiss', NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.moon VALUES ('Biscotti', NULL, NULL, NULL, NULL, 11, NULL);
INSERT INTO public.moon VALUES ('Butter', NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO public.moon VALUES ('Spritz', NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.moon VALUES ('Snowball', NULL, NULL, NULL, NULL, 14, NULL);
INSERT INTO public.moon VALUES ('Drop', NULL, NULL, NULL, NULL, 15, NULL);
INSERT INTO public.moon VALUES ('Thumbprint', NULL, NULL, NULL, NULL, 16, NULL);
INSERT INTO public.moon VALUES ('Pinwheel', NULL, NULL, NULL, NULL, 17, NULL);
INSERT INTO public.moon VALUES ('Wafer', NULL, NULL, NULL, NULL, 18, NULL);
INSERT INTO public.moon VALUES ('Macaroon', NULL, NULL, NULL, NULL, 19, NULL);
INSERT INTO public.moon VALUES ('Fortune', NULL, NULL, NULL, NULL, 20, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES ('Venus', NULL, NULL, NULL, NULL, 2, NULL);
INSERT INTO public.planet VALUES ('Earth', NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.planet VALUES ('Mars', NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES ('Jupiter', NULL, NULL, NULL, NULL, 5, NULL);
INSERT INTO public.planet VALUES ('Saturn', NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.planet VALUES ('Uranus', NULL, NULL, NULL, NULL, 7, NULL);
INSERT INTO public.planet VALUES ('Neptune', NULL, NULL, NULL, NULL, 8, NULL);
INSERT INTO public.planet VALUES ('Pluto', NULL, NULL, NULL, NULL, 9, NULL);
INSERT INTO public.planet VALUES ('X', NULL, NULL, NULL, NULL, 10, NULL);
INSERT INTO public.planet VALUES ('Endor', NULL, NULL, NULL, NULL, 11, NULL);
INSERT INTO public.planet VALUES ('Azgarth', NULL, NULL, NULL, NULL, 12, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sol', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES ('Beltelguse', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES ('CetaAlpha', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES ('Sirus', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES ('Rigel', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES ('Pollux', NULL, NULL, NULL, NULL, 6);


--
-- Name: civ civ_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civ
    ADD CONSTRAINT civ_id UNIQUE (name);


--
-- Name: civ civ_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civ
    ADD CONSTRAINT civ_pkey PRIMARY KEY (civ_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_size_key UNIQUE (size);


--
-- Name: galaxy galaxy_size_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_size_fkey FOREIGN KEY (size) REFERENCES public.star(size);


--
-- Name: planet planet_size_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_size_fkey FOREIGN KEY (size) REFERENCES public.star(size);


--
-- PostgreSQL database dump complete
--

