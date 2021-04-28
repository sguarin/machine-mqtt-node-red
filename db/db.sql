--
-- smr database dump
--

-- Dumped from database version 12.6
-- Dumped by pg_dump version 12.6

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

-- SET default_table_access_method = heap;

--
-- Name: air2; Type: TABLE; Schema: smr; Owner: smr
--
CREATE ROLE smr;
ALTER ROLE smr WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md5ba06ae335118f86f8052bde94f8c81c7';
CREATE SCHEMA smr;
ALTER SCHEMA smr OWNER TO smr;

CREATE ROLE smruser;
ALTER ROLE smruser WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md545400adbdca394dcc7f98963953e9f32';

CREATE TABLE smr.air (
    device character varying(10),
    ts timestamp without time zone,
    lat double precision,
    long double precision,
    alt double precision,
    sensor character varying(50),
    co2 integer,
    tvoc integer,
    temp double precision,
    hum double precision,
    pres double precision,
    imported_on timestamp without time zone
);


ALTER TABLE smr.air OWNER TO smr;

--
-- Data for Name: air2; Type: TABLE DATA; Schema: smr; Owner: smr
--

COPY smr.air (device, ts, lat, long, alt, sensor, co2, tvoc, temp, hum, pres, imported_on) FROM stdin;
bme680	2021-04-18 00:00:01	\N	\N	\N	co2	765	1	35.1	40.58	101451	2021-04-17 21:00:01.008461
bme680	2021-04-18 00:00:02	\N	\N	\N	co2	764	1	35.09	40.61	101455	2021-04-17 21:00:02.009756
bme680	2021-04-18 00:00:03	\N	\N	\N	co2	768	1	35.1	40.58	101453	2021-04-17 21:00:03.009452
bme680	2021-04-18 00:00:04	\N	\N	\N	co2	772	1	35.09	40.62	101451	2021-04-17 21:00:04.013557
bme680	2021-04-18 00:00:05	\N	\N	\N	co2	772	1	35.09	40.62	101451	2021-04-17 21:00:05.009002
ccs811	2021-04-18 00:00:01	\N	\N	\N	co2	413	1	30.81	61.8	101483.88	2021-04-17 21:00:00.846486
ccs811	2021-04-18 00:00:02	\N	\N	\N	co2	418	2	30.81	61.8	101480.47	2021-04-17 21:00:01.8454
ccs811	2021-04-18 00:00:03	\N	\N	\N	co2	418	2	30.8	61.8	101479.3	2021-04-17 21:00:02.851117
ccs811	2021-04-18 00:00:04	\N	\N	\N	co2	415	2	30.8	61.8	101480.59	2021-04-17 21:00:03.845351
ccs811	2021-04-18 00:00:05	\N	\N	\N	co2	406	0	30.8	61.8	101481.78	2021-04-17 21:00:04.848899
\.


--
-- Name: TABLE air2; Type: ACL; Schema: smr; Owner: smr
--

GRANT INSERT,DELETE ON TABLE smr.air TO smruser;


--
-- PostgreSQL database dump complete
--

