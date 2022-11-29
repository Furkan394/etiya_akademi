--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2022-11-29 11:06:53

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
-- TOC entry 224 (class 1259 OID 16642)
-- Name: addresses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addresses (
    id integer NOT NULL,
    user_id integer NOT NULL,
    street_id integer NOT NULL,
    title character varying(25) NOT NULL,
    address character varying(250) NOT NULL
);


ALTER TABLE public.addresses OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16641)
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.addresses ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 245 (class 1259 OID 16798)
-- Name: basket_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.basket_items (
    id integer NOT NULL,
    basket_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    item_total_price integer NOT NULL
);


ALTER TABLE public.basket_items OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 16797)
-- Name: basket_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.basket_items ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.basket_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 243 (class 1259 OID 16787)
-- Name: baskets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baskets (
    id integer NOT NULL,
    total_price integer NOT NULL,
    shipping_price integer NOT NULL
);


ALTER TABLE public.baskets OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16688)
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    ref_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16687)
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 16592)
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 16893)
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.cities ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 234 (class 1259 OID 16727)
-- Name: corporate_customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.corporate_customers (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    tax_number character varying(100) NOT NULL
);


ALTER TABLE public.corporate_customers OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16586)
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16585)
-- Name: countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.countries ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.countries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 227 (class 1259 OID 16669)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    number character varying(25) NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 16831)
-- Name: delivery_options; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.delivery_options (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.delivery_options OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 16830)
-- Name: delivery_options_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.delivery_options ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.delivery_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 16614)
-- Name: districts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.districts (
    id integer NOT NULL,
    town_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.districts OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16613)
-- Name: districts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.districts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.districts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 233 (class 1259 OID 16705)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    number character varying(25) NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 24589)
-- Name: individual_customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.individual_customers (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    identity character varying(25) NOT NULL,
    birth_date date NOT NULL
);


ALTER TABLE public.individual_customers OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 16878)
-- Name: invoices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoices (
    id integer NOT NULL,
    number character(25) NOT NULL,
    created_date date DEFAULT CURRENT_DATE NOT NULL
);


ALTER TABLE public.invoices OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 16858)
-- Name: order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_items (
    id integer NOT NULL,
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    item_total_price integer NOT NULL
);


ALTER TABLE public.order_items OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 16857)
-- Name: order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.order_items ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 252 (class 1259 OID 16837)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    delivery_options_id integer NOT NULL,
    order_address_id integer NOT NULL,
    invoice_address_id integer NOT NULL,
    order_number character varying(25) NOT NULL,
    total_price integer NOT NULL
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 16836)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 247 (class 1259 OID 16814)
-- Name: payment_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_types (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.payment_types OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 16813)
-- Name: payment_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.payment_types ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.payment_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 248 (class 1259 OID 16820)
-- Name: payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments (
    id integer NOT NULL,
    payment_type_id integer NOT NULL,
    is_verified boolean NOT NULL
);


ALTER TABLE public.payments OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16658)
-- Name: phone_numbers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.phone_numbers (
    id integer NOT NULL,
    user_id integer NOT NULL,
    number character varying(25) NOT NULL,
    title character varying(25) NOT NULL
);


ALTER TABLE public.phone_numbers OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16657)
-- Name: phone_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.phone_numbers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.phone_numbers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 236 (class 1259 OID 16738)
-- Name: product_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_categories (
    id integer NOT NULL,
    product_id integer NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.product_categories OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16737)
-- Name: product_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 240 (class 1259 OID 16761)
-- Name: product_char_values; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_char_values (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    product_char_id integer NOT NULL
);


ALTER TABLE public.product_char_values OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16760)
-- Name: product_char_values_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_char_values ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_char_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 238 (class 1259 OID 16754)
-- Name: product_chars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_chars (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(50) NOT NULL
);


ALTER TABLE public.product_chars OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16753)
-- Name: product_chars_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_chars ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_chars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 242 (class 1259 OID 16772)
-- Name: product_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_details (
    id integer NOT NULL,
    product_id integer NOT NULL,
    product_char_id integer NOT NULL
);


ALTER TABLE public.product_details OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 16771)
-- Name: product_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.product_details ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.product_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 229 (class 1259 OID 16680)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    stock integer NOT NULL,
    description character varying(255) NOT NULL,
    image_url character varying(255) NOT NULL,
    unit_price integer NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16679)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.products ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 232 (class 1259 OID 16694)
