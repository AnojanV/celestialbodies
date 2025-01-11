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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(40) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    number_of_stars character varying(60),
    age_in_billions_of_years numeric(5,2),
    galaxy_types_id integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    name character varying(60) NOT NULL,
    galaxy_types_id integer NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_type_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(40) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    description text,
    age_in_billions_of_years numeric(5,2),
    distance_from_planet_in_thousands_of_miles numeric(7,2),
    has_life boolean,
    is_spherical boolean
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
    name character varying(40) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer,
    description text,
    age_in_billions_of_years numeric(5,2),
    distance_from_star_in_millions_of_miles numeric(6,2),
    is_habitable boolean,
    is_spherical boolean,
    has_life boolean,
    number_of_moons integer,
    planet_types_id integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    name character varying(60) NOT NULL,
    planet_types_id integer NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_type_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    description text,
    age_in_billions_of_years numeric(5,2),
    number_of_planets integer
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('ursa_major_III', 2, 'milky ways dimmest satellite galaxy', '60', 11.00, 2);
INSERT INTO public.galaxy VALUES ('draco_II', 3, 'milky way satellite galaxy', '13', 10.00, 2);
INSERT INTO public.galaxy VALUES ('milky_way', 1, 'home galaxy of earth', '250 billion', 13.61, 1);
INSERT INTO public.galaxy VALUES ('andromeda', 4, 'closest galaxy to milky way', '1 trillion', 5.00, 1);
INSERT INTO public.galaxy VALUES ('whirlpool', 5, 'also known as M51', '100 billion', 0.40, 1);
INSERT INTO public.galaxy VALUES ('sombrero', 6, 'also known as M104', '100 billion', 13.25, 1);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES ('spiral', 1, 'The most common type of galaxy, with 77% of known galaxies classified as spiral. They are shaped like giant pinwheels, with arms made of stars, gas, and dust');
INSERT INTO public.galaxy_types VALUES ('elliptical', 2, 'These galaxies are egg-shaped or spherical, and are made up of older stars. They are often found in galaxy clusters, and can range in size from a few thousand to hundreds of thousands of light-years across');
INSERT INTO public.galaxy_types VALUES ('irregular', 3, 'These galaxies have irregular shapes and are often among the smallest galaxies. They can be very bright, and are often filled with gas, dust, and young stars. The Magellanic Clouds are examples of irregular galaxies');
INSERT INTO public.galaxy_types VALUES ('lenticular', 4, 'These galaxies have properties of both elliptical and spiral galaxies. They have a bright central bulge, and an extended, disk-like structure');
INSERT INTO public.galaxy_types VALUES ('seyfert', 5, 'Seyfert galaxies, first identified in 1943 by American astronomer Carl Seyfert, are the most common active galaxies and also exhibit the lowest energies. All Seyferts look like normal galaxies in visible light, but they emit considerable infrared radiation. When observed in the infrared, some reveal bright emission from the donut-shaped torus. Some also emit X-rays. Seyfert galaxies tend to have lower radio luminosities, although some produce radio jets.Scientists divide Seyferts into two classes. Type I Seyfert galaxies display unusual features in their visible light that imply rapid motion near the accretion disk. Type II Seyferts show features that imply much slower motion. However, this distinction may result from different viewing angles into the centers of these galaxies');
INSERT INTO public.galaxy_types VALUES ('quasars', 6, 'Quasars are the most luminous type of active galaxy. They emit light across the electromagnetic spectrum, produce powerful particle jets, and can radiate thousands of times the energy emitted by a galaxy like the Milky Way');
INSERT INTO public.galaxy_types VALUES ('blazars', 7, 'Blazars produce light across the electromagnetic spectrum. Their powerful jets point almost directly at Earth, so they appear brighter than other active galaxies. Observatories on Earth can sometimes detect high-energy particles – like neutrinos – produced within the jets and trace them back to their home galaxy. This information gives scientists a glimpse into the environment around the blazar’s supermassive black hole');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon', 1, 1, 'the one and only satellite of planet earth. the og.', 4.53, 238.86, false, true);
INSERT INTO public.moon VALUES ('phobos', 2, 4, 'innermost and largest moon of mars', 4.30, 3.70, false, false);
INSERT INTO public.moon VALUES ('deimos', 3, 5, 'outermost and smallest moon of mars', 4.40, 14.58, false, false);
INSERT INTO public.moon VALUES ('europa', 4, 5, 'intriguing for search of extraterrestrial life', 4.50, 413.00, false, true);
INSERT INTO public.moon VALUES ('ganymede', 5, 5, 'largest moon in solar system', 4.50, 665.00, false, true);
INSERT INTO public.moon VALUES ('callisto', 6, 5, 'second largest moon of jupiter', 4.50, 1169.00, false, true);
INSERT INTO public.moon VALUES ('metis', 7, 5, 'innermost moon of jupiter', 4.50, 127.00, false, false);
INSERT INTO public.moon VALUES ('adrastea', 8, 5, 'small and irregular shaped moon. one of closest moons to jupiter', 4.50, 129.00, false, false);
INSERT INTO public.moon VALUES ('amalthea', 9, 5, 'irregular shaped moon. third closest moon to jupiter. mostly composed of rock and ice.', 4.50, 181.00, false, false);
INSERT INTO public.moon VALUES ('thebe', 10, 5, 'small and irregular moon', 4.50, 222.00, false, false);
INSERT INTO public.moon VALUES ('himalia', 11, 5, 'largest of jupiters irregular moons. thought to be a captured asteroid.', 4.50, 7500.00, false, false);
INSERT INTO public.moon VALUES ('elara', 12, 5, 'medium-sized irregular moon. also thought to be a captured asteroid', 4.50, 5600.00, false, false);
INSERT INTO public.moon VALUES ('pasiphae', 13, 5, 'retrograde irregular moon. also thought to be a captured asteroid', 4.50, 14500.00, false, false);
INSERT INTO public.moon VALUES ('carme', 14, 5, 'irregular moon', 4.50, 13100.00, false, false);
INSERT INTO public.moon VALUES ('titan', 15, 6, 'saturns largest moon and second largest moon in the solar system', 4.50, 759.00, false, true);
INSERT INTO public.moon VALUES ('rhea', 16, 6, 'saturns second-largest moon', 4.50, 327.00, false, true);
INSERT INTO public.moon VALUES ('iapetus', 17, 6, 'known for its striking color contrast', 4.50, 2200.00, false, false);
INSERT INTO public.moon VALUES ('enceladus', 18, 6, 'small icy moon known for its water vapour geysers', 4.50, 147.00, true, true);
INSERT INTO public.moon VALUES ('mimas', 19, 6, 'small heavily cratered moon. often called the "death star moon".', 4.50, 118.00, false, true);
INSERT INTO public.moon VALUES ('tethys', 20, 6, 'large icy moon with a vast canyon', 4.50, 183.00, false, true);
INSERT INTO public.moon VALUES ('dione', 21, 6, 'mid-sized moon with and icy surface and large craters', 4.50, 236.00, false, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('earth', 1, 1, 'the planet that all of mankind live on, where all of history has been written. home for millions of species. the OG', 4.54, 93.00, true, true, true, 1, 2);
INSERT INTO public.planet VALUES ('mercury', 2, 1, 'first planet in solar system', 4.50, 36.00, false, true, false, 0, 2);
INSERT INTO public.planet VALUES ('venus', 3, 1, 'second planet in solar system', 4.50, 67.00, false, true, false, 0, 2);
INSERT INTO public.planet VALUES ('mars', 4, 1, 'fourth planet in solar system', 4.60, 142.00, false, true, false, 2, 2);
INSERT INTO public.planet VALUES ('jupiter', 5, 1, 'fifth planet in solar system', 4.60, 484.00, false, false, false, 95, 1);
INSERT INTO public.planet VALUES ('saturn', 6, 1, 'sixth planet in solar system', 4.60, 886.00, false, false, false, 146, 1);
INSERT INTO public.planet VALUES ('uranus', 7, 1, 'seventh planet in solar system', 4.50, 2900.00, false, true, false, 28, 3);
INSERT INTO public.planet VALUES ('neptune', 8, 1, 'eighth planet in solar system', 4.50, 2800.00, false, true, false, 16, 3);
INSERT INTO public.planet VALUES ('trappist-1b', 9, 4, 'first planet in TRAPPIST-1 system', 6.00, 1.07, false, true, false, 0, 2);
INSERT INTO public.planet VALUES ('trappist-1c', 10, 4, 'second planet in TRAPPIST-1 system', 6.00, 1.47, false, true, false, 0, 2);
INSERT INTO public.planet VALUES ('trappist-1d', 11, 4, 'third planet in TRAPPIST-1 system', NULL, 2.05, false, true, false, 0, 2);
INSERT INTO public.planet VALUES ('trappist-1e', 12, 4, 'fourth planet in TRAPPIST-1 system', NULL, 2.70, true, true, false, 0, 2);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES ('gas_giant', 1, 'A large planet made up of mostly gases, like hydrogen and helium, with a small rocky core');
INSERT INTO public.planet_types VALUES ('terrestrial_planet', 2, 'An Earth-like planet made up of rocks or metals with a hard surface and a molten heavy-metal core');
INSERT INTO public.planet_types VALUES ('ice_giant', 3, 'A planet made up of dense gases that are heavier than those found in gas giants');
INSERT INTO public.planet_types VALUES ('ice_planet', 4, 'A planet with an icy surface made up of volatiles like water, ammonia, and methane');
INSERT INTO public.planet_types VALUES ('chthonian_planet', 5, 'A gas giant that orbits so close to its parent star that its atmosphere is stripped away, leaving only its molten core');
INSERT INTO public.planet_types VALUES ('super-puff', 6, 'An exoplanet with a mass only a few times larger than Earths but with a radius larger than Neptunes');
INSERT INTO public.planet_types VALUES ('hot_jupiter', 7, 'A gas giant exoplanet thats physically similar to Jupiter but has a very short orbital period');
INSERT INTO public.planet_types VALUES ('lava_planet', 8, 'A terrestrial planet with a surface mostly or entirely covered by molten lava');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 1, 1, 'the star that holds earth in its solar system. the source of almost all energy on this planet', 4.60, 8);
INSERT INTO public.star VALUES ('kepler-174', 2, 1, NULL, 4.90, 3);
INSERT INTO public.star VALUES ('UY_scuti', 3, 1, 'largest star in milky way and one of the largest in the recorded universe', 4.60, NULL);
INSERT INTO public.star VALUES ('TRAPPIST-1', 4, 1, 'star with the 3rd biggest planetary system', 7.61, 7);
INSERT INTO public.star VALUES ('alpheratz', 5, 4, 'brightest star in the andromeda galaxy', 0.07, NULL);
INSERT INTO public.star VALUES ('mirach', 6, 4, 'second brightest star in the andromeda galaxy', NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_type_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_type_id_seq', 8, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: galaxy_types galaxy_types_galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_type_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: planet_types planet_types_planet_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_planet_type_key UNIQUE (name);


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
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_types_id) REFERENCES public.planet_types(planet_types_id);


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

