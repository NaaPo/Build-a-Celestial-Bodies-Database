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
-- Name: analysis; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.analysis (
    description character varying(120),
    has_life boolean,
    analysis_id integer NOT NULL,
    name character varying(30),
    score integer NOT NULL,
    view character varying(30) NOT NULL,
    managers character varying(30)
);


ALTER TABLE public.analysis OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    galaxy_types integer,
    score integer NOT NULL,
    view character varying(30) NOT NULL,
    managers character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    distance_from_earth numeric(5,2),
    planet_id integer NOT NULL,
    score integer NOT NULL,
    view character varying(30) NOT NULL,
    managers character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean,
    planet_types integer,
    star_id integer NOT NULL,
    score integer NOT NULL,
    view character varying(30) NOT NULL,
    managers character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer NOT NULL,
    score integer NOT NULL,
    view character varying(30) NOT NULL,
    managers character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: analysis; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.analysis VALUES ('Tierra', true, 1, 'Terrestre', 0, 'No comments', NULL);
INSERT INTO public.analysis VALUES ('Venus', false, 2, 'Terrestre', 0, 'No comments', NULL);
INSERT INTO public.analysis VALUES ('Júpiter', false, 3, 'Gaseoso', 0, 'No comments', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', NULL, false, NULL, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', NULL, true, NULL, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', NULL, false, NULL, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 5', NULL, true, NULL, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (5, 'Vía Láctea', 'Nuestra galaxia, contiene el sistema solar.', true, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (6, 'Andrómeda', 'La galaxia más cercana a la Vía Láctea.', false, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (7, 'Galaxy 7', NULL, false, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (9, 'Galaxy 9', NULL, false, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (10, 'Galaxy 10', NULL, false, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (11, 'Galaxy 11', NULL, false, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (12, 'Galaxy 12', NULL, false, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (13, 'Galaxy 13', NULL, false, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (14, 'Galaxy 14', NULL, false, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (15, 'Galaxy 15', NULL, false, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (16, 'Galaxy 16', NULL, false, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (17, 'Galaxy 17', NULL, false, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (18, 'Galaxy 18', NULL, false, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (19, 'Galaxy 19', NULL, false, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (20, 'Galaxy 20', NULL, false, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (21, 'Galaxy 21', NULL, false, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (22, 'Galaxy 22', NULL, false, 1, 0, 'No comments', NULL);
INSERT INTO public.galaxy VALUES (23, 'Galaxy 23', NULL, false, 1, 0, 'No comments', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 10.00, 1, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (2, 'Tritón', 5.00, 2, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (3, 'Europa', 4.00, 3, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (4, 'moon 4', 5.00, 4, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (5, 'moon 5', 5.00, 5, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (6, 'moon 6', 5.00, 6, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (7, 'moon 7', 5.00, 7, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (9, 'moon 9', 5.00, 9, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (10, 'moon 10', 5.00, 10, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (11, 'moon 11', 5.00, 11, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (12, 'moon 12', 5.00, 12, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (13, 'moon 13', 5.00, 13, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (14, 'moon 14', 5.00, 14, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (15, 'moon 15', 5.00, 15, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (16, 'moon 16', 5.00, 16, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (17, 'moon 17', 5.00, 17, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (18, 'moon 18', 5.00, 18, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (19, 'moon 19', 5.00, 19, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (20, 'moon 20', 5.00, 20, 0, 'No comments', NULL);
INSERT INTO public.moon VALUES (21, 'moon 21', 5.00, 21, 0, 'No comments', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 'El único planeta conocido que alberga vida.', true, 6, 1, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (2, 'Marte', 'Conocido como el planeta rojo, tiene agua en forma de hielo.', false, 5, 2, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (3, 'Júpiter', 'El gigante gaseoso más grande del sistema solar.', false, 4, 3, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (4, 'planet4', NULL, true, 3, 4, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (5, 'planet5', NULL, true, 3, 5, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (6, 'planet 6', NULL, true, 3, 6, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (7, 'planet 7', NULL, true, 3, 7, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (9, 'planet 9', NULL, true, 3, 9, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (10, 'planet 10', NULL, true, 3, 10, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (11, 'planet 11', NULL, true, 3, 5, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (12, 'planet 12', NULL, true, 3, 12, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (13, 'planet 13', NULL, true, 3, 13, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (14, 'planet 14', NULL, true, 3, 14, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (15, 'planet 15', NULL, true, 3, 15, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (16, 'planet 16', NULL, true, 3, 16, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (17, 'planet 17', NULL, true, 3, 17, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (18, 'planet 18', NULL, true, 3, 18, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (19, 'planet 19', NULL, true, 3, 19, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (20, 'planet 20', NULL, true, 3, 20, 0, 'No comments', NULL);
INSERT INTO public.planet VALUES (21, 'planet 21', NULL, true, 3, 21, 0, 'No comments', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 1, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (2, 'Vega', 2, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (3, 'Rigel', 3, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (4, 'Vega', 4, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 5, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 6, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (9, 'Star 9', 9, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (10, 'Star 10', 10, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (11, 'Star 11', 11, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (12, 'Star 12', 12, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (13, 'Star 13', 13, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (14, 'Star 14', 14, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (15, 'Star 15', 15, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (16, 'Star 16', 16, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (17, 'Star 17', 17, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (18, 'Star 18', 18, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (19, 'Star 19', 19, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (20, 'Star 20', 20, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (21, 'Star 21', 21, 0, 'No comments', NULL);
INSERT INTO public.star VALUES (7, 'Star 7', 7, 0, 'No comments', NULL);


--
-- Name: analysis analysis_managers_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.analysis
    ADD CONSTRAINT analysis_managers_key UNIQUE (managers);


--
-- Name: analysis analysis_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.analysis
    ADD CONSTRAINT analysis_pk PRIMARY KEY (analysis_id);


--
-- Name: galaxy galaxy_managers_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_managers_key UNIQUE (managers);


--
-- Name: galaxy galaxy_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pk PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_managers_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_managers_key UNIQUE (managers);


--
-- Name: moon moon_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pk PRIMARY KEY (moon_id);


--
-- Name: planet planet_managers_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_managers_key UNIQUE (managers);


--
-- Name: planet planet_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pk PRIMARY KEY (planet_id);


--
-- Name: star star_managers_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_managers_key UNIQUE (managers);


--
-- Name: star star_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pk PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