-- Name: sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sellers (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    number character varying(25) NOT NULL,
    is_verified boolean NOT NULL
);


ALTER TABLE public.sellers OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16625)
-- Name: streets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.streets (
    id integer NOT NULL,
    district_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.streets OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 24577)
-- Name: streets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.streets ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.streets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 16603)
-- Name: towns; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.towns (
    id integer NOT NULL,
    city_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.towns OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16602)
-- Name: towns_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.towns ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.towns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 16636)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(25) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 24576)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3530 (class 0 OID 16642)
-- Dependencies: 224
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.addresses (id, user_id, street_id, title, address) OVERRIDING SYSTEM VALUE VALUES (1, 1, 1, 'Ev Adresim', 'Yıldız Apartman No:2');
INSERT INTO public.addresses (id, user_id, street_id, title, address) OVERRIDING SYSTEM VALUE VALUES (7, 2, 2, 'Ev Adresim', 'No:2');
INSERT INTO public.addresses (id, user_id, street_id, title, address) OVERRIDING SYSTEM VALUE VALUES (8, 3, 3, 'Ev Adresim', 'No:3');
INSERT INTO public.addresses (id, user_id, street_id, title, address) OVERRIDING SYSTEM VALUE VALUES (9, 4, 4, 'Ev Adresim', 'No:4');
INSERT INTO public.addresses (id, user_id, street_id, title, address) OVERRIDING SYSTEM VALUE VALUES (10, 5, 5, 'Ev Adresim', 'No:5');


--
-- TOC entry 3551 (class 0 OID 16798)
-- Dependencies: 245
-- Data for Name: basket_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.basket_items (id, basket_id, product_id, quantity, item_total_price) OVERRIDING SYSTEM VALUE VALUES (3, 1, 2, 2, 200);
INSERT INTO public.basket_items (id, basket_id, product_id, quantity, item_total_price) OVERRIDING SYSTEM VALUE VALUES (4, 2, 5, 1, 3000);
INSERT INTO public.basket_items (id, basket_id, product_id, quantity, item_total_price) OVERRIDING SYSTEM VALUE VALUES (5, 2, 4, 1, 17000);
INSERT INTO public.basket_items (id, basket_id, product_id, quantity, item_total_price) OVERRIDING SYSTEM VALUE VALUES (6, 2, 3, 1, 150);


--
-- TOC entry 3549 (class 0 OID 16787)
-- Dependencies: 243
-- Data for Name: baskets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.baskets (id, total_price, shipping_price) VALUES (1, 215, 15);
INSERT INTO public.baskets (id, total_price, shipping_price) VALUES (2, 20265, 15);


--
-- TOC entry 3537 (class 0 OID 16688)
-- Dependencies: 231
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categories (id, ref_id, name) OVERRIDING SYSTEM VALUE VALUES (1, 0, 'Erkek');
INSERT INTO public.categories (id, ref_id, name) OVERRIDING SYSTEM VALUE VALUES (2, 0, 'Kadın');
INSERT INTO public.categories (id, ref_id, name) OVERRIDING SYSTEM VALUE VALUES (3, 1, 'Giyim');
INSERT INTO public.categories (id, ref_id, name) OVERRIDING SYSTEM VALUE VALUES (4, 0, 'Elektronik');
INSERT INTO public.categories (id, ref_id, name) OVERRIDING SYSTEM VALUE VALUES (5, 4, 'Bilgisayar');
INSERT INTO public.categories (id, ref_id, name) OVERRIDING SYSTEM VALUE VALUES (6, 4, 'Beyaz Eşya');
INSERT INTO public.categories (id, ref_id, name) OVERRIDING SYSTEM VALUE VALUES (7, 4, 'Cep Telefonu');


