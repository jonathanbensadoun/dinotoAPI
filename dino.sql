--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Ubuntu 15.3-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.3 (Ubuntu 15.3-1.pgdg20.04+1)

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
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO dino;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO dino;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO dino;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_role_links_id_seq OWNER TO dino;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO dino;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO dino;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO dino;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO dino;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO dino;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_roles_links_id_seq OWNER TO dino;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: continents; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.continents (
    id integer NOT NULL,
    label character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.continents OWNER TO dino;

--
-- Name: continents_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.continents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continents_id_seq OWNER TO dino;

--
-- Name: continents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.continents_id_seq OWNED BY public.continents.id;


--
-- Name: dinosaures; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.dinosaures (
    id integer NOT NULL,
    name character varying(255),
    img character varying(255),
    hauteur integer,
    longeur integer,
    poids integer,
    description text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.dinosaures OWNER TO dino;

--
-- Name: dinosaures_continent_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.dinosaures_continent_links (
    id integer NOT NULL,
    dinosaure_id integer,
    continent_id integer,
    dinosaure_order double precision
);


ALTER TABLE public.dinosaures_continent_links OWNER TO dino;

--
-- Name: dinosaures_continent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.dinosaures_continent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dinosaures_continent_links_id_seq OWNER TO dino;

--
-- Name: dinosaures_continent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.dinosaures_continent_links_id_seq OWNED BY public.dinosaures_continent_links.id;


--
-- Name: dinosaures_environement_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.dinosaures_environement_links (
    id integer NOT NULL,
    dinosaure_id integer,
    environement_id integer,
    dinosaure_order double precision
);


ALTER TABLE public.dinosaures_environement_links OWNER TO dino;

--
-- Name: dinosaures_environement_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.dinosaures_environement_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dinosaures_environement_links_id_seq OWNER TO dino;

--
-- Name: dinosaures_environement_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.dinosaures_environement_links_id_seq OWNED BY public.dinosaures_environement_links.id;


--
-- Name: dinosaures_epoque_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.dinosaures_epoque_links (
    id integer NOT NULL,
    dinosaure_id integer,
    epoque_id integer,
    dinosaure_order double precision
);


ALTER TABLE public.dinosaures_epoque_links OWNER TO dino;

--
-- Name: dinosaures_epoque_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.dinosaures_epoque_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dinosaures_epoque_links_id_seq OWNER TO dino;

--
-- Name: dinosaures_epoque_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.dinosaures_epoque_links_id_seq OWNED BY public.dinosaures_epoque_links.id;


--
-- Name: dinosaures_famille_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.dinosaures_famille_links (
    id integer NOT NULL,
    dinosaure_id integer,
    famille_id integer,
    dinosaure_order double precision
);


ALTER TABLE public.dinosaures_famille_links OWNER TO dino;

--
-- Name: dinosaures_famille_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.dinosaures_famille_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dinosaures_famille_links_id_seq OWNER TO dino;

--
-- Name: dinosaures_famille_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.dinosaures_famille_links_id_seq OWNED BY public.dinosaures_famille_links.id;


--
-- Name: dinosaures_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.dinosaures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dinosaures_id_seq OWNER TO dino;

--
-- Name: dinosaures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.dinosaures_id_seq OWNED BY public.dinosaures.id;


--
-- Name: dinosaures_locomotion_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.dinosaures_locomotion_links (
    id integer NOT NULL,
    dinosaure_id integer,
    locomotion_id integer,
    dinosaure_order double precision
);


ALTER TABLE public.dinosaures_locomotion_links OWNER TO dino;

--
-- Name: dinosaures_locomotion_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.dinosaures_locomotion_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dinosaures_locomotion_links_id_seq OWNER TO dino;

--
-- Name: dinosaures_locomotion_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.dinosaures_locomotion_links_id_seq OWNED BY public.dinosaures_locomotion_links.id;


--
-- Name: dinosaures_predate_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.dinosaures_predate_links (
    id integer NOT NULL,
    dinosaure_id integer,
    inv_dinosaure_id integer,
    dinosaure_order double precision,
    inv_dinosaure_order double precision
);


ALTER TABLE public.dinosaures_predate_links OWNER TO dino;

--
-- Name: dinosaures_predate_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.dinosaures_predate_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dinosaures_predate_links_id_seq OWNER TO dino;

--
-- Name: dinosaures_predate_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.dinosaures_predate_links_id_seq OWNED BY public.dinosaures_predate_links.id;


--
-- Name: dinosaures_predateurs_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.dinosaures_predateurs_links (
    id integer NOT NULL,
    dinosaure_id integer,
    inv_dinosaure_id integer,
    dinosaure_order double precision,
    inv_dinosaure_order double precision
);


ALTER TABLE public.dinosaures_predateurs_links OWNER TO dino;

--
-- Name: dinosaures_predateurs_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.dinosaures_predateurs_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dinosaures_predateurs_links_id_seq OWNER TO dino;

--
-- Name: dinosaures_predateurs_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.dinosaures_predateurs_links_id_seq OWNED BY public.dinosaures_predateurs_links.id;


--
-- Name: dinosaures_regime_alimentaire_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.dinosaures_regime_alimentaire_links (
    id integer NOT NULL,
    dinosaure_id integer,
    regime_alimentaire_id integer,
    dinosaure_order double precision
);


ALTER TABLE public.dinosaures_regime_alimentaire_links OWNER TO dino;

--
-- Name: dinosaures_regime_alimentaire_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.dinosaures_regime_alimentaire_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dinosaures_regime_alimentaire_links_id_seq OWNER TO dino;

--
-- Name: dinosaures_regime_alimentaire_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.dinosaures_regime_alimentaire_links_id_seq OWNED BY public.dinosaures_regime_alimentaire_links.id;


--
-- Name: environements; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.environements (
    id integer NOT NULL,
    label character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.environements OWNER TO dino;

--
-- Name: environements_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.environements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.environements_id_seq OWNER TO dino;

--
-- Name: environements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.environements_id_seq OWNED BY public.environements.id;


--
-- Name: epoques; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.epoques (
    id integer NOT NULL,
    label character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.epoques OWNER TO dino;

--
-- Name: epoques_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.epoques_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.epoques_id_seq OWNER TO dino;

--
-- Name: epoques_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.epoques_id_seq OWNED BY public.epoques.id;


--
-- Name: familles; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.familles (
    id integer NOT NULL,
    label character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.familles OWNER TO dino;

--
-- Name: familles_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.familles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.familles_id_seq OWNER TO dino;

--
-- Name: familles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.familles_id_seq OWNED BY public.familles.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO dino;

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO dino;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_folder_links_id_seq OWNER TO dino;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO dino;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO dino;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_related_morphs_id_seq OWNER TO dino;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO dino;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO dino;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: locomotions; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.locomotions (
    id integer NOT NULL,
    label character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.locomotions OWNER TO dino;

--
-- Name: locomotions_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.locomotions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.locomotions_id_seq OWNER TO dino;

--
-- Name: locomotions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.locomotions_id_seq OWNED BY public.locomotions.id;


--
-- Name: musees; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.musees (
    id integer NOT NULL,
    label character varying(255),
    adresse character varying(255),
    cp character varying(255),
    ville character varying(255),
    site_web character varying(255),
    mail character varying(255),
    img character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.musees OWNER TO dino;

--
-- Name: musees_dinosaures_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.musees_dinosaures_links (
    id integer NOT NULL,
    musee_id integer,
    dinosaure_id integer,
    dinosaure_order double precision,
    musee_order double precision
);


ALTER TABLE public.musees_dinosaures_links OWNER TO dino;

--
-- Name: musees_dinosaures_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.musees_dinosaures_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.musees_dinosaures_links_id_seq OWNER TO dino;

--
-- Name: musees_dinosaures_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.musees_dinosaures_links_id_seq OWNED BY public.musees_dinosaures_links.id;


--
-- Name: musees_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.musees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.musees_id_seq OWNER TO dino;

--
-- Name: musees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.musees_id_seq OWNED BY public.musees.id;


--
-- Name: regime_alimentaires; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.regime_alimentaires (
    id integer NOT NULL,
    label character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.regime_alimentaires OWNER TO dino;

--
-- Name: regime_alimentaires_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.regime_alimentaires_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.regime_alimentaires_id_seq OWNER TO dino;

--
-- Name: regime_alimentaires_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.regime_alimentaires_id_seq OWNED BY public.regime_alimentaires.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO dino;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_id_seq OWNER TO dino;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO dino;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_token_links_id_seq OWNER TO dino;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO dino;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO dino;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO dino;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO dino;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO dino;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO dino;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO dino;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO dino;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO dino;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_id_seq OWNER TO dino;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_links OWNER TO dino;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_token_links_id_seq OWNER TO dino;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO dino;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_tokens_id_seq OWNER TO dino;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO dino;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO dino;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO dino;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO dino;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO dino;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_role_links_id_seq OWNER TO dino;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO dino;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO dino;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO dino;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO dino;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO dino;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_role_links_id_seq OWNER TO dino;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO dino;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_id_seq OWNER TO dino;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: dino
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO dino;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: dino
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_parent_links_id_seq OWNER TO dino;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dino
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: continents id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.continents ALTER COLUMN id SET DEFAULT nextval('public.continents_id_seq'::regclass);


--
-- Name: dinosaures id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures ALTER COLUMN id SET DEFAULT nextval('public.dinosaures_id_seq'::regclass);


--
-- Name: dinosaures_continent_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_continent_links ALTER COLUMN id SET DEFAULT nextval('public.dinosaures_continent_links_id_seq'::regclass);


--
-- Name: dinosaures_environement_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_environement_links ALTER COLUMN id SET DEFAULT nextval('public.dinosaures_environement_links_id_seq'::regclass);


--
-- Name: dinosaures_epoque_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_epoque_links ALTER COLUMN id SET DEFAULT nextval('public.dinosaures_epoque_links_id_seq'::regclass);


--
-- Name: dinosaures_famille_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_famille_links ALTER COLUMN id SET DEFAULT nextval('public.dinosaures_famille_links_id_seq'::regclass);


--
-- Name: dinosaures_locomotion_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_locomotion_links ALTER COLUMN id SET DEFAULT nextval('public.dinosaures_locomotion_links_id_seq'::regclass);


--
-- Name: dinosaures_predate_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_predate_links ALTER COLUMN id SET DEFAULT nextval('public.dinosaures_predate_links_id_seq'::regclass);


--
-- Name: dinosaures_predateurs_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_predateurs_links ALTER COLUMN id SET DEFAULT nextval('public.dinosaures_predateurs_links_id_seq'::regclass);


--
-- Name: dinosaures_regime_alimentaire_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_regime_alimentaire_links ALTER COLUMN id SET DEFAULT nextval('public.dinosaures_regime_alimentaire_links_id_seq'::regclass);


--
-- Name: environements id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.environements ALTER COLUMN id SET DEFAULT nextval('public.environements_id_seq'::regclass);


--
-- Name: epoques id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.epoques ALTER COLUMN id SET DEFAULT nextval('public.epoques_id_seq'::regclass);


--
-- Name: familles id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.familles ALTER COLUMN id SET DEFAULT nextval('public.familles_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: locomotions id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.locomotions ALTER COLUMN id SET DEFAULT nextval('public.locomotions_id_seq'::regclass);


--
-- Name: musees id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.musees ALTER COLUMN id SET DEFAULT nextval('public.musees_id_seq'::regclass);


--
-- Name: musees_dinosaures_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.musees_dinosaures_links ALTER COLUMN id SET DEFAULT nextval('public.musees_dinosaures_links_id_seq'::regclass);


--
-- Name: regime_alimentaires id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.regime_alimentaires ALTER COLUMN id SET DEFAULT nextval('public.regime_alimentaires_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::upload.read	{}	\N	{}	[]	2023-12-14 16:05:25.25	2023-12-14 16:05:25.25	\N	\N
2	plugin::upload.configure-view	{}	\N	{}	[]	2023-12-14 16:05:25.262	2023-12-14 16:05:25.262	\N	\N
3	plugin::upload.assets.create	{}	\N	{}	[]	2023-12-14 16:05:25.269	2023-12-14 16:05:25.269	\N	\N
4	plugin::upload.assets.update	{}	\N	{}	[]	2023-12-14 16:05:25.28	2023-12-14 16:05:25.28	\N	\N
5	plugin::upload.assets.download	{}	\N	{}	[]	2023-12-14 16:05:25.289	2023-12-14 16:05:25.289	\N	\N
6	plugin::upload.assets.copy-link	{}	\N	{}	[]	2023-12-14 16:05:25.302	2023-12-14 16:05:25.302	\N	\N
7	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2023-12-14 16:05:25.363	2023-12-14 16:05:25.363	\N	\N
8	plugin::upload.configure-view	{}	\N	{}	[]	2023-12-14 16:05:25.373	2023-12-14 16:05:25.373	\N	\N
9	plugin::upload.assets.create	{}	\N	{}	[]	2023-12-14 16:05:25.38	2023-12-14 16:05:25.38	\N	\N
10	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2023-12-14 16:05:25.39	2023-12-14 16:05:25.39	\N	\N
11	plugin::upload.assets.download	{}	\N	{}	[]	2023-12-14 16:05:25.411	2023-12-14 16:05:25.411	\N	\N
12	plugin::upload.assets.copy-link	{}	\N	{}	[]	2023-12-14 16:05:25.419	2023-12-14 16:05:25.419	\N	\N
13	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-12-14 16:05:25.461	2023-12-14 16:05:25.461	\N	\N
14	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-12-14 16:05:25.472	2023-12-14 16:05:25.472	\N	\N
15	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-12-14 16:05:25.486	2023-12-14 16:05:25.486	\N	\N
16	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2023-12-14 16:05:25.494	2023-12-14 16:05:25.494	\N	\N
17	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2023-12-14 16:05:25.512	2023-12-14 16:05:25.512	\N	\N
18	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2023-12-14 16:05:25.542	2023-12-14 16:05:25.542	\N	\N
19	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2023-12-14 16:05:25.556	2023-12-14 16:05:25.556	\N	\N
20	plugin::content-type-builder.read	{}	\N	{}	[]	2023-12-14 16:05:25.565	2023-12-14 16:05:25.565	\N	\N
21	plugin::email.settings.read	{}	\N	{}	[]	2023-12-14 16:05:25.572	2023-12-14 16:05:25.572	\N	\N
22	plugin::upload.read	{}	\N	{}	[]	2023-12-14 16:05:25.579	2023-12-14 16:05:25.579	\N	\N
23	plugin::upload.assets.create	{}	\N	{}	[]	2023-12-14 16:05:25.586	2023-12-14 16:05:25.586	\N	\N
24	plugin::upload.assets.update	{}	\N	{}	[]	2023-12-14 16:05:25.592	2023-12-14 16:05:25.592	\N	\N
25	plugin::upload.assets.download	{}	\N	{}	[]	2023-12-14 16:05:25.604	2023-12-14 16:05:25.604	\N	\N
26	plugin::upload.assets.copy-link	{}	\N	{}	[]	2023-12-14 16:05:25.618	2023-12-14 16:05:25.618	\N	\N
27	plugin::upload.configure-view	{}	\N	{}	[]	2023-12-14 16:05:25.636	2023-12-14 16:05:25.636	\N	\N
28	plugin::upload.settings.read	{}	\N	{}	[]	2023-12-14 16:05:25.646	2023-12-14 16:05:25.646	\N	\N
29	plugin::users-permissions.roles.create	{}	\N	{}	[]	2023-12-14 16:05:25.656	2023-12-14 16:05:25.656	\N	\N
30	plugin::users-permissions.roles.read	{}	\N	{}	[]	2023-12-14 16:05:25.662	2023-12-14 16:05:25.662	\N	\N
31	plugin::users-permissions.roles.update	{}	\N	{}	[]	2023-12-14 16:05:25.671	2023-12-14 16:05:25.671	\N	\N
32	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2023-12-14 16:05:25.68	2023-12-14 16:05:25.68	\N	\N
33	plugin::users-permissions.providers.read	{}	\N	{}	[]	2023-12-14 16:05:25.69	2023-12-14 16:05:25.69	\N	\N
34	plugin::users-permissions.providers.update	{}	\N	{}	[]	2023-12-14 16:05:25.704	2023-12-14 16:05:25.704	\N	\N
35	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2023-12-14 16:05:25.72	2023-12-14 16:05:25.72	\N	\N
36	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2023-12-14 16:05:25.73	2023-12-14 16:05:25.73	\N	\N
37	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2023-12-14 16:05:25.739	2023-12-14 16:05:25.739	\N	\N
38	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2023-12-14 16:05:25.75	2023-12-14 16:05:25.75	\N	\N
39	plugin::i18n.locale.create	{}	\N	{}	[]	2023-12-14 16:05:25.759	2023-12-14 16:05:25.759	\N	\N
40	plugin::i18n.locale.read	{}	\N	{}	[]	2023-12-14 16:05:25.766	2023-12-14 16:05:25.766	\N	\N
41	plugin::i18n.locale.update	{}	\N	{}	[]	2023-12-14 16:05:25.776	2023-12-14 16:05:25.776	\N	\N
42	plugin::i18n.locale.delete	{}	\N	{}	[]	2023-12-14 16:05:25.786	2023-12-14 16:05:25.786	\N	\N
43	admin::marketplace.read	{}	\N	{}	[]	2023-12-14 16:05:25.796	2023-12-14 16:05:25.796	\N	\N
44	admin::webhooks.create	{}	\N	{}	[]	2023-12-14 16:05:25.808	2023-12-14 16:05:25.808	\N	\N
45	admin::webhooks.read	{}	\N	{}	[]	2023-12-14 16:05:25.819	2023-12-14 16:05:25.819	\N	\N
46	admin::webhooks.update	{}	\N	{}	[]	2023-12-14 16:05:25.83	2023-12-14 16:05:25.83	\N	\N
47	admin::webhooks.delete	{}	\N	{}	[]	2023-12-14 16:05:25.848	2023-12-14 16:05:25.848	\N	\N
48	admin::users.create	{}	\N	{}	[]	2023-12-14 16:05:25.863	2023-12-14 16:05:25.863	\N	\N
49	admin::users.read	{}	\N	{}	[]	2023-12-14 16:05:25.872	2023-12-14 16:05:25.872	\N	\N
50	admin::users.update	{}	\N	{}	[]	2023-12-14 16:05:25.881	2023-12-14 16:05:25.881	\N	\N
51	admin::users.delete	{}	\N	{}	[]	2023-12-14 16:05:25.891	2023-12-14 16:05:25.891	\N	\N
52	admin::roles.create	{}	\N	{}	[]	2023-12-14 16:05:25.9	2023-12-14 16:05:25.9	\N	\N
53	admin::roles.read	{}	\N	{}	[]	2023-12-14 16:05:25.915	2023-12-14 16:05:25.915	\N	\N
54	admin::roles.update	{}	\N	{}	[]	2023-12-14 16:05:25.928	2023-12-14 16:05:25.928	\N	\N
55	admin::roles.delete	{}	\N	{}	[]	2023-12-14 16:05:25.936	2023-12-14 16:05:25.936	\N	\N
56	admin::api-tokens.access	{}	\N	{}	[]	2023-12-14 16:05:25.943	2023-12-14 16:05:25.943	\N	\N
57	admin::api-tokens.create	{}	\N	{}	[]	2023-12-14 16:05:25.958	2023-12-14 16:05:25.958	\N	\N
58	admin::api-tokens.read	{}	\N	{}	[]	2023-12-14 16:05:25.972	2023-12-14 16:05:25.972	\N	\N
59	admin::api-tokens.update	{}	\N	{}	[]	2023-12-14 16:05:26	2023-12-14 16:05:26	\N	\N
60	admin::api-tokens.regenerate	{}	\N	{}	[]	2023-12-14 16:05:26.014	2023-12-14 16:05:26.014	\N	\N
61	admin::api-tokens.delete	{}	\N	{}	[]	2023-12-14 16:05:26.021	2023-12-14 16:05:26.021	\N	\N
62	admin::project-settings.update	{}	\N	{}	[]	2023-12-14 16:05:26.041	2023-12-14 16:05:26.041	\N	\N
63	admin::project-settings.read	{}	\N	{}	[]	2023-12-14 16:05:26.054	2023-12-14 16:05:26.054	\N	\N
64	admin::transfer.tokens.access	{}	\N	{}	[]	2023-12-14 16:05:26.07	2023-12-14 16:05:26.07	\N	\N
65	admin::transfer.tokens.create	{}	\N	{}	[]	2023-12-14 16:05:26.084	2023-12-14 16:05:26.084	\N	\N
66	admin::transfer.tokens.read	{}	\N	{}	[]	2023-12-14 16:05:26.096	2023-12-14 16:05:26.096	\N	\N
67	admin::transfer.tokens.update	{}	\N	{}	[]	2023-12-14 16:05:26.105	2023-12-14 16:05:26.105	\N	\N
68	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2023-12-14 16:05:26.118	2023-12-14 16:05:26.118	\N	\N
69	admin::transfer.tokens.delete	{}	\N	{}	[]	2023-12-14 16:05:26.135	2023-12-14 16:05:26.135	\N	\N
73	plugin::content-manager.explorer.delete	{}	api::dinosaure.dinosaure	{}	[]	2023-12-14 16:11:57.574	2023-12-14 16:11:57.574	\N	\N
74	plugin::content-manager.explorer.publish	{}	api::dinosaure.dinosaure	{}	[]	2023-12-14 16:11:57.582	2023-12-14 16:11:57.582	\N	\N
76	plugin::content-manager.explorer.create	{}	api::epoque.epoque	{"fields": ["label", "dinosaures"]}	[]	2023-12-14 16:13:50.797	2023-12-14 16:13:50.797	\N	\N
78	plugin::content-manager.explorer.read	{}	api::epoque.epoque	{"fields": ["label", "dinosaures"]}	[]	2023-12-14 16:13:50.818	2023-12-14 16:13:50.818	\N	\N
80	plugin::content-manager.explorer.update	{}	api::epoque.epoque	{"fields": ["label", "dinosaures"]}	[]	2023-12-14 16:13:50.837	2023-12-14 16:13:50.837	\N	\N
81	plugin::content-manager.explorer.delete	{}	api::epoque.epoque	{}	[]	2023-12-14 16:13:50.846	2023-12-14 16:13:50.846	\N	\N
82	plugin::content-manager.explorer.publish	{}	api::epoque.epoque	{}	[]	2023-12-14 16:13:50.857	2023-12-14 16:13:50.857	\N	\N
84	plugin::content-manager.explorer.create	{}	api::environement.environement	{"fields": ["label", "dinosaures"]}	[]	2023-12-14 16:14:28.03	2023-12-14 16:14:28.03	\N	\N
86	plugin::content-manager.explorer.read	{}	api::environement.environement	{"fields": ["label", "dinosaures"]}	[]	2023-12-14 16:14:28.046	2023-12-14 16:14:28.046	\N	\N
88	plugin::content-manager.explorer.update	{}	api::environement.environement	{"fields": ["label", "dinosaures"]}	[]	2023-12-14 16:14:28.063	2023-12-14 16:14:28.063	\N	\N
89	plugin::content-manager.explorer.delete	{}	api::environement.environement	{}	[]	2023-12-14 16:14:28.075	2023-12-14 16:14:28.075	\N	\N
90	plugin::content-manager.explorer.publish	{}	api::environement.environement	{}	[]	2023-12-14 16:14:28.082	2023-12-14 16:14:28.082	\N	\N
92	plugin::content-manager.explorer.create	{}	api::musee.musee	{"fields": ["label", "dinosaures", "adresse", "cp", "ville", "site_web", "mail", "img"]}	[]	2023-12-14 16:18:20.587	2023-12-14 16:18:20.587	\N	\N
94	plugin::content-manager.explorer.read	{}	api::musee.musee	{"fields": ["label", "dinosaures", "adresse", "cp", "ville", "site_web", "mail", "img"]}	[]	2023-12-14 16:18:20.607	2023-12-14 16:18:20.607	\N	\N
96	plugin::content-manager.explorer.update	{}	api::musee.musee	{"fields": ["label", "dinosaures", "adresse", "cp", "ville", "site_web", "mail", "img"]}	[]	2023-12-14 16:18:20.624	2023-12-14 16:18:20.624	\N	\N
97	plugin::content-manager.explorer.delete	{}	api::musee.musee	{}	[]	2023-12-14 16:18:20.643	2023-12-14 16:18:20.643	\N	\N
98	plugin::content-manager.explorer.publish	{}	api::musee.musee	{}	[]	2023-12-14 16:18:20.652	2023-12-14 16:18:20.652	\N	\N
100	plugin::content-manager.explorer.create	{}	api::regime-alimentaire.regime-alimentaire	{"fields": ["label", "dinosaures"]}	[]	2023-12-14 16:20:48.817	2023-12-14 16:20:48.817	\N	\N
102	plugin::content-manager.explorer.read	{}	api::regime-alimentaire.regime-alimentaire	{"fields": ["label", "dinosaures"]}	[]	2023-12-14 16:20:48.84	2023-12-14 16:20:48.84	\N	\N
104	plugin::content-manager.explorer.update	{}	api::regime-alimentaire.regime-alimentaire	{"fields": ["label", "dinosaures"]}	[]	2023-12-14 16:20:48.861	2023-12-14 16:20:48.861	\N	\N
105	plugin::content-manager.explorer.delete	{}	api::regime-alimentaire.regime-alimentaire	{}	[]	2023-12-14 16:20:48.87	2023-12-14 16:20:48.87	\N	\N
106	plugin::content-manager.explorer.publish	{}	api::regime-alimentaire.regime-alimentaire	{}	[]	2023-12-14 16:20:48.881	2023-12-14 16:20:48.881	\N	\N
113	plugin::content-manager.explorer.delete	{}	api::continent.continent	{}	[]	2023-12-14 16:21:23.154	2023-12-14 16:21:23.154	\N	\N
114	plugin::content-manager.explorer.publish	{}	api::continent.continent	{}	[]	2023-12-14 16:21:23.165	2023-12-14 16:21:23.165	\N	\N
121	plugin::content-manager.explorer.delete	{}	api::famille.famille	{}	[]	2023-12-14 16:21:59.707	2023-12-14 16:21:59.707	\N	\N
122	plugin::content-manager.explorer.publish	{}	api::famille.famille	{}	[]	2023-12-14 16:21:59.715	2023-12-14 16:21:59.715	\N	\N
124	plugin::content-manager.explorer.create	{}	api::locomotion.locomotion	{"fields": ["label", "dinosaures"]}	[]	2023-12-14 16:23:07.281	2023-12-14 16:23:07.281	\N	\N
126	plugin::content-manager.explorer.read	{}	api::locomotion.locomotion	{"fields": ["label", "dinosaures"]}	[]	2023-12-14 16:23:07.291	2023-12-14 16:23:07.291	\N	\N
128	plugin::content-manager.explorer.update	{}	api::locomotion.locomotion	{"fields": ["label", "dinosaures"]}	[]	2023-12-14 16:23:07.304	2023-12-14 16:23:07.304	\N	\N
129	plugin::content-manager.explorer.delete	{}	api::locomotion.locomotion	{}	[]	2023-12-14 16:23:07.309	2023-12-14 16:23:07.309	\N	\N
130	plugin::content-manager.explorer.publish	{}	api::locomotion.locomotion	{}	[]	2023-12-14 16:23:07.317	2023-12-14 16:23:07.317	\N	\N
138	plugin::content-manager.explorer.create	{}	api::famille.famille	{"fields": ["label", "dinosaures"]}	[]	2023-12-14 16:24:59.077	2023-12-14 16:24:59.077	\N	\N
140	plugin::content-manager.explorer.read	{}	api::famille.famille	{"fields": ["label", "dinosaures"]}	[]	2023-12-14 16:24:59.091	2023-12-14 16:24:59.091	\N	\N
142	plugin::content-manager.explorer.update	{}	api::famille.famille	{"fields": ["label", "dinosaures"]}	[]	2023-12-14 16:24:59.107	2023-12-14 16:24:59.107	\N	\N
143	plugin::content-manager.explorer.create	{}	api::continent.continent	{"fields": ["label", "dinosaures", "dinosaure"]}	[]	2023-12-14 17:04:37.141	2023-12-14 17:04:37.141	\N	\N
145	plugin::content-manager.explorer.read	{}	api::continent.continent	{"fields": ["label", "dinosaures", "dinosaure"]}	[]	2023-12-14 17:04:37.162	2023-12-14 17:04:37.162	\N	\N
147	plugin::content-manager.explorer.update	{}	api::continent.continent	{"fields": ["label", "dinosaures", "dinosaure"]}	[]	2023-12-14 17:04:37.179	2023-12-14 17:04:37.179	\N	\N
163	plugin::content-manager.explorer.create	{}	api::dinosaure.dinosaure	{"fields": ["name", "img", "hauteur", "longeur", "poids", "description", "epoque", "environement", "musees", "regime_alimentaire", "continent", "locomotion", "famille", "predateurs", "predate"]}	[]	2023-12-14 17:58:21.535	2023-12-14 17:58:21.535	\N	\N
165	plugin::content-manager.explorer.read	{}	api::dinosaure.dinosaure	{"fields": ["name", "img", "hauteur", "longeur", "poids", "description", "epoque", "environement", "musees", "regime_alimentaire", "continent", "locomotion", "famille", "predateurs", "predate"]}	[]	2023-12-14 17:58:21.56	2023-12-14 17:58:21.56	\N	\N
167	plugin::content-manager.explorer.update	{}	api::dinosaure.dinosaure	{"fields": ["name", "img", "hauteur", "longeur", "poids", "description", "epoque", "environement", "musees", "regime_alimentaire", "continent", "locomotion", "famille", "predateurs", "predate"]}	[]	2023-12-14 17:58:21.588	2023-12-14 17:58:21.588	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	3	1
8	8	3	2
9	9	3	3
10	10	3	4
11	11	3	5
12	12	3	6
13	13	1	1
14	14	1	2
15	15	1	3
16	16	1	4
17	17	1	5
18	18	1	6
19	19	1	7
20	20	1	8
21	21	1	9
22	22	1	10
23	23	1	11
24	24	1	12
25	25	1	13
26	26	1	14
27	27	1	15
28	28	1	16
29	29	1	17
30	30	1	18
31	31	1	19
32	32	1	20
33	33	1	21
34	34	1	22
35	35	1	23
36	36	1	24
37	37	1	25
38	38	1	26
39	39	1	27
40	40	1	28
41	41	1	29
42	42	1	30
43	43	1	31
44	44	1	32
45	45	1	33
46	46	1	34
47	47	1	35
48	48	1	36
49	49	1	37
50	50	1	38
51	51	1	39
52	52	1	40
53	53	1	41
54	54	1	42
55	55	1	43
56	56	1	44
57	57	1	45
58	58	1	46
59	59	1	47
60	60	1	48
61	61	1	49
62	62	1	50
63	63	1	51
64	64	1	52
65	65	1	53
66	66	1	54
67	67	1	55
68	68	1	56
69	69	1	57
73	73	1	61
74	74	1	62
76	76	1	64
78	78	1	66
80	80	1	68
81	81	1	69
82	82	1	70
84	84	1	72
86	86	1	74
88	88	1	76
89	89	1	77
90	90	1	78
92	92	1	80
94	94	1	82
96	96	1	84
97	97	1	85
98	98	1	86
100	100	1	88
102	102	1	90
104	104	1	92
105	105	1	93
106	106	1	94
113	113	1	101
114	114	1	102
121	121	1	109
122	122	1	110
124	124	1	112
126	126	1	114
128	128	1	116
129	129	1	117
130	130	1	118
138	138	1	125
140	140	1	127
142	142	1	129
143	143	1	130
145	145	1	132
147	147	1	134
163	163	1	143
165	165	1	145
167	167	1	147
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2023-12-14 16:05:25.219	2023-12-14 16:05:25.219	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2023-12-14 16:05:25.229	2023-12-14 16:05:25.229	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2023-12-14 16:05:25.246	2023-12-14 16:05:25.246	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	dino	dino	\N	jonathan.ben-sadoun@oclock.school	$2a$10$UfcM6ctjbHGMeEoBa7n86unQ.dankr.HZB33h2X.G7dgRPK2iUt/a	8cb574e0477e1c4787f957ec560945e3809eb23f	\N	t	f	\N	2023-12-14 16:07:02.576	2023-12-14 17:52:34.16	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: continents; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.continents (id, label, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
2	 Asie	2023-12-14 16:31:57.195	2023-12-14 16:32:03.982	2023-12-14 16:32:03.967	1	1
1	Amérique du Nord	2023-12-14 16:31:16.81	2023-12-14 16:32:11.468	2023-12-14 16:32:11.46	1	1
3	Tous les continents	2023-12-14 16:32:26.71	2023-12-14 16:32:27.652	2023-12-14 16:32:27.649	1	1
4	Europe	2023-12-14 16:32:42.955	2023-12-14 16:32:47.07	2023-12-14 16:32:47.066	1	1
5	afrique	2023-12-15 14:27:46.036	2023-12-15 14:27:52.67	2023-12-15 14:27:52.664	1	1
6	Non spécifié	2023-12-15 14:49:33.303	2023-12-15 14:51:46.993	2023-12-15 14:51:46.987	1	1
\.


--
-- Data for Name: dinosaures; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.dinosaures (id, name, img, hauteur, longeur, poids, description, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Tyrannosaure Rex	./doc/asset/img/tyranosaure-rex.jpeg	400	1200	9000	 Grand prédateur carnivore du Crétacé supérieur.	2023-12-14 16:30:36.292	2023-12-14 16:42:59.411	2023-12-14 16:42:59.404	1	1
2	Tricératops	./doc/asset/img/triceratops.jpeg	300	900	6000	Herbivore quadrupède avec trois cornes sur le crâne.	2023-12-14 16:46:34.475	2023-12-14 16:46:37.631	2023-12-14 16:46:37.625	1	1
13	Qianlong shouhu	./doc/asser/img/no-content.jpeg	\N	1000	1000	 Qianlong shouhu appartient à un groupe de dinosaures connus sous le nom de sauropodomorphes	2023-12-15 15:00:19.536	2023-12-15 15:00:24.366	2023-12-15 15:00:24.36	1	1
14	iguanodon	./doc/asset/img/iguanodon.jpeg	\N	600	\N	 : L’Iguanodon était un grand dinosaure herbivore qui a vécu il y a 110 à 140 millions d’années	2023-12-15 15:03:26.333	2023-12-15 15:03:27.918	2023-12-15 15:03:27.914	1	1
6	Pteranodon	\N	180	600	20	Ptérosaure volant avec une envergure impressionnante	2023-12-14 16:53:11.041	2023-12-14 16:53:12.288	2023-12-14 16:53:12.284	1	1
8	Archaeopteryx	\N	30	50	1	Dinosaure aviaire précoce, considéré comme un lien vers les oiseaux	2023-12-14 16:56:33.699	2023-12-14 16:56:34.859	2023-12-14 16:56:34.854	1	1
9	 Allosaurus	\N	300	800	2000	Grand prédateur du Jurassique avec des dents tranchantes	2023-12-14 16:58:29.224	2023-12-14 16:58:30.723	2023-12-14 16:58:30.718	1	1
15	Adratiklit	./doc/asser/img/no-content.jpeg	\N	\N	\N	Adratiklit est un genre éteint de dinosaure herbivore stégosaurien qui vivait sur le supercontinent Gondwana pendant le Jurassique moyen	2023-12-15 15:05:46.527	2023-12-15 15:05:48.216	2023-12-15 15:05:48.208	1	1
10	Diplodocus	\N	700	2500	15000	Dinosaur à long cou avec une longue queue, vivant à la fin du Jurassique	2023-12-14 17:01:32.006	2023-12-14 17:08:27.941	2023-12-14 17:01:33.259	1	1
7	Ankylosaurus	\N	150	500	5000	Dinosaure blindé avec une massue à la queue	2023-12-14 16:54:34.992	2023-12-14 17:09:16.482	2023-12-14 16:54:36.295	1	1
5	Stegosaurus	https://unsplash.com/fr/photos/figurine-de-dinosaure-vert-et-marron-fwULOOEWHto	400	700	4000	Dinosaur à plaques osseuses et piques sur la queue	2023-12-14 16:51:28.976	2023-12-14 17:09:44.4	2023-12-14 16:51:30.331	1	1
16	Abydosaurus	\N	\N	\N	\N	Abydosaurus (abydosaure en français), qui signifie « lézard d'Abydos », est un genre éteint de dinosaures sauropodes, plus précisément un membre de la famille des brachiosauridés. Connu à partir d'un crâne et de matériel post-crânien, il a été trouvé dans des sédiments datant de la fin du Crétacé inférieur dans le nord-est de l'Utah, aux États-Unis.	2023-12-15 15:17:07.777	2023-12-15 15:17:09.398	2023-12-15 15:17:09.389	1	1
4	Brachiosaure	\N	1500	2500	50000	 Le Brachiosaure était un énorme dinosaure herbivore caractérisé par son long cou, sa queue relativement courte, et ses membres antérieurs significativement plus longs que les membres postérieurs, donnant à son corps une inclinaison vers l'avant. Son long cou lui permettait d'atteindre la végétation élevée.\n\nÉpoque : Jurassique supérieur (environ 154-153 millions d'années)	2023-12-14 16:49:51.848	2023-12-15 14:30:42.829	2023-12-14 16:49:53.147	1	1
3	Velociraptor	\N	50	200	15	Petit dinosaure carnivore connu pour sa vélocité	2023-12-14 16:48:02.539	2023-12-15 14:43:41.365	2023-12-14 16:48:04.059	1	1
11	Spicomellus	\N	\N	\N	\N	Veuillez noter que certaines informations ne sont pas disponibles pour tous les dinosaures. De plus, les informations sur les dinosaures peuvent varier en fonction des découvertes et des recherches en cours. Pour des informations plus précises et détaillées, je vous recommande de consulter des sources spécialisées ou de visiter un musée d’histoire naturelle.	2023-12-15 14:49:06.662	2023-12-15 14:52:34.774	2023-12-15 14:49:16.458	1	1
12	Tuojiangosaurus	./doc/asser/img/no-content.jpeg	500	700	\N	:Tuojiangosaurus est un genre éteint de dinosaures herbivores quadrupèdes de l’infra-ordre des stégosauriens qui vécut en Chine durant le Jurassique supérieur	2023-12-15 14:56:43.871	2023-12-15 14:56:45.963	2023-12-15 14:56:45.953	1	1
17	Giganotosaurus	\N	\N	1500	\N	\N	2023-12-15 15:18:53.016	2023-12-15 15:18:54.547	2023-12-15 15:18:54.54	1	1
18	Dilophosaurus	\N	\N	6	\N	Le Dilophosaurus est un dinosaure carnivore qui se distingue par deux crêtes sur sa tête.	2023-12-15 15:20:53.88	2023-12-15 15:20:55.594	2023-12-15 15:20:55.588	1	1
19	Parasaurolophus	\N	\N	\N	\N	 Le Parasaurolophus est un grand dinosaure herbivore, au bec aplati, et portant une sorte de crête allongée à l’arrière du crâne.	2023-12-15 15:22:24.195	2023-12-15 15:22:26.037	2023-12-15 15:22:26.008	1	1
20	Pterodactylus	\N	\N	91	4	 Le Pterodactylus est un dinosaure volant qui vivait il y a environ 150 millions à 145 millions d’années pendant la période du Jurassique supérieur.	2023-12-15 15:24:18.563	2023-12-15 15:24:19.921	2023-12-15 15:24:19.914	1	1
21	Spinosaurus	\N	\N	12000	20000	 Le Spinosaurus était le plus grand des dinosaures carnivores, avec une haute crête dorsale lui donnant un air de dragon préhistorique14	2023-12-15 15:35:19.586	2023-12-15 15:35:21.159	2023-12-15 15:35:21.152	1	1
\.


--
-- Data for Name: dinosaures_continent_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.dinosaures_continent_links (id, dinosaure_id, continent_id, dinosaure_order) FROM stdin;
3	3	2	1
6	6	3	1
8	8	4	1
1	1	1	1
2	2	1	2
5	5	1	3
7	7	1	4
9	9	1	5
10	10	1	6
11	4	5	1
12	11	6	1
13	12	2	2
14	13	2	3
15	14	4	2
16	15	6	2
17	16	1	7
18	17	5	2
19	18	1	8
20	19	1	9
21	20	1	10
22	21	1	11
\.


--
-- Data for Name: dinosaures_environement_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.dinosaures_environement_links (id, dinosaure_id, environement_id, dinosaure_order) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	1	1
7	7	2	6
8	8	1	2
9	9	2	7
10	10	2	8
11	11	4	1
12	12	2	9
13	13	2	10
14	14	2	11
15	15	2	12
16	16	2	13
17	17	2	14
18	18	2	15
19	19	2	16
20	20	1	3
21	21	2	17
\.


--
-- Data for Name: dinosaures_epoque_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.dinosaures_epoque_links (id, dinosaure_id, epoque_id, dinosaure_order) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	1	1
5	5	1	2
6	6	2	4
7	7	2	5
8	8	1	3
9	9	1	4
10	10	1	5
11	11	3	1
12	12	1	6
13	13	1	7
14	14	2	6
15	15	1	8
16	16	2	7
17	17	2	8
18	18	1	9
19	19	2	9
20	20	1	10
21	21	2	10
\.


--
-- Data for Name: dinosaures_famille_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.dinosaures_famille_links (id, dinosaure_id, famille_id, dinosaure_order) FROM stdin;
2	2	2	1
4	4	3	1
5	5	4	1
6	6	5	1
7	7	4	2
8	8	5	2
10	10	3	2
1	1	1	1
9	9	1	2
11	3	6	1
12	11	7	1
13	12	7	2
14	16	3	3
15	17	1	3
16	18	1	4
17	20	5	3
18	21	1	5
\.


--
-- Data for Name: dinosaures_locomotion_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.dinosaures_locomotion_links (id, dinosaure_id, locomotion_id, dinosaure_order) FROM stdin;
1	1	2	1
2	2	1	1
3	3	2	2
4	4	1	2
5	5	1	3
6	6	3	1
7	7	1	4
8	8	2	3
9	9	2	4
10	10	1	5
11	11	4	1
12	12	1	6
13	13	1	7
14	14	1	8
15	15	1	9
16	16	1	10
17	17	2	5
18	18	2	6
19	19	1	11
20	20	3	2
\.


--
-- Data for Name: dinosaures_predate_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.dinosaures_predate_links (id, dinosaure_id, inv_dinosaure_id, dinosaure_order, inv_dinosaure_order) FROM stdin;
1	9	4	1	1
\.


--
-- Data for Name: dinosaures_predateurs_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.dinosaures_predateurs_links (id, dinosaure_id, inv_dinosaure_id, dinosaure_order, inv_dinosaure_order) FROM stdin;
\.


--
-- Data for Name: dinosaures_regime_alimentaire_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.dinosaures_regime_alimentaire_links (id, dinosaure_id, regime_alimentaire_id, dinosaure_order) FROM stdin;
1	1	2	1
2	2	1	1
3	3	2	2
4	4	1	2
5	5	1	3
6	6	3	1
7	7	1	4
8	8	4	1
9	9	2	3
10	10	1	5
11	11	5	1
12	12	1	6
13	13	1	7
14	14	1	8
15	15	1	9
16	16	1	10
17	17	2	4
18	18	2	5
19	19	1	11
20	20	2	6
21	21	2	7
\.


--
-- Data for Name: environements; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.environements (id, label, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Air	2023-12-14 16:33:16.369	2023-12-14 16:33:17.179	2023-12-14 16:33:17.173	1	1
3	Mer	2023-12-14 16:33:58.268	2023-12-14 16:33:59.333	2023-12-14 16:33:59.324	1	1
2	Terre	2023-12-14 16:33:31.346	2023-12-14 16:43:04.782	2023-12-14 16:43:04.779	1	1
4	Non spécifié	2023-12-15 14:50:37.852	2023-12-15 14:50:38.814	2023-12-15 14:50:38.809	1	1
\.


--
-- Data for Name: epoques; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.epoques (id, label, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	 Jurassique	2023-12-14 16:34:16.28	2023-12-14 16:34:19.304	2023-12-14 16:34:19.302	1	1
2	 Crétacé	2023-12-14 16:34:31.625	2023-12-14 16:34:45.915	2023-12-14 16:34:45.906	1	1
3	Non spécifié	2023-12-15 14:50:46.938	2023-12-15 14:50:47.776	2023-12-15 14:50:47.772	1	1
\.


--
-- Data for Name: familles; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.familles (id, label, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Prédateurs	2023-12-14 16:35:33.503	2023-12-14 16:35:34.329	2023-12-14 16:35:34.322	1	1
2	Cornus	2023-12-14 16:35:43.248	2023-12-14 16:35:45.28	2023-12-14 16:35:45.273	1	1
3	Longs cous	2023-12-14 16:35:59.904	2023-12-14 16:36:05.783	2023-12-14 16:36:05.773	1	1
4	Cuirassés	2023-12-14 16:36:18.198	2023-12-14 16:36:20.543	2023-12-14 16:36:20.541	1	1
5	Volants	2023-12-14 16:36:32.311	2023-12-14 16:36:33.821	2023-12-14 16:36:33.817	1	1
6	plumeux	2023-12-15 14:34:29.635	2023-12-15 14:34:52.828	2023-12-15 14:34:52.82	1	1
7	Non spécifié	2023-12-15 14:50:56.72	2023-12-15 14:50:57.547	2023-12-15 14:50:57.539	1	1
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2023-12-14 16:05:25.182	2023-12-14 16:05:25.182	\N	\N
\.


--
-- Data for Name: locomotions; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.locomotions (id, label, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	À quatre pattes	2023-12-14 16:36:53.642	2023-12-14 16:37:09.027	2023-12-14 16:37:09.022	1	1
2	À deux pattes 	2023-12-14 16:37:14.945	2023-12-14 16:37:19.453	2023-12-14 16:37:19.443	1	1
3	Aucun direct (volait)	2023-12-14 16:37:52.101	2023-12-14 16:37:58.542	2023-12-14 16:37:58.539	1	1
4	Non spécifié	2023-12-15 14:51:06.41	2023-12-15 14:51:07.198	2023-12-15 14:51:07.188	1	1
\.


--
-- Data for Name: musees; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.musees (id, label, adresse, cp, ville, site_web, mail, img, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Musée de paléontologie et d'anthropologie de l'Université de Pennsylvanie, USA	\N	\N	\N	\N	\N	\N	2023-12-14 16:38:15.462	2023-12-14 16:38:21.359	2023-12-14 16:38:21.357	1	1
2	Musée de paléontologie de l'Université Brigham Young, USA	\N	\N	\N	\N	\N	\N	2023-12-14 16:38:40.283	2023-12-14 16:38:40.997	2023-12-14 16:38:40.989	1	1
3	Musée Royal Tyrrell, Canada	\N	\N	\N	\N	\N	\N	2023-12-14 16:38:51.815	2023-12-14 16:38:57.049	2023-12-14 16:38:57.045	1	1
4	Musée d'Histoire Naturelle de Los Angeles, USA	\N	\N	\N	\N	\N	\N	2023-12-14 16:39:10.866	2023-12-14 16:39:11.607	2023-12-14 16:39:11.604	1	1
5	Musée d'Histoire Naturelle de Londres, Royaume-Uni	\N	\N	\N	\N	\N	\N	2023-12-14 16:39:21.893	2023-12-14 16:39:23.235	2023-12-14 16:39:23.231	1	1
6	Musée d'Histoire Naturelle de Berlin, Allemagne	\N	\N	\N	\N	\N	\N	2023-12-14 16:39:33.727	2023-12-14 16:39:34.49	2023-12-14 16:39:34.484	1	1
8	 Musée Royal de l'Ontario, Canada	\N	\N	\N	\N	\N	\N	2023-12-14 16:39:59.826	2023-12-14 16:40:00.494	2023-12-14 16:40:00.488	1	1
9	 Musée d'Histoire Naturelle, New York, USA	\N	\N	\N	\N	\N	\N	2023-12-14 16:40:11.766	2023-12-14 16:40:12.539	2023-12-14 16:40:12.532	1	1
7	Musée National de Mongolie, Oulan-Bator	\N	\N	\N	\N	\N	\N	2023-12-14 16:39:48.155	2023-12-14 16:40:17.703	2023-12-14 16:40:17.696	1	1
10	Non spécifié	\N	\N	\N	\N	\N	\N	2023-12-15 14:51:14.037	2023-12-15 15:00:40.414	2023-12-15 15:00:40.406	1	1
\.


--
-- Data for Name: musees_dinosaures_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.musees_dinosaures_links (id, musee_id, dinosaure_id, dinosaure_order, musee_order) FROM stdin;
1	9	1	1	1
2	8	2	1	0
3	7	3	1	0
4	6	4	1	0
5	5	5	1	0
6	4	6	1	0
7	3	7	1	0
8	1	8	1	0
9	2	9	1	0
10	1	10	2	0
11	10	11	1	1
12	5	12	2	0
13	10	13	2	0
14	10	14	3	0
15	10	15	4	0
16	10	17	5	0
17	10	18	6	0
18	10	19	7	0
19	10	20	8	0
20	10	21	9	0
\.


--
-- Data for Name: regime_alimentaires; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.regime_alimentaires (id, label, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Herbivore	2023-12-14 16:40:30.552	2023-12-14 16:40:31.9	2023-12-14 16:40:31.896	1	1
2	Carnivore	2023-12-14 16:40:42.848	2023-12-14 16:40:43.519	2023-12-14 16:40:43.515	1	1
3	 Piscivore	2023-12-14 16:40:56.427	2023-12-14 16:40:57.344	2023-12-14 16:40:57.341	1	1
4	Insectivore	2023-12-14 16:41:10.613	2023-12-14 16:41:11.344	2023-12-14 16:41:11.342	1	1
5	Non spécifié	2023-12-15 14:51:20.338	2023-12-15 14:51:21.768	2023-12-15 14:51:21.759	1	1
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
2	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
3	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]}}	object	\N	\N
4	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"uid":"admin::api-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
5	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]}}	object	\N	\N
6	plugin_content_manager_configuration_content_types::admin::transfer-token	{"uid":"admin::transfer-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]}}	object	\N	\N
7	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"uid":"admin::transfer-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]}}	object	\N	\N
9	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]}}	object	\N	\N
15	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
16	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
21	plugin_i18n_default_locale	"en"	string	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"api::continent.continent":{"kind":"collectionType","collectionName":"continents","info":{"singularName":"continent","pluralName":"continents","displayName":"continent","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"dinosaures":{"type":"relation","relation":"oneToMany","target":"api::dinosaure.dinosaure","mappedBy":"continent"},"dinosaure":{"type":"relation","relation":"oneToOne","target":"api::dinosaure.dinosaure","mappedBy":"predateur"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"continents","info":{"singularName":"continent","pluralName":"continents","displayName":"continent","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"dinosaures":{"type":"relation","relation":"oneToMany","target":"api::dinosaure.dinosaure","mappedBy":"continent"},"dinosaure":{"type":"relation","relation":"oneToOne","target":"api::dinosaure.dinosaure","mappedBy":"predateur"}},"kind":"collectionType"},"modelType":"contentType","modelName":"continent","connection":"default","uid":"api::continent.continent","apiName":"continent","globalId":"Continent","actions":{},"lifecycles":{}},"api::dinosaure.dinosaure":{"kind":"collectionType","collectionName":"dinosaures","info":{"singularName":"dinosaure","pluralName":"dinosaures","displayName":"dinosaure","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"img":{"type":"string"},"hauteur":{"type":"integer"},"longeur":{"type":"integer"},"poids":{"type":"integer"},"description":{"type":"richtext"},"epoque":{"type":"relation","relation":"manyToOne","target":"api::epoque.epoque","inversedBy":"dinosaures"},"environement":{"type":"relation","relation":"manyToOne","target":"api::environement.environement","inversedBy":"dinosaures"},"musees":{"type":"relation","relation":"manyToMany","target":"api::musee.musee","mappedBy":"dinosaures"},"regime_alimentaire":{"type":"relation","relation":"manyToOne","target":"api::regime-alimentaire.regime-alimentaire","inversedBy":"dinosaures"},"continent":{"type":"relation","relation":"manyToOne","target":"api::continent.continent","inversedBy":"dinosaures"},"locomotion":{"type":"relation","relation":"manyToOne","target":"api::locomotion.locomotion","inversedBy":"dinosaures"},"famille":{"type":"relation","relation":"manyToOne","target":"api::famille.famille","inversedBy":"dinosaures"},"predateurs":{"type":"relation","relation":"manyToMany","target":"api::dinosaure.dinosaure","inversedBy":"predate"},"predate":{"type":"relation","relation":"manyToMany","target":"api::dinosaure.dinosaure","inversedBy":"predateurs"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"dinosaures","info":{"singularName":"dinosaure","pluralName":"dinosaures","displayName":"dinosaure","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"name":{"type":"string"},"img":{"type":"string"},"hauteur":{"type":"integer"},"longeur":{"type":"integer"},"poids":{"type":"integer"},"description":{"type":"richtext"},"epoque":{"type":"relation","relation":"manyToOne","target":"api::epoque.epoque","inversedBy":"dinosaures"},"environement":{"type":"relation","relation":"manyToOne","target":"api::environement.environement","inversedBy":"dinosaures"},"musees":{"type":"relation","relation":"manyToMany","target":"api::musee.musee","mappedBy":"dinosaures"},"regime_alimentaire":{"type":"relation","relation":"manyToOne","target":"api::regime-alimentaire.regime-alimentaire","inversedBy":"dinosaures"},"continent":{"type":"relation","relation":"manyToOne","target":"api::continent.continent","inversedBy":"dinosaures"},"locomotion":{"type":"relation","relation":"manyToOne","target":"api::locomotion.locomotion","inversedBy":"dinosaures"},"famille":{"type":"relation","relation":"manyToOne","target":"api::famille.famille","inversedBy":"dinosaures"},"predateurs":{"type":"relation","relation":"manyToMany","target":"api::dinosaure.dinosaure","inversedBy":"predate"},"predate":{"type":"relation","relation":"manyToMany","target":"api::dinosaure.dinosaure","inversedBy":"predateurs"}},"kind":"collectionType"},"modelType":"contentType","modelName":"dinosaure","connection":"default","uid":"api::dinosaure.dinosaure","apiName":"dinosaure","globalId":"Dinosaure","actions":{},"lifecycles":{}},"api::environement.environement":{"kind":"collectionType","collectionName":"environements","info":{"singularName":"environement","pluralName":"environements","displayName":"environement"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"dinosaures":{"type":"relation","relation":"oneToMany","target":"api::dinosaure.dinosaure","mappedBy":"environement"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"environements","info":{"singularName":"environement","pluralName":"environements","displayName":"environement"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"dinosaures":{"type":"relation","relation":"oneToMany","target":"api::dinosaure.dinosaure","mappedBy":"environement"}},"kind":"collectionType"},"modelType":"contentType","modelName":"environement","connection":"default","uid":"api::environement.environement","apiName":"environement","globalId":"Environement","actions":{},"lifecycles":{}},"api::epoque.epoque":{"kind":"collectionType","collectionName":"epoques","info":{"singularName":"epoque","pluralName":"epoques","displayName":"epoque"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"dinosaures":{"type":"relation","relation":"oneToMany","target":"api::dinosaure.dinosaure","mappedBy":"epoque"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"epoques","info":{"singularName":"epoque","pluralName":"epoques","displayName":"epoque"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"dinosaures":{"type":"relation","relation":"oneToMany","target":"api::dinosaure.dinosaure","mappedBy":"epoque"}},"kind":"collectionType"},"modelType":"contentType","modelName":"epoque","connection":"default","uid":"api::epoque.epoque","apiName":"epoque","globalId":"Epoque","actions":{},"lifecycles":{}},"api::famille.famille":{"kind":"collectionType","collectionName":"familles","info":{"singularName":"famille","pluralName":"familles","displayName":"famille","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"dinosaures":{"type":"relation","relation":"oneToMany","target":"api::dinosaure.dinosaure","mappedBy":"famille"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"familles","info":{"singularName":"famille","pluralName":"familles","displayName":"famille","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"dinosaures":{"type":"relation","relation":"oneToMany","target":"api::dinosaure.dinosaure","mappedBy":"famille"}},"kind":"collectionType"},"modelType":"contentType","modelName":"famille","connection":"default","uid":"api::famille.famille","apiName":"famille","globalId":"Famille","actions":{},"lifecycles":{}},"api::locomotion.locomotion":{"kind":"collectionType","collectionName":"locomotions","info":{"singularName":"locomotion","pluralName":"locomotions","displayName":"locomotion"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"dinosaures":{"type":"relation","relation":"oneToMany","target":"api::dinosaure.dinosaure","mappedBy":"locomotion"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"locomotions","info":{"singularName":"locomotion","pluralName":"locomotions","displayName":"locomotion"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"dinosaures":{"type":"relation","relation":"oneToMany","target":"api::dinosaure.dinosaure","mappedBy":"locomotion"}},"kind":"collectionType"},"modelType":"contentType","modelName":"locomotion","connection":"default","uid":"api::locomotion.locomotion","apiName":"locomotion","globalId":"Locomotion","actions":{},"lifecycles":{}},"api::musee.musee":{"kind":"collectionType","collectionName":"musees","info":{"singularName":"musee","pluralName":"musees","displayName":"musee"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"dinosaures":{"type":"relation","relation":"manyToMany","target":"api::dinosaure.dinosaure","inversedBy":"musees"},"adresse":{"type":"string"},"cp":{"type":"string"},"ville":{"type":"string"},"site_web":{"type":"string"},"mail":{"type":"string"},"img":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"musees","info":{"singularName":"musee","pluralName":"musees","displayName":"musee"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"dinosaures":{"type":"relation","relation":"manyToMany","target":"api::dinosaure.dinosaure","inversedBy":"musees"},"adresse":{"type":"string"},"cp":{"type":"string"},"ville":{"type":"string"},"site_web":{"type":"string"},"mail":{"type":"string"},"img":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"musee","connection":"default","uid":"api::musee.musee","apiName":"musee","globalId":"Musee","actions":{},"lifecycles":{}},"api::regime-alimentaire.regime-alimentaire":{"kind":"collectionType","collectionName":"regime_alimentaires","info":{"singularName":"regime-alimentaire","pluralName":"regime-alimentaires","displayName":"regime_alimentaire"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"dinosaures":{"type":"relation","relation":"oneToMany","target":"api::dinosaure.dinosaure","mappedBy":"regime_alimentaire"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"regime_alimentaires","info":{"singularName":"regime-alimentaire","pluralName":"regime-alimentaires","displayName":"regime_alimentaire"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"label":{"type":"string"},"dinosaures":{"type":"relation","relation":"oneToMany","target":"api::dinosaure.dinosaure","mappedBy":"regime_alimentaire"}},"kind":"collectionType"},"modelType":"contentType","modelName":"regime-alimentaire","connection":"default","uid":"api::regime-alimentaire.regime-alimentaire","apiName":"regime-alimentaire","globalId":"RegimeAlimentaire","actions":{},"lifecycles":{}}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]}}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"uid":"plugin::upload.folder","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]}}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]}}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]}}	object	\N	\N
18	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]}}	object	\N	\N
19	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
20	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
17	plugin_upload_metrics	{"weeklySchedule":"25 10 16 * * 4","lastWeeklyUpdate":1702566625020}	object	\N	\N
27	plugin_content_manager_configuration_content_types::api::regime-alimentaire.regime-alimentaire	{"uid":"api::regime-alimentaire.regime-alimentaire","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"dinosaures":{"edit":{"label":"dinosaures","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"dinosaures","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","dinosaures","createdAt"],"edit":[[{"name":"label","size":6},{"name":"dinosaures","size":6}]]}}	object	\N	\N
24	plugin_content_manager_configuration_content_types::api::epoque.epoque	{"uid":"api::epoque.epoque","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"dinosaures":{"edit":{"label":"dinosaures","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"dinosaures","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","dinosaures","createdAt"],"edit":[[{"name":"label","size":6},{"name":"dinosaures","size":6}]]}}	object	\N	\N
25	plugin_content_manager_configuration_content_types::api::environement.environement	{"uid":"api::environement.environement","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"dinosaures":{"edit":{"label":"dinosaures","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"dinosaures","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","dinosaures","createdAt"],"edit":[[{"name":"label","size":6},{"name":"dinosaures","size":6}]]}}	object	\N	\N
26	plugin_content_manager_configuration_content_types::api::musee.musee	{"uid":"api::musee.musee","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"dinosaures":{"edit":{"label":"dinosaures","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"dinosaures","searchable":false,"sortable":false}},"adresse":{"edit":{"label":"adresse","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"adresse","searchable":true,"sortable":true}},"cp":{"edit":{"label":"cp","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"cp","searchable":true,"sortable":true}},"ville":{"edit":{"label":"ville","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ville","searchable":true,"sortable":true}},"site_web":{"edit":{"label":"site_web","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"site_web","searchable":true,"sortable":true}},"mail":{"edit":{"label":"mail","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mail","searchable":true,"sortable":true}},"img":{"edit":{"label":"img","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","dinosaures","adresse"],"edit":[[{"name":"label","size":6},{"name":"dinosaures","size":6}],[{"name":"adresse","size":6},{"name":"cp","size":6}],[{"name":"ville","size":6},{"name":"site_web","size":6}],[{"name":"mail","size":6},{"name":"img","size":6}]]}}	object	\N	\N
22	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
30	plugin_content_manager_configuration_content_types::api::locomotion.locomotion	{"uid":"api::locomotion.locomotion","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"dinosaures":{"edit":{"label":"dinosaures","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"dinosaures","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","dinosaures","createdAt"],"edit":[[{"name":"label","size":6},{"name":"dinosaures","size":6}]]}}	object	\N	\N
23	plugin_content_manager_configuration_content_types::api::dinosaure.dinosaure	{"uid":"api::dinosaure.dinosaure","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"img":{"edit":{"label":"img","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"img","searchable":true,"sortable":true}},"hauteur":{"edit":{"label":"hauteur","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hauteur","searchable":true,"sortable":true}},"longeur":{"edit":{"label":"longeur","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"longeur","searchable":true,"sortable":true}},"poids":{"edit":{"label":"poids","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"poids","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"epoque":{"edit":{"label":"epoque","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"epoque","searchable":true,"sortable":true}},"environement":{"edit":{"label":"environement","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"environement","searchable":true,"sortable":true}},"musees":{"edit":{"label":"musees","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"musees","searchable":false,"sortable":false}},"regime_alimentaire":{"edit":{"label":"regime_alimentaire","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"regime_alimentaire","searchable":true,"sortable":true}},"continent":{"edit":{"label":"continent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"continent","searchable":true,"sortable":true}},"locomotion":{"edit":{"label":"locomotion","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"locomotion","searchable":true,"sortable":true}},"famille":{"edit":{"label":"famille","description":"","placeholder":"","visible":true,"editable":true,"mainField":"label"},"list":{"label":"famille","searchable":true,"sortable":true}},"predateurs":{"edit":{"label":"predateurs","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"predateurs","searchable":false,"sortable":false}},"predate":{"edit":{"label":"predate","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"predate","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","img","hauteur"],"edit":[[{"name":"name","size":6},{"name":"img","size":6}],[{"name":"hauteur","size":4},{"name":"longeur","size":4},{"name":"poids","size":4}],[{"name":"description","size":12}],[{"name":"epoque","size":6},{"name":"environement","size":6}],[{"name":"musees","size":6},{"name":"regime_alimentaire","size":6}],[{"name":"continent","size":6},{"name":"locomotion","size":6}],[{"name":"famille","size":6},{"name":"predateurs","size":6}],[{"name":"predate","size":6}]]}}	object	\N	\N
29	plugin_content_manager_configuration_content_types::api::famille.famille	{"uid":"api::famille.famille","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"dinosaures":{"edit":{"label":"dinosaures","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"dinosaures","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","createdAt","dinosaures"],"edit":[[{"name":"label","size":6},{"name":"dinosaures","size":6}]]}}	object	\N	\N
28	plugin_content_manager_configuration_content_types::api::continent.continent	{"uid":"api::continent.continent","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"dinosaures":{"edit":{"label":"dinosaures","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"dinosaures","searchable":false,"sortable":false}},"dinosaure":{"edit":{"label":"dinosaure","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"dinosaure","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","dinosaures","createdAt"],"edit":[[{"name":"label","size":6},{"name":"dinosaures","size":6}],[{"name":"dinosaure","size":6}]]}}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
18	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"continents","indexes":[{"name":"continents_created_by_id_fk","columns":["created_by_id"]},{"name":"continents_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"continents_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"continents_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dinosaures","indexes":[{"name":"dinosaures_created_by_id_fk","columns":["created_by_id"]},{"name":"dinosaures_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"dinosaures_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"dinosaures_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"img","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hauteur","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"longeur","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"poids","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"environements","indexes":[{"name":"environements_created_by_id_fk","columns":["created_by_id"]},{"name":"environements_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"environements_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"environements_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"epoques","indexes":[{"name":"epoques_created_by_id_fk","columns":["created_by_id"]},{"name":"epoques_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"epoques_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"epoques_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"familles","indexes":[{"name":"familles_created_by_id_fk","columns":["created_by_id"]},{"name":"familles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"familles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"familles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"locomotions","indexes":[{"name":"locomotions_created_by_id_fk","columns":["created_by_id"]},{"name":"locomotions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"locomotions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"locomotions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"musees","indexes":[{"name":"musees_created_by_id_fk","columns":["created_by_id"]},{"name":"musees_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"musees_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"musees_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"adresse","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cp","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ville","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"site_web","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mail","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"img","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"regime_alimentaires","indexes":[{"name":"regime_alimentaires_created_by_id_fk","columns":["created_by_id"]},{"name":"regime_alimentaires_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"regime_alimentaires_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"regime_alimentaires_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"]},{"name":"files_related_morphs_id_column_index","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dinosaures_epoque_links","indexes":[{"name":"dinosaures_epoque_links_fk","columns":["dinosaure_id"]},{"name":"dinosaures_epoque_links_inv_fk","columns":["epoque_id"]},{"name":"dinosaures_epoque_links_unique","columns":["dinosaure_id","epoque_id"],"type":"unique"},{"name":"dinosaures_epoque_links_order_inv_fk","columns":["dinosaure_order"]}],"foreignKeys":[{"name":"dinosaures_epoque_links_fk","columns":["dinosaure_id"],"referencedColumns":["id"],"referencedTable":"dinosaures","onDelete":"CASCADE"},{"name":"dinosaures_epoque_links_inv_fk","columns":["epoque_id"],"referencedColumns":["id"],"referencedTable":"epoques","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"dinosaure_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"epoque_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"dinosaure_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dinosaures_environement_links","indexes":[{"name":"dinosaures_environement_links_fk","columns":["dinosaure_id"]},{"name":"dinosaures_environement_links_inv_fk","columns":["environement_id"]},{"name":"dinosaures_environement_links_unique","columns":["dinosaure_id","environement_id"],"type":"unique"},{"name":"dinosaures_environement_links_order_inv_fk","columns":["dinosaure_order"]}],"foreignKeys":[{"name":"dinosaures_environement_links_fk","columns":["dinosaure_id"],"referencedColumns":["id"],"referencedTable":"dinosaures","onDelete":"CASCADE"},{"name":"dinosaures_environement_links_inv_fk","columns":["environement_id"],"referencedColumns":["id"],"referencedTable":"environements","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"dinosaure_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"environement_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"dinosaure_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dinosaures_regime_alimentaire_links","indexes":[{"name":"dinosaures_regime_alimentaire_links_fk","columns":["dinosaure_id"]},{"name":"dinosaures_regime_alimentaire_links_inv_fk","columns":["regime_alimentaire_id"]},{"name":"dinosaures_regime_alimentaire_links_unique","columns":["dinosaure_id","regime_alimentaire_id"],"type":"unique"},{"name":"dinosaures_regime_alimentaire_links_order_inv_fk","columns":["dinosaure_order"]}],"foreignKeys":[{"name":"dinosaures_regime_alimentaire_links_fk","columns":["dinosaure_id"],"referencedColumns":["id"],"referencedTable":"dinosaures","onDelete":"CASCADE"},{"name":"dinosaures_regime_alimentaire_links_inv_fk","columns":["regime_alimentaire_id"],"referencedColumns":["id"],"referencedTable":"regime_alimentaires","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"dinosaure_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"regime_alimentaire_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"dinosaure_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dinosaures_continent_links","indexes":[{"name":"dinosaures_continent_links_fk","columns":["dinosaure_id"]},{"name":"dinosaures_continent_links_inv_fk","columns":["continent_id"]},{"name":"dinosaures_continent_links_unique","columns":["dinosaure_id","continent_id"],"type":"unique"},{"name":"dinosaures_continent_links_order_inv_fk","columns":["dinosaure_order"]}],"foreignKeys":[{"name":"dinosaures_continent_links_fk","columns":["dinosaure_id"],"referencedColumns":["id"],"referencedTable":"dinosaures","onDelete":"CASCADE"},{"name":"dinosaures_continent_links_inv_fk","columns":["continent_id"],"referencedColumns":["id"],"referencedTable":"continents","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"dinosaure_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"continent_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"dinosaure_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dinosaures_locomotion_links","indexes":[{"name":"dinosaures_locomotion_links_fk","columns":["dinosaure_id"]},{"name":"dinosaures_locomotion_links_inv_fk","columns":["locomotion_id"]},{"name":"dinosaures_locomotion_links_unique","columns":["dinosaure_id","locomotion_id"],"type":"unique"},{"name":"dinosaures_locomotion_links_order_inv_fk","columns":["dinosaure_order"]}],"foreignKeys":[{"name":"dinosaures_locomotion_links_fk","columns":["dinosaure_id"],"referencedColumns":["id"],"referencedTable":"dinosaures","onDelete":"CASCADE"},{"name":"dinosaures_locomotion_links_inv_fk","columns":["locomotion_id"],"referencedColumns":["id"],"referencedTable":"locomotions","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"dinosaure_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locomotion_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"dinosaure_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dinosaures_famille_links","indexes":[{"name":"dinosaures_famille_links_fk","columns":["dinosaure_id"]},{"name":"dinosaures_famille_links_inv_fk","columns":["famille_id"]},{"name":"dinosaures_famille_links_unique","columns":["dinosaure_id","famille_id"],"type":"unique"},{"name":"dinosaures_famille_links_order_inv_fk","columns":["dinosaure_order"]}],"foreignKeys":[{"name":"dinosaures_famille_links_fk","columns":["dinosaure_id"],"referencedColumns":["id"],"referencedTable":"dinosaures","onDelete":"CASCADE"},{"name":"dinosaures_famille_links_inv_fk","columns":["famille_id"],"referencedColumns":["id"],"referencedTable":"familles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"dinosaure_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"famille_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"dinosaure_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dinosaures_predateurs_links","indexes":[{"name":"dinosaures_predateurs_links_fk","columns":["dinosaure_id"]},{"name":"dinosaures_predateurs_links_inv_fk","columns":["inv_dinosaure_id"]},{"name":"dinosaures_predateurs_links_unique","columns":["dinosaure_id","inv_dinosaure_id"],"type":"unique"},{"name":"dinosaures_predateurs_links_order_fk","columns":["dinosaure_order"]},{"name":"dinosaures_predateurs_links_order_inv_fk","columns":["inv_dinosaure_order"]}],"foreignKeys":[{"name":"dinosaures_predateurs_links_fk","columns":["dinosaure_id"],"referencedColumns":["id"],"referencedTable":"dinosaures","onDelete":"CASCADE"},{"name":"dinosaures_predateurs_links_inv_fk","columns":["inv_dinosaure_id"],"referencedColumns":["id"],"referencedTable":"dinosaures","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"dinosaure_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_dinosaure_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"dinosaure_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_dinosaure_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"dinosaures_predate_links","indexes":[{"name":"dinosaures_predate_links_fk","columns":["dinosaure_id"]},{"name":"dinosaures_predate_links_inv_fk","columns":["inv_dinosaure_id"]},{"name":"dinosaures_predate_links_unique","columns":["dinosaure_id","inv_dinosaure_id"],"type":"unique"},{"name":"dinosaures_predate_links_order_fk","columns":["dinosaure_order"]},{"name":"dinosaures_predate_links_order_inv_fk","columns":["inv_dinosaure_order"]}],"foreignKeys":[{"name":"dinosaures_predate_links_fk","columns":["dinosaure_id"],"referencedColumns":["id"],"referencedTable":"dinosaures","onDelete":"CASCADE"},{"name":"dinosaures_predate_links_inv_fk","columns":["inv_dinosaure_id"],"referencedColumns":["id"],"referencedTable":"dinosaures","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"dinosaure_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_dinosaure_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"dinosaure_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_dinosaure_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"musees_dinosaures_links","indexes":[{"name":"musees_dinosaures_links_fk","columns":["musee_id"]},{"name":"musees_dinosaures_links_inv_fk","columns":["dinosaure_id"]},{"name":"musees_dinosaures_links_unique","columns":["musee_id","dinosaure_id"],"type":"unique"},{"name":"musees_dinosaures_links_order_fk","columns":["dinosaure_order"]},{"name":"musees_dinosaures_links_order_inv_fk","columns":["musee_order"]}],"foreignKeys":[{"name":"musees_dinosaures_links_fk","columns":["musee_id"],"referencedColumns":["id"],"referencedTable":"musees","onDelete":"CASCADE"},{"name":"musees_dinosaures_links_inv_fk","columns":["dinosaure_id"],"referencedColumns":["id"],"referencedTable":"dinosaures","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"musee_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"dinosaure_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"dinosaure_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"musee_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2023-12-15 14:53:03.044	1202f6a793d4462128551bb1c2b93e72
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2023-12-14 16:05:25.138	2023-12-14 16:05:25.138	\N	\N
2	plugin::users-permissions.auth.changePassword	2023-12-14 16:05:25.138	2023-12-14 16:05:25.138	\N	\N
3	plugin::users-permissions.auth.callback	2023-12-14 16:05:25.153	2023-12-14 16:05:25.153	\N	\N
4	plugin::users-permissions.auth.connect	2023-12-14 16:05:25.153	2023-12-14 16:05:25.153	\N	\N
5	plugin::users-permissions.auth.forgotPassword	2023-12-14 16:05:25.153	2023-12-14 16:05:25.153	\N	\N
6	plugin::users-permissions.auth.resetPassword	2023-12-14 16:05:25.153	2023-12-14 16:05:25.153	\N	\N
7	plugin::users-permissions.auth.register	2023-12-14 16:05:25.153	2023-12-14 16:05:25.153	\N	\N
8	plugin::users-permissions.auth.emailConfirmation	2023-12-14 16:05:25.153	2023-12-14 16:05:25.153	\N	\N
9	plugin::users-permissions.auth.sendEmailConfirmation	2023-12-14 16:05:25.153	2023-12-14 16:05:25.153	\N	\N
10	api::continent.continent.findOne	2023-12-15 05:51:29.871	2023-12-15 05:51:29.871	\N	\N
11	api::continent.continent.find	2023-12-15 05:51:29.871	2023-12-15 05:51:29.871	\N	\N
12	api::dinosaure.dinosaure.find	2023-12-15 05:51:29.871	2023-12-15 05:51:29.871	\N	\N
13	api::dinosaure.dinosaure.findOne	2023-12-15 05:51:29.871	2023-12-15 05:51:29.871	\N	\N
16	api::environement.environement.find	2023-12-15 05:51:29.871	2023-12-15 05:51:29.871	\N	\N
17	api::environement.environement.findOne	2023-12-15 05:51:29.871	2023-12-15 05:51:29.871	\N	\N
18	api::epoque.epoque.find	2023-12-15 05:51:29.871	2023-12-15 05:51:29.871	\N	\N
19	api::epoque.epoque.findOne	2023-12-15 05:51:29.871	2023-12-15 05:51:29.871	\N	\N
20	api::locomotion.locomotion.find	2023-12-15 05:51:29.871	2023-12-15 05:51:29.871	\N	\N
21	api::locomotion.locomotion.findOne	2023-12-15 05:51:29.871	2023-12-15 05:51:29.871	\N	\N
22	api::regime-alimentaire.regime-alimentaire.find	2023-12-15 05:51:29.871	2023-12-15 05:51:29.871	\N	\N
23	api::regime-alimentaire.regime-alimentaire.findOne	2023-12-15 05:51:29.871	2023-12-15 05:51:29.871	\N	\N
24	api::continent.continent.find	2023-12-15 05:57:28.934	2023-12-15 05:57:28.934	\N	\N
25	api::continent.continent.findOne	2023-12-15 05:57:28.934	2023-12-15 05:57:28.934	\N	\N
26	api::dinosaure.dinosaure.find	2023-12-15 05:57:28.934	2023-12-15 05:57:28.934	\N	\N
27	api::dinosaure.dinosaure.findOne	2023-12-15 05:57:28.934	2023-12-15 05:57:28.934	\N	\N
31	api::environement.environement.find	2023-12-15 05:57:28.934	2023-12-15 05:57:28.934	\N	\N
30	api::environement.environement.findOne	2023-12-15 05:57:28.934	2023-12-15 05:57:28.934	\N	\N
32	api::epoque.epoque.findOne	2023-12-15 05:57:28.934	2023-12-15 05:57:28.934	\N	\N
33	api::epoque.epoque.find	2023-12-15 05:57:28.934	2023-12-15 05:57:28.934	\N	\N
34	api::famille.famille.find	2023-12-15 05:57:28.934	2023-12-15 05:57:28.934	\N	\N
35	api::famille.famille.findOne	2023-12-15 05:57:28.934	2023-12-15 05:57:28.934	\N	\N
36	api::locomotion.locomotion.find	2023-12-15 05:57:28.934	2023-12-15 05:57:28.934	\N	\N
37	api::locomotion.locomotion.findOne	2023-12-15 05:57:28.934	2023-12-15 05:57:28.934	\N	\N
38	api::musee.musee.find	2023-12-15 05:57:28.934	2023-12-15 05:57:28.934	\N	\N
39	api::musee.musee.findOne	2023-12-15 05:57:28.934	2023-12-15 05:57:28.934	\N	\N
40	api::regime-alimentaire.regime-alimentaire.findOne	2023-12-15 05:57:28.934	2023-12-15 05:57:28.934	\N	\N
41	api::regime-alimentaire.regime-alimentaire.find	2023-12-15 05:57:28.934	2023-12-15 05:57:28.934	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	2	1	1
2	1	1	1
3	8	2	1
4	7	2	1
5	5	2	1
6	6	2	1
7	3	2	1
8	4	2	1
9	9	2	2
10	13	2	3
11	11	2	3
12	10	2	3
13	17	2	3
14	16	2	3
16	19	2	3
17	12	2	3
19	18	2	3
20	21	2	4
21	23	2	4
22	22	2	4
23	20	2	4
24	25	3	1
25	26	3	1
27	27	3	1
29	30	3	1
30	31	3	1
31	24	3	1
32	33	3	1
33	35	3	2
34	32	3	2
35	36	3	2
36	37	3	2
37	39	3	2
38	40	3	2
39	38	3	2
40	34	3	3
41	41	3	3
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2023-12-14 16:05:25.125	2023-12-14 16:05:25.125	\N	\N
2	Public	Default role given to unauthenticated user.	public	2023-12-14 16:05:25.131	2023-12-15 05:52:40.619	\N	\N
3	public	api public  seulement pour la lecture	public	2023-12-15 05:48:46.445	2023-12-15 05:57:28.926	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: dino
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 171, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 171, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);


--
-- Name: continents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.continents_id_seq', 6, true);


--
-- Name: dinosaures_continent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.dinosaures_continent_links_id_seq', 22, true);


--
-- Name: dinosaures_environement_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.dinosaures_environement_links_id_seq', 21, true);


--
-- Name: dinosaures_epoque_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.dinosaures_epoque_links_id_seq', 21, true);


--
-- Name: dinosaures_famille_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.dinosaures_famille_links_id_seq', 18, true);


--
-- Name: dinosaures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.dinosaures_id_seq', 21, true);


--
-- Name: dinosaures_locomotion_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.dinosaures_locomotion_links_id_seq', 20, true);


--
-- Name: dinosaures_predate_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.dinosaures_predate_links_id_seq', 1, true);


--
-- Name: dinosaures_predateurs_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.dinosaures_predateurs_links_id_seq', 1, false);


--
-- Name: dinosaures_regime_alimentaire_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.dinosaures_regime_alimentaire_links_id_seq', 21, true);


--
-- Name: environements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.environements_id_seq', 4, true);


--
-- Name: epoques_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.epoques_id_seq', 3, true);


--
-- Name: familles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.familles_id_seq', 7, true);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.files_id_seq', 1, false);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 1, false);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: locomotions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.locomotions_id_seq', 4, true);


--
-- Name: musees_dinosaures_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.musees_dinosaures_links_id_seq', 20, true);


--
-- Name: musees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.musees_id_seq', 10, true);


--
-- Name: regime_alimentaires_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.regime_alimentaires_id_seq', 5, true);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 31, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 18, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 41, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 41, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 3, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dino
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: continents continents_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.continents
    ADD CONSTRAINT continents_pkey PRIMARY KEY (id);


--
-- Name: dinosaures_continent_links dinosaures_continent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_continent_links
    ADD CONSTRAINT dinosaures_continent_links_pkey PRIMARY KEY (id);


--
-- Name: dinosaures_continent_links dinosaures_continent_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_continent_links
    ADD CONSTRAINT dinosaures_continent_links_unique UNIQUE (dinosaure_id, continent_id);


--
-- Name: dinosaures_environement_links dinosaures_environement_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_environement_links
    ADD CONSTRAINT dinosaures_environement_links_pkey PRIMARY KEY (id);


--
-- Name: dinosaures_environement_links dinosaures_environement_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_environement_links
    ADD CONSTRAINT dinosaures_environement_links_unique UNIQUE (dinosaure_id, environement_id);


--
-- Name: dinosaures_epoque_links dinosaures_epoque_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_epoque_links
    ADD CONSTRAINT dinosaures_epoque_links_pkey PRIMARY KEY (id);


--
-- Name: dinosaures_epoque_links dinosaures_epoque_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_epoque_links
    ADD CONSTRAINT dinosaures_epoque_links_unique UNIQUE (dinosaure_id, epoque_id);


--
-- Name: dinosaures_famille_links dinosaures_famille_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_famille_links
    ADD CONSTRAINT dinosaures_famille_links_pkey PRIMARY KEY (id);


--
-- Name: dinosaures_famille_links dinosaures_famille_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_famille_links
    ADD CONSTRAINT dinosaures_famille_links_unique UNIQUE (dinosaure_id, famille_id);


--
-- Name: dinosaures_locomotion_links dinosaures_locomotion_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_locomotion_links
    ADD CONSTRAINT dinosaures_locomotion_links_pkey PRIMARY KEY (id);


--
-- Name: dinosaures_locomotion_links dinosaures_locomotion_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_locomotion_links
    ADD CONSTRAINT dinosaures_locomotion_links_unique UNIQUE (dinosaure_id, locomotion_id);


--
-- Name: dinosaures dinosaures_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures
    ADD CONSTRAINT dinosaures_pkey PRIMARY KEY (id);


--
-- Name: dinosaures_predate_links dinosaures_predate_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_predate_links
    ADD CONSTRAINT dinosaures_predate_links_pkey PRIMARY KEY (id);


--
-- Name: dinosaures_predate_links dinosaures_predate_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_predate_links
    ADD CONSTRAINT dinosaures_predate_links_unique UNIQUE (dinosaure_id, inv_dinosaure_id);


--
-- Name: dinosaures_predateurs_links dinosaures_predateurs_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_predateurs_links
    ADD CONSTRAINT dinosaures_predateurs_links_pkey PRIMARY KEY (id);


--
-- Name: dinosaures_predateurs_links dinosaures_predateurs_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_predateurs_links
    ADD CONSTRAINT dinosaures_predateurs_links_unique UNIQUE (dinosaure_id, inv_dinosaure_id);


--
-- Name: dinosaures_regime_alimentaire_links dinosaures_regime_alimentaire_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_regime_alimentaire_links
    ADD CONSTRAINT dinosaures_regime_alimentaire_links_pkey PRIMARY KEY (id);


--
-- Name: dinosaures_regime_alimentaire_links dinosaures_regime_alimentaire_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_regime_alimentaire_links
    ADD CONSTRAINT dinosaures_regime_alimentaire_links_unique UNIQUE (dinosaure_id, regime_alimentaire_id);


--
-- Name: environements environements_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.environements
    ADD CONSTRAINT environements_pkey PRIMARY KEY (id);


--
-- Name: epoques epoques_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.epoques
    ADD CONSTRAINT epoques_pkey PRIMARY KEY (id);


--
-- Name: familles familles_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.familles
    ADD CONSTRAINT familles_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: locomotions locomotions_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.locomotions
    ADD CONSTRAINT locomotions_pkey PRIMARY KEY (id);


--
-- Name: musees_dinosaures_links musees_dinosaures_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.musees_dinosaures_links
    ADD CONSTRAINT musees_dinosaures_links_pkey PRIMARY KEY (id);


--
-- Name: musees_dinosaures_links musees_dinosaures_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.musees_dinosaures_links
    ADD CONSTRAINT musees_dinosaures_links_unique UNIQUE (musee_id, dinosaure_id);


--
-- Name: musees musees_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.musees
    ADD CONSTRAINT musees_pkey PRIMARY KEY (id);


--
-- Name: regime_alimentaires regime_alimentaires_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.regime_alimentaires
    ADD CONSTRAINT regime_alimentaires_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: continents_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX continents_created_by_id_fk ON public.continents USING btree (created_by_id);


--
-- Name: continents_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX continents_updated_by_id_fk ON public.continents USING btree (updated_by_id);


--
-- Name: dinosaures_continent_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_continent_links_fk ON public.dinosaures_continent_links USING btree (dinosaure_id);


--
-- Name: dinosaures_continent_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_continent_links_inv_fk ON public.dinosaures_continent_links USING btree (continent_id);


--
-- Name: dinosaures_continent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_continent_links_order_inv_fk ON public.dinosaures_continent_links USING btree (dinosaure_order);


--
-- Name: dinosaures_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_created_by_id_fk ON public.dinosaures USING btree (created_by_id);


--
-- Name: dinosaures_environement_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_environement_links_fk ON public.dinosaures_environement_links USING btree (dinosaure_id);


--
-- Name: dinosaures_environement_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_environement_links_inv_fk ON public.dinosaures_environement_links USING btree (environement_id);


--
-- Name: dinosaures_environement_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_environement_links_order_inv_fk ON public.dinosaures_environement_links USING btree (dinosaure_order);


--
-- Name: dinosaures_epoque_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_epoque_links_fk ON public.dinosaures_epoque_links USING btree (dinosaure_id);


--
-- Name: dinosaures_epoque_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_epoque_links_inv_fk ON public.dinosaures_epoque_links USING btree (epoque_id);


--
-- Name: dinosaures_epoque_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_epoque_links_order_inv_fk ON public.dinosaures_epoque_links USING btree (dinosaure_order);


--
-- Name: dinosaures_famille_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_famille_links_fk ON public.dinosaures_famille_links USING btree (dinosaure_id);


--
-- Name: dinosaures_famille_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_famille_links_inv_fk ON public.dinosaures_famille_links USING btree (famille_id);


--
-- Name: dinosaures_famille_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_famille_links_order_inv_fk ON public.dinosaures_famille_links USING btree (dinosaure_order);


--
-- Name: dinosaures_locomotion_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_locomotion_links_fk ON public.dinosaures_locomotion_links USING btree (dinosaure_id);


--
-- Name: dinosaures_locomotion_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_locomotion_links_inv_fk ON public.dinosaures_locomotion_links USING btree (locomotion_id);


--
-- Name: dinosaures_locomotion_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_locomotion_links_order_inv_fk ON public.dinosaures_locomotion_links USING btree (dinosaure_order);


--
-- Name: dinosaures_predate_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_predate_links_fk ON public.dinosaures_predate_links USING btree (dinosaure_id);


--
-- Name: dinosaures_predate_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_predate_links_inv_fk ON public.dinosaures_predate_links USING btree (inv_dinosaure_id);


--
-- Name: dinosaures_predate_links_order_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_predate_links_order_fk ON public.dinosaures_predate_links USING btree (dinosaure_order);


--
-- Name: dinosaures_predate_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_predate_links_order_inv_fk ON public.dinosaures_predate_links USING btree (inv_dinosaure_order);


--
-- Name: dinosaures_predateurs_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_predateurs_links_fk ON public.dinosaures_predateurs_links USING btree (dinosaure_id);


--
-- Name: dinosaures_predateurs_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_predateurs_links_inv_fk ON public.dinosaures_predateurs_links USING btree (inv_dinosaure_id);


--
-- Name: dinosaures_predateurs_links_order_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_predateurs_links_order_fk ON public.dinosaures_predateurs_links USING btree (dinosaure_order);


--
-- Name: dinosaures_predateurs_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_predateurs_links_order_inv_fk ON public.dinosaures_predateurs_links USING btree (inv_dinosaure_order);


--
-- Name: dinosaures_regime_alimentaire_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_regime_alimentaire_links_fk ON public.dinosaures_regime_alimentaire_links USING btree (dinosaure_id);


--
-- Name: dinosaures_regime_alimentaire_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_regime_alimentaire_links_inv_fk ON public.dinosaures_regime_alimentaire_links USING btree (regime_alimentaire_id);


--
-- Name: dinosaures_regime_alimentaire_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_regime_alimentaire_links_order_inv_fk ON public.dinosaures_regime_alimentaire_links USING btree (dinosaure_order);


--
-- Name: dinosaures_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX dinosaures_updated_by_id_fk ON public.dinosaures USING btree (updated_by_id);


--
-- Name: environements_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX environements_created_by_id_fk ON public.environements USING btree (created_by_id);


--
-- Name: environements_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX environements_updated_by_id_fk ON public.environements USING btree (updated_by_id);


--
-- Name: epoques_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX epoques_created_by_id_fk ON public.epoques USING btree (created_by_id);


--
-- Name: epoques_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX epoques_updated_by_id_fk ON public.epoques USING btree (updated_by_id);


--
-- Name: familles_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX familles_created_by_id_fk ON public.familles USING btree (created_by_id);


--
-- Name: familles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX familles_updated_by_id_fk ON public.familles USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: locomotions_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX locomotions_created_by_id_fk ON public.locomotions USING btree (created_by_id);


--
-- Name: locomotions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX locomotions_updated_by_id_fk ON public.locomotions USING btree (updated_by_id);


--
-- Name: musees_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX musees_created_by_id_fk ON public.musees USING btree (created_by_id);


--
-- Name: musees_dinosaures_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX musees_dinosaures_links_fk ON public.musees_dinosaures_links USING btree (musee_id);


--
-- Name: musees_dinosaures_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX musees_dinosaures_links_inv_fk ON public.musees_dinosaures_links USING btree (dinosaure_id);


--
-- Name: musees_dinosaures_links_order_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX musees_dinosaures_links_order_fk ON public.musees_dinosaures_links USING btree (dinosaure_order);


--
-- Name: musees_dinosaures_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX musees_dinosaures_links_order_inv_fk ON public.musees_dinosaures_links USING btree (musee_order);


--
-- Name: musees_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX musees_updated_by_id_fk ON public.musees USING btree (updated_by_id);


--
-- Name: regime_alimentaires_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX regime_alimentaires_created_by_id_fk ON public.regime_alimentaires USING btree (created_by_id);


--
-- Name: regime_alimentaires_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX regime_alimentaires_updated_by_id_fk ON public.regime_alimentaires USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: dino
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: continents continents_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.continents
    ADD CONSTRAINT continents_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: continents continents_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.continents
    ADD CONSTRAINT continents_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: dinosaures_continent_links dinosaures_continent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_continent_links
    ADD CONSTRAINT dinosaures_continent_links_fk FOREIGN KEY (dinosaure_id) REFERENCES public.dinosaures(id) ON DELETE CASCADE;


--
-- Name: dinosaures_continent_links dinosaures_continent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_continent_links
    ADD CONSTRAINT dinosaures_continent_links_inv_fk FOREIGN KEY (continent_id) REFERENCES public.continents(id) ON DELETE CASCADE;


--
-- Name: dinosaures dinosaures_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures
    ADD CONSTRAINT dinosaures_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: dinosaures_environement_links dinosaures_environement_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_environement_links
    ADD CONSTRAINT dinosaures_environement_links_fk FOREIGN KEY (dinosaure_id) REFERENCES public.dinosaures(id) ON DELETE CASCADE;


--
-- Name: dinosaures_environement_links dinosaures_environement_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_environement_links
    ADD CONSTRAINT dinosaures_environement_links_inv_fk FOREIGN KEY (environement_id) REFERENCES public.environements(id) ON DELETE CASCADE;


--
-- Name: dinosaures_epoque_links dinosaures_epoque_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_epoque_links
    ADD CONSTRAINT dinosaures_epoque_links_fk FOREIGN KEY (dinosaure_id) REFERENCES public.dinosaures(id) ON DELETE CASCADE;


--
-- Name: dinosaures_epoque_links dinosaures_epoque_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_epoque_links
    ADD CONSTRAINT dinosaures_epoque_links_inv_fk FOREIGN KEY (epoque_id) REFERENCES public.epoques(id) ON DELETE CASCADE;


--
-- Name: dinosaures_famille_links dinosaures_famille_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_famille_links
    ADD CONSTRAINT dinosaures_famille_links_fk FOREIGN KEY (dinosaure_id) REFERENCES public.dinosaures(id) ON DELETE CASCADE;


--
-- Name: dinosaures_famille_links dinosaures_famille_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_famille_links
    ADD CONSTRAINT dinosaures_famille_links_inv_fk FOREIGN KEY (famille_id) REFERENCES public.familles(id) ON DELETE CASCADE;


--
-- Name: dinosaures_locomotion_links dinosaures_locomotion_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_locomotion_links
    ADD CONSTRAINT dinosaures_locomotion_links_fk FOREIGN KEY (dinosaure_id) REFERENCES public.dinosaures(id) ON DELETE CASCADE;


--
-- Name: dinosaures_locomotion_links dinosaures_locomotion_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_locomotion_links
    ADD CONSTRAINT dinosaures_locomotion_links_inv_fk FOREIGN KEY (locomotion_id) REFERENCES public.locomotions(id) ON DELETE CASCADE;


--
-- Name: dinosaures_predate_links dinosaures_predate_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_predate_links
    ADD CONSTRAINT dinosaures_predate_links_fk FOREIGN KEY (dinosaure_id) REFERENCES public.dinosaures(id) ON DELETE CASCADE;


--
-- Name: dinosaures_predate_links dinosaures_predate_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_predate_links
    ADD CONSTRAINT dinosaures_predate_links_inv_fk FOREIGN KEY (inv_dinosaure_id) REFERENCES public.dinosaures(id) ON DELETE CASCADE;


--
-- Name: dinosaures_predateurs_links dinosaures_predateurs_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_predateurs_links
    ADD CONSTRAINT dinosaures_predateurs_links_fk FOREIGN KEY (dinosaure_id) REFERENCES public.dinosaures(id) ON DELETE CASCADE;


--
-- Name: dinosaures_predateurs_links dinosaures_predateurs_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_predateurs_links
    ADD CONSTRAINT dinosaures_predateurs_links_inv_fk FOREIGN KEY (inv_dinosaure_id) REFERENCES public.dinosaures(id) ON DELETE CASCADE;


--
-- Name: dinosaures_regime_alimentaire_links dinosaures_regime_alimentaire_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_regime_alimentaire_links
    ADD CONSTRAINT dinosaures_regime_alimentaire_links_fk FOREIGN KEY (dinosaure_id) REFERENCES public.dinosaures(id) ON DELETE CASCADE;


--
-- Name: dinosaures_regime_alimentaire_links dinosaures_regime_alimentaire_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures_regime_alimentaire_links
    ADD CONSTRAINT dinosaures_regime_alimentaire_links_inv_fk FOREIGN KEY (regime_alimentaire_id) REFERENCES public.regime_alimentaires(id) ON DELETE CASCADE;


--
-- Name: dinosaures dinosaures_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.dinosaures
    ADD CONSTRAINT dinosaures_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: environements environements_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.environements
    ADD CONSTRAINT environements_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: environements environements_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.environements
    ADD CONSTRAINT environements_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: epoques epoques_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.epoques
    ADD CONSTRAINT epoques_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: epoques epoques_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.epoques
    ADD CONSTRAINT epoques_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: familles familles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.familles
    ADD CONSTRAINT familles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: familles familles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.familles
    ADD CONSTRAINT familles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: locomotions locomotions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.locomotions
    ADD CONSTRAINT locomotions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: locomotions locomotions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.locomotions
    ADD CONSTRAINT locomotions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: musees musees_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.musees
    ADD CONSTRAINT musees_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: musees_dinosaures_links musees_dinosaures_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.musees_dinosaures_links
    ADD CONSTRAINT musees_dinosaures_links_fk FOREIGN KEY (musee_id) REFERENCES public.musees(id) ON DELETE CASCADE;


--
-- Name: musees_dinosaures_links musees_dinosaures_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.musees_dinosaures_links
    ADD CONSTRAINT musees_dinosaures_links_inv_fk FOREIGN KEY (dinosaure_id) REFERENCES public.dinosaures(id) ON DELETE CASCADE;


--
-- Name: musees musees_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.musees
    ADD CONSTRAINT musees_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: regime_alimentaires regime_alimentaires_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.regime_alimentaires
    ADD CONSTRAINT regime_alimentaires_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: regime_alimentaires regime_alimentaires_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.regime_alimentaires
    ADD CONSTRAINT regime_alimentaires_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: dino
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

