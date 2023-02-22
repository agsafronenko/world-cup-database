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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(64) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(64) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (12, 2018, 'Final', 133, 134, 4, 2);
INSERT INTO public.games VALUES (13, 2018, 'Third Place', 135, 136, 2, 0);
INSERT INTO public.games VALUES (14, 2018, 'Semi-Final', 134, 136, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Semi-Final', 133, 135, 1, 0);
INSERT INTO public.games VALUES (16, 2018, 'Quarter-Final', 134, 142, 3, 2);
INSERT INTO public.games VALUES (17, 2018, 'Quarter-Final', 136, 144, 2, 0);
INSERT INTO public.games VALUES (18, 2018, 'Quarter-Final', 135, 146, 2, 1);
INSERT INTO public.games VALUES (19, 2018, 'Quarter-Final', 133, 148, 2, 0);
INSERT INTO public.games VALUES (20, 2018, 'Eighth-Final', 136, 150, 2, 1);
INSERT INTO public.games VALUES (21, 2018, 'Eighth-Final', 144, 152, 1, 0);
INSERT INTO public.games VALUES (22, 2018, 'Eighth-Final', 135, 154, 3, 2);
INSERT INTO public.games VALUES (23, 2018, 'Eighth-Final', 146, 156, 2, 0);
INSERT INTO public.games VALUES (24, 2018, 'Eighth-Final', 134, 158, 2, 1);
INSERT INTO public.games VALUES (25, 2018, 'Eighth-Final', 142, 160, 2, 1);
INSERT INTO public.games VALUES (26, 2018, 'Eighth-Final', 148, 162, 2, 1);
INSERT INTO public.games VALUES (27, 2018, 'Eighth-Final', 133, 164, 4, 3);
INSERT INTO public.games VALUES (28, 2014, 'Final', 165, 164, 1, 0);
INSERT INTO public.games VALUES (29, 2014, 'Third Place', 167, 146, 3, 0);
INSERT INTO public.games VALUES (30, 2014, 'Semi-Final', 164, 167, 1, 0);
INSERT INTO public.games VALUES (31, 2014, 'Semi-Final', 165, 146, 7, 1);
INSERT INTO public.games VALUES (32, 2014, 'Quarter-Final', 167, 174, 1, 0);
INSERT INTO public.games VALUES (33, 2014, 'Quarter-Final', 164, 135, 1, 0);
INSERT INTO public.games VALUES (34, 2014, 'Quarter-Final', 146, 150, 2, 1);
INSERT INTO public.games VALUES (35, 2014, 'Quarter-Final', 165, 133, 1, 0);
INSERT INTO public.games VALUES (36, 2014, 'Eighth-Final', 146, 182, 2, 1);
INSERT INTO public.games VALUES (37, 2014, 'Eighth-Final', 150, 148, 2, 0);
INSERT INTO public.games VALUES (38, 2014, 'Eighth-Final', 133, 186, 2, 0);
INSERT INTO public.games VALUES (39, 2014, 'Eighth-Final', 165, 188, 2, 1);
INSERT INTO public.games VALUES (40, 2014, 'Eighth-Final', 167, 156, 2, 1);
INSERT INTO public.games VALUES (41, 2014, 'Eighth-Final', 174, 192, 2, 1);
INSERT INTO public.games VALUES (42, 2014, 'Eighth-Final', 164, 152, 1, 0);
INSERT INTO public.games VALUES (43, 2014, 'Eighth-Final', 135, 196, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (133, 'France');
INSERT INTO public.teams VALUES (134, 'Croatia');
INSERT INTO public.teams VALUES (135, 'Belgium');
INSERT INTO public.teams VALUES (136, 'England');
INSERT INTO public.teams VALUES (142, 'Russia');
INSERT INTO public.teams VALUES (144, 'Sweden');
INSERT INTO public.teams VALUES (146, 'Brazil');
INSERT INTO public.teams VALUES (148, 'Uruguay');
INSERT INTO public.teams VALUES (150, 'Colombia');
INSERT INTO public.teams VALUES (152, 'Switzerland');
INSERT INTO public.teams VALUES (154, 'Japan');
INSERT INTO public.teams VALUES (156, 'Mexico');
INSERT INTO public.teams VALUES (158, 'Denmark');
INSERT INTO public.teams VALUES (160, 'Spain');
INSERT INTO public.teams VALUES (162, 'Portugal');
INSERT INTO public.teams VALUES (164, 'Argentina');
INSERT INTO public.teams VALUES (165, 'Germany');
INSERT INTO public.teams VALUES (167, 'Netherlands');
INSERT INTO public.teams VALUES (174, 'Costa Rica');
INSERT INTO public.teams VALUES (182, 'Chile');
INSERT INTO public.teams VALUES (186, 'Nigeria');
INSERT INTO public.teams VALUES (188, 'Algeria');
INSERT INTO public.teams VALUES (192, 'Greece');
INSERT INTO public.teams VALUES (196, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 43, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 196, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
