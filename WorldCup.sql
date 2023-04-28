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
    round character varying(30) NOT NULL,
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
    name character varying(100) NOT NULL,
    team_id integer NOT NULL
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

INSERT INTO public.games VALUES (1, 2018, 'Final', 113, 114, 4, 2);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 115, 116, 2, 0);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 114, 116, 2, 1);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 113, 115, 1, 0);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 114, 117, 3, 2);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 116, 118, 2, 0);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 115, 119, 2, 1);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 113, 120, 2, 0);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 116, 121, 2, 1);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 118, 122, 1, 0);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 115, 123, 3, 2);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 119, 124, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 114, 125, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 117, 126, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 120, 127, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 113, 128, 4, 3);
INSERT INTO public.games VALUES (17, 2014, 'Final', 129, 128, 1, 0);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 130, 119, 3, 0);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 128, 130, 1, 0);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 129, 119, 7, 1);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 130, 131, 1, 0);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 128, 115, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 119, 121, 2, 1);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 129, 113, 1, 0);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 119, 132, 2, 1);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 121, 120, 2, 0);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 113, 133, 2, 0);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 129, 134, 2, 1);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 130, 124, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 131, 135, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 128, 122, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 115, 136, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 113);
INSERT INTO public.teams VALUES ('Croatia', 114);
INSERT INTO public.teams VALUES ('Belgium', 115);
INSERT INTO public.teams VALUES ('England', 116);
INSERT INTO public.teams VALUES ('Russia', 117);
INSERT INTO public.teams VALUES ('Sweden', 118);
INSERT INTO public.teams VALUES ('Brazil', 119);
INSERT INTO public.teams VALUES ('Uruguay', 120);
INSERT INTO public.teams VALUES ('Colombia', 121);
INSERT INTO public.teams VALUES ('Switzerland', 122);
INSERT INTO public.teams VALUES ('Japan', 123);
INSERT INTO public.teams VALUES ('Mexico', 124);
INSERT INTO public.teams VALUES ('Denmark', 125);
INSERT INTO public.teams VALUES ('Spain', 126);
INSERT INTO public.teams VALUES ('Portugal', 127);
INSERT INTO public.teams VALUES ('Argentina', 128);
INSERT INTO public.teams VALUES ('Germany', 129);
INSERT INTO public.teams VALUES ('Netherlands', 130);
INSERT INTO public.teams VALUES ('Costa Rica', 131);
INSERT INTO public.teams VALUES ('Chile', 132);
INSERT INTO public.teams VALUES ('Nigeria', 133);
INSERT INTO public.teams VALUES ('Algeria', 134);
INSERT INTO public.teams VALUES ('Greece', 135);
INSERT INTO public.teams VALUES ('United States', 136);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 136, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

