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

INSERT INTO public.games VALUES (33, 2018, 'Final', 137, 138, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 139, 140, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 138, 140, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 137, 139, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 138, 141, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 140, 142, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 139, 143, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 137, 144, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 140, 145, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 142, 146, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 139, 147, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 143, 148, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 138, 149, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 141, 150, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 144, 151, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 137, 152, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 153, 152, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 154, 143, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 152, 154, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 153, 143, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 154, 155, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 152, 139, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 143, 145, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 153, 137, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 143, 156, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 145, 144, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 137, 157, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 153, 158, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 154, 148, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 155, 159, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 152, 146, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 139, 160, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 137);
INSERT INTO public.teams VALUES ('Croatia', 138);
INSERT INTO public.teams VALUES ('Belgium', 139);
INSERT INTO public.teams VALUES ('England', 140);
INSERT INTO public.teams VALUES ('Russia', 141);
INSERT INTO public.teams VALUES ('Sweden', 142);
INSERT INTO public.teams VALUES ('Brazil', 143);
INSERT INTO public.teams VALUES ('Uruguay', 144);
INSERT INTO public.teams VALUES ('Colombia', 145);
INSERT INTO public.teams VALUES ('Switzerland', 146);
INSERT INTO public.teams VALUES ('Japan', 147);
INSERT INTO public.teams VALUES ('Mexico', 148);
INSERT INTO public.teams VALUES ('Denmark', 149);
INSERT INTO public.teams VALUES ('Spain', 150);
INSERT INTO public.teams VALUES ('Portugal', 151);
INSERT INTO public.teams VALUES ('Argentina', 152);
INSERT INTO public.teams VALUES ('Germany', 153);
INSERT INTO public.teams VALUES ('Netherlands', 154);
INSERT INTO public.teams VALUES ('Costa Rica', 155);
INSERT INTO public.teams VALUES ('Chile', 156);
INSERT INTO public.teams VALUES ('Nigeria', 157);
INSERT INTO public.teams VALUES ('Algeria', 158);
INSERT INTO public.teams VALUES ('Greece', 159);
INSERT INTO public.teams VALUES ('United States', 160);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 160, true);


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