--
-- TOC entry 3522 (class 0 OID 16592)
-- Dependencies: 216
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (1, 'Adana', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (2, 'Adıyaman', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (3, 'Afyon', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (4, 'Ağrı', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (5, 'Amasya', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (6, 'Ankara', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (7, 'Antalya', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (8, 'Artvin', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (9, 'Aydın', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (10, 'Balıkesir', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (11, 'Bilecik', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (12, 'Bingöl', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (13, 'Bitlis', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (14, 'Bolu', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (15, 'Burdur', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (16, 'Bursa', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (17, 'Çanakkale', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (18, 'Çankırı', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (19, 'Çorum', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (20, 'Denizli', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (21, 'Diyarbakır', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (22, 'Edirne', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (23, 'Elazığ', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (24, 'Erzincan', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (25, 'Erzurum', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (26, 'Eskişehir', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (27, 'Gaziantep', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (28, 'Giresun', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (29, 'Gümüşhane', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (30, 'Hakkari', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (31, 'Hatay', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (32, 'Isparta', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (33, 'Mersin', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (34, 'İstanbul', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (35, 'İzmir', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (36, 'Kars', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (37, 'Kastamonu', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (38, 'Kayseri', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (39, 'Kırklareli', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (40, 'Kırşehir', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (41, 'Kocaeli', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (42, 'Konya', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (43, 'Kütahya', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (44, 'Malatya', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (45, 'Manisa', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (46, 'K.Maraş', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (47, 'Mardin', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (48, 'Muğla', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (49, 'Muş', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (50, 'Nevşehir', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (51, 'Niğde', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (52, 'Ordu', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (53, 'Rize', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (54, 'Sakarya', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (55, 'Samsun', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (56, 'Siirt', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (57, 'Sinop', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (58, 'Sivas', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (59, 'Tekirdağ', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (60, 'Tokat', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (61, 'Trabzon', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (62, 'Tunceli', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (63, 'Şanlıurfa', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (64, 'Uşak', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (65, 'Van', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (66, 'Yozgat', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (67, 'Zonguldak', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (68, 'Aksaray', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (69, 'Bayburt', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (70, 'Karaman', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (71, 'Kırıkkale', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (72, 'Batman', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (73, 'Şırnak', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (74, 'Bartın', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (75, 'Ardahan', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (76, 'Iğdır', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (77, 'Yalova', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (78, 'Karabük', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (79, 'Kilis', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (80, 'Osmaniye', 1);
INSERT INTO public.cities (id, name, country_id) OVERRIDING SYSTEM VALUE VALUES (81, 'Düzce', 1);


--
-- TOC entry 3540 (class 0 OID 16727)
-- Dependencies: 234
-- Data for Name: corporate_customers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3521 (class 0 OID 16586)
-- Dependencies: 215
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.countries (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'Türkiye');


--
-- TOC entry 3533 (class 0 OID 16669)
-- Dependencies: 227
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customers (id, number) VALUES (1, '123456789');
INSERT INTO public.customers (id, number) VALUES (2, '53452432');
INSERT INTO public.customers (id, number) VALUES (3, '421412321');
INSERT INTO public.customers (id, number) VALUES (4, '125213214');
INSERT INTO public.customers (id, number) VALUES (5, '215136412');


--
-- TOC entry 3556 (class 0 OID 16831)
-- Dependencies: 250
-- Data for Name: delivery_options; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.delivery_options (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'Adrese teslim');
INSERT INTO public.delivery_options (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'Teslimat Noktası');


--
-- TOC entry 3526 (class 0 OID 16614)
-- Dependencies: 220
-- Data for Name: districts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.districts (id, town_id, name) OVERRIDING SYSTEM VALUE VALUES (1, 1, 'Güneş Mahallesi');
INSERT INTO public.districts (id, town_id, name) OVERRIDING SYSTEM VALUE VALUES (2, 2, 'Aslan Mahallesi');
INSERT INTO public.districts (id, town_id, name) OVERRIDING SYSTEM VALUE VALUES (3, 3, 'Lale Mahallesi');
INSERT INTO public.districts (id, town_id, name) OVERRIDING SYSTEM VALUE VALUES (4, 4, 'Çiçek Mahallesi');
INSERT INTO public.districts (id, town_id, name) OVERRIDING SYSTEM VALUE VALUES (5, 5, 'Doğu Mahallesi');
INSERT INTO public.districts (id, town_id, name) OVERRIDING SYSTEM VALUE VALUES (6, 6, 'Batı Mahallesi');


--
-- TOC entry 3539 (class 0 OID 16705)
-- Dependencies: 233
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3565 (class 0 OID 24589)
-- Dependencies: 259
-- Data for Name: individual_customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.individual_customers (id, first_name, last_name, identity, birth_date) VALUES (1, 'Emre', 'Çakıroğlu', '11111111111', '2000-12-12');
INSERT INTO public.individual_customers (id, first_name, last_name, identity, birth_date) VALUES (2, 'Mert', 'Söyünmezoğlu', '21342141212', '1999-10-24');
INSERT INTO public.individual_customers (id, first_name, last_name, identity, birth_date) VALUES (3, 'Kadir', 'Demirel', '12312312312', '1998-01-07');
INSERT INTO public.individual_customers (id, first_name, last_name, identity, birth_date) VALUES (4, 'Onur', 'Uzunşimşek', '21421516313', '1997-05-17');
INSERT INTO public.individual_customers (id, first_name, last_name, identity, birth_date) VALUES (5, 'Zeynep', 'Han', '43632534634', '1999-07-15');


--
-- TOC entry 3561 (class 0 OID 16878)
-- Dependencies: 255
-- Data for Name: invoices; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.invoices (id, number, created_date) VALUES (3, '123456789                ', '2022-11-24');
INSERT INTO public.invoices (id, number, created_date) VALUES (4, '13513412                 ', '2022-11-28');
INSERT INTO public.invoices (id, number, created_date) VALUES (5, '12412312                 ', '2022-11-28');
INSERT INTO public.invoices (id, number, created_date) VALUES (6, '12412312                 ', '2022-11-28');
INSERT INTO public.invoices (id, number, created_date) VALUES (7, '12312412                 ', '2022-11-28');


--
-- TOC entry 3560 (class 0 OID 16858)
-- Dependencies: 254
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_items (id, order_id, product_id, quantity, item_total_price) OVERRIDING SYSTEM VALUE VALUES (3, 3, 2, 2, 200);
INSERT INTO public.order_items (id, order_id, product_id, quantity, item_total_price) OVERRIDING SYSTEM VALUE VALUES (8, 4, 3, 1, 300);
INSERT INTO public.order_items (id, order_id, product_id, quantity, item_total_price) OVERRIDING SYSTEM VALUE VALUES (9, 5, 4, 2, 400);
INSERT INTO public.order_items (id, order_id, product_id, quantity, item_total_price) OVERRIDING SYSTEM VALUE VALUES (10, 6, 5, 4, 500);
INSERT INTO public.order_items (id, order_id, product_id, quantity, item_total_price) OVERRIDING SYSTEM VALUE VALUES (11, 7, 5, 2, 600);


--
-- TOC entry 3558 (class 0 OID 16837)
-- Dependencies: 252
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders (id, delivery_options_id, order_address_id, invoice_address_id, order_number, total_price) OVERRIDING SYSTEM VALUE VALUES (3, 1, 1, 1, '123456789', 200);
INSERT INTO public.orders (id, delivery_options_id, order_address_id, invoice_address_id, order_number, total_price) OVERRIDING SYSTEM VALUE VALUES (4, 1, 7, 7, '78275237', 300);
INSERT INTO public.orders (id, delivery_options_id, order_address_id, invoice_address_id, order_number, total_price) OVERRIDING SYSTEM VALUE VALUES (5, 1, 8, 8, '863783', 500);
INSERT INTO public.orders (id, delivery_options_id, order_address_id, invoice_address_id, order_number, total_price) OVERRIDING SYSTEM VALUE VALUES (6, 1, 9, 9, '71272572', 400);
INSERT INTO public.orders (id, delivery_options_id, order_address_id, invoice_address_id, order_number, total_price) OVERRIDING SYSTEM VALUE VALUES (7, 1, 10, 10, '786372378', 500);


--
-- TOC entry 3553 (class 0 OID 16814)
-- Dependencies: 247
-- Data for Name: payment_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.payment_types (id, name) OVERRIDING SYSTEM VALUE VALUES (1, 'Kredi Kartı');
INSERT INTO public.payment_types (id, name) OVERRIDING SYSTEM VALUE VALUES (2, 'Nakit');
INSERT INTO public.payment_types (id, name) OVERRIDING SYSTEM VALUE VALUES (3, 'EFT');


--
-- TOC entry 3554 (class 0 OID 16820)
-- Dependencies: 248
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.payments (id, payment_type_id, is_verified) VALUES (3, 1, true);
INSERT INTO public.payments (id, payment_type_id, is_verified) VALUES (4, 1, true);
INSERT INTO public.payments (id, payment_type_id, is_verified) VALUES (5, 2, true);
INSERT INTO public.payments (id, payment_type_id, is_verified) VALUES (6, 2, true);
INSERT INTO public.payments (id, payment_type_id, is_verified) VALUES (7, 3, true);


--
-- TOC entry 3532 (class 0 OID 16658)
-- Dependencies: 226
-- Data for Name: phone_numbers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.phone_numbers (id, user_id, number, title) OVERRIDING SYSTEM VALUE VALUES (1, 1, '5555555555', 'Cep');


--
-- TOC entry 3542 (class 0 OID 16738)
-- Dependencies: 236
-- Data for Name: product_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_categories (id, product_id, category_id) OVERRIDING SYSTEM VALUE VALUES (2, 2, 3);
INSERT INTO public.product_categories (id, product_id, category_id) OVERRIDING SYSTEM VALUE VALUES (3, 3, 3);
INSERT INTO public.product_categories (id, product_id, category_id) OVERRIDING SYSTEM VALUE VALUES (4, 4, 5);
INSERT INTO public.product_categories (id, product_id, category_id) OVERRIDING SYSTEM VALUE VALUES (5, 5, 6);


--
-- TOC entry 3546 (class 0 OID 16761)
-- Dependencies: 240
-- Data for Name: product_char_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_char_values (id, name, product_char_id) OVERRIDING SYSTEM VALUE VALUES (4, 'Kırmızı', 2);
INSERT INTO public.product_char_values (id, name, product_char_id) OVERRIDING SYSTEM VALUE VALUES (5, 'Gri', 2);
INSERT INTO public.product_char_values (id, name, product_char_id) OVERRIDING SYSTEM VALUE VALUES (6, 'S', 3);
INSERT INTO public.product_char_values (id, name, product_char_id) OVERRIDING SYSTEM VALUE VALUES (7, 'M', 3);
INSERT INTO public.product_char_values (id, name, product_char_id) OVERRIDING SYSTEM VALUE VALUES (8, 'L', 3);
INSERT INTO public.product_char_values (id, name, product_char_id) OVERRIDING SYSTEM VALUE VALUES (9, '500GB', 4);
INSERT INTO public.product_char_values (id, name, product_char_id) OVERRIDING SYSTEM VALUE VALUES (10, '1TB', 4);
INSERT INTO public.product_char_values (id, name, product_char_id) OVERRIDING SYSTEM VALUE VALUES (11, '2TB', 4);
INSERT INTO public.product_char_values (id, name, product_char_id) OVERRIDING SYSTEM VALUE VALUES (12, '500W', 5);
INSERT INTO public.product_char_values (id, name, product_char_id) OVERRIDING SYSTEM VALUE VALUES (13, '1500W', 5);


--
-- TOC entry 3544 (class 0 OID 16754)
-- Dependencies: 238
-- Data for Name: product_chars; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_chars (id, name, description) OVERRIDING SYSTEM VALUE VALUES (2, 'Renk', 'Renkler');
INSERT INTO public.product_chars (id, name, description) OVERRIDING SYSTEM VALUE VALUES (3, 'Beden', 'Bedenler');
INSERT INTO public.product_chars (id, name, description) OVERRIDING SYSTEM VALUE VALUES (4, 'HDD Kapasitesi', 'HDD');
INSERT INTO public.product_chars (id, name, description) OVERRIDING SYSTEM VALUE VALUES (5, 'Güç ', '(W)');
INSERT INTO public.product_chars (id, name, description) OVERRIDING SYSTEM VALUE VALUES (6, 'Ayakkabı Numarası', 'Ayakkabı Numaraları');


--
-- TOC entry 3548 (class 0 OID 16772)
-- Dependencies: 242
-- Data for Name: product_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product_details (id, product_id, product_char_id) OVERRIDING SYSTEM VALUE VALUES (3, 2, 2);
INSERT INTO public.product_details (id, product_id, product_char_id) OVERRIDING SYSTEM VALUE VALUES (4, 3, 3);
INSERT INTO public.product_details (id, product_id, product_char_id) OVERRIDING SYSTEM VALUE VALUES (5, 4, 4);
INSERT INTO public.product_details (id, product_id, product_char_id) OVERRIDING SYSTEM VALUE VALUES (6, 5, 5);


--
-- TOC entry 3535 (class 0 OID 16680)
-- Dependencies: 229
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products (id, name, stock, description, image_url, unit_price) OVERRIDING SYSTEM VALUE VALUES (2, 'T-shirt
', 50, 'Oversize t-shirt', 'sdfsdf', 100);
INSERT INTO public.products (id, name, stock, description, image_url, unit_price) OVERRIDING SYSTEM VALUE VALUES (3, 'Gömlek', 20, 'Gömlek', 'asdas', 150);
INSERT INTO public.products (id, name, stock, description, image_url, unit_price) OVERRIDING SYSTEM VALUE VALUES (5, 'Buzdolabı', 5, 'Buzdolabı AAA', 'asdas', 3000);
INSERT INTO public.products (id, name, stock, description, image_url, unit_price) OVERRIDING SYSTEM VALUE VALUES (4, 'Hp Laptop', 15, 'Hp Teknoloji', 'asdasd', 18000);
INSERT INTO public.products (id, name, stock, description, image_url, unit_price) OVERRIDING SYSTEM VALUE VALUES (6, 'Sweatshirt', 35, 'Kapşonlu renkli sweatshirt', 'ornek_resim_url', 270);


--
-- TOC entry 3538 (class 0 OID 16694)
-- Dependencies: 232
-- Data for Name: sellers; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3527 (class 0 OID 16625)
-- Dependencies: 221
-- Data for Name: streets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.streets (id, district_id, name) OVERRIDING SYSTEM VALUE VALUES (1, 1, 'Ay Sokağı');
INSERT INTO public.streets (id, district_id, name) OVERRIDING SYSTEM VALUE VALUES (2, 2, 'Üç Sokak');
INSERT INTO public.streets (id, district_id, name) OVERRIDING SYSTEM VALUE VALUES (3, 3, 'Dört Sokak');
INSERT INTO public.streets (id, district_id, name) OVERRIDING SYSTEM VALUE VALUES (4, 4, 'Beş Sokak');
INSERT INTO public.streets (id, district_id, name) OVERRIDING SYSTEM VALUE VALUES (5, 5, 'Altı Sokak');
INSERT INTO public.streets (id, district_id, name) OVERRIDING SYSTEM VALUE VALUES (6, 6, 'Yedi Sokak');


--
-- TOC entry 3524 (class 0 OID 16603)
-- Dependencies: 218
-- Data for Name: towns; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.towns (id, city_id, name) OVERRIDING SYSTEM VALUE VALUES (1, 34, 'Esenler');
INSERT INTO public.towns (id, city_id, name) OVERRIDING SYSTEM VALUE VALUES (2, 34, 'Üsküdar');
INSERT INTO public.towns (id, city_id, name) OVERRIDING SYSTEM VALUE VALUES (3, 34, 'Beşiktaş');
INSERT INTO public.towns (id, city_id, name) OVERRIDING SYSTEM VALUE VALUES (4, 6, 'Çankaya');
INSERT INTO public.towns (id, city_id, name) OVERRIDING SYSTEM VALUE VALUES (5, 6, 'Pursaklar');
INSERT INTO public.towns (id, city_id, name) OVERRIDING SYSTEM VALUE VALUES (6, 6, 'Yenimahalle');


--
-- TOC entry 3528 (class 0 OID 16636)
-- Dependencies: 222
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, email, password) OVERRIDING SYSTEM VALUE VALUES (1, 'emre@gmail.com', '12345');
INSERT INTO public.users (id, email, password) OVERRIDING SYSTEM VALUE VALUES (2, 'mert@gmail.com', '12345');
INSERT INTO public.users (id, email, password) OVERRIDING SYSTEM VALUE VALUES (3, 'kadir@gmail.com', '12345');
INSERT INTO public.users (id, email, password) OVERRIDING SYSTEM VALUE VALUES (4, 'onur@gmail.com', '12345');
INSERT INTO public.users (id, email, password) OVERRIDING SYSTEM VALUE VALUES (5, 'zeynep@gmail.com', '12345');


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 223
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addresses_id_seq', 10, true);


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 244
-- Name: basket_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.basket_items_id_seq', 6, true);


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 230
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 7, true);


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 256
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 1, false);


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 214
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.countries_id_seq', 1, true);


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 249
-- Name: delivery_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.delivery_options_id_seq', 3, true);


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 219
-- Name: districts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.districts_id_seq', 6, true);


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 253
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_items_id_seq', 11, true);


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 251
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 7, true);


--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 246
-- Name: payment_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_types_id_seq', 3, true);


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 225
-- Name: phone_numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.phone_numbers_id_seq', 1, true);


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 235
-- Name: product_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_categories_id_seq', 5, true);


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 239
-- Name: product_char_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_char_values_id_seq', 13, true);


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 237
-- Name: product_chars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_chars_id_seq', 6, true);


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 241
-- Name: product_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_details_id_seq', 6, true);


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 228
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 6, true);


--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 258
-- Name: streets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.streets_id_seq', 1, false);


--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 217
-- Name: towns_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.towns_id_seq', 6, true);


--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 257
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- TOC entry 3309 (class 2606 OID 16646)
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- TOC entry 3335 (class 2606 OID 16802)
-- Name: basket_items basket_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_items
    ADD CONSTRAINT basket_items_pkey PRIMARY KEY (id);


--
-- TOC entry 3333 (class 2606 OID 16791)
-- Name: baskets baskets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);


--
-- TOC entry 3317 (class 2606 OID 16692)
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3299 (class 2606 OID 16596)
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- TOC entry 3323 (class 2606 OID 16731)
-- Name: corporate_customers corporate_customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corporate_customers
    ADD CONSTRAINT corporate_customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3297 (class 2606 OID 16590)
-- Name: countries countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);


--
-- TOC entry 3313 (class 2606 OID 16673)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id) INCLUDE (id);


--
-- TOC entry 3341 (class 2606 OID 16835)
-- Name: delivery_options delivery_options_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.delivery_options
    ADD CONSTRAINT delivery_options_pkey PRIMARY KEY (id);


--
-- TOC entry 3303 (class 2606 OID 16618)
-- Name: districts districts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY (id);


--
-- TOC entry 3321 (class 2606 OID 16709)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- TOC entry 3349 (class 2606 OID 24598)
-- Name: individual_customers individual_customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_customers
    ADD CONSTRAINT individual_customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3347 (class 2606 OID 16882)
-- Name: invoices invoices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (id);


--
-- TOC entry 3345 (class 2606 OID 16862)
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- TOC entry 3343 (class 2606 OID 16841)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 3337 (class 2606 OID 16818)
-- Name: payment_types payment_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_types
    ADD CONSTRAINT payment_types_pkey PRIMARY KEY (id);


--
-- TOC entry 3339 (class 2606 OID 16824)
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- TOC entry 3311 (class 2606 OID 16662)
-- Name: phone_numbers phone_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_numbers
    ADD CONSTRAINT phone_numbers_pkey PRIMARY KEY (id);


--
-- TOC entry 3325 (class 2606 OID 16742)
-- Name: product_categories product_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_categories_pkey PRIMARY KEY (id);


--
-- TOC entry 3329 (class 2606 OID 16765)
-- Name: product_char_values product_char_values_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_char_values
    ADD CONSTRAINT product_char_values_pkey PRIMARY KEY (id);


--
-- TOC entry 3327 (class 2606 OID 16758)
-- Name: product_chars product_chars_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_chars
    ADD CONSTRAINT product_chars_pkey PRIMARY KEY (id);


--
-- TOC entry 3331 (class 2606 OID 16776)
-- Name: product_details product_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_details
    ADD CONSTRAINT product_details_pkey PRIMARY KEY (id);


--
-- TOC entry 3315 (class 2606 OID 16686)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 3319 (class 2606 OID 16698)
-- Name: sellers sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_pkey PRIMARY KEY (id);


--
-- TOC entry 3305 (class 2606 OID 16629)
-- Name: streets streets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streets
    ADD CONSTRAINT streets_pkey PRIMARY KEY (id);


--
-- TOC entry 3301 (class 2606 OID 16607)
-- Name: towns towns_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.towns
    ADD CONSTRAINT towns_pkey PRIMARY KEY (id);


--
-- TOC entry 3307 (class 2606 OID 16640)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3366 (class 2606 OID 16792)
-- Name: baskets basket_customer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT basket_customer FOREIGN KEY (id) REFERENCES public.customers(id);


--
-- TOC entry 3367 (class 2606 OID 16803)
-- Name: basket_items basket_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_items
    ADD CONSTRAINT basket_id_fk FOREIGN KEY (basket_id) REFERENCES public.baskets(id);


--
-- TOC entry 3361 (class 2606 OID 16748)
-- Name: product_categories category_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT category_id_fk FOREIGN KEY (category_id) REFERENCES public.categories(id);


--
-- TOC entry 3351 (class 2606 OID 16608)
-- Name: towns city_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.towns
    ADD CONSTRAINT city_id_fk FOREIGN KEY (city_id) REFERENCES public.cities(id);


--
-- TOC entry 3360 (class 2606 OID 16732)
-- Name: corporate_customers corporate_customer_customers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.corporate_customers
    ADD CONSTRAINT corporate_customer_customers FOREIGN KEY (id) REFERENCES public.customers(id);


--
-- TOC entry 3350 (class 2606 OID 16888)
-- Name: cities country_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT country_id_fk FOREIGN KEY (country_id) REFERENCES public.countries(id) NOT VALID;


--
-- TOC entry 3357 (class 2606 OID 16674)
-- Name: customers customer_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customer_user FOREIGN KEY (id) REFERENCES public.users(id);


--
-- TOC entry 3371 (class 2606 OID 16842)
-- Name: orders delivery_options_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT delivery_options_id_fk FOREIGN KEY (delivery_options_id) REFERENCES public.delivery_options(id);


--
-- TOC entry 3353 (class 2606 OID 16630)
-- Name: streets district_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.streets
    ADD CONSTRAINT district_id_fk FOREIGN KEY (district_id) REFERENCES public.districts(id);


--
-- TOC entry 3359 (class 2606 OID 16710)
-- Name: employees employee_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employee_user FOREIGN KEY (id) REFERENCES public.users(id);


--
-- TOC entry 3377 (class 2606 OID 24592)
-- Name: individual_customers individual_customers_customers; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.individual_customers
    ADD CONSTRAINT individual_customers_customers FOREIGN KEY (id) REFERENCES public.customers(id);


--
-- TOC entry 3372 (class 2606 OID 16852)
-- Name: orders invoice_address_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT invoice_address_id_fk FOREIGN KEY (invoice_address_id) REFERENCES public.addresses(id);


--
-- TOC entry 3376 (class 2606 OID 16883)
-- Name: invoices invoice_order; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoice_order FOREIGN KEY (id) REFERENCES public.orders(id);


--
-- TOC entry 3373 (class 2606 OID 16847)
-- Name: orders order_address_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT order_address_id_fk FOREIGN KEY (order_address_id) REFERENCES public.addresses(id);


--
-- TOC entry 3374 (class 2606 OID 16863)
-- Name: order_items order_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_id_fk FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- TOC entry 3369 (class 2606 OID 16873)
-- Name: payments payment_order; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payment_order FOREIGN KEY (id) REFERENCES public.orders(id) NOT VALID;


--
-- TOC entry 3370 (class 2606 OID 16825)
-- Name: payments payment_type_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payment_type_id_fk FOREIGN KEY (payment_type_id) REFERENCES public.payment_types(id);


--
-- TOC entry 3363 (class 2606 OID 16766)
-- Name: product_char_values product_char_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_char_values
    ADD CONSTRAINT product_char_id_fk FOREIGN KEY (product_char_id) REFERENCES public.product_chars(id);


--
-- TOC entry 3364 (class 2606 OID 16782)
-- Name: product_details product_char_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_details
    ADD CONSTRAINT product_char_id_fk FOREIGN KEY (product_char_id) REFERENCES public.product_chars(id);


--
-- TOC entry 3362 (class 2606 OID 16743)
-- Name: product_categories product_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_categories
    ADD CONSTRAINT product_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3365 (class 2606 OID 16777)
-- Name: product_details product_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_details
    ADD CONSTRAINT product_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3368 (class 2606 OID 16808)
-- Name: basket_items product_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.basket_items
    ADD CONSTRAINT product_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3375 (class 2606 OID 16868)
-- Name: order_items product_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT product_id_fk FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- TOC entry 3358 (class 2606 OID 16699)
-- Name: sellers seller_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT seller_user FOREIGN KEY (id) REFERENCES public.users(id);


--
-- TOC entry 3354 (class 2606 OID 16652)
-- Name: addresses street_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT street_id_fk FOREIGN KEY (street_id) REFERENCES public.streets(id);


--
-- TOC entry 3352 (class 2606 OID 16619)
-- Name: districts town_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT town_id_fk FOREIGN KEY (town_id) REFERENCES public.towns(id);


--
-- TOC entry 3355 (class 2606 OID 16647)
-- Name: addresses user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3356 (class 2606 OID 16663)
-- Name: phone_numbers user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.phone_numbers
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id);


-- Completed on 2022-11-29 11:06:53

--
-- PostgreSQL database dump complete
--

