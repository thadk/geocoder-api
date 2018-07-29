--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

-- Started on 2018-02-08 15:27:12 -03
SET client_encoding = 'UTF8';

--
-- TOC entry 1 (class 3079 OID 12429)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

 CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3763 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

-- COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- TOC entry 2 (class 3079 OID 434150)
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- TOC entry 3764 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

-- COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;


-- Table: public.boundaries

-- DROP TABLE public.boundaries;

CREATE TABLE public.boundaries
(
  gid bigint NOT NULL,
  cca_2 character varying(255),
  ccn_2 character varying(255),
  engtype_2 character varying(255),
  geom geometry,
  hasc_2 character varying(255),
  id_0 bigint,
  id_1 bigint,
  id_2 bigint,
  iso character varying(255),
  name_0 character varying(255),
  name_1 character varying(255),
  name_2 character varying(255),
  nl_name_2 character varying(255),
  objectid bigint,
  shape_area double precision,
  shape_leng double precision,
  type_2 character varying(255),
  varname_2 character varying(255),
  CONSTRAINT boundaries_pkey PRIMARY KEY (gid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.boundaries
  OWNER TO postgres;

-- Index: public.idxfhpivomfulx4f7l43fwfm7vyg

-- DROP INDEX public.idxfhpivomfulx4f7l43fwfm7vyg;

CREATE INDEX idxfhpivomfulx4f7l43fwfm7vyg
  ON public.boundaries
  USING btree
  (iso COLLATE pg_catalog."default");



ALTER TABLE boundaries OWNER TO postgres;

-- Table: public.country

-- DROP TABLE public.country;

CREATE TABLE public.country
(
  id bigint NOT NULL,
  iso2 character varying(255),
  iso3 character varying(255),
  lang character varying(255),
  name character varying(255),
  CONSTRAINT country_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.country
  OWNER TO postgres;

-- Index: public.idxh9ojhx8niamk5q3cpa1e1hvou

-- DROP INDEX public.idxh9ojhx8niamk5q3cpa1e1hvou;

CREATE INDEX idxh9ojhx8niamk5q3cpa1e1hvou
  ON public.country
  USING btree
  (iso2 COLLATE pg_catalog."default");

-- Index: public.idxllidyp77h6xkeokpbmoy710d4

-- DROP INDEX public.idxllidyp77h6xkeokpbmoy710d4;

CREATE INDEX idxllidyp77h6xkeokpbmoy710d4
  ON public.country
  USING btree
  (name COLLATE pg_catalog."default");

-- Index: public.idxni8emsl1bxauvyrc1ikb5pm5a

-- DROP INDEX public.idxni8emsl1bxauvyrc1ikb5pm5a;

CREATE INDEX idxni8emsl1bxauvyrc1ikb5pm5a
  ON public.country
  USING btree
  (iso3 COLLATE pg_catalog."default");



--
-- TOC entry 203 (class 1259 OID 435623)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE IF NOT EXISTS hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hibernate_sequence OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 435701)
-- Name: iati_codes; Type: TABLE; Schema: public; Owner: postgres
--

-- Table: public.iati_codes

-- DROP TABLE public.iati_codes;

CREATE TABLE public.iati_codes
(
  type character varying(31) NOT NULL,
  id bigint NOT NULL,
  code character varying(255),
  description text,
  lang character varying(255),
  name character varying(255),
  CONSTRAINT iati_codes_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.iati_codes
  OWNER TO postgres;

-- Index: public.idxkqvnwiw59k380edbdqm3p2hdy

-- DROP INDEX public.idxkqvnwiw59k380edbdqm3p2hdy;

CREATE INDEX idxkqvnwiw59k380edbdqm3p2hdy
  ON public.iati_codes
  USING btree
  (type COLLATE pg_catalog."default");



INSERT INTO country (id, iso2, iso3, lang, name) VALUES (27, 'AF', 'AFG', 'en', 'AFGHANISTAN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (28, 'AL', 'ALB', 'en', 'ALBANIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (29, 'DZ', 'DZA', 'en', 'ALGERIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (30, 'AS', 'ASM', 'en', 'AMERICAN SAMOA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (31, 'AD', 'AND', 'en', 'ANDORRA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (32, 'AO', 'AGO', 'en', 'ANGOLA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (33, 'AI', 'AIA', 'en', 'ANGUILLA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (34, 'AQ', 'ATA', 'en', 'ANTARCTICA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (35, 'AG', 'ATG', 'en', 'ANTIGUA AND BARBUDA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (36, 'AR', 'ARG', 'en', 'ARGENTINA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (37, 'AM', 'ARM', 'en', 'ARMENIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (38, 'AW', 'ABW', 'en', 'ARUBA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (39, 'AU', 'AUS', 'en', 'AUSTRALIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (40, 'AT', 'AUT', 'en', 'AUSTRIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (41, 'AZ', 'AZE', 'en', 'AZERBAIJAN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (42, 'BS', 'BHS', 'en', 'BAHAMAS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (43, 'BH', 'BHR', 'en', 'BAHRAIN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (44, 'BD', 'BGD', 'en', 'BANGLADESH');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (45, 'BB', 'BRB', 'en', 'BARBADOS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (46, 'BY', 'BLR', 'en', 'BELARUS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (47, 'BE', 'BEL', 'en', 'BELGIUM');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (48, 'BZ', 'BLZ', 'en', 'BELIZE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (49, 'BJ', 'BEN', 'en', 'BENIN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (50, 'BM', 'BMU', 'en', 'BERMUDA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (51, 'BT', 'BTN', 'en', 'BHUTAN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (52, 'BO', 'BOL', 'en', 'BOLIVIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (53, 'BA', 'BIH', 'en', 'BOSNIA AND HERZEGOWINA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (54, 'BW', 'BWA', 'en', 'BOTSWANA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (55, 'BV', 'BVT', 'en', 'BOUVET ISLAND');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (56, 'BR', 'BRA', 'en', 'BRAZIL');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (57, 'IO', 'IOT', 'en', 'BRITISH INDIAN OCEAN TERRITORY');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (58, 'BN', 'BRN', 'en', 'BRUNEI DARUSSALAM');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (59, 'BG', 'BGR', 'en', 'BULGARIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (60, 'BF', 'BFA', 'en', 'BURKINA FASO');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (61, 'BI', 'BDI', 'en', 'BURUNDI');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (62, 'KH', 'KHM', 'en', 'CAMBODIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (63, 'CM', 'CMR', 'en', 'CAMEROON');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (64, 'CA', 'CAN', 'en', 'CANADA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (65, 'CV', 'CPV', 'en', 'CAPE VERDE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (66, 'KY', 'CYM', 'en', 'CAYMAN ISLANDS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (67, 'CF', 'CAF', 'en', 'CENTRAL AFRICAN REPUBLIC');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (68, 'TD', 'TCD', 'en', 'CHAD');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (69, 'CL', 'CHL', 'en', 'CHILE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (70, 'CN', 'CHN', 'en', 'CHINA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (71, 'CX', 'CXR', 'en', 'CHRISTMAS ISLAND');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (72, 'CC', 'CCK', 'en', 'COCOS (KEELING) ISLANDS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (73, 'CO', 'COL', 'en', 'COLOMBIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (74, 'KM', 'COM', 'en', 'COMOROS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (75, 'CG', 'COG', 'en', 'CONGO');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (76, 'CD', 'COD', 'en', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (77, 'CK', 'COK', 'en', 'COOK ISLANDS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (78, 'CR', 'CRI', 'en', 'COSTA RICA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (79, 'CI', 'CIV', 'en', 'COTE D''IVOIRE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (80, 'HR', 'HRV', 'en', 'CROATIA (local name: Hrvatska)');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (81, 'CU', 'CUB', 'en', 'CUBA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (82, 'CY', 'CYP', 'en', 'CYPRUS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (83, 'CZ', 'CZE', 'en', 'CZECH REPUBLIC');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (84, 'DK', 'DNK', 'en', 'DENMARK');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (85, 'DJ', 'DJI', 'en', 'DJIBOUTI');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (86, 'DM', 'DMA', 'en', 'DOMINICA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (87, 'DO', 'DOM', 'en', 'DOMINICAN REPUBLIC');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (88, 'TP', 'TMP', 'en', 'EAST TIMOR');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (89, 'EC', 'ECU', 'en', 'ECUADOR');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (90, 'EG', 'EGY', 'en', 'EGYPT');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (91, 'SV', 'SLV', 'en', 'EL SALVADOR');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (92, 'GQ', 'GNQ', 'en', 'EQUATORIAL GUINEA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (93, 'ER', 'ERI', 'en', 'ERITREA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (94, 'EE', 'EST', 'en', 'ESTONIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (95, 'ET', 'ETH', 'en', 'ETHIOPIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (96, 'FK', 'FLK', 'en', 'FALKLAND ISLANDS (MALVINAS)');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (97, 'FO', 'FRO', 'en', 'FAROE ISLANDS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (98, 'FJ', 'FJI', 'en', 'FIJI');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (99, 'FI', 'FIN', 'en', 'FINLAND');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (100, 'FR', 'FRA', 'en', 'FRANCE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (101, 'FX', 'FXX', 'en', 'FRANCE, METROPOLITAN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (102, 'GF', 'GUF', 'en', 'FRENCH GUIANA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (103, 'PF', 'PYF', 'en', 'FRENCH POLYNESIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (104, 'TF', 'ATF', 'en', 'FRENCH SOUTHERN TERRITORIES');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (105, 'GA', 'GAB', 'en', 'GABON');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (106, 'GM', 'GMB', 'en', 'GAMBIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (107, 'GE', 'GEO', 'en', 'GEORGIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (108, 'DE', 'DEU', 'en', 'GERMANY');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (109, 'GH', 'GHA', 'en', 'GHANA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (110, 'GI', 'GIB', 'en', 'GIBRALTAR');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (111, 'GR', 'GRC', 'en', 'GREECE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (112, 'GL', 'GRL', 'en', 'GREENLAND');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (113, 'GD', 'GRD', 'en', 'GRENADA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (114, 'GP', 'GLP', 'en', 'GUADELOUPE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (115, 'GU', 'GUM', 'en', 'GUAM');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (116, 'GT', 'GTM', 'en', 'GUATEMALA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (117, 'GN', 'GIN', 'en', 'GUINEA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (118, 'GW', 'GNB', 'en', 'GUINEA-BISSAU');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (119, 'GY', 'GUY', 'en', 'GUYANA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (120, 'HT', 'HTI', 'en', 'HAITI');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (121, 'HM', 'HMD', 'en', 'HEARD AND MC DONALD ISLANDS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (122, 'VA', 'VAT', 'en', 'HOLY SEE (VATICAN CITY STATE)');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (123, 'HN', 'HND', 'en', 'HONDURAS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (124, 'HK', 'HKG', 'en', 'HONG KONG');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (125, 'HU', 'HUN', 'en', 'HUNGARY');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (126, 'IS', 'ISL', 'en', 'ICELAND');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (127, 'IN', 'IND', 'en', 'INDIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (128, 'ID', 'IDN', 'en', 'INDONESIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (129, 'IR', 'IRN', 'en', 'IRAN (ISLAMIC REPUBLIC OF)');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (130, 'IQ', 'IRQ', 'en', 'IRAQ');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (131, 'IE', 'IRL', 'en', 'IRELAND');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (132, 'IL', 'ISR', 'en', 'ISRAEL');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (133, 'IT', 'ITA', 'en', 'ITALY');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (134, 'JM', 'JAM', 'en', 'JAMAICA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (135, 'JP', 'JPN', 'en', 'JAPAN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (136, 'JO', 'JOR', 'en', 'JORDAN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (137, 'KZ', 'KAZ', 'en', 'KAZAKHSTAN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (138, 'KE', 'KEN', 'en', 'KENYA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (139, 'KI', 'KIR', 'en', 'KIRIBATI');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (140, 'KP', 'PRK', 'en', 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (141, 'KR', 'KOR', 'en', 'KOREA, REPUBLIC OF');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (142, 'KW', 'KWT', 'en', 'KUWAIT');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (143, 'KG', 'KGZ', 'en', 'KYRGYZSTAN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (144, 'LA', 'LAO', 'en', 'LAO PEOPLE''S DEMOCRATIC REPUBLIC');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (145, 'LV', 'LVA', 'en', 'LATVIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (146, 'LB', 'LBN', 'en', 'LEBANON');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (147, 'LS', 'LSO', 'en', 'LESOTHO');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (148, 'LR', 'LBR', 'en', 'LIBERIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (149, 'LY', 'LBY', 'en', 'LIBYAN ARAB JAMAHIRIYA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (150, 'LI', 'LIE', 'en', 'LIECHTENSTEIN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (151, 'LT', 'LTU', 'en', 'LITHUANIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (152, 'LU', 'LUX', 'en', 'LUXEMBOURG');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (153, 'MO', 'MAC', 'en', 'MACAU');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (154, 'MK', 'MKD', 'en', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (155, 'MG', 'MDG', 'en', 'MADAGASCAR');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (156, 'MW', 'MWI', 'en', 'MALAWI');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (157, 'MY', 'MYS', 'en', 'MALAYSIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (158, 'MV', 'MDV', 'en', 'MALDIVES');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (159, 'ML', 'MLI', 'en', 'MALI');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (160, 'MT', 'MLT', 'en', 'MALTA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (161, 'MH', 'MHL', 'en', 'MARSHALL ISLANDS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (162, 'MQ', 'MTQ', 'en', 'MARTINIQUE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (163, 'MR', 'MRT', 'en', 'MAURITANIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (164, 'MU', 'MUS', 'en', 'MAURITIUS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (165, 'YT', 'MYT', 'en', 'MAYOTTE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (166, 'MX', 'MEX', 'en', 'MEXICO');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (167, 'FM', 'FSM', 'en', 'MICRONESIA, FEDERATED STATES OF');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (168, 'MD', 'MDA', 'en', 'MOLDOVA, REPUBLIC OF');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (169, 'MC', 'MCO', 'en', 'MONACO');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (170, 'MN', 'MNG', 'en', 'MONGOLIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (171, 'MS', 'MSR', 'en', 'MONTSERRAT');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (172, 'MA', 'MAR', 'en', 'MOROCCO');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (173, 'MZ', 'MOZ', 'en', 'MOZAMBIQUE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (174, 'MM', 'MMR', 'en', 'MYANMAR');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (175, 'NA', 'NAM', 'en', 'NAMIBIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (176, 'NR', 'NRU', 'en', 'NAURU');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (177, 'NP', 'NPL', 'en', 'NEPAL');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (178, 'NL', 'NLD', 'en', 'NETHERLANDS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (179, 'AN', 'ANT', 'en', 'NETHERLANDS ANTILLES');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (180, 'NC', 'NCL', 'en', 'NEW CALEDONIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (181, 'NZ', 'NZL', 'en', 'NEW ZEALAND');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (182, 'NI', 'NIC', 'en', 'NICARAGUA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (183, 'NE', 'NER', 'en', 'NIGER');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (184, 'NG', 'NGA', 'en', 'NIGERIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (185, 'NU', 'NIU', 'en', 'NIUE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (186, 'NF', 'NFK', 'en', 'NORFOLK ISLAND');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (187, 'MP', 'MNP', 'en', 'NORTHERN MARIANA ISLANDS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (188, 'NO', 'NOR', 'en', 'NORWAY');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (189, 'OM', 'OMN', 'en', 'OMAN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (190, 'PK', 'PAK', 'en', 'PAKISTAN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (191, 'PW', 'PLW', 'en', 'PALAU');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (192, 'PA', 'PAN', 'en', 'PANAMA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (193, 'PG', 'PNG', 'en', 'PAPUA NEW GUINEA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (194, 'PY', 'PRY', 'en', 'PARAGUAY');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (195, 'PE', 'PER', 'en', 'PERU');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (196, 'PH', 'PHL', 'en', 'PHILIPPINES');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (197, 'PN', 'PCN', 'en', 'PITCAIRN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (198, 'PL', 'POL', 'en', 'POLAND');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (199, 'PT', 'PRT', 'en', 'PORTUGAL');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (200, 'PR', 'PRI', 'en', 'PUERTO RICO');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (201, 'QA', 'QAT', 'en', 'QATAR');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (202, 'RE', 'REU', 'en', 'REUNION');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (203, 'RO', 'ROM', 'en', 'ROMANIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (204, 'RU', 'RUS', 'en', 'RUSSIAN FEDERATION');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (205, 'RW', 'RWA', 'en', 'RWANDA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (206, 'KN', 'KNA', 'en', 'SAINT KITTS AND NEVIS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (207, 'LC', 'LCA', 'en', 'SAINT LUCIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (208, 'VC', 'VCT', 'en', 'SAINT VINCENT AND THE GRENADINES');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (209, 'WS', 'WSM', 'en', 'SAMOA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (210, 'SM', 'SMR', 'en', 'SAN MARINO');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (211, 'ST', 'STP', 'en', 'SAO TOME AND PRINCIPE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (212, 'SA', 'SAU', 'en', 'SAUDI ARABIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (213, 'SN', 'SEN', 'en', 'SENEGAL');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (214, 'SC', 'SYC', 'en', 'SEYCHELLES');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (215, 'SL', 'SLE', 'en', 'SIERRA LEONE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (216, 'SG', 'SGP', 'en', 'SINGAPORE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (217, 'SK', 'SVK', 'en', 'SLOVAKIA (Slovak Republic)');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (218, 'SI', 'SVN', 'en', 'SLOVENIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (219, 'SB', 'SLB', 'en', 'SOLOMON ISLANDS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (220, 'SO', 'SOM', 'en', 'SOMALIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (221, 'ZA', 'ZAF', 'en', 'SOUTH AFRICA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (222, 'GS', 'SGS', 'en', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (223, 'ES', 'ESP', 'en', 'SPAIN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (224, 'LK', 'LKA', 'en', 'SRI LANKA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (225, 'SH', 'SHN', 'en', 'ST. HELENA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (226, 'PM', 'SPM', 'en', 'ST. PIERRE AND MIQUELON');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (227, 'SD', 'SDN', 'en', 'SUDAN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (228, 'SS', 'SSD', 'en', 'SOUTH SUDAN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (229, 'SR', 'SUR', 'en', 'SURINAME');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (230, 'SJ', 'SJM', 'en', 'SVALBARD AND JAN MAYEN ISLANDS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (231, 'SZ', 'SWZ', 'en', 'SWAZILAND');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (232, 'SE', 'SWE', 'en', 'SWEDEN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (233, 'CH', 'CHE', 'en', 'SWITZERLAND');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (234, 'SY', 'SYR', 'en', 'SYRIAN ARAB REPUBLIC');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (235, 'TW', 'TWN', 'en', 'TAIWAN, PROVINCE OF CHINA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (236, 'TJ', 'TJK', 'en', 'TAJIKISTAN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (237, 'TZ', 'TZA', 'en', 'TANZANIA, UNITED REPUBLIC OF');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (238, 'TH', 'THA', 'en', 'THAILAND');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (239, 'TG', 'TGO', 'en', 'TOGO');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (240, 'TK', 'TKL', 'en', 'TOKELAU');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (241, 'TO', 'TON', 'en', 'TONGA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (242, 'TT', 'TTO', 'en', 'TRINIDAD AND TOBAGO');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (243, 'TN', 'TUN', 'en', 'TUNISIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (244, 'TR', 'TUR', 'en', 'TURKEY');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (245, 'TM', 'TKM', 'en', 'TURKMENISTAN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (246, 'TC', 'TCA', 'en', 'TURKS AND CAICOS ISLANDS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (247, 'TV', 'TUV', 'en', 'TUVALU');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (248, 'UG', 'UGA', 'en', 'UGANDA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (249, 'UA', 'UKR', 'en', 'UKRAINE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (250, 'AE', 'ARE', 'en', 'UNITED ARAB EMIRATES');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (251, 'GB', 'GBR', 'en', 'UNITED KINGDOM');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (252, 'US', 'USA', 'en', 'UNITED STATES');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (253, 'UM', 'UMI', 'en', 'UNITED STATES MINOR OUTLYING ISLANDS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (254, 'UY', 'URY', 'en', 'URUGUAY');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (255, 'UZ', 'UZB', 'en', 'UZBEKISTAN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (256, 'VU', 'VUT', 'en', 'VANUATU');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (257, 'VE', 'VEN', 'en', 'VENEZUELA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (258, 'VN', 'VNM', 'en', 'VIET NAM');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (259, 'VG', 'VGB', 'en', 'VIRGIN ISLANDS (BRITISH)');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (260, 'VI', 'VIR', 'en', 'VIRGIN ISLANDS (U.S.)');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (261, 'WF', 'WLF', 'en', 'WALLIS AND FUTUNA ISLANDS');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (262, 'EH', 'ESH', 'en', 'WESTERN SAHARA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (263, 'YE', 'YEM', 'en', 'YEMEN');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (264, 'YU', 'YUG', 'en', 'YUGOSLAVIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (265, 'ZR', 'ZAR', 'en', 'ZAIRE');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (266, 'ZM', 'ZMB', 'en', 'ZAMBIA');
INSERT INTO country (id, iso2, iso3, lang, name) VALUES (267, 'ZW', 'ZWE', 'en', 'ZIMBABWE');



SELECT pg_catalog.setval('hibernate_sequence', 949, true);


INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('GAZETTEER_AGENCY', 1, '1', NULL, 'en', 'Geonames.org');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('GAZETTEER_AGENCY', 2, '2', NULL, 'en', 'National Geospatial-Intelligence Agency');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('GAZETTEER_AGENCY', 3, '3', NULL, 'en', 'Open Street Map');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_VOCABULARY', 4, 'A1', NULL, 'en', 'Global Admininistrative Unit Layers');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_VOCABULARY', 5, 'A2', 'Note: the unsalb.org website is no longer accessible, and public access to the boundaries resources has been removed http://www.ungiwg.org/content/united-nations-international-and-administrative-boundaries-resources', 'en', 'UN Second Administrative Level Boundary Project');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_VOCABULARY', 6, 'A3', NULL, 'en', 'Global Administrative Areas');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_VOCABULARY', 7, 'A4', NULL, 'en', 'ISO Country (3166-1 alpha-2)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_VOCABULARY', 8, 'G1', NULL, 'en', 'Geonames');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_VOCABULARY', 9, 'G2', 'Note: the code should be formed by prefixing the relevant OpenStreetMap ID with node/ way/ or relation/ as appropriate, e.g. node/1234567', 'en', 'OpenStreetMap');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_PRECISION', 10, '1', 'The coordinates corresponds to an exact location, such as a populated place or a hill. The code is also used for locations that join a location which is a line (such as a road or railroad). Lines are not coded only the points that connect lines. All points that are mentioned in the source are coded.', 'en', 'Exact location');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_PRECISION', 11, '2', 'The location is mentioned in the source as being near, in the area of, or up to 25 km away from an exact location. The coordinates refer to that adjacent, exact, location.', 'en', 'Near exact location');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_PRECISION', 12, '3', 'The location is, or lies in, a second order administrative division  (ADM2), such as a district, municipality or commune', 'en', 'Second order administrative division');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_PRECISION', 13, '4', 'The location is, or lies in, a first order administrative division (ADM1), such as a province, state or governorate', 'en', 'First order administrative division');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_PRECISION', 14, '5', 'The location can only be related to estimated coordinates, such as when a location  lies between populated places; along rivers, roads and borders; more than 25 km away from a specific location; or when sources refer to parts of a country greater than ADM1 (e.g. northern Uganda).', 'en', 'Estimated coordinates');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_PRECISION', 15, '6', 'The location can only be related to an independent political entity, meaning the pair of coordinates that represent a country.', 'en', 'Independent political entity');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_PRECISION', 16, '7', 'The capital is assumed to be one of two possible locations. (The other option is the country level, with precision 9.)', 'en', 'Unclear - capital Unclear.');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_PRECISION', 17, '8', 'The location is estimated to be a seat of an administrative division (local capital) or the national capital.If aid goes to Luanda without further specification on the location, and there is an ADM1 and a capital called Luanda, then code the coordinates of the capital with precision 8. If it is not  spelled out that aid goes to the capital;  but if it is clear that it goes to a government ministry or to government financial institutions; and if those institutions are most likely located in the capital; then the coordinates of the capital are coded with precision 8. (However,if it can be verified that the recipient institution is located in the capital then precision 1 is used.)', 'en', 'Local or national capital');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_PRECISION', 18, '9', 'The locations is estimated to be the country  level(often paired with the capital, with precision 7)', 'en', 'Unclear - country Unclear.');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_REACH', 19, '1', 'The location specifies where the activity is carried out', 'en', 'Activity');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_REACH', 20, '2', 'The location specifies where the intended beneficiaries of the activity live', 'en', 'Intended Beneficiaries');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('EXACTNESS', 21, '1', 'The designated geographic location is exact', 'en', 'Exact');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('EXACTNESS', 22, '2', 'The designated geographic location is approximate', 'en', 'Approximate');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_CLASS', 23, '1', 'The designated geographic location is an administrative region (state, county, province, district, municipality etc.)', 'en', 'Administrative Region');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_CLASS', 24, '2', 'The designated geographic location is a populated place (town, village, farm etc.)', 'en', 'Populated Place');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_CLASS', 25, '3', 'The designated geopgraphic location is a structure (such as a school or a clinic)', 'en', 'Structure');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('LOCATION_CLASS', 26, '4', 'The designated geographic location is a topographical feature, such as a mountain, a river, a forest', 'en', 'Other Topographical Feature');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 268, 'AIRQ', 'abandoned airfield', 'en', 'abandoned airfield');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 269, 'CMPQ', 'abandoned camp', 'en', 'abandoned camp');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 270, 'CNLQ', 'abandoned canal', 'en', 'abandoned canal');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 271, 'MFGQ', 'abandoned factory', 'en', 'abandoned factory');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 272, 'FRMQ', 'abandoned farm', 'en', 'abandoned farm');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 273, 'MNQ', 'abandoned mine', 'en', 'abandoned mine');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 274, 'MSSNQ', 'abandoned mission', 'en', 'abandoned mission');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 275, 'OILQ', 'abandoned oil well', 'en', 'abandoned oil well');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 276, 'PPQ', 'abandoned police post', 'en', 'abandoned police post');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 277, 'PPLQ', 'abandoned populated place', 'en', 'abandoned populated place');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 278, 'PRNQ', 'abandoned prison', 'en', 'abandoned prison');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 279, 'RRQ', 'abandoned railroad', 'en', 'abandoned railroad');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 280, 'RSTNQ', 'abandoned railroad station', 'en', 'abandoned railroad station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 281, 'RSTPQ', 'abandoned railroad stop', 'en', 'abandoned railroad stop');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 282, 'STMQ', 'a former stream or distributary no longer carrying flowing water, but still evident due to lakes, wetland, topographic or vegetation patterns', 'en', 'abandoned watercourse');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 283, 'WLLQ', 'abandoned well', 'en', 'abandoned well');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 284, 'ADMD', 'an administrative division of a political entity, undifferentiated as to administrative level', 'en', 'administrative division');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 285, 'ADMF', 'a government building', 'en', 'administrative facility');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 286, 'AGRC', 'a tract of land set aside for agricultural settlement', 'en', 'agricultural colony');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 287, 'AGRF', 'a building and/or tract of land used for improving agriculture', 'en', 'agricultural facility');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 288, 'RESA', 'a tract of land reserved for agricultural reclamation and/or development', 'en', 'agricultural reserve');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 289, 'SCHA', 'º', 'en', 'agricultural school');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 290, 'AIRB', 'an area used to store supplies, provide barracks for air force personnel, hangars and runways for aircraft, and from which operations are initiated', 'en', 'airbase');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 291, 'AIRF', 'a place on land where aircraft land and take off; no facilities provided for the commercial handling of passengers and cargo', 'en', 'airfield');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 292, 'AIRP', 'a place where aircraft regularly land and take off, with runways, navigational aids, and major facilities for the commercial handling of passengers and cargo', 'en', 'airport');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 293, 'AMTH', 'an oval or circular structure with rising tiers of seats about a stage or open space', 'en', 'amphitheater');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 294, 'STMA', 'a diverging branch flowing out of a main stream and rejoining it downstream', 'en', 'anabranch');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 295, 'ANCH', 'an area where vessels may anchor', 'en', 'anchorage');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 296, 'RDA', 'the remains of a road used by ancient cultures', 'en', 'ancient road');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 297, 'ANS', 'a place where archeological remains, old structures, or cultural artifacts are located', 'en', 'ancient site');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 298, 'WALLA', 'the remains of a linear defensive stone structure', 'en', 'ancient wall');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 299, 'BLDA', 'a building containing several individual apartments', 'en', 'apartment building');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 300, 'AQC', 'facility or area for the cultivation of aquatic animals and plants, especially fish, shellfish, and seaweed, in natural or controlled marine or freshwater environments; underwater agriculture', 'en', 'aquaculture facility');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 301, 'CNLA', 'a conduit used to carry water', 'en', 'aqueduct');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 302, 'ARCH', 'a natural or man-made structure in the form of an arch', 'en', 'arch');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 303, 'LAND', 'a tract of land in the Arctic', 'en', 'Arctic land');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 304, 'AREA', 'a tract of land without homogeneous character or boundaries', 'en', 'area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 305, 'ISLF', 'an island created by landfill or diking and filling in a wetland, bay, or lagoon', 'en', 'artificial island');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 306, 'RNGA', 'a tract of land used for artillery firing practice', 'en', 'artillery range');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 307, 'ASPH', 'a small basin containing naturally occurring asphalt', 'en', 'asphalt lake');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 308, 'ASTR', 'a point on the earth whose position has been determined by observations of celestial bodies', 'en', 'astronomical station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 309, 'ASYL', 'a facility where the insane are cared for and protected', 'en', 'asylum');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 310, 'ATHF', 'a tract of land used for playing team sports, and athletic track and field events', 'en', 'athletic field');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 311, 'ATOL', 'a ring-shaped coral reef which has closely spaced islands on it encircling a lagoon', 'en', 'atoll(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 312, 'CTRA', 'a facility where atomic research is carried out', 'en', 'atomic center');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 313, 'BDLD', 'an area characterized by a maze of very closely spaced, deep, narrow, steep-sided ravines, and sharp crests and pinnacles', 'en', 'badlands');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 314, 'BSTN', 'a facility for baling agricultural products', 'en', 'baling station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 315, 'ESTB', 'an estate that specializes in the growing of bananas', 'en', 'banana plantation');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 316, 'BAN', 'an establishment for the custody, loan, exchange or issue of money, for the extension of credit, and for facilitating the transmission of funds', 'en', 'bank');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 317, 'BNK', 'an elevation, typically located on a shelf, over which the depth of water is relatively shallow but sufficient for most surface navigation', 'en', 'bank(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 318, 'BAR', 'a shallow ridge or mound of coarse unconsolidated material in a stream channel, at the mouth of a stream, estuary, or lagoon and in the wave-break zone along coasts', 'en', 'bar');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 319, 'BRKS', 'a building for lodging military personnel', 'en', 'barracks');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 320, 'BTL', 'a site of a land battle of historical importance', 'en', 'battlefield');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 321, 'BAY', 'a coastal indentation between two capes or headlands, larger than a cove but smaller than a gulf', 'en', 'bay');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 322, 'BAYS', 'coastal indentations between two capes or headlands, larger than a cove but smaller than a gulf', 'en', 'bays');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 323, 'BCH', 'a shore zone of coarse unconsolidated sediment that extends from the low-water line to the highest reach of storm waves', 'en', 'beach');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 324, 'RDGB', 'a ridge of sand just inland and parallel to the beach, usually in series', 'en', 'beach ridge');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 325, 'BCHS', 'a shore zone of coarse unconsolidated sediment that extends from the low-water line to the highest reach of storm waves', 'en', 'beaches');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 326, 'BCN', 'a fixed artificial navigation mark', 'en', 'beacon');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 327, 'BNCH', 'a long, narrow bedrock platform bounded by steeper slopes above and below, usually overlooking a waterbody', 'en', 'bench');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 328, 'BGHT', 'an open body of water forming a slight recession in a coastline', 'en', 'bight(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 329, 'BLHL', 'a hole in coastal rock through which sea water is forced by a rising tide or waves and spurted through an outlet into the air', 'en', 'blowhole(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 330, 'BLOW', 'a small depression in sandy terrain, caused by wind erosion', 'en', 'blowout(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 331, 'BTYD', 'a waterside facility for servicing, repairing, and building small vessels', 'en', 'boatyard');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 332, 'BOG', 'a wetland characterized by peat forming sphagnum moss, sedge, and other acid-water plants', 'en', 'bog(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 333, 'PSTB', 'a post or station at an international boundary for the regulation of movement of people and goods', 'en', 'border post');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 334, 'BLDR', 'a high altitude or high latitude bare, flat area covered with large angular rocks', 'en', 'boulder field');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 335, 'BP', 'a fixture marking a point along a boundary', 'en', 'boundary marker');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 336, 'BRKW', 'a structure erected to break the force of waves at the entrance to a harbor or port', 'en', 'breakwater');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 337, 'MFGB', 'one or more buildings where beer is brewed', 'en', 'brewery');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 338, 'BDG', 'a structure erected across an obstacle such as a stream, road, etc., in order to carry roads, railroads, and pedestrians across', 'en', 'bridge');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 339, 'ZNB', 'a zone recognized as a buffer between two nations in which military presence is minimal or absent', 'en', 'buffer zone');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 340, 'BLDG', 'a structure built for permanent use, as a house, factory, etc.', 'en', 'building(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 341, 'BUR', 'a cave used for human burials', 'en', 'burial cave(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 342, 'BUSH', 'a small clump of conspicuous bushes in an otherwise bare area', 'en', 'bush(es)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 343, 'CTRB', 'a place where a number of businesses are located', 'en', 'business center');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 344, 'BUTE', 'a small, isolated, usually flat-topped hill with steep sides', 'en', 'butte(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 345, 'CARN', 'a heap of stones erected as a landmark or for other purposes', 'en', 'cairn');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 346, 'CLDA', 'a depression measuring kilometers across formed by the collapse of a volcanic mountain', 'en', 'caldera');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 347, 'CMP', 'a site occupied by tents, huts, or other shelters for temporary use', 'en', 'camp(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 348, 'CNL', 'an artificial watercourse', 'en', 'canal');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 349, 'CNLB', 'a conspicuously curved or bent section of a canal', 'en', 'canal bend');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 350, 'TNLC', 'a tunnel through which a canal passes', 'en', 'canal tunnel');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 351, 'STMC', 'a stream that has been substantially ditched, diked, or straightened', 'en', 'canalized stream');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 352, 'MFGC', 'a building where food items are canned', 'en', 'cannery');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 353, 'CNYN', 'a deep, narrow valley with steep sides cutting into a plateau or mountainous area', 'en', 'canyon');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 354, 'CAPE', 'a land area, more prominent than a point, projecting into the sea and marking a notable change in coastal direction', 'en', 'cape');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 355, 'PPLC', 'capital of a political entity', 'en', 'capital of a political entity');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 356, 'RTE', 'the route taken by caravans', 'en', 'caravan route');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 357, 'CSNO', 'a building used for entertainment, especially gambling', 'en', 'casino');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 358, 'CSTL', 'a large fortified building or set of buildings', 'en', 'castle');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 359, 'TNKD', 'a small artificial pond used for immersing cattle in chemically treated water for disease control', 'en', 'cattle dipping tank');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 360, 'CSWY', 'a raised roadway across wet ground or shallow water', 'en', 'causeway');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 361, 'CAVE', 'an underground passageway or chamber, or cavity on the side of a cliff', 'en', 'cave(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 362, 'CMTY', 'a burial place or ground', 'en', 'cemetery');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 363, 'CHN', 'the deepest part of a stream, bay, lagoon, or strait, through which the main current flows', 'en', 'channel');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 364, 'MNCR', 'a mine where chrome ore is extracted', 'en', 'chrome mine(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 365, 'CH', 'a building for public Christian worship', 'en', 'church');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 366, 'CRQ', 'a bowl-like hollow partially surrounded by cliffs or steep slopes at the head of a glaciated valley', 'en', 'cirque');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 367, 'CRQS', 'bowl-like hollows partially surrounded by cliffs or steep slopes at the head of a glaciated valley', 'en', 'cirques');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 368, 'CLG', 'an area in a forest with trees removed', 'en', 'clearing');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 369, 'CFT', 'a deep narrow slot, notch, or groove in a coastal cliff', 'en', 'cleft(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 370, 'CLF', 'a high, steep to perpendicular slope overlooking a waterbody or lower area', 'en', 'cliff(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 371, 'HSPC', 'a medical facility associated with a hospital for outpatients', 'en', 'clinic');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 372, 'MNC', 'a mine where coal is extracted', 'en', 'coal mine(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 373, 'COLF', 'a region in which coal deposits of possible economic value occur', 'en', 'coalfield');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 374, 'CST', 'a zone of variable width straddling the shoreline', 'en', 'coast');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 375, 'STNC', 'a facility from which the coast is guarded by armed vessels', 'en', 'coast guard station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 376, 'GRVC', 'a planting of coconut trees', 'en', 'coconut grove');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 377, 'SCHC', 'the grounds and buildings of an institution of higher learning', 'en', 'college');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 378, 'CMN', 'a park or pasture for community use', 'en', 'common');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 379, 'COMC', 'a facility, including buildings, antennae, towers and electronic equipment for receiving and transmitting information', 'en', 'communication center');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 380, 'CTRCM', 'a facility for community recreation and other activities', 'en', 'community center');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 381, 'CNS', 'a lease of land by a government for economic development, e.g., mining, forestry', 'en', 'concession area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 382, 'CONE', 'a conical landform composed of mud or volcanic material', 'en', 'cone(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 383, 'CNFL', 'a place where two or more streams or intermittent streams flow together', 'en', 'confluence');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 384, 'CRSU', 'a gentle slope rising from oceanic depths towards the foot of a continental slope', 'en', 'continental rise');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 385, 'CVNT', 'a building where a community of nuns lives in seclusion', 'en', 'convent');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 386, 'MNCU', 'a mine where copper ore is extracted', 'en', 'copper mine(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 387, 'MFGCU', 'a facility for processing copper ore', 'en', 'copper works');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 388, 'RFC', 'a surface-navigation hazard composed of coral', 'en', 'coral reef(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 389, 'CRRL', 'a pen or enclosure for confining or capturing animals', 'en', 'corral(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 390, 'CRDR', 'a strip or area of land having significance as an access way', 'en', 'corridor');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 391, 'ESTC', 'an estate specializing in the cultivation of cotton', 'en', 'cotton plantation');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 392, 'HSEC', 'a large house, mansion, or chateau, on a large estate', 'en', 'country house');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 393, 'CTHSE', 'a building in which courts of law are held', 'en', 'courthouse');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 394, 'COVE', 'a small coastal indentation, smaller than a bay', 'en', 'cove(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 395, 'LKC', 'a lake in a crater or caldera', 'en', 'crater lake');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 396, 'LKSC', 'lakes in a crater or caldera', 'en', 'crater lakes');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 397, 'CRTR', 'a generally circular saucer or bowl-shaped depression caused by volcanic or meteorite explosive action', 'en', 'crater(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 398, 'CUET', 'an asymmetric ridge formed on tilted strata', 'en', 'cuesta(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 399, 'CULT', 'an area under cultivation', 'en', 'cultivated area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 400, 'CRNT', 'a horizontal flow of water in a given direction with uniform velocity', 'en', 'current');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 401, 'CSTM', 'a building in a port where customs and duties are paid, and where vessels are entered and cleared', 'en', 'customs house');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 402, 'PSTC', 'a building at an international boundary where customs and duties are paid on goods', 'en', 'customs post');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 403, 'CUTF', 'a channel formed as a result of a stream cutting through a meander neck', 'en', 'cutoff');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 404, 'DARY', 'a facility for the processing, sale and distribution of milk or milk products', 'en', 'dairy');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 405, 'DAM', 'a barrier constructed across a stream to impound water', 'en', 'dam');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 406, 'DEPU', 'a localized deep area within the confines of a larger feature, such as a trough, basin or trench', 'en', 'deep');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 407, 'DLTA', 'a flat plain formed by alluvial deposits at the mouth of a stream', 'en', 'delta');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 408, 'PCLD', 'dependent political entity', 'en', 'dependent political entity');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 409, 'DPR', 'a low area surrounded by higher land and usually characterized by interior drainage', 'en', 'depression(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 410, 'DSRT', 'a large area with little or no vegetation due to extreme environmental conditions', 'en', 'desert');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 411, 'PPLW', 'a village, town or city destroyed by a natural disaster, or by war', 'en', 'destroyed populated place');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 412, 'MNDT', 'a place where diatomaceous earth is extracted', 'en', 'diatomite mine(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 413, 'DIKE', 'an earth or stone embankment usually constructed for flood or stream control', 'en', 'dike');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 414, 'DIP', 'office, residence, or facility of a foreign government, which may include an embassy, consulate, chancery, office of charge dâ€™affaires, or other diplomatic, economic, military, or cultural mission', 'en', 'diplomatic facility');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 415, 'HSPD', 'a building where medical or dental aid is dispensed', 'en', 'dispensary');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 416, 'STMD', 'a branch which flows away from the main stream, as in a delta or irrigation canal', 'en', 'distributary(-ies)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 417, 'DTCH', 'a small artificial watercourse dug for draining or irrigating the land', 'en', 'ditch');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 418, 'DTCHM', 'an area where a drainage ditch enters a lagoon, lake or bay', 'en', 'ditch mouth(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 419, 'DVD', 'a line separating adjacent drainage basins', 'en', 'divide');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 420, 'DCK', 'a waterway between two piers, or cut into the land for the berthing of ships', 'en', 'dock(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 421, 'DCKB', 'a part of a harbor where ships dock', 'en', 'docking basin');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 422, 'DCKY', 'a facility for servicing, building, or repairing ships', 'en', 'dockyard');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 423, 'BSND', 'an area drained by a stream', 'en', 'drainage basin');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 424, 'CNLD', 'an artificial waterway carrying water away from a wetland or from drainage ditches', 'en', 'drainage canal');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 425, 'DTCHD', 'a ditch which serves to drain the land', 'en', 'drainage ditch');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 426, 'DCKD', 'a dock providing support for a vessel, and means for removing the water so that the bottom of the vessel can be exposed', 'en', 'dry dock');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 427, 'SBED', 'a channel formerly containing the water of a stream', 'en', 'dry stream bed');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 428, 'DUNE', 'a wave form, ridge or star shape feature composed of sand', 'en', 'dune(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 429, 'RGNE', 'a region of a country established for economic development or for statistical purposes', 'en', 'economic region');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 430, 'SCRP', 'a long line of cliffs or steep slopes separating level surfaces above and below', 'en', 'escarpment');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 431, 'EST', 'a large commercialized agricultural landholding with associated buildings and other facilities', 'en', 'estate(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 432, 'ESTY', 'a funnel-shaped stream mouth or embayment where fresh water mixes with sea water under tidal influences', 'en', 'estuary');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 433, 'STNE', 'a facility for carrying out experiments', 'en', 'experiment station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 434, 'FCL', 'a building or buildings housing a center, institute, foundation, hospital, prison, mission, courthouse, etc.', 'en', 'facility');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 435, 'CTRF', 'a place where more than one facility is situated', 'en', 'facility center');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 436, 'MFG', 'one or more buildings where goods are manufactured, processed or fabricated', 'en', 'factory');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 437, 'FAN', 'a fan-shaped wedge of coarse alluvium with apex merging with a mountain stream bed and the fan spreading out at a low angle slope onto an adjacent plain', 'en', 'fan(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 438, 'FRM', 'a tract of land with associated buildings devoted to agriculture', 'en', 'farm');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 439, 'PPLF', 'a populated place where the population is largely engaged in agricultural activities', 'en', 'farm village');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 440, 'FRMS', 'tracts of land with associated buildings devoted to agriculture', 'en', 'farms');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 441, 'FRMT', 'the buildings and adjacent service areas of a farm', 'en', 'farmstead');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 442, 'FY', 'a boat or other floating conveyance and terminal facilities regularly used to transport people and vehicles across a waterbody', 'en', 'ferry');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 443, 'FYT', 'a place where ferries pick-up and discharge passengers, vehicles and or cargo', 'en', 'ferry terminal');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 444, 'FLD', 'an open as opposed to wooded area', 'en', 'field(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 445, 'FIRE', 'building housing firefighters and/or fire fighting equipment', 'en', 'fire station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 446, 'ADM1', 'a primary administrative division of a country, such as a state in the United States', 'en', 'first-order administrative division');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 447, 'FISH', 'a fishing ground, bank or area where fishermen go to catch fish', 'en', 'fishing area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 448, 'PNDSF', 'ponds or enclosures in which fish are kept or raised', 'en', 'fishponds');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 449, 'FSR', 'a crack associated with volcanism', 'en', 'fissure');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 450, 'FJD', 'a long, narrow, steep-walled, deep-water arm of the sea at high latitudes, usually along mountainous coasts', 'en', 'fjord');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 451, 'FJDS', 'long, narrow, steep-walled, deep-water arms of the sea at high latitudes, usually along mountainous coasts', 'en', 'fjords');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 452, 'FORD', 'a shallow part of a stream which can be crossed on foot or by land vehicle', 'en', 'ford');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 453, 'RESF', 'a forested area set aside for preservation or controlled use', 'en', 'forest reserve');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 454, 'STNF', 'a collection of buildings and facilities for carrying out forest management', 'en', 'forest station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 455, 'FRST', 'an area dominated by tree vegetation', 'en', 'forest(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 456, 'INLTQ', 'an inlet which has been filled in, or blocked by deposits', 'en', 'former inlet');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 457, 'MLSGQ', 'a sugar mill no longer used as a sugar mill', 'en', 'former sugar mill');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 458, 'FT', 'a defensive structure or earthworks', 'en', 'fort');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 459, 'FRSTF', 'a forest fossilized by geologic processes and now exposed at the earth''s surface', 'en', 'fossilized forest');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 460, 'FNDY', 'a building or works where metal casting is carried out', 'en', 'foundry');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 461, 'ADM4', 'a subdivision of a third-order administrative division', 'en', 'fourth-order administrative division');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 462, 'ZNF', 'an area, usually a section of a port, where goods may be received and shipped free of customs duty and of most customs regulations', 'en', 'free trade zone');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 463, 'PCLF', 'freely associated state', 'en', 'freely associated state');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 464, 'DPOF', 'an area where fuel is stored', 'en', 'fuel depot');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 465, 'GAP', 'a low place in a ridge, not used for transportation', 'en', 'gap');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 466, 'GDN', 'an enclosure for displaying selected plant or animal life', 'en', 'garden(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 467, 'GOSP', 'a facility for separating gas from oil', 'en', 'gas-oil separator plant');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 468, 'GASF', 'an area containing a subterranean store of natural gas of economic value', 'en', 'gasfield');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 469, 'GATE', 'a controlled access entrance or exit', 'en', 'gate');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 470, 'GYSR', 'a type of hot spring with intermittent eruptions of jets of hot water and steam', 'en', 'geyser');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 471, 'GHAT', 'a set of steps leading to a river, which are of religious significance, and at their base is usually a platform for bathing', 'en', 'ghÄt');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 472, 'GLCR', 'a mass of ice, usually at high latitudes or high elevations, with sufficient thickness to flow away from the source area in lobes, tongues, or masses', 'en', 'glacier(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 473, 'MNAU', 'a mine where gold ore, or alluvial gold is extracted', 'en', 'gold mine(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 474, 'RECG', 'a recreation field where golf is played', 'en', 'golf course');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 475, 'GRGE', 'a short, narrow, steep-sided section of a stream valley', 'en', 'gorge(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 476, 'GRSLD', 'an area dominated by grass vegetation', 'en', 'grassland');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 477, 'GRVE', 'a burial site', 'en', 'grave');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 478, 'GVL', 'an area covered with gravel', 'en', 'gravel area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 479, 'GRAZ', 'an area of grasses and shrubs used for grazing', 'en', 'grazing area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 480, 'GHSE', 'a house used to provide lodging for paying guests', 'en', 'guest house');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 481, 'GULF', 'a large recess in the coastline, larger than a bay', 'en', 'gulf');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 482, 'HLT', 'a place where caravans stop for rest', 'en', 'halting place');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 483, 'HMCK', 'a patch of ground, distinct from and slightly above the surrounding plain or wetland. Often occurs in groups', 'en', 'hammock(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 484, 'AIRG', 'a covered and usually enclosed area for housing and repairing aircraft', 'en', 'hangar');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 485, 'VALG', 'a valley the floor of which is notably higher than the valley or shore to which it leads; most common in areas that have been glaciated', 'en', 'hanging valley');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 486, 'HBR', 'a haven or space of deep water so sheltered by the adjacent land as to afford a safe anchorage for ships', 'en', 'harbor(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 487, 'HDLD', 'a high projection of land extending into a large body of water beyond the line of the coast', 'en', 'headland');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 488, 'STMH', 'the source and upper part of a stream, including the upper drainage basin', 'en', 'headwaters');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 489, 'HTH', 'an upland moor or sandy area dominated by low shrubby vegetation including heather', 'en', 'heath');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 490, 'AIRH', 'a place where helicopters land and take off', 'en', 'heliport');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 491, 'HERM', 'a secluded residence, usually for religious sects', 'en', 'hermitage');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 492, 'HLL', 'a rounded elevation of limited extent rising above the surrounding land with local relief of less than 300m', 'en', 'hill');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 493, 'HLLS', 'rounded elevations of limited extent rising above the surrounding land with local relief of less than 300m', 'en', 'hills');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 494, 'ADMDH', 'a former administrative division of a political entity, undifferentiated as to administrative level', 'en', 'historical administrative division');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 495, 'ADM1H', 'a former first-order administrative division', 'en', 'historical first-order administrative division');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 496, 'ADM4H', 'a former fourth-order administrative division', 'en', 'historical fourth-order administrative division');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 497, 'PCLH', 'a former political entity', 'en', 'historical political entity');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 498, 'PPLH', 'a populated place that no longer exists', 'en', 'historical populated place');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 499, 'RRH', 'a former permanent twin steel-rail track on which freight and passenger cars move long distances', 'en', 'historical railroad');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 500, 'RSTNH', 'a former facility comprising ticket office, platforms, etc. for loading and unloading train passengers and freight', 'en', 'historical railroad station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 501, 'RGNH', 'a former area distinguished by one or more observable physical or cultural characteristics', 'en', 'historical region');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 502, 'ADM2H', 'a former second-order administrative division', 'en', 'historical second-order administrative division');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 503, 'HSTS', 'a place of historical importance', 'en', 'historical site');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 504, 'ADM3H', 'a former third-order administrative division', 'en', 'historical third-order administrative division');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 505, 'UFHU', 'an undersea feature whose existence has been subsequently disproved', 'en', 'historical undersea feature');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 506, 'HMSD', 'a residence, owner''s or manager''s, on a sheep or cattle station, woolshed, outcamp, or Aboriginal outstation, specific to Australia and New Zealand', 'en', 'homestead');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 507, 'HSP', 'a building in which sick or injured, especially those confined to bed, are medically treated', 'en', 'hospital');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 508, 'SPNT', 'a place where hot ground water flows naturally out of the ground', 'en', 'hot spring(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 509, 'HTL', 'a building providing lodging and/or meals for the public', 'en', 'hotel');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 510, 'HSE', 'a building used as a human habitation', 'en', 'house(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 511, 'DEVH', 'a tract of land on which many houses of similar design are built according to a development plan', 'en', 'housing development');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 512, 'RESH', 'a tract of land used primarily for hunting', 'en', 'hunting reserve');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 513, 'HUT', 'a small primitive house', 'en', 'hut');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 514, 'HUTS', 'small primitive houses', 'en', 'huts');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 515, 'PSH', 'a building where electricity is generated from water power', 'en', 'hydroelectric power station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 516, 'CAPG', 'a dome-shaped mass of glacial ice covering an area of mountain summits or other high lands; smaller than an ice sheet', 'en', 'icecap');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 517, 'DPRG', 'a comparatively depressed area on an icecap', 'en', 'icecap depression');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 518, 'DOMG', 'a comparatively elevated area on an icecap', 'en', 'icecap dome');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 519, 'RDGG', 'a linear elevation on an icecap', 'en', 'icecap ridge');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 520, 'PCLI', 'independent political entity', 'en', 'independent political entity');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 521, 'INDS', 'an area characterized by industrial activity', 'en', 'industrial area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 522, 'INLT', 'a narrow waterway extending into the land, or connecting a bay or lagoon with a larger body of water', 'en', 'inlet');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 523, 'STNI', 'a station at which vehicles, goods, and people are inspected', 'en', 'inspection station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 524, 'TRGD', 'a long wind-swept trough between parallel longitudinal dunes', 'en', 'interdune trough(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 525, 'INTF', 'a relatively undissected upland between adjacent stream valleys', 'en', 'interfluve');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 526, 'LKI', 'intermittent lake', 'en', 'intermittent lake');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 527, 'LKSI', 'intermittent lakes', 'en', 'intermittent lakes');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 528, 'LKOI', 'intermittent oxbow lake', 'en', 'intermittent oxbow lake');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 529, 'PNDI', 'intermittent pond', 'en', 'intermittent pond');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 530, 'PNDSI', 'intermittent ponds', 'en', 'intermittent ponds');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 531, 'POOLI', 'intermittent pool', 'en', 'intermittent pool');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 532, 'RSVI', 'intermittent reservoir', 'en', 'intermittent reservoir');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 533, 'LKNI', 'intermittent salt lake', 'en', 'intermittent salt lake');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 534, 'LKSNI', 'intermittent salt lakes', 'en', 'intermittent salt lakes');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 535, 'PNDNI', 'intermittent salt pond(s)', 'en', 'intermittent salt pond(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 536, 'STMI', 'intermittent stream', 'en', 'intermittent stream');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 537, 'WTLDI', 'intermittent wetland', 'en', 'intermittent wetland');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 538, 'RDIN', 'a junction of two or more highways by a system of separate levels that permit traffic to pass from one to another without the crossing of traffic streams', 'en', 'intersection');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 539, 'MNFE', 'a mine where iron ore is extracted', 'en', 'iron mine(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 540, 'FLDI', 'a tract of level or terraced land which is irrigated', 'en', 'irrigated field(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 541, 'CNLI', 'a canal which serves as a main conduit for irrigation water', 'en', 'irrigation canal');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 542, 'DTCHI', 'a ditch which serves to distribute irrigation water', 'en', 'irrigation ditch');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 543, 'SYSI', 'a network of ditches and one or more of the following elements: water supply, reservoir, canal, pump, well, drain, etc.', 'en', 'irrigation system');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 544, 'ISL', 'a tract of land, smaller than a continent, surrounded by water at high water', 'en', 'island');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 545, 'ISLS', 'tracts of land, smaller than a continent, surrounded by water at high water', 'en', 'islands');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 546, 'STLMT', 'Israeli settlement', 'en', 'Israeli settlement');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 547, 'ISTH', 'a narrow strip of land connecting two larger land masses and bordered by water', 'en', 'isthmus');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 548, 'JTY', 'a structure built out into the water at a river mouth or harbor entrance to regulate currents and silting', 'en', 'jetty');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 549, 'KRST', 'a distinctive landscape developed on soluble rock such as limestone characterized by sinkholes, caves, disappearing streams, and underground drainage', 'en', 'karst area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 550, 'CMPLA', 'a camp used by migrant or temporary laborers', 'en', 'labor camp');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 551, 'LGN', 'a shallow coastal waterbody, completely or partly separated from a larger body of water by a barrier island, coral reef or other depositional feature', 'en', 'lagoon');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 552, 'LGNS', 'shallow coastal waterbodies, completely or partly separated from a larger body of water by a barrier island, coral reef or other depositional feature', 'en', 'lagoons');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 553, 'LK', 'a large inland body of standing water', 'en', 'lake');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 554, 'LBED', 'a dried up or drained area of a former lake', 'en', 'lake bed(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 555, 'CHNL', 'that part of a lake having water deep enough for navigation between islands, shoals, etc.', 'en', 'lake channel(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 556, 'RGNL', 'a tract of land distinguished by numerous lakes', 'en', 'lake region');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 557, 'LKS', 'large inland bodies of standing water', 'en', 'lakes');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 558, 'ISLT', 'a coastal island connected to the mainland by barrier beaches, levees or dikes', 'en', 'land-tied island');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 559, 'LNDF', 'a place for trash and garbage disposal in which the waste is buried between layers of earth to build up low-lying land', 'en', 'landfill');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 560, 'LDNG', 'a place where boats receive or discharge passengers and freight, but lacking most port facilities', 'en', 'landing');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 561, 'LAVA', 'an area of solidified lava', 'en', 'lava area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 562, 'MNPB', 'a mine where lead ore is extracted', 'en', 'lead mine(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 563, 'LTER', 'a tract of land leased by the United Kingdom from the People''s Republic of China to form part of Hong Kong', 'en', 'leased area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 564, 'LEPC', 'a settled area inhabited by lepers in relative isolation', 'en', 'leper colony');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 565, 'HSPL', 'an asylum or hospital for lepers', 'en', 'leprosarium');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 566, 'LEV', 'a natural low embankment bordering a distributary or meandering stream; often built up artificially to control floods', 'en', 'levee');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 567, 'LTHSE', 'a distinctive structure exhibiting a major navigation light', 'en', 'lighthouse');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 568, 'MFGLM', 'a furnace in which limestone is reduced to lime', 'en', 'limekiln');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 569, 'GOVL', 'a facility housing local governmental offices, usually a city, town, or village hall', 'en', 'local government office');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 570, 'LCTY', 'a minor area or place of unspecified or mixed character and indefinite boundaries', 'en', 'locality');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 571, 'LOCK', 'a basin in a waterway with gates at each end by means of which vessels are passed from one water level to another', 'en', 'lock(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 572, 'CMPL', 'a camp used by loggers', 'en', 'logging camp');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 573, 'STMSB', 'a surface stream that disappears into an underground channel, or dries up in an arid area', 'en', 'lost river');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 574, 'MVA', 'a tract of land where military field exercises are carried out', 'en', 'maneuver area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 575, 'ISLM', 'a mangrove swamp surrounded by a waterbody', 'en', 'mangrove island');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 576, 'MGV', 'a tropical tidal mud flat characterized by mangrove vegetation', 'en', 'mangrove swamp');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 577, 'MAR', 'a harbor facility for small boats, yachts, etc.', 'en', 'marina');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 578, 'CHNM', 'that part of a body of water deep enough for navigation through an area otherwise not suitable', 'en', 'marine channel');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 579, 'SCHN', 'a school at which maritime sciences form the core of the curriculum', 'en', 'maritime school');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 580, 'MKT', 'a place where goods are bought and sold at regular intervals', 'en', 'market');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 581, 'MRSH', 'a wetland dominated by grass-like vegetation', 'en', 'marsh(es)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 582, 'MDW', 'a small, poorly drained area dominated by grassy vegetation', 'en', 'meadow');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 583, 'NKM', 'a narrow strip of land between the two limbs of a meander loop at its narrowest point', 'en', 'meander neck');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 584, 'CTRM', 'a complex of health care buildings including two or more of the following: hospital, medical school, clinic, pharmacy, doctor''s offices, etc.', 'en', 'medical center');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 585, 'MESA', 'a flat-topped, isolated elevation with steep slopes on all sides, less extensive than a plateau', 'en', 'mesa(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 586, 'STNM', 'a station at which weather elements are recorded', 'en', 'meteorological station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 587, 'MILB', 'a place used by an army or other armed service for storing arms and supplies, and for accommodating and training troops, a base from which operations can be initiated', 'en', 'military base');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 588, 'INSM', 'a facility for use of and control by armed forces', 'en', 'military installation');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 589, 'SCHM', 'a school at which military science forms the core of the curriculum', 'en', 'military school');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 590, 'ML', 'a building housing machines for transforming, shaping, finishing, grinding, or extracting products', 'en', 'mill(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 591, 'MN', 'a site where mineral ores are extracted from the ground by excavating surface pits and subterranean passages', 'en', 'mine(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 592, 'MNA', 'an area of mine sites where minerals and ores are extracted', 'en', 'mining area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 593, 'CMPMN', 'a camp used by miners', 'en', 'mining camp');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 594, 'MSSN', 'a place characterized by dwellings, school, church, hospital and other facilities operated by a religious group for the purpose of providing charitable services and to propagate religion', 'en', 'mission');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 595, 'MOLE', 'a massive structure of masonry or large stones serving as a pier or breakwater', 'en', 'mole');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 596, 'MSTY', 'a building and grounds where a community of monks lives in seclusion', 'en', 'monastery');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 597, 'MNMT', 'a commemorative structure or statue', 'en', 'monument');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 598, 'MOOR', 'an area of open ground overlaid with wet peaty soils', 'en', 'moor(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 599, 'MRN', 'a mound, ridge, or other accumulation of glacial till', 'en', 'moraine');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 600, 'MSQE', 'a building for public Islamic worship', 'en', 'mosque');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 601, 'MND', 'a low, isolated, rounded hill', 'en', 'mound(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 602, 'MT', 'an elevation standing high above the surrounding area with small summit area, steep slopes and local relief of 300m or more', 'en', 'mountain');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 603, 'MTS', 'a mountain range or a group of mountains or high ridges', 'en', 'mountains');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 604, 'FLTM', 'a relatively level area of mud either between high and low tide lines, or subject to flooding', 'en', 'mud flat(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 605, 'MFGM', 'a factory where ammunition is made', 'en', 'munitions plant');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 606, 'MUS', 'a building where objects of permanent interest in one or more of the arts and sciences are preserved and exhibited', 'en', 'museum');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 607, 'NRWS', 'a navigable narrow part of a bay, strait, river, etc.', 'en', 'narrows');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 608, 'TNLN', 'a cave that is open at both ends', 'en', 'natural tunnel');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 609, 'RESN', 'an area reserved for the maintenance of a natural habitat', 'en', 'nature reserve');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 610, 'NVB', 'an area used to store supplies, provide barracks for troops and naval personnel, a port for naval vessels, and from which operations are initiated', 'en', 'naval base');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 611, 'CNLN', 'a watercourse constructed for navigation of vessels', 'en', 'navigation canal(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 612, 'CHNN', 'a buoyed channel of sufficient depth for the safe navigation of vessels', 'en', 'navigation channel');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 613, 'MNNI', 'a mine where nickel ore is extracted', 'en', 'nickel mine(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 614, 'NOV', 'a religious house or school where novices are trained', 'en', 'novitiate');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 615, 'PSN', 'nuclear power station', 'en', 'nuclear power station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 616, 'NTK', 'a rock or mountain peak protruding through glacial ice', 'en', 'nunatak');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 617, 'NTKS', 'rocks or mountain peaks protruding through glacial ice', 'en', 'nunataks');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 618, 'NSY', 'a place where plants are propagated for transplanting or grafting', 'en', 'nursery(-ies)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 619, 'OAS', 'an area in a desert made productive by the availability of water', 'en', 'oasis(-es)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 620, 'OBPT', 'a wildlife or scenic observation point', 'en', 'observation point');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 621, 'OBS', 'a facility equipped for observation of atmospheric or space phenomena', 'en', 'observatory');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 622, 'OCN', 'one of the major divisions of the vast expanse of salt water covering part of the earth', 'en', 'ocean');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 623, 'BLDO', 'commercial building where business and/or services are conducted', 'en', 'office building');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 624, 'CMPO', 'a camp used by oilfield workers', 'en', 'oil camp');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 625, 'ESTO', 'an estate specializing in the cultivation of oil palm trees', 'en', 'oil palm plantation');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 626, 'OILP', 'a pipeline used for transporting oil', 'en', 'oil pipeline');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 627, 'OILJ', 'a section of an oil pipeline where two or more pipes join together', 'en', 'oil pipeline junction');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 628, 'TRMO', 'a tank farm or loading facility at the end of an oil pipeline', 'en', 'oil pipeline terminal');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 629, 'PMPO', 'a facility for pumping oil through a pipeline', 'en', 'oil pumping station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 630, 'OILR', 'a facility for converting crude oil into refined petroleum products', 'en', 'oil refinery');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 631, 'OILW', 'a well from which oil may be pumped', 'en', 'oil well');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 632, 'OILF', 'an area containing a subterranean store of petroleum of economic value', 'en', 'oilfield');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 633, 'GRVO', 'a planting of olive trees', 'en', 'olive grove');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 634, 'MLO', 'a mill where oil is extracted from olives', 'en', 'olive oil mill');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 635, 'OCH', 'a planting of fruit or nut trees', 'en', 'orchard(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 636, 'MLM', 'a facility for improving the metal content of ore by concentration', 'en', 'ore treatment plant');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 637, 'OVF', 'an area of breaking waves caused by the meeting of currents or by waves moving against the current', 'en', 'overfalls');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 638, 'LKO', 'a crescent-shaped lake commonly found adjacent to meandering streams', 'en', 'oxbow lake');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 639, 'PGDA', 'a tower-like storied structure, usually a Buddhist shrine', 'en', 'pagoda');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 640, 'PAL', 'a large stately house, often a royal or presidential residence', 'en', 'palace');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 641, 'GRVP', 'a planting of palm trees', 'en', 'palm grove');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 642, 'RESP', 'an area of palm trees where use is controlled', 'en', 'palm tree reserve');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 643, 'PAN', 'a near-level shallow, natural depression or basin, usually containing an intermittent lake, pond, or pool', 'en', 'pan');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 644, 'PANS', 'a near-level shallow, natural depression or basin, usually containing an intermittent lake, pond, or pool', 'en', 'pans');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 645, 'PRSH', 'an ecclesiastical district', 'en', 'parish');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 646, 'PRK', 'an area, often of forested land, maintained as a place of beauty, or for recreation', 'en', 'park');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 647, 'PRKGT', 'a controlled access to a park', 'en', 'park gate');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 648, 'PRKHQ', 'a park administrative facility', 'en', 'park headquarters');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 649, 'GARG', 'a building or underground facility used exclusively for parking vehicles', 'en', 'parking garage');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 650, 'PKLT', 'an area used for parking vehicles', 'en', 'parking lot');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 651, 'PASS', 'a break in a mountain range or other high obstruction, used for transportation from one side to the other [See also gap]', 'en', 'pass');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 652, 'PSTP', 'a post from which patrols are sent out', 'en', 'patrol post');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 653, 'PK', 'a pointed elevation atop a mountain, ridge, or other hypsographic feature', 'en', 'peak');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 654, 'PKS', 'pointed elevations atop a mountain, ridge, or other hypsographic features', 'en', 'peaks');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 655, 'PEAT', 'an area where peat is harvested', 'en', 'peat cutting area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 656, 'PEN', 'an elongate area of land projecting into a body of water and nearly surrounded by water', 'en', 'peninsula');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 657, 'BSNP', 'an area underlain by an oil-rich structural basin', 'en', 'petroleum basin');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 658, 'MFGPH', 'a facility for producing fertilizer', 'en', 'phosphate works');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 659, 'PIER', 'a structure built out into navigable water on piles providing berthing for ships and recreation', 'en', 'pier');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 660, 'GRVPN', 'a planting of pine trees', 'en', 'pine grove');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 661, 'MNPL', 'a place where heavy metals are concentrated and running water is used to extract them from unconsolidated sediments', 'en', 'placer mine(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 662, 'PLN', 'an extensive area of comparatively level to gently undulating land, lacking surface irregularities, and usually adjacent to a higher area', 'en', 'plain(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 663, 'PLAT', 'an elevated plain with steep slopes on one or more sides, and often with incised streams', 'en', 'plateau');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 772, 'PLNX', 'section of plain', 'en', 'section of plain');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 664, 'PT', 'a tapering piece of land projecting into a body of water, less prominent than a cape', 'en', 'point');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 665, 'PTS', 'tapering pieces of land projecting into a body of water, less prominent than a cape', 'en', 'points');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 666, 'PLDR', 'an area reclaimed from the sea by diking and draining', 'en', 'polder');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 667, 'PP', 'a building in which police are stationed', 'en', 'police post');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 668, 'PCL', 'political entity', 'en', 'political entity');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 669, 'PND', 'a small standing waterbody', 'en', 'pond');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 670, 'PNDS', 'small standing waterbodies', 'en', 'ponds');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 671, 'POOL', 'a small and comparatively still, deep part of a larger body of water such as a stream or harbor; or a small body of standing water', 'en', 'pool(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 672, 'PPLL', 'an area similar to a locality but with a small group of dwellings or other buildings', 'en', 'populated locality');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 673, 'PPL', 'a city, town, village, or other agglomeration of buildings where people live and work', 'en', 'populated place');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 674, 'PPLS', 'cities, towns, villages, or other agglomerations of buildings where people live and work', 'en', 'populated places');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 675, 'PRT', 'a place provided with terminal and transfer facilities for loading and discharging waterborne cargo or passengers, usually located in a harbor', 'en', 'port');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 676, 'PTGE', 'a place where boats, goods, etc., are carried overland between navigable waters', 'en', 'portage');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 677, 'PO', 'a public building in which mail is received, sorted and distributed', 'en', 'post office');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 678, 'PS', 'a facility for generating electric power', 'en', 'power station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 679, 'PRN', 'a facility for confining prisoners', 'en', 'prison');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 680, 'PRMN', 'a place for public walking, usually along a beach front', 'en', 'promenade');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 681, 'PROM', 'a bluff or prominent hill overlooking or projecting into a lowland', 'en', 'promontory(-ies)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 682, 'PYR', 'an ancient massive structure of square ground plan with four triangular faces meeting at a point and used for enclosing tombs', 'en', 'pyramid');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 683, 'PYRS', 'ancient massive structures of square ground plan with four triangular faces meeting at a point and used for enclosing tombs', 'en', 'pyramids');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 684, 'MNQR', 'a surface mine where building stone or gravel and sand, etc. are extracted', 'en', 'quarry(-ies)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 685, 'QUAY', 'a structure of solid construction along a shore or bank which provides berthing for ships and which generally provides cargo handling facilities', 'en', 'quay');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 686, 'QCKS', 'an area where loose sand with water moving through it may become unstable when heavy objects are placed at the surface, causing them to sink', 'en', 'quicksand');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 687, 'RECR', 'a track where races are held', 'en', 'racetrack');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 688, 'OBSR', 'a facility equipped with an array of antennae for receiving radio waves from space', 'en', 'radio observatory');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 689, 'STNR', 'a facility for producing and transmitting information by radio waves', 'en', 'radio station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 690, 'RR', 'a permanent twin steel-rail track on which freight and passenger cars move long distances', 'en', 'railroad');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 691, 'RJCT', 'a place where two or more railroad tracks join', 'en', 'railroad junction');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 692, 'RSD', 'a short track parallel to and joining the main track', 'en', 'railroad siding');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 693, 'RSGNL', 'a signal at the entrance of a particular section of track governing the movement of trains', 'en', 'railroad signal');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 694, 'RSTN', 'a facility comprising ticket office, platforms, etc. for loading and unloading train passengers and freight', 'en', 'railroad station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 695, 'RSTP', 'a place lacking station facilities where trains stop to pick up and unload passengers and freight', 'en', 'railroad stop');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 696, 'TNLRR', 'a tunnel through which a railroad passes', 'en', 'railroad tunnel');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 697, 'RYD', 'a system of tracks used for the making up of trains, and switching and storing freight cars', 'en', 'railroad yard');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 698, 'RNCH', 'a large farm specializing in extensive grazing of livestock', 'en', 'ranch(es)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 699, 'RPDS', 'a turbulent section of a stream associated with a steep, irregular stream bed', 'en', 'rapids');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 700, 'RVN', 'a small, narrow, deep, steep-sided stream channel, smaller than a gorge', 'en', 'ravine(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 701, 'RCH', 'a straight section of a navigable stream or channel between two bends', 'en', 'reach');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 702, 'RF', 'a surface-navigation hazard composed of consolidated material', 'en', 'reef(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 703, 'PRNJ', 'a facility for confining, training, and reforming young law offenders', 'en', 'reformatory');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 704, 'CMPRF', 'a camp used by refugees', 'en', 'refugee camp');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 705, 'RGN', 'an area distinguished by one or more observable physical or cultural characteristics', 'en', 'region');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 706, 'CTRR', 'a facility where more than one religious activity is carried out, e.g., retreat, school, monastery, worship', 'en', 'religious center');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 707, 'PPLR', 'a populated place whose population is largely engaged in religious occupations', 'en', 'religious populated place');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 708, 'RLG', 'an ancient site of significant religious importance', 'en', 'religious site');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 709, 'ITTR', 'a facility where research is carried out', 'en', 'research institute');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 710, 'RESV', 'a tract of land set aside for aboriginal, tribal, or native populations', 'en', 'reservation');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 711, 'RES', 'a tract of public land reserved for future use or restricted as to use', 'en', 'reserve');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 712, 'RSV', 'an artificial pond or lake', 'en', 'reservoir(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 713, 'RSRT', 'a specialized facility for vacation, health, or participation sports activities', 'en', 'resort');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 714, 'RHSE', 'a structure maintained for the rest and shelter of travelers', 'en', 'resthouse');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 715, 'RLGR', 'a place of temporary seclusion, especially for religious groups', 'en', 'retreat');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 716, 'RDGE', 'a long narrow elevation with steep sides, and a more or less continuous crest', 'en', 'ridge(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 717, 'RD', 'an open way with improved surface for transportation of animals, people and vehicles', 'en', 'road');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 718, 'RDB', 'a conspicuously curved or bent section of a road', 'en', 'road bend');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 719, 'RDCUT', 'an excavation cut through a hill or ridge for a road', 'en', 'road cut');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 720, 'RDJCT', 'a place where two or more roads join', 'en', 'road junction');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 721, 'TNLRD', 'a tunnel through which a road passes', 'en', 'road tunnel');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 722, 'RDST', 'an open anchorage affording less protection than a harbor', 'en', 'roadstead');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 723, 'RK', 'a conspicuous, isolated rocky mass', 'en', 'rock');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 724, 'HMDA', 'a relatively sand-free, high bedrock plateau in a hot desert, with or without a gravel veneer', 'en', 'rock desert');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 725, 'RKFL', 'an irregular mass of fallen rock at the base of a cliff or steep slope', 'en', 'rockfall');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 726, 'RKS', 'conspicuous, isolated rocky masses', 'en', 'rocks');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 727, 'RKRY', 'a breeding place of a colony of birds or seals', 'en', 'rookery');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 728, 'ESTR', 'an estate which specializes in growing and tapping rubber trees', 'en', 'rubber plantation');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 729, 'RUIN', 'a destroyed or decayed structure which is no longer functional', 'en', 'ruin(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 730, 'BDGQ', 'a destroyed or decayed bridge which is no longer functional', 'en', 'ruined bridge');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 731, 'DAMQ', 'a destroyed or decayed dam which is no longer functional', 'en', 'ruined dam');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 732, 'SBKH', 'a salt flat or salt encrusted plain subject to periodic inundation from flooding or high tides', 'en', 'sabkha(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 733, 'SDL', 'a broad, open pass crossing a ridge or between hills or mountains', 'en', 'saddle');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 734, 'SALT', 'a shallow basin or flat where salt accumulates after periodic inundation', 'en', 'salt area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 735, 'MFGN', 'diked salt ponds used in the production of solar evaporated salt', 'en', 'salt evaporation ponds');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 736, 'LKN', 'an inland body of salt water with no outlet', 'en', 'salt lake');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 737, 'LKSN', 'inland bodies of salt water with no outlet', 'en', 'salt lakes');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 738, 'MRSHN', 'a flat area, subject to periodic salt water inundation, dominated by grassy salt-tolerant plants', 'en', 'salt marsh');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 739, 'MNN', 'a mine from which salt is extracted', 'en', 'salt mine(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 740, 'PNDN', 'a small standing body of salt water often in a marsh or swamp, usually along a seacoast', 'en', 'salt pond');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 741, 'PNDSN', 'small standing bodies of salt water often in a marsh or swamp, usually along a seacoast', 'en', 'salt ponds');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 742, 'SNTR', 'a facility where victims of physical or mental disorders are treated', 'en', 'sanatorium');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 743, 'SAND', 'a tract of land covered with sand', 'en', 'sand area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 744, 'ERG', 'an extensive tract of shifting sand and sand dunes', 'en', 'sandy desert');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 745, 'STNS', 'a facility for tracking and communicating with orbiting satellites', 'en', 'satellite station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 746, 'MLSW', 'a mill where logs or lumber are sawn to specified shapes and sizes', 'en', 'sawmill');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 747, 'SCH', 'building(s) where instruction in one or more branches of knowledge takes place', 'en', 'school');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 748, 'ADMS', 'school district', 'en', 'school district');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 749, 'STNB', 'a scientific facility used as a base from which research is carried out or monitored', 'en', 'scientific research base');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 750, 'SCRB', 'an area of low trees, bushes, and shrubs stunted by some environmental limitation', 'en', 'scrubland');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 751, 'SEA', 'a large body of salt water more or less confined by continuous land or chains of islands forming a subdivision of an ocean', 'en', 'sea');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 752, 'SCNU', 'a continuously sloping, elongated depression commonly found in fans or plains and customarily bordered by levees on one or two sides', 'en', 'seachannel');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 753, 'SCSU', 'continuously sloping, elongated depressions commonly found in fans or plains and customarily bordered by levees on one or two sides', 'en', 'seachannels');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 754, 'SMU', 'an elevation rising generally more than 1,000 meters and of limited extent across the summit', 'en', 'seamount');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 755, 'SMSU', 'elevations rising generally more than 1,000 meters and of limited extent across the summit', 'en', 'seamounts');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 756, 'AIRS', 'a place on a waterbody where floatplanes land and take off', 'en', 'seaplane landing area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 757, 'PPLA', 'seat of a first-order administrative division (PPLC takes precedence over PPLA)', 'en', 'seat of a first-order administrative division');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 758, 'PPLA4', 'seat of a fourth-order administrative division', 'en', 'seat of a fourth-order administrative division');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 759, 'PPLA2', 'seat of a second-order administrative division', 'en', 'seat of a second-order administrative division');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 760, 'PPLA3', 'seat of a third-order administrative division', 'en', 'seat of a third-order administrative division');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 761, 'ADM2', 'a subdivision of a first-order administrative division', 'en', 'second-order administrative division');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 762, 'BNKX', 'section of bank', 'en', 'section of bank');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 763, 'CNLX', 'section of canal', 'en', 'section of canal');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 764, 'ESTX', 'section of estate', 'en', 'section of estate');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 765, 'HBRX', 'section of harbor', 'en', 'section of harbor');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 766, 'PCLIX', 'section of independent political entity', 'en', 'section of independent political entity');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 767, 'STMIX', 'section of intermittent stream', 'en', 'section of intermittent stream');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 768, 'ISLX', 'section of island', 'en', 'section of island');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 769, 'LGNX', 'section of lagoon', 'en', 'section of lagoon');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 770, 'LKX', 'section of lake', 'en', 'section of lake');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 771, 'PENX', 'section of peninsula', 'en', 'section of peninsula');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 773, 'PLATX', 'section of plateau', 'en', 'section of plateau');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 774, 'PPLX', 'section of populated place', 'en', 'section of populated place');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 775, 'RFX', 'section of reef', 'en', 'section of reef');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 776, 'STMX', 'section of stream', 'en', 'section of stream');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 777, 'VALX', 'section of valley', 'en', 'section of valley');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 778, 'WADX', 'section of wadi', 'en', 'section of wadi');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 779, 'FLLSX', 'section of waterfall(s)', 'en', 'section of waterfall(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 780, 'PCLS', 'semi-independent political entity', 'en', 'semi-independent political entity');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 781, 'SWT', 'facility for the processing of sewage and/or wastewater', 'en', 'sewage treatment plant');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 782, 'SHPF', 'a fence or wall enclosure for sheep and other small herd animals', 'en', 'sheepfold');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 783, 'SHOL', 'a surface-navigation hazard composed of unconsolidated material', 'en', 'shoal(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 784, 'SHOPC', 'an urban shopping area featuring a variety of shops surrounding a usually open-air concourse reserved for pedestrian traffic; or a large suburban building or group of buildings containing various shops with associated passageways', 'en', 'shopping center or mall');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 785, 'SHOR', 'a narrow zone bordering a waterbody which covers and uncovers at high and low water, respectively', 'en', 'shore');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 786, 'SHRN', 'a structure or place memorializing a person or religious concept', 'en', 'shrine');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 787, 'SILL', 'the low part of a gap or saddle separating basins', 'en', 'sill');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 788, 'SINK', 'a small crater-shape depression in a karst area', 'en', 'sinkhole');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 789, 'ESTSL', 'an estate that specializes in growing sisal', 'en', 'sisal plantation');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 790, 'SLID', 'a mound of earth material, at the base of a slope and the associated scoured area', 'en', 'slide');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 791, 'SLP', 'a surface with a relatively uniform slope angle', 'en', 'slope(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 792, 'SLCE', 'a conduit or passage for carrying off surplus water from a waterbody, usually regulated by means of a sluice gate', 'en', 'sluice');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 793, 'SNOW', 'an area of permanent snow and ice forming the accumulation area of a glacier', 'en', 'snowfield');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 794, 'SD', 'a long arm of the sea forming a channel between the mainland and an island or islands; or connecting two larger bodies of water', 'en', 'sound');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 795, 'SPA', 'a resort area usually developed around a medicinal spring', 'en', 'spa');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 796, 'CTRS', 'a facility for launching, tracking, or controlling satellites and space vehicles', 'en', 'space center');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 797, 'SPLY', 'a passage or outlet through which surplus water flows over, around or through a dam', 'en', 'spillway');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 798, 'SPIT', 'a narrow, straight or curved continuation of a beach into a waterbody', 'en', 'spit');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 799, 'SPNG', 'a place where ground water flows naturally out of the ground', 'en', 'spring(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 800, 'SPUR', 'a subordinate ridge projecting outward from a hill, mountain or other elevation', 'en', 'spur(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 801, 'SQR', 'a broad, open, public area near the center of a town or city', 'en', 'square');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 802, 'STBL', 'a building for the shelter and feeding of farm animals, especially horses', 'en', 'stable');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 803, 'STDM', 'a structure with an enclosure for athletic games with tiers of seats for spectators', 'en', 'stadium');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 804, 'STPS', 'stones or slabs placed for ease in ascending or descending a steep slope', 'en', 'steps');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 805, 'STKR', 'a route taken by livestock herds', 'en', 'stock route');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 806, 'REG', 'a desert plain characterized by a surface veneer of gravel and stones', 'en', 'stony desert');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 807, 'RET', 'a building where goods and/or services are offered for sale', 'en', 'store');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 808, 'SHSE', 'a building for storing goods, especially provisions', 'en', 'storehouse');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 809, 'STRT', 'a relatively narrow waterway, usually narrower and less extensive than a sound, connecting two larger bodies of water', 'en', 'strait');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 810, 'STM', 'a body of running water moving to a lower level in a channel on land', 'en', 'stream');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 811, 'BNKR', 'a sloping margin of a stream channel which normally confines the stream to its channel on land', 'en', 'stream bank');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 812, 'STMB', 'a conspicuously curved or bent segment of a stream', 'en', 'stream bend');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 813, 'STMGS', 'named place where a measuring station for a watercourse, reservoir or other water body exists', 'en', 'stream gauging station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 814, 'STMM', 'a place where a stream discharges into a lagoon, lake, or the sea', 'en', 'stream mouth(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 815, 'STMS', 'bodies of running water moving to a lower level in a channel on land', 'en', 'streams');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 816, 'ST', 'a paved urban thoroughfare', 'en', 'street');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 817, 'DAMSB', 'a dam put down to bedrock in a sand river', 'en', 'sub-surface dam');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 818, 'SUBW', 'a railroad used for mass public transportation primarily in urban areas, all or part of the system may be located below, above, or at ground level', 'en', 'subway');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 819, 'SUBS', 'a facility comprising ticket office, platforms, etc. for loading and unloading subway passengers', 'en', 'subway station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 820, 'MLSG', 'a facility where sugar cane is processed into raw sugar', 'en', 'sugar mill');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 821, 'ESTSG', 'an estate that specializes in growing sugar cane', 'en', 'sugar plantation');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 822, 'MFGSG', 'a facility for converting raw sugar into refined sugar', 'en', 'sugar refinery');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 823, 'SPNS', 'a place where sulphur ground water flows naturally out of the ground', 'en', 'sulphur spring(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 824, 'SWMP', 'a wetland dominated by tree vegetation', 'en', 'swamp');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 825, 'SYG', 'a place for Jewish worship and religious instruction', 'en', 'synagogue');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 826, 'TMTU', 'a seamount having a comparatively smooth, flat top', 'en', 'tablemount (or guyot)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 827, 'TMSU', 'seamounts having a comparatively smooth, flat top', 'en', 'tablemounts (or guyots)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 828, 'TAL', 'a steep concave slope formed by an accumulation of loose rock fragments at the base of a cliff or steep slope', 'en', 'talus slope');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 829, 'OILT', 'a tract of land occupied by large, cylindrical, metal tanks in which oil or liquid petrochemicals are stored', 'en', 'tank farm');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 830, 'ESTT', 'an estate which specializes in growing tea bushes', 'en', 'tea plantation');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 831, 'SCHT', 'post-secondary school with a specifically technical or vocational curriculum', 'en', 'technical school');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 832, 'TMPL', 'an edifice dedicated to religious worship', 'en', 'temple(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 833, 'AIRT', 'airport facilities for the handling of freight and passengers', 'en', 'terminal');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 834, 'TRR', 'a long, narrow alluvial platform bounded by steeper slopes above and below, usually overlooking a waterbody', 'en', 'terrace');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 835, 'TERR', 'territory', 'en', 'territory');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 836, 'ADM3', 'a subdivision of a second-order administrative division', 'en', 'third-order administrative division');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 837, 'CRKT', 'a meandering channel in a coastal wetland subject to bi-directional tidal currents', 'en', 'tidal creek(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 838, 'FLTT', 'a large flat area of mud or sand attached to the shore and alternately covered and uncovered by the tide', 'en', 'tidal flat(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 839, 'MNSN', 'a mine where tin ore is extracted', 'en', 'tin mine(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 840, 'TOLL', 'highway toll collection station', 'en', 'toll gate/barrier');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 841, 'TMB', 'a structure for interring bodies', 'en', 'tomb(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 842, 'TOWR', 'a high conspicuous structure, typically much higher than its diameter', 'en', 'tower');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 843, 'RDCR', 'a road junction formed around a central circle about which traffic moves in one direction only', 'en', 'traffic circle');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 844, 'TRL', 'a path, track, or route used by pedestrians, animals, or off-road vehicles', 'en', 'trail');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 845, 'TRANT', 'facilities for the handling of vehicular freight and passengers', 'en', 'transit terminal');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 846, 'TREE', 'a conspicuous tree used as a landmark', 'en', 'tree(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 847, 'TRIG', 'a point on the earth whose position has been determined by triangulation', 'en', 'triangulation station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 848, 'TRB', 'a tract of land used by nomadic or other tribes', 'en', 'tribal area');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 849, 'TUND', 'a marshy, treeless, high latitude plain, dominated by mosses, lichens, and low shrub vegetation under permafrost conditions', 'en', 'tundra');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 850, 'TNL', 'a subterranean passageway for transportation', 'en', 'tunnel');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 851, 'TNLS', 'subterranean passageways for transportation', 'en', 'tunnels');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 852, 'CNLSB', 'a gently inclined underground tunnel bringing water for irrigation from aquifers', 'en', 'underground irrigation canal(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 853, 'LKSB', 'a standing body of water in a cave', 'en', 'underground lake');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 854, 'APNU', 'a gentle slope, with a generally smooth surface, particularly found around groups of islands and seamounts', 'en', 'undersea apron');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 855, 'ARCU', 'a low bulge around the southeastern end of the island of Hawaii', 'en', 'undersea arch');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 856, 'ARRU', 'an area of subdued corrugations off Baja California', 'en', 'undersea arrugado');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 857, 'BNKU', 'an elevation, typically located on a shelf, over which the depth of water is relatively shallow but sufficient for safe surface navigation', 'en', 'undersea bank');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 858, 'BKSU', 'elevations, typically located on a shelf, over which the depth of water is relatively shallow but sufficient for safe surface navigation', 'en', 'undersea banks');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 859, 'BSNU', 'a depression more or less equidimensional in plan and of variable extent', 'en', 'undersea basin');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 860, 'BNCU', 'a small terrace', 'en', 'undersea bench');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 861, 'BDLU', 'a region adjacent to a continent, normally occupied by or bordering a shelf, that is highly irregular with depths well in excess of those typical of a shelf', 'en', 'undersea borderland');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 862, 'CNYU', 'a relatively narrow, deep depression with steep sides, the bottom of which generally has a continuous slope', 'en', 'undersea canyon');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 863, 'CNSU', 'relatively narrow, deep depressions with steep sides, the bottom of which generally has a continuous slope', 'en', 'undersea canyons');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 864, 'CDAU', 'an entire mountain system including the subordinate ranges, interior plateaus, and basins', 'en', 'undersea cordillera');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 865, 'ESCU', 'an elongated and comparatively steep slope separating flat or gently sloping areas', 'en', 'undersea escarpment (or scarp)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 866, 'FANU', 'a relatively smooth feature normally sloping away from the lower termination of a canyon or canyon system', 'en', 'undersea fan');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 867, 'FLTU', 'a small level or nearly level area', 'en', 'undersea flat');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 868, 'FRKU', 'a branch of a canyon or valley', 'en', 'undersea fork');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 869, 'FRSU', 'a branch of a canyon or valley', 'en', 'undersea forks');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 870, 'FRZU', 'an extensive linear zone of irregular topography of the sea floor, characterized by steep-sided or asymmetrical ridges, troughs, or escarpments', 'en', 'undersea fracture zone');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 871, 'FURU', 'a closed, linear, narrow, shallow depression', 'en', 'undersea furrow');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 872, 'GAPU', 'a narrow break in a ridge or rise', 'en', 'undersea gap');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 873, 'GLYU', 'a small valley-like feature', 'en', 'undersea gully');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 874, 'HLLU', 'an elevation rising generally less than 500 meters', 'en', 'undersea hill');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 875, 'HLSU', 'elevations rising generally less than 500 meters', 'en', 'undersea hills');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 876, 'HOLU', 'a small depression of the sea floor', 'en', 'undersea hole');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 877, 'KNLU', 'an elevation rising generally more than 500 meters and less than 1,000 meters and of limited extent across the summit', 'en', 'undersea knoll');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 926, 'WADB', 'a conspicuously curved or bent segment of a wadi', 'en', 'wadi bend');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 878, 'KNSU', 'elevations rising generally more than 500 meters and less than 1,000 meters and of limited extent across the summits', 'en', 'undersea knolls');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 879, 'LDGU', 'a rocky projection or outcrop, commonly linear and near shore', 'en', 'undersea ledge');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 880, 'LEVU', 'an embankment bordering a canyon, valley, or seachannel', 'en', 'undersea levee');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 881, 'MDVU', 'the axial depression of the mid-oceanic ridge system', 'en', 'undersea median valley');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 882, 'MESU', 'an isolated, extensive, flat-topped elevation on the shelf, with relatively steep sides', 'en', 'undersea mesa');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 883, 'MOTU', 'an annular depression that may not be continuous, located at the base of many seamounts, islands, and other isolated elevations', 'en', 'undersea moat');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 884, 'MNDU', 'a low, isolated, rounded hill', 'en', 'undersea mound');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 885, 'MTU', 'a well-delineated subdivision of a large and complex positive feature', 'en', 'undersea mountain');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 886, 'MTSU', 'well-delineated subdivisions of a large and complex positive feature', 'en', 'undersea mountains');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 887, 'PKU', 'a prominent elevation, part of a larger feature, either pointed or of very limited extent across the summit', 'en', 'undersea peak');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 888, 'PKSU', 'prominent elevations, part of a larger feature, either pointed or of very limited extent across the summit', 'en', 'undersea peaks');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 889, 'PNLU', 'a high tower or spire-shaped pillar of rock or coral, alone or cresting a summit', 'en', 'undersea pinnacle');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 890, 'PLNU', 'a flat, gently sloping or nearly level region', 'en', 'undersea plain');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 891, 'PLTU', 'a comparatively flat-topped feature of considerable extent, dropping off abruptly on one or more sides', 'en', 'undersea plateau');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 892, 'PLFU', 'a flat or gently sloping underwater surface extending seaward from the shore', 'en', 'undersea platform');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 893, 'PRVU', 'a region identifiable by a group of similar physiographic features whose characteristics are markedly in contrast with surrounding areas', 'en', 'undersea province');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 894, 'RMPU', 'a gentle slope connecting areas of different elevations', 'en', 'undersea ramp');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 895, 'RNGU', 'a series of associated ridges or seamounts', 'en', 'undersea range');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 896, 'RAVU', 'a small canyon', 'en', 'undersea ravine');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 897, 'RFU', 'a surface-navigation hazard composed of consolidated material', 'en', 'undersea reef');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 898, 'RFSU', 'surface-navigation hazards composed of consolidated material', 'en', 'undersea reefs');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 899, 'RDGU', 'a long narrow elevation with steep sides', 'en', 'undersea ridge');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 900, 'RDSU', 'long narrow elevations with steep sides', 'en', 'undersea ridges');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 901, 'RISU', 'a broad elevation that rises gently, and generally smoothly, from the sea floor', 'en', 'undersea rise');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 902, 'SDLU', 'a low part, resembling in shape a saddle, in a ridge or between contiguous seamounts', 'en', 'undersea saddle');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 903, 'SHFU', 'a zone adjacent to a continent (or around an island) that extends from the low water line to a depth at which there is usually a marked increase of slope towards oceanic depths', 'en', 'undersea shelf');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 904, 'EDGU', 'a line along which there is a marked increase of slope at the outer margin of a continental shelf or island shelf', 'en', 'undersea shelf edge');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 905, 'SHVU', 'a valley on the shelf, generally the shoreward extension of a canyon', 'en', 'undersea shelf valley');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 906, 'SHLU', 'a surface-navigation hazard composed of unconsolidated material', 'en', 'undersea shoal');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 907, 'SHSU', 'hazards to surface navigation composed of unconsolidated material', 'en', 'undersea shoals');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 908, 'SILU', 'the low part of an underwater gap or saddle separating basins, including a similar feature at the mouth of a fjord', 'en', 'undersea sill');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 909, 'SLPU', 'the slope seaward from the shelf edge to the beginning of a continental rise or the point where there is a general reduction in slope', 'en', 'undersea slope');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 910, 'SPRU', 'a subordinate elevation, ridge, or rise projecting outward from a larger feature', 'en', 'undersea spur');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 911, 'TERU', 'a relatively flat horizontal or gently inclined surface, sometimes long and narrow, which is bounded by a steeper ascending slope on one side and by a steep descending slope on the opposite side', 'en', 'undersea terrace');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 912, 'TNGU', 'an elongate (tongue-like) extension of a flat sea floor into an adjacent higher feature', 'en', 'undersea tongue');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 913, 'TRNU', 'a long, narrow, characteristically very deep and asymmetrical depression of the sea floor, with relatively steep sides', 'en', 'undersea trench');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 914, 'TRGU', 'a long depression of the sea floor characteristically flat bottomed and steep sided, and normally shallower than a trench', 'en', 'undersea trough');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 915, 'VALU', 'a relatively shallow, wide depression, the bottom of which usually has a continuous gradient', 'en', 'undersea valley');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 916, 'VLSU', 'a relatively shallow, wide depression, the bottom of which usually has a continuous gradient', 'en', 'undersea valleys');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 917, 'USGE', 'a facility operated by the United States Government in Panama', 'en', 'United States Government Establishment');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 918, 'UPLD', 'an extensive interior region of high land with low to moderate surface relief', 'en', 'upland');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 919, 'VAL', 'an elongated depression usually traversed by a stream', 'en', 'valley');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 920, 'VALS', 'elongated depressions usually traversed by a stream', 'en', 'valleys');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 921, 'VETF', 'a building or camp at which veterinary services are available', 'en', 'veterinary facility');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 922, 'VIN', 'a planting of grapevines', 'en', 'vineyard');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 923, 'VINS', 'plantings of grapevines', 'en', 'vineyards');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 924, 'VLC', 'a conical elevation composed of volcanic materials with a crater at the top', 'en', 'volcano');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 925, 'WAD', 'a valley or ravine, bounded by relatively steep banks, which in the rainy season becomes a watercourse; found primarily in North Africa and the Middle East', 'en', 'wadi');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 927, 'WADJ', 'a place where two or more wadies join', 'en', 'wadi junction');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 928, 'WADM', 'the lower terminus of a wadi where it widens into an adjoining floodplain, depression, or waterbody', 'en', 'wadi mouth');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 929, 'WADS', 'valleys or ravines, bounded by relatively steep banks, which in the rainy season become watercourses; found primarily in North Africa and the Middle East', 'en', 'wadies');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 930, 'WALL', 'a thick masonry structure, usually enclosing a field or building, or forming the side of a structure', 'en', 'wall');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 931, 'MLWTR', 'a mill powered by running water', 'en', 'water mill');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 932, 'PMPW', 'a facility for pumping water from a major well or through a pipeline', 'en', 'water pumping station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 933, 'RSVT', 'a contained pool or tank of water at, below, or above ground level', 'en', 'water tank');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 934, 'WTRC', 'a natural, well-defined channel produced by flowing water, or an artificial channel designed to carry flowing water', 'en', 'watercourse');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 935, 'FLLS', 'a perpendicular or very steep descent of the water of a stream', 'en', 'waterfall(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 936, 'WTRH', 'a natural hole, hollow, or small depression that contains water, used by man and animals, especially in arid areas', 'en', 'waterhole(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 937, 'WTRW', 'a facility for supplying potable water through a water source and a system of pumps and filtration beds', 'en', 'waterworks');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 938, 'WEIR', 'a small dam in a stream, designed to raise the water level or to divert stream flow through a desired channel', 'en', 'weir(s)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 939, 'WLL', 'a cylindrical hole, pit, or tunnel drilled or dug down to a depth from which water, oil, or gas can be pumped or brought to the surface', 'en', 'well');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 940, 'WLLS', 'cylindrical holes, pits, or tunnels drilled or dug down to a depth from which water, oil, or gas can be pumped or brought to the surface', 'en', 'wells');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 941, 'WTLD', 'an area subject to inundation, usually characterized by bog, marsh, or swamp vegetation', 'en', 'wetland');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 942, 'STNW', 'a facility for butchering whales and processing train oil', 'en', 'whaling station');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 943, 'WHRF', 'a structure of open rather than solid construction along a shore or a bank which provides berthing for ships and cargo-handling facilities', 'en', 'wharf(-ves)');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 944, 'WHRL', 'a turbulent, rotating movement of water in a stream', 'en', 'whirlpool');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 945, 'RESW', 'a tract of public land reserved for the preservation of wildlife', 'en', 'wildlife reserve');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 946, 'MLWND', 'a mill or water pump powered by wind', 'en', 'windmill');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 947, 'WRCK', 'the site of the remains of a wrecked vessel', 'en', 'wreck');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 948, 'ZN', 'zone', 'en', 'zone');
INSERT INTO iati_codes (type, id, code, description, lang, name) VALUES ('FEATURE_DESIGNATION', 949, 'ZOO', 'a zoological garden or park where wild animals are kept for exhibition', 'en', 'zoo');


--
