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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: game; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game (
    game_id integer NOT NULL,
    username character varying(22) NOT NULL,
    step integer NOT NULL
);


ALTER TABLE public.game OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_game_id_seq OWNED BY public.game.game_id;


--
-- Name: game game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game ALTER COLUMN game_id SET DEFAULT nextval('public.game_game_id_seq'::regclass);


--
-- Data for Name: game; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game VALUES (1, 'user_1730034131226', 686);
INSERT INTO public.game VALUES (2, 'user_1730034131226', 585);
INSERT INTO public.game VALUES (3, 'user_1730034131225', 761);
INSERT INTO public.game VALUES (4, 'user_1730034131225', 881);
INSERT INTO public.game VALUES (5, 'user_1730034131226', 691);
INSERT INTO public.game VALUES (6, 'user_1730034131226', 138);
INSERT INTO public.game VALUES (7, 'user_1730034131226', 34);
INSERT INTO public.game VALUES (8, 'superman', 12);
INSERT INTO public.game VALUES (9, 'user_1730034189874', 845);
INSERT INTO public.game VALUES (10, 'user_1730034189874', 715);
INSERT INTO public.game VALUES (11, 'user_1730034189873', 557);
INSERT INTO public.game VALUES (12, 'user_1730034189873', 126);
INSERT INTO public.game VALUES (13, 'user_1730034189874', 738);
INSERT INTO public.game VALUES (14, 'user_1730034189874', 295);
INSERT INTO public.game VALUES (15, 'user_1730034189874', 515);
INSERT INTO public.game VALUES (16, 'user_1730034230469', 187);
INSERT INTO public.game VALUES (17, 'user_1730034230469', 520);
INSERT INTO public.game VALUES (18, 'user_1730034230468', 993);
INSERT INTO public.game VALUES (19, 'user_1730034230468', 303);
INSERT INTO public.game VALUES (20, 'user_1730034230469', 791);
INSERT INTO public.game VALUES (21, 'user_1730034230469', 948);
INSERT INTO public.game VALUES (22, 'user_1730034230469', 517);
INSERT INTO public.game VALUES (23, 'user_1730034239529', 827);
INSERT INTO public.game VALUES (24, 'user_1730034239529', 124);
INSERT INTO public.game VALUES (25, 'user_1730034239528', 514);
INSERT INTO public.game VALUES (26, 'user_1730034239528', 417);
INSERT INTO public.game VALUES (27, 'user_1730034239529', 377);
INSERT INTO public.game VALUES (28, 'user_1730034239529', 603);
INSERT INTO public.game VALUES (29, 'user_1730034239529', 98);
INSERT INTO public.game VALUES (30, 'user_1730034244709', 127);
INSERT INTO public.game VALUES (31, 'user_1730034244709', 971);
INSERT INTO public.game VALUES (32, 'user_1730034244708', 181);
INSERT INTO public.game VALUES (33, 'user_1730034244708', 126);
INSERT INTO public.game VALUES (34, 'user_1730034244709', 927);
INSERT INTO public.game VALUES (35, 'user_1730034244709', 190);
INSERT INTO public.game VALUES (36, 'user_1730034244709', 244);
INSERT INTO public.game VALUES (37, 'superman', 9);
INSERT INTO public.game VALUES (38, 'user_1730034286459', 179);
INSERT INTO public.game VALUES (39, 'user_1730034286459', 11);
INSERT INTO public.game VALUES (40, 'user_1730034286458', 281);
INSERT INTO public.game VALUES (41, 'user_1730034286458', 388);
INSERT INTO public.game VALUES (42, 'user_1730034286459', 42);
INSERT INTO public.game VALUES (43, 'user_1730034286459', 926);
INSERT INTO public.game VALUES (44, 'user_1730034286459', 228);
INSERT INTO public.game VALUES (45, 'user_1730034380518', 25);
INSERT INTO public.game VALUES (46, 'user_1730034380518', 728);
INSERT INTO public.game VALUES (47, 'user_1730034380517', 758);
INSERT INTO public.game VALUES (48, 'user_1730034380517', 436);
INSERT INTO public.game VALUES (49, 'user_1730034380518', 891);
INSERT INTO public.game VALUES (50, 'user_1730034380518', 763);
INSERT INTO public.game VALUES (51, 'user_1730034380518', 294);
INSERT INTO public.game VALUES (52, 'user_1730034414810', 710);
INSERT INTO public.game VALUES (53, 'user_1730034414810', 632);
INSERT INTO public.game VALUES (54, 'user_1730034414809', 344);
INSERT INTO public.game VALUES (55, 'user_1730034414809', 479);
INSERT INTO public.game VALUES (56, 'user_1730034414810', 601);
INSERT INTO public.game VALUES (57, 'user_1730034414810', 637);
INSERT INTO public.game VALUES (58, 'user_1730034414810', 269);
INSERT INTO public.game VALUES (59, 'user_1730034436481', 883);
INSERT INTO public.game VALUES (60, 'user_1730034436481', 887);
INSERT INTO public.game VALUES (61, 'user_1730034436480', 729);
INSERT INTO public.game VALUES (62, 'user_1730034436480', 74);
INSERT INTO public.game VALUES (63, 'user_1730034436481', 383);
INSERT INTO public.game VALUES (64, 'user_1730034436481', 712);
INSERT INTO public.game VALUES (65, 'user_1730034436481', 255);
INSERT INTO public.game VALUES (66, 'user_1730034445600', 889);
INSERT INTO public.game VALUES (67, 'user_1730034445600', 569);
INSERT INTO public.game VALUES (68, 'user_1730034445599', 867);
INSERT INTO public.game VALUES (69, 'user_1730034445599', 908);
INSERT INTO public.game VALUES (70, 'user_1730034445600', 124);
INSERT INTO public.game VALUES (71, 'user_1730034445600', 15);
INSERT INTO public.game VALUES (72, 'user_1730034445600', 272);
INSERT INTO public.game VALUES (73, 'user_1730034448090', 857);
INSERT INTO public.game VALUES (74, 'user_1730034448090', 944);
INSERT INTO public.game VALUES (75, 'user_1730034448089', 659);
INSERT INTO public.game VALUES (76, 'user_1730034448089', 337);
INSERT INTO public.game VALUES (77, 'user_1730034448090', 623);
INSERT INTO public.game VALUES (78, 'user_1730034448090', 260);
INSERT INTO public.game VALUES (79, 'user_1730034448090', 490);
INSERT INTO public.game VALUES (80, 'superman', 11);
INSERT INTO public.game VALUES (81, 'user_1730034647130', 885);
INSERT INTO public.game VALUES (82, 'user_1730034647130', 829);
INSERT INTO public.game VALUES (83, 'user_1730034647129', 938);
INSERT INTO public.game VALUES (84, 'user_1730034647129', 468);
INSERT INTO public.game VALUES (85, 'user_1730034647130', 688);
INSERT INTO public.game VALUES (86, 'user_1730034647130', 186);
INSERT INTO public.game VALUES (87, 'user_1730034647130', 573);


--
-- Name: game_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_game_id_seq', 87, true);


--
-- Name: game game_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game
    ADD CONSTRAINT game_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

