--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0 (Debian 17.0-1.pgdg120+1)
-- Dumped by pg_dump version 17.0 (Debian 17.0-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.directus_webhooks DROP CONSTRAINT IF EXISTS directus_webhooks_migrated_flow_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_versions DROP CONSTRAINT IF EXISTS directus_versions_user_updated_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_versions DROP CONSTRAINT IF EXISTS directus_versions_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_versions DROP CONSTRAINT IF EXISTS directus_versions_collection_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_users DROP CONSTRAINT IF EXISTS directus_users_role_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_shares DROP CONSTRAINT IF EXISTS directus_shares_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_shares DROP CONSTRAINT IF EXISTS directus_shares_role_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_shares DROP CONSTRAINT IF EXISTS directus_shares_collection_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_settings DROP CONSTRAINT IF EXISTS directus_settings_storage_default_folder_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_settings DROP CONSTRAINT IF EXISTS directus_settings_public_registration_role_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_settings DROP CONSTRAINT IF EXISTS directus_settings_public_foreground_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_settings DROP CONSTRAINT IF EXISTS directus_settings_public_favicon_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_settings DROP CONSTRAINT IF EXISTS directus_settings_public_background_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_settings DROP CONSTRAINT IF EXISTS directus_settings_project_logo_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_sessions DROP CONSTRAINT IF EXISTS directus_sessions_user_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_sessions DROP CONSTRAINT IF EXISTS directus_sessions_share_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_revisions DROP CONSTRAINT IF EXISTS directus_revisions_version_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_revisions DROP CONSTRAINT IF EXISTS directus_revisions_parent_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_revisions DROP CONSTRAINT IF EXISTS directus_revisions_activity_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_presets DROP CONSTRAINT IF EXISTS directus_presets_user_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_presets DROP CONSTRAINT IF EXISTS directus_presets_role_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_permissions DROP CONSTRAINT IF EXISTS directus_permissions_role_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_panels DROP CONSTRAINT IF EXISTS directus_panels_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_panels DROP CONSTRAINT IF EXISTS directus_panels_dashboard_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_operations DROP CONSTRAINT IF EXISTS directus_operations_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_operations DROP CONSTRAINT IF EXISTS directus_operations_resolve_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_operations DROP CONSTRAINT IF EXISTS directus_operations_reject_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_operations DROP CONSTRAINT IF EXISTS directus_operations_flow_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_notifications DROP CONSTRAINT IF EXISTS directus_notifications_sender_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_notifications DROP CONSTRAINT IF EXISTS directus_notifications_recipient_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_folders DROP CONSTRAINT IF EXISTS directus_folders_parent_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_flows DROP CONSTRAINT IF EXISTS directus_flows_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_files DROP CONSTRAINT IF EXISTS directus_files_uploaded_by_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_files DROP CONSTRAINT IF EXISTS directus_files_modified_by_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_files DROP CONSTRAINT IF EXISTS directus_files_folder_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_dashboards DROP CONSTRAINT IF EXISTS directus_dashboards_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public.directus_collections DROP CONSTRAINT IF EXISTS directus_collections_group_foreign;
ALTER TABLE IF EXISTS ONLY public.contexts DROP CONSTRAINT IF EXISTS contexts_user_updated_foreign;
ALTER TABLE IF EXISTS ONLY public.contexts DROP CONSTRAINT IF EXISTS contexts_user_created_foreign;
ALTER TABLE IF EXISTS ONLY public.contexts_contexts DROP CONSTRAINT IF EXISTS contexts_contexts_related_contexts_id_foreign;
ALTER TABLE IF EXISTS ONLY public.contexts_contexts DROP CONSTRAINT IF EXISTS contexts_contexts_contexts_id_foreign;
ALTER TABLE IF EXISTS ONLY public.messages DROP CONSTRAINT IF EXISTS messages_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_webhooks DROP CONSTRAINT IF EXISTS directus_webhooks_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_versions DROP CONSTRAINT IF EXISTS directus_versions_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_users DROP CONSTRAINT IF EXISTS directus_users_token_unique;
ALTER TABLE IF EXISTS ONLY public.directus_users DROP CONSTRAINT IF EXISTS directus_users_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_users DROP CONSTRAINT IF EXISTS directus_users_external_identifier_unique;
ALTER TABLE IF EXISTS ONLY public.directus_users DROP CONSTRAINT IF EXISTS directus_users_email_unique;
ALTER TABLE IF EXISTS ONLY public.directus_translations DROP CONSTRAINT IF EXISTS directus_translations_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_shares DROP CONSTRAINT IF EXISTS directus_shares_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_settings DROP CONSTRAINT IF EXISTS directus_settings_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_sessions DROP CONSTRAINT IF EXISTS directus_sessions_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_roles DROP CONSTRAINT IF EXISTS directus_roles_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_revisions DROP CONSTRAINT IF EXISTS directus_revisions_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_relations DROP CONSTRAINT IF EXISTS directus_relations_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_presets DROP CONSTRAINT IF EXISTS directus_presets_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_permissions DROP CONSTRAINT IF EXISTS directus_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_panels DROP CONSTRAINT IF EXISTS directus_panels_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_operations DROP CONSTRAINT IF EXISTS directus_operations_resolve_unique;
ALTER TABLE IF EXISTS ONLY public.directus_operations DROP CONSTRAINT IF EXISTS directus_operations_reject_unique;
ALTER TABLE IF EXISTS ONLY public.directus_operations DROP CONSTRAINT IF EXISTS directus_operations_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_notifications DROP CONSTRAINT IF EXISTS directus_notifications_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_migrations DROP CONSTRAINT IF EXISTS directus_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_folders DROP CONSTRAINT IF EXISTS directus_folders_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_flows DROP CONSTRAINT IF EXISTS directus_flows_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_flows DROP CONSTRAINT IF EXISTS directus_flows_operation_unique;
ALTER TABLE IF EXISTS ONLY public.directus_files DROP CONSTRAINT IF EXISTS directus_files_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_fields DROP CONSTRAINT IF EXISTS directus_fields_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_extensions DROP CONSTRAINT IF EXISTS directus_extensions_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_dashboards DROP CONSTRAINT IF EXISTS directus_dashboards_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_collections DROP CONSTRAINT IF EXISTS directus_collections_pkey;
ALTER TABLE IF EXISTS ONLY public.directus_activity DROP CONSTRAINT IF EXISTS directus_activity_pkey;
ALTER TABLE IF EXISTS ONLY public.contexts DROP CONSTRAINT IF EXISTS contexts_pkey;
ALTER TABLE IF EXISTS ONLY public.contexts_contexts DROP CONSTRAINT IF EXISTS contexts_contexts_pkey;
ALTER TABLE IF EXISTS public.directus_webhooks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_revisions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_relations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_presets ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_notifications ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_fields ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.directus_activity ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.contexts_contexts ALTER COLUMN id DROP DEFAULT;
DROP TABLE IF EXISTS public.messages;
DROP SEQUENCE IF EXISTS public.directus_webhooks_id_seq;
DROP TABLE IF EXISTS public.directus_webhooks;
DROP TABLE IF EXISTS public.directus_versions;
DROP TABLE IF EXISTS public.directus_users;
DROP TABLE IF EXISTS public.directus_translations;
DROP TABLE IF EXISTS public.directus_shares;
DROP SEQUENCE IF EXISTS public.directus_settings_id_seq;
DROP TABLE IF EXISTS public.directus_settings;
DROP TABLE IF EXISTS public.directus_sessions;
DROP TABLE IF EXISTS public.directus_roles;
DROP SEQUENCE IF EXISTS public.directus_revisions_id_seq;
DROP TABLE IF EXISTS public.directus_revisions;
DROP SEQUENCE IF EXISTS public.directus_relations_id_seq;
DROP TABLE IF EXISTS public.directus_relations;
DROP SEQUENCE IF EXISTS public.directus_presets_id_seq;
DROP TABLE IF EXISTS public.directus_presets;
DROP SEQUENCE IF EXISTS public.directus_permissions_id_seq;
DROP TABLE IF EXISTS public.directus_permissions;
DROP TABLE IF EXISTS public.directus_panels;
DROP TABLE IF EXISTS public.directus_operations;
DROP SEQUENCE IF EXISTS public.directus_notifications_id_seq;
DROP TABLE IF EXISTS public.directus_notifications;
DROP TABLE IF EXISTS public.directus_migrations;
DROP TABLE IF EXISTS public.directus_folders;
DROP TABLE IF EXISTS public.directus_flows;
DROP TABLE IF EXISTS public.directus_files;
DROP SEQUENCE IF EXISTS public.directus_fields_id_seq;
DROP TABLE IF EXISTS public.directus_fields;
DROP TABLE IF EXISTS public.directus_extensions;
DROP TABLE IF EXISTS public.directus_dashboards;
DROP TABLE IF EXISTS public.directus_collections;
DROP SEQUENCE IF EXISTS public.directus_activity_id_seq;
DROP TABLE IF EXISTS public.directus_activity;
DROP SEQUENCE IF EXISTS public.contexts_contexts_id_seq;
DROP TABLE IF EXISTS public.contexts_contexts;
DROP TABLE IF EXISTS public.contexts;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: contexts; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.contexts (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'draft'::character varying NOT NULL,
    sort integer,
    user_created uuid,
    date_created timestamp with time zone,
    user_updated uuid,
    date_updated timestamp with time zone,
    content text,
    title character varying(255),
    type character varying(255)
);


ALTER TABLE public.contexts OWNER TO directus;

--
-- Name: contexts_contexts; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.contexts_contexts (
    id integer NOT NULL,
    contexts_id uuid,
    related_contexts_id uuid
);


ALTER TABLE public.contexts_contexts OWNER TO directus;

--
-- Name: contexts_contexts_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.contexts_contexts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.contexts_contexts_id_seq OWNER TO directus;

--
-- Name: contexts_contexts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.contexts_contexts_id_seq OWNED BY public.contexts_contexts.id;


--
-- Name: directus_activity; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_activity (
    id integer NOT NULL,
    action character varying(45) NOT NULL,
    "user" uuid,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ip character varying(50),
    user_agent text,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    comment text,
    origin character varying(255)
);


ALTER TABLE public.directus_activity OWNER TO directus;

--
-- Name: directus_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_activity_id_seq OWNER TO directus;

--
-- Name: directus_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_activity_id_seq OWNED BY public.directus_activity.id;


--
-- Name: directus_collections; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_collections (
    collection character varying(64) NOT NULL,
    icon character varying(30),
    note text,
    display_template character varying(255),
    hidden boolean DEFAULT false NOT NULL,
    singleton boolean DEFAULT false NOT NULL,
    translations json,
    archive_field character varying(64),
    archive_app_filter boolean DEFAULT true NOT NULL,
    archive_value character varying(255),
    unarchive_value character varying(255),
    sort_field character varying(64),
    accountability character varying(255) DEFAULT 'all'::character varying,
    color character varying(255),
    item_duplication_fields json,
    sort integer,
    "group" character varying(64),
    collapse character varying(255) DEFAULT 'open'::character varying NOT NULL,
    preview_url character varying(255),
    versioning boolean DEFAULT false NOT NULL
);


ALTER TABLE public.directus_collections OWNER TO directus;

--
-- Name: directus_dashboards; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_dashboards (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(30) DEFAULT 'dashboard'::character varying NOT NULL,
    note text,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    color character varying(255)
);


ALTER TABLE public.directus_dashboards OWNER TO directus;

--
-- Name: directus_extensions; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_extensions (
    enabled boolean DEFAULT true NOT NULL,
    id uuid NOT NULL,
    folder character varying(255) NOT NULL,
    source character varying(255) NOT NULL,
    bundle uuid
);


ALTER TABLE public.directus_extensions OWNER TO directus;

--
-- Name: directus_fields; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_fields (
    id integer NOT NULL,
    collection character varying(64) NOT NULL,
    field character varying(64) NOT NULL,
    special character varying(64),
    interface character varying(64),
    options json,
    display character varying(64),
    display_options json,
    readonly boolean DEFAULT false NOT NULL,
    hidden boolean DEFAULT false NOT NULL,
    sort integer,
    width character varying(30) DEFAULT 'full'::character varying,
    translations json,
    note text,
    conditions json,
    required boolean DEFAULT false,
    "group" character varying(64),
    validation json,
    validation_message text
);


ALTER TABLE public.directus_fields OWNER TO directus;

--
-- Name: directus_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_fields_id_seq OWNER TO directus;

--
-- Name: directus_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_fields_id_seq OWNED BY public.directus_fields.id;


--
-- Name: directus_files; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_files (
    id uuid NOT NULL,
    storage character varying(255) NOT NULL,
    filename_disk character varying(255),
    filename_download character varying(255) NOT NULL,
    title character varying(255),
    type character varying(255),
    folder uuid,
    uploaded_by uuid,
    uploaded_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modified_by uuid,
    modified_on timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    charset character varying(50),
    filesize bigint,
    width integer,
    height integer,
    duration integer,
    embed character varying(200),
    description text,
    location text,
    tags text,
    metadata json,
    focal_point_x integer,
    focal_point_y integer,
    tus_id character varying(64),
    tus_data json
);


ALTER TABLE public.directus_files OWNER TO directus;

--
-- Name: directus_flows; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_flows (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(30),
    color character varying(255),
    description text,
    status character varying(255) DEFAULT 'active'::character varying NOT NULL,
    trigger character varying(255),
    accountability character varying(255) DEFAULT 'all'::character varying,
    options json,
    operation uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


ALTER TABLE public.directus_flows OWNER TO directus;

--
-- Name: directus_folders; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_folders (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    parent uuid
);


ALTER TABLE public.directus_folders OWNER TO directus;

--
-- Name: directus_migrations; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_migrations (
    version character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.directus_migrations OWNER TO directus;

--
-- Name: directus_notifications; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_notifications (
    id integer NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(255) DEFAULT 'inbox'::character varying,
    recipient uuid NOT NULL,
    sender uuid,
    subject character varying(255) NOT NULL,
    message text,
    collection character varying(64),
    item character varying(255)
);


ALTER TABLE public.directus_notifications OWNER TO directus;

--
-- Name: directus_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_notifications_id_seq OWNER TO directus;

--
-- Name: directus_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_notifications_id_seq OWNED BY public.directus_notifications.id;


--
-- Name: directus_operations; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_operations (
    id uuid NOT NULL,
    name character varying(255),
    key character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    options json,
    resolve uuid,
    reject uuid,
    flow uuid NOT NULL,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


ALTER TABLE public.directus_operations OWNER TO directus;

--
-- Name: directus_panels; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_panels (
    id uuid NOT NULL,
    dashboard uuid NOT NULL,
    name character varying(255),
    icon character varying(30) DEFAULT NULL::character varying,
    color character varying(10),
    show_header boolean DEFAULT false NOT NULL,
    note text,
    type character varying(255) NOT NULL,
    position_x integer NOT NULL,
    position_y integer NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    options json,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid
);


ALTER TABLE public.directus_panels OWNER TO directus;

--
-- Name: directus_permissions; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_permissions (
    id integer NOT NULL,
    role uuid,
    collection character varying(64) NOT NULL,
    action character varying(10) NOT NULL,
    permissions json,
    validation json,
    presets json,
    fields text
);


ALTER TABLE public.directus_permissions OWNER TO directus;

--
-- Name: directus_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_permissions_id_seq OWNER TO directus;

--
-- Name: directus_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_permissions_id_seq OWNED BY public.directus_permissions.id;


--
-- Name: directus_presets; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_presets (
    id integer NOT NULL,
    bookmark character varying(255),
    "user" uuid,
    role uuid,
    collection character varying(64),
    search character varying(100),
    layout character varying(100) DEFAULT 'tabular'::character varying,
    layout_query json,
    layout_options json,
    refresh_interval integer,
    filter json,
    icon character varying(30) DEFAULT 'bookmark'::character varying,
    color character varying(255)
);


ALTER TABLE public.directus_presets OWNER TO directus;

--
-- Name: directus_presets_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_presets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_presets_id_seq OWNER TO directus;

--
-- Name: directus_presets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_presets_id_seq OWNED BY public.directus_presets.id;


--
-- Name: directus_relations; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_relations (
    id integer NOT NULL,
    many_collection character varying(64) NOT NULL,
    many_field character varying(64) NOT NULL,
    one_collection character varying(64),
    one_field character varying(64),
    one_collection_field character varying(64),
    one_allowed_collections text,
    junction_field character varying(64),
    sort_field character varying(64),
    one_deselect_action character varying(255) DEFAULT 'nullify'::character varying NOT NULL
);


ALTER TABLE public.directus_relations OWNER TO directus;

--
-- Name: directus_relations_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_relations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_relations_id_seq OWNER TO directus;

--
-- Name: directus_relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_relations_id_seq OWNED BY public.directus_relations.id;


--
-- Name: directus_revisions; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_revisions (
    id integer NOT NULL,
    activity integer NOT NULL,
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    data json,
    delta json,
    parent integer,
    version uuid
);


ALTER TABLE public.directus_revisions OWNER TO directus;

--
-- Name: directus_revisions_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_revisions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_revisions_id_seq OWNER TO directus;

--
-- Name: directus_revisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_revisions_id_seq OWNED BY public.directus_revisions.id;


--
-- Name: directus_roles; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_roles (
    id uuid NOT NULL,
    name character varying(100) NOT NULL,
    icon character varying(30) DEFAULT 'supervised_user_circle'::character varying NOT NULL,
    description text,
    ip_access text,
    enforce_tfa boolean DEFAULT false NOT NULL,
    admin_access boolean DEFAULT false NOT NULL,
    app_access boolean DEFAULT true NOT NULL
);


ALTER TABLE public.directus_roles OWNER TO directus;

--
-- Name: directus_sessions; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_sessions (
    token character varying(64) NOT NULL,
    "user" uuid,
    expires timestamp with time zone NOT NULL,
    ip character varying(255),
    user_agent text,
    share uuid,
    origin character varying(255),
    next_token character varying(64)
);


ALTER TABLE public.directus_sessions OWNER TO directus;

--
-- Name: directus_settings; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_settings (
    id integer NOT NULL,
    project_name character varying(100) DEFAULT 'Directus'::character varying NOT NULL,
    project_url character varying(255),
    project_color character varying(255) DEFAULT '#6644FF'::character varying NOT NULL,
    project_logo uuid,
    public_foreground uuid,
    public_background uuid,
    public_note text,
    auth_login_attempts integer DEFAULT 25,
    auth_password_policy character varying(100),
    storage_asset_transform character varying(7) DEFAULT 'all'::character varying,
    storage_asset_presets json,
    custom_css text,
    storage_default_folder uuid,
    basemaps json,
    mapbox_key character varying(255),
    module_bar json,
    project_descriptor character varying(100),
    default_language character varying(255) DEFAULT 'en-US'::character varying NOT NULL,
    custom_aspect_ratios json,
    public_favicon uuid,
    default_appearance character varying(255) DEFAULT 'auto'::character varying NOT NULL,
    default_theme_light character varying(255),
    theme_light_overrides json,
    default_theme_dark character varying(255),
    theme_dark_overrides json,
    report_error_url character varying(255),
    report_bug_url character varying(255),
    report_feature_url character varying(255),
    public_registration boolean DEFAULT false NOT NULL,
    public_registration_verify_email boolean DEFAULT true NOT NULL,
    public_registration_role uuid,
    public_registration_email_filter json
);


ALTER TABLE public.directus_settings OWNER TO directus;

--
-- Name: directus_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_settings_id_seq OWNER TO directus;

--
-- Name: directus_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_settings_id_seq OWNED BY public.directus_settings.id;


--
-- Name: directus_shares; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_shares (
    id uuid NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    role uuid,
    password character varying(255),
    user_created uuid,
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_start timestamp with time zone,
    date_end timestamp with time zone,
    times_used integer DEFAULT 0,
    max_uses integer
);


ALTER TABLE public.directus_shares OWNER TO directus;

--
-- Name: directus_translations; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_translations (
    id uuid NOT NULL,
    language character varying(255) NOT NULL,
    key character varying(255) NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.directus_translations OWNER TO directus;

--
-- Name: directus_users; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_users (
    id uuid NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(128),
    password character varying(255),
    location character varying(255),
    title character varying(50),
    description text,
    tags json,
    avatar uuid,
    language character varying(255) DEFAULT NULL::character varying,
    tfa_secret character varying(255),
    status character varying(16) DEFAULT 'active'::character varying NOT NULL,
    role uuid,
    token character varying(255),
    last_access timestamp with time zone,
    last_page character varying(255),
    provider character varying(128) DEFAULT 'default'::character varying NOT NULL,
    external_identifier character varying(255),
    auth_data json,
    email_notifications boolean DEFAULT true,
    appearance character varying(255),
    theme_dark character varying(255),
    theme_light character varying(255),
    theme_light_overrides json,
    theme_dark_overrides json
);


ALTER TABLE public.directus_users OWNER TO directus;

--
-- Name: directus_versions; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_versions (
    id uuid NOT NULL,
    key character varying(64) NOT NULL,
    name character varying(255),
    collection character varying(64) NOT NULL,
    item character varying(255) NOT NULL,
    hash character varying(255),
    date_created timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    date_updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_created uuid,
    user_updated uuid
);


ALTER TABLE public.directus_versions OWNER TO directus;

--
-- Name: directus_webhooks; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.directus_webhooks (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    method character varying(10) DEFAULT 'POST'::character varying NOT NULL,
    url character varying(255) NOT NULL,
    status character varying(10) DEFAULT 'active'::character varying NOT NULL,
    data boolean DEFAULT true NOT NULL,
    actions character varying(100) NOT NULL,
    collections character varying(255) NOT NULL,
    headers json,
    was_active_before_deprecation boolean DEFAULT false NOT NULL,
    migrated_flow uuid
);


ALTER TABLE public.directus_webhooks OWNER TO directus;

--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: directus
--

CREATE SEQUENCE public.directus_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.directus_webhooks_id_seq OWNER TO directus;

--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: directus
--

ALTER SEQUENCE public.directus_webhooks_id_seq OWNED BY public.directus_webhooks.id;


--
-- Name: messages; Type: TABLE; Schema: public; Owner: directus
--

CREATE TABLE public.messages (
    id uuid NOT NULL,
    status character varying(255) DEFAULT 'idle'::character varying,
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    question text,
    response text,
    "user" character varying(255)
);


ALTER TABLE public.messages OWNER TO directus;

--
-- Name: contexts_contexts id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.contexts_contexts ALTER COLUMN id SET DEFAULT nextval('public.contexts_contexts_id_seq'::regclass);


--
-- Name: directus_activity id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_activity ALTER COLUMN id SET DEFAULT nextval('public.directus_activity_id_seq'::regclass);


--
-- Name: directus_fields id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_fields ALTER COLUMN id SET DEFAULT nextval('public.directus_fields_id_seq'::regclass);


--
-- Name: directus_notifications id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_notifications ALTER COLUMN id SET DEFAULT nextval('public.directus_notifications_id_seq'::regclass);


--
-- Name: directus_permissions id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_permissions ALTER COLUMN id SET DEFAULT nextval('public.directus_permissions_id_seq'::regclass);


--
-- Name: directus_presets id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_presets ALTER COLUMN id SET DEFAULT nextval('public.directus_presets_id_seq'::regclass);


--
-- Name: directus_relations id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_relations ALTER COLUMN id SET DEFAULT nextval('public.directus_relations_id_seq'::regclass);


--
-- Name: directus_revisions id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_revisions ALTER COLUMN id SET DEFAULT nextval('public.directus_revisions_id_seq'::regclass);


--
-- Name: directus_settings id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings ALTER COLUMN id SET DEFAULT nextval('public.directus_settings_id_seq'::regclass);


--
-- Name: directus_webhooks id; Type: DEFAULT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_webhooks ALTER COLUMN id SET DEFAULT nextval('public.directus_webhooks_id_seq'::regclass);


--
-- Data for Name: contexts; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.contexts (id, status, sort, user_created, date_created, user_updated, date_updated, content, title, type) FROM stdin;
f6800dad-1054-431d-8100-488cb231c081	published	1	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:07:37.562+00	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:20:12.353+00	# O'clock : Ecole tech\n\nLes cours ont lieux de 09h à 17h avec une pause de 1h pour le déjeuner. Une pause café le matin et l'après-midi est également prévue.\n\nEn général, à 15h le formateur libère les apprenants pour qu'ils puissent faire le challenge du jour.\n\nLes cours ont lieux sur BBB : <https://bbb.oclock.school/gl3>\n\nLes replay sont disponibles sur le dashboard : <https://playback.oclock.school/dashboards>\n\nLes émargement se font sur Edusign : <https://edusign.app/>\n\nA la fin de chaque saison de cours, un questionnaire de satisfaction vous est envoyé.\n\n## L'école\n\nFondée en 2016, O’clock s’est donné pour mission de rendre l’éducation technologique accessible à tous, partout en France, grâce à son format innovant le « téléprésentiel » qui vous permet d’assister à un cours, spécialement conçu pour être suivi en ligne, en temps réel, où que vous soyez.\n\nNous croyons fermement en des valeurs de partage, de bienveillance, et d’attention individuelle, offrant des formations diversifiées telles que le développement web, la sécurité réseau, et la conception d’applications. Ces valeurs portent notre organisation et notre pédagogie.\n\nNos programmes sont constamment mis à jour pour répondre aux besoins du marché de l’emploi, préparant les apprenants à diverses certifications professionnelles (concepteur d’application, développeur web, technicien sécurité réseau, DevOps…).\n\nCe qui distingue O’clock, c’est notre approche pédagogique unique. Nos formateurs, experts reconnus dans leur domaine, assurent un enseignement interactif et vivant, soutenu par notre plateforme d’enseignement exclusive, BigBlueButton. Cette approche est complétée par l’accompagnement individuel de nos tuteurs et conseillers, garantissant un taux d’achèvement exceptionnel de plus de 97%.\n\nNotre communauté dynamique, composée d’anciens apprenants et de partenaires économiques, témoigne de la solidarité et de l’esprit d’équipe cultivés durant les formations.\n\nAvec plus de 6000 alumni dans notre réseau, O’clock encourage l’entraide et la collaboration au-delà des salles de classe virtuelles.\n\nChez O’clock, nous envisageons l’avenir avec ambition, désireux d’intégrer davantage d’outils d’intelligence artificielle pour personnaliser davantage les apprentissages et étendre notre offre aux divers métiers de la tech.\n\nNotre vision est claire : être l’école de demain dès aujourd’hui, où l’apprentissage est synonyme de bonheur, et où chaque apprenant peut réaliser son plein potentiel, quel que soit son lieu de vie.\n\n## Questions réponses\n\n### Au fait, c'est quoi le téléprésentiel ?\n\nC’est comme si vous alliez en cours, mais sans avoir besoin d’y aller. C’est le moyen qu’on a trouvé et développé pour permettre à un maximum de monde d’accéder à la formation, via une salle de classe virtuelle. Les personnes à mobilité réduite ou vivant dans des communes reculées peuvent se former chez O’clock et bénéficier d’un apprentissage vivant grâce à ce format.\n\n### Modalités d’accès ?\n\nPour être admis, vous devez passer notre Chemin vers O’clock, un parcours d’inscription en deux étapes qui titillera vos connaissances en informatique et en anglais, votre capacité de logique, ainsi que votre motivation.\n\nUne fois que vous aurez arpenté ce chemin avec succès, vous pourrez vous positionner sur l’une de nos prochaines promotions à l’aide de votre référent admission, qui vous accompagnera tout au long de votre parcours.\n\nSi jamais vous êtes en situation de handicap, n’hésitez pas à en parler pendant ce chemin. On reviendra vers vous pour mettre en place différents aménagements afin de répondre au mieux à vos besoins.\n\n### On peut décrocher une certification avec une formation O’clock ?\n\nLa plupart de nos formations O’clock sont éligibles à différents Titres Professionnels reconnus par l’État, et inscrits au RNCP. Certains Titres sont équivalents à un bac+2, d’autres à un bac+4, voire plus. Pour plus de renseignement il est possible de consulter directement nos formations : découvrir le catalogue.\n\n### Est-ce que France Travail peut financer ma formation ?\n\nNotre école est appréciée et reconnue pour sa qualité auprès de nombreux organismes de financement, dont France Travail fait partie. 75% de nos apprenants bénéficient d’un financement pour leur formation. Mais tout ça, on vous en parle nettement mieux dans notre page financements.\n\n### Comment ça se passe le suivi et l’accompagnement chez O’clock ?\n\nVous serez suivi et accompagné par :\n\n- Les référents admissions ; Pour chacune de vos démarches administratives et questions sur les formations que vous pourriez avoir, ils seront présents, et ce, même avant que la formation n’ait commencé. Ce sont aussi eux qui remueront ciel et terre pour faire en sorte que vous décrochiez une solution de financement.\n- Les formateurs ; Ils seront présents chaque jour à vos côtés durant vos heures de cours, et n’attendent qu’une chose : vous transmettre leur passion et leurs années d’expérience dans la tech.\n- Les tuteurs pédagogiques ; Besoin d’une explication supplémentaire sur le cours que vous venez de suivre ? Vos tuteurs se feront un plaisir de vous réexpliquer tout ça. Ils seront présents pour vous tout au long de la formation, même une fois les cours terminés d’ailleurs, lors des challenges. Et ça, jusqu’à votre passage du Titre Professionnel.\n- Les conseillers parcours apprenants ; Si jamais vous aviez un problème de santé, familial, personnel, ou que vous êtes dans une situation de handicap, vous pouvez d’adresser aux conseillers parcours apprenants. Ils sont là pour faire en sorte que la formation se passe le mieux possible pour vous.\n\n### Concernant le matériel et la connexion, j’ai besoin de quoi ?\n\nPour suivre la formation dans de bonnes conditions, il faut un débit minimum de 5 Mbps. Quant à votre ordinateur, il n’est pas nécessaire d’avoir une machine de guerre.\n\nSi vous avez une machine assez récente, ça devrait le faire. Dans le détail : un processeur disposant de 4 cœurs physiques (i5 ou i3 récent, ainsi que tous les processeurs AMD Ryzen) sera nécessaire. Concernant la RAM : 8 Go suffisent. Mais si vous avez plus, c’est toujours mieux. Pour le reste, un micro-casque et une configuration double écrans sont de rigueur.\n\n### Est-ce que je serai assez compétent pour trouver un emploi après votre formation ?\n\nOui ! C’est même un des grands objectifs. Niveau compétence, vous aurez tout le bagage nécessaire pour trouver un job  correspondant au parcours de formation choisi : de développeur web front-end, back-end, fullstack, à administrateur système, DevOps, encore designer UX/UI.\nNous vous proposons des bagages technologiques et méthodologiques adaptés au marché de l’emploi.\n	Oclock	Ecole
28a6a701-0428-4980-b549-1e3d69650852	published	3	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:11:15.113+00	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:20:20.469+00	# DevOps\n\nLa formation, de niveau 6, Administrateur Système DevOps vise à développer les compétences nécessaires pour automatiser, déployer et superviser des infrastructures et des applications dans des environnements cloud.\n\n## Objectifs\n\n- Automatiser le déploiement d’une infrastructure dans le cloud\n  - Automatiser la création de serveurs à l’aide de scripts\n  - Automatiser le déploiement d’une infrastructure\n  - Sécuriser l’infrastructure\n  - Mettre l’infrastructure en production dans le cloud\n- Déployer en continu une application\n  - Préparer un environnement de test\n  - Gérer le stockage des données\n  - Gérer des containers\n  - Automatiser la mise en production d’une application avec une plateforme\n- Superviser les services déployés\n  - Définir et mettre en place des statistiques de services\n  - Exploiter une solution de supervision\n  - Echanger sur des réseaux professionnels éventuellement en anglais\n\n## Déroulement\n\n01 : 🟢 Intégration 35h\n\nCette saison permet aux apprenants de démarrer leur formation en douceur, en prenant en main les outils puis en abordant les premières notions.\n\nOutils O’clock\nProgramme de formation\nTitre pro\nMarkdown\nGit\nGitHub\nDevContainers\n\n- Prendre en main la formation et les outils O’Clock\n- Découvrir le métier et les premiers outils DevOps\n- Comprendre la pédagogie O’Clock et l’importance de l’entraide\n\n02 : 🟢 Algorithmique 35h\n\nUniformisation des connaissances en algorithmique pour tous les apprenants, basée sur le langage Python.\n\nPython\n\n- Appliquer les bases de l’algorithmique\n- Appliquer le langage Python\n\n03 : 🟢 Développement Frontend et Versioning 35h\n\nCette saison couvre le développement frontend moderne dans une perspective DevOps. Elle aborde les fondamentaux du web, l’utilisation de Svelte, la maîtrise de Git, et les pratiques de déploiement. L’objectif est de préparer les apprenants à gérer efficacement le cycle complet d’une application frontend, de la conception au déploiement.\n\nHTML/CSS/JS\nSvelte\nNode.js\nnpm\nVite\nGit\nGitHub Pages\nOptimisation perf.\nCI/CD\n\n- Comprendre les concepts du développement frontend et l’architecture web moderne\n- Maîtriser les outils de développement frontend actuels\n- Appliquer le versioning avec Git, des bases aux techniques avancées\n- Analyser les différences entre développement et production\n- Évaluer les stratégies d’optimisation et de déploiement frontend\n- Créer et déployer des applications frontend performantes\n\n04 : 🟢 Dev back 70h\n\nExploration du développement back-end, en réalisant des projets variés dans plusieurs langages. Un accent sera mis sur l’utilisation de GitHub pour la gestion de projet et la collaboration en équipe. Il faudra insister sur la création de branches, les pull requests, et la gestion des conflits. La première semaine sera consacrée à la création d’API avec Flask, la manipulation de bases de données SQL, et l’utilisation de psql pour DevOps. La deuxième semaine sera dédiée à l’exploration du langage Go, avec discordgo pour la création de bots Discord. Dans le challenge, fil rouge, les apprenants devront créer un bot Discord capable d’interagir avec une API externe pour gérer des projets et des tâches.\n\nGitHub\nFlask\nSQL\npsql\nORM\nGo\n\n- Comprendre les principes de gestion de projet avec GitHub\n- Appliquer les fondamentaux du développement back-end et la création d’API avec Flask\n- Découvrir l’utilisation de SQL et psql pour DevOps\n- Développer des compétences avancées en gestion de bases de données et ORM\n- Explorer le langage Go et ses applications pratiques\n\n05 : 🟢 Container 35h\n\nUtilisation de Docker comme brique fondamentale d’un DevOps.\n\n- Dockerfile\n- Docker compose\n- Devcontainer\n- Comprendre les concepts de conteneurisation\n- Appliquer Docker dans un environnement de développement\n- Analyser les conteneurs\n\n06 : 🟢 Système 70h\n\nManipulation avancée de Linux et installation de différents services tels qu’un serveur HTTP ou des bases de données pour mettre en place une application web.\n\nShell\nScript\nLinux\n\n- Se rappeler des différents OS\n- Comprendre les règles de sécurisation Linux\n- Appliquer l’administration de systèmes Linux\n- Appliquer les procédures d’installation de services\n- Analyser l’activité d’un serveur\n\n07 : 🔴 Réseau 70h\n\nGestions des réseaux et de ses principes fondamentaux pour préparer à la mise en place d’une infrastructure de serveurs.\n\nRoutage\nProtocoles\nDNS\n\n- Comprendre les réseaux\n- Appliquer les configurations fondamentalesœ\n\n08 : 🔴 Infrastructure de serveurs 35h\n\nDéploiement automatisé de serveurs et mise en communication.\n\nAnsible\nDocker\n\n- Comprendre les outils de déploiement\n- Appliquer des recepts de déploiement\n\n09 : 🔴 Chaines de livraison 70h\n\nUtilisation avancée des chaines de livraison pour automatiser le déploiement d’applications.\n\n- Github actions\n- Docker\n\n- Comprendre les chaines de livraison\n- Appliquer Github Actions\n- Appliquer ses propres actions\n- Analyser les workflows\n\n10 : 🔴 Flux entrants 35h\n\nSécuriser les flux entrants d’un serveur et gérer la répartition de charge.\n\nFirewall\nVPN\nIPtables\n\n- Comprendre la répartition de charge\n- Appliquer des règles de sécurité\n- Analyser les flux entrants\n\n11 : 🔴 Cloud providers 70h\n\nGestion des fournisseurs de cloud et de leurs services pour préparer à la mise en place d’une infrastructure de serveurs.\n\nAWS\nScaleway\nOpenstack\n\n- Comprendre les cloud providers\n- Appliquer sont propre cloud provider\n- Analyser les services proposés par les leaders du marché\n\n12 : 🔴 Infrastructure as Code 35h\n\nAutomatiser le déploiement d’infrastructures avec Terraform.\n\nTerraform\n\n- Comprendre les principes de l’infrastructure as code\n- Appliquer Terraform\n\n13 : 🔴 Container avancé 35h\n\nUtilisation avancée des conteneurs pour déployer des applications.\n\nDocker\nPodman\n\n- Appliquer des concepts avancés de conteneurs\n- Analyser des architectures complexes\n\n14 : 🔴 Orchestration 70h\n\nOrchestrer et superviser des applications distribuées.\n\nDocker swarm\nPrometheus\nKubernetes\nHelm\n\n- Comprendre l’orchestration\n- Appliquer des outils d’orchestration\n- Analyser des architectures distribuées\n\n15 : Projet 98h\n\nProjet de fin de formation en autonomie.\n\n## Le métier de DevOps\n\nLe DevOps, combinaison des termes Développement et Opérations, est un ensemble de pratiques visant à améliorer la collaboration entre les équipes de développement et d'opérations pour livrer des projets web de manière efficace. Son rôle principal est de réduire les délais de développement et de déploiement, d'augmenter la fréquence des mises à jour, d'assurer la stabilité des systèmes, et d'automatiser les tâches répétitives. Né dans les années 2000, le DevOps s'inspire des pratiques agiles et est devenu essentiel dans un environnement concurrentiel pour permettre aux entreprises de rester agiles et réactives. Les métiers DevOps incluent des rôles comme Ingénieur DevOps et Architecte DevOps, et s'appuient sur des technologies comme Git, Jenkins, Docker, Kubernetes et Ansible. Les principes fondamentaux du DevOps incluent la collaboration, l'automatisation, la supervision et la sécurisation des processus.\n	DevOps	Formation
3bd438bf-5691-4e0e-9742-ccb9dff5a8d4	draft	4	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:08:23.342+00	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:11.646+00	# Formation en continue\n\n	En continue	Ecole
34303cd8-5c09-4c94-ad98-288d13d320bc	draft	5	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:08:41.818+00	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:18.317+00	# Formation en Alternance\n\nLe CFA est Formasup.\n	En alternance	Ecole
5546c767-0e15-4e22-bbbb-e0cf78eab9d7	published	2	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:11:37.055+00	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:20:19.107+00	# Promo : Nornes\n\n## Ressources\n\n- Lien du Drive : <https://drive.google.com/drive/folders/1ssVgL9inx-yKFo-2iCK2JPj5X61h8xLG>\n- Planning de la formation : <https://docs.google.com/spreadsheets/d/1tJ-B_OmqLfU7JqqBh3feVPNymSLrq29OzwnhwuKkJtY/edit?gid=0#gid=0>\n- Référent : Anthony Cosson\n- Github : <https://github.com/O-clock-Nornes>\n\n## Définition du nom de la promo\n\nLes Nornes (terme du vieux norrois, pluriel nornir) de la mythologie nordique sont comparables aux Dises qui règlent le destin de l'ensemble des habitants des neuf mondes de la cosmogonie nordique1.\n\nBien que les Nornes soient assez nombreuses, d'après l'interprétation de Snorri Sturluson de la Völuspá, les trois plus importantes sont appelées Urd, Verdandi et Skuld et résident près du puits d'Urd, le puits du Destin. Elles en tirent l'eau et en arrosent l'arbre Yggdrasil afin que ses branches ne pourrissent jamais2. Les Nornes sont décrites comme trois puissantes jötunns dont l'arrivée a mis fin à l'âge d'or des dieux2.\n\nEn plus de ces trois Nornes, il existe de nombreuses autres Nornes, qui arrivent lorsqu'une personne naît afin de fixer son avenir2. Ces Nornes peuvent être bienveillantes ou malveillantes ; elles étaient considérées responsables respectivement des événements heureux ou malheureux de la vie2.\n	Normes	Promotion
\.


--
-- Data for Name: contexts_contexts; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.contexts_contexts (id, contexts_id, related_contexts_id) FROM stdin;
1	5546c767-0e15-4e22-bbbb-e0cf78eab9d7	28a6a701-0428-4980-b549-1e3d69650852
2	5546c767-0e15-4e22-bbbb-e0cf78eab9d7	3bd438bf-5691-4e0e-9742-ccb9dff5a8d4
3	28a6a701-0428-4980-b549-1e3d69650852	f6800dad-1054-431d-8100-488cb231c081
\.


--
-- Data for Name: directus_activity; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_activity (id, action, "user", "timestamp", ip, user_agent, collection, item, comment, origin) FROM stdin;
1	login	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:05:01.636+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_users	ba8e1479-3511-4434-bf87-d9bdcdf249df	\N	http://directus.localhost
2	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:11.361+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	1	\N	http://directus.localhost
3	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:11.369+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	2	\N	http://directus.localhost
4	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:11.374+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	3	\N	http://directus.localhost
5	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:11.378+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	4	\N	http://directus.localhost
6	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:11.383+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	5	\N	http://directus.localhost
7	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:11.388+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	6	\N	http://directus.localhost
8	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:11.392+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	7	\N	http://directus.localhost
9	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:11.399+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_collections	contexts	\N	http://directus.localhost
10	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:22.222+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	8	\N	http://directus.localhost
11	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:40.057+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	9	\N	http://directus.localhost
12	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:41.748+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	1	\N	http://directus.localhost
13	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:41.76+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	2	\N	http://directus.localhost
14	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:41.769+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	3	\N	http://directus.localhost
15	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:41.776+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	4	\N	http://directus.localhost
16	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:41.784+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	5	\N	http://directus.localhost
17	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:41.793+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	6	\N	http://directus.localhost
18	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:41.801+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	7	\N	http://directus.localhost
19	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:41.808+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	9	\N	http://directus.localhost
20	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:06:41.816+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	8	\N	http://directus.localhost
21	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:07:14.153+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	10	\N	http://directus.localhost
22	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:07:37.566+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts	f6800dad-1054-431d-8100-488cb231c081	\N	http://directus.localhost
23	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:08:23.344+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts	3bd438bf-5691-4e0e-9742-ccb9dff5a8d4	\N	http://directus.localhost
24	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:08:41.82+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts	34303cd8-5c09-4c94-ad98-288d13d320bc	\N	http://directus.localhost
25	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:11:15.115+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts	28a6a701-0428-4980-b549-1e3d69650852	\N	http://directus.localhost
26	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:11:37.059+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts	5546c767-0e15-4e22-bbbb-e0cf78eab9d7	\N	http://directus.localhost
27	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:11:41.64+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts	28a6a701-0428-4980-b549-1e3d69650852	\N	http://directus.localhost
28	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:12:31.639+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	10	\N	http://directus.localhost
29	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:13:51.561+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	11	\N	http://directus.localhost
30	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:13:51.659+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	12	\N	http://directus.localhost
31	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:13:51.663+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_collections	contexts_contexts	\N	http://directus.localhost
32	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:13:51.703+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	13	\N	http://directus.localhost
33	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:13:51.788+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	14	\N	http://directus.localhost
34	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:14:14.156+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts_contexts	1	\N	http://directus.localhost
35	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:14:14.168+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts_contexts	2	\N	http://directus.localhost
36	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:14:14.174+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts	5546c767-0e15-4e22-bbbb-e0cf78eab9d7	\N	http://directus.localhost
37	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:15:16.317+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	11	\N	http://directus.localhost
38	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:15:41.7+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts_contexts	3	\N	http://directus.localhost
39	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:15:41.704+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts	28a6a701-0428-4980-b549-1e3d69650852	\N	http://directus.localhost
40	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:17:22.797+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	15	\N	http://directus.localhost
41	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:17:33.02+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts	f6800dad-1054-431d-8100-488cb231c081	\N	http://directus.localhost
42	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:18:53.017+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	16	\N	http://directus.localhost
43	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:20:10.187+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts	3bd438bf-5691-4e0e-9742-ccb9dff5a8d4	\N	http://directus.localhost
44	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:20:12.354+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts	f6800dad-1054-431d-8100-488cb231c081	\N	http://directus.localhost
45	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:20:17.293+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts	34303cd8-5c09-4c94-ad98-288d13d320bc	\N	http://directus.localhost
46	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:20:19.108+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts	5546c767-0e15-4e22-bbbb-e0cf78eab9d7	\N	http://directus.localhost
47	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:20:20.47+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts	28a6a701-0428-4980-b549-1e3d69650852	\N	http://directus.localhost
48	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:20:47.18+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	16	\N	http://directus.localhost
49	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:11.649+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts	3bd438bf-5691-4e0e-9742-ccb9dff5a8d4	\N	http://directus.localhost
50	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:18.318+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	contexts	34303cd8-5c09-4c94-ad98-288d13d320bc	\N	http://directus.localhost
51	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:39.915+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	1	\N	http://directus.localhost
52	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:39.924+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	2	\N	http://directus.localhost
53	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:39.932+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	3	\N	http://directus.localhost
54	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:39.938+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	4	\N	http://directus.localhost
55	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:39.945+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	5	\N	http://directus.localhost
56	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:39.952+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	6	\N	http://directus.localhost
57	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:39.958+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	7	\N	http://directus.localhost
58	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:39.965+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	9	\N	http://directus.localhost
59	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:39.971+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	16	\N	http://directus.localhost
60	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:39.978+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	8	\N	http://directus.localhost
61	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:39.984+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	11	\N	http://directus.localhost
62	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:44.824+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	9	\N	http://directus.localhost
63	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:49.044+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	16	\N	http://directus.localhost
64	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:50.716+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	1	\N	http://directus.localhost
65	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:50.724+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	2	\N	http://directus.localhost
66	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:50.73+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	3	\N	http://directus.localhost
67	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:50.736+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	4	\N	http://directus.localhost
68	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:50.743+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	5	\N	http://directus.localhost
69	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:50.75+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	6	\N	http://directus.localhost
70	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:50.756+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	7	\N	http://directus.localhost
71	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:50.764+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	9	\N	http://directus.localhost
72	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:50.77+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	16	\N	http://directus.localhost
73	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:50.776+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	11	\N	http://directus.localhost
74	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:21:50.782+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	8	\N	http://directus.localhost
75	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:23:02.255+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	17	\N	http://directus.localhost
76	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:23:02.263+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	18	\N	http://directus.localhost
77	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:23:02.271+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	19	\N	http://directus.localhost
78	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:23:02.277+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	20	\N	http://directus.localhost
79	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:23:02.285+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_collections	messages	\N	http://directus.localhost
80	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:23:20.258+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	21	\N	http://directus.localhost
81	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:23:35.958+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	22	\N	http://directus.localhost
82	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:24:51.425+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	18	\N	http://directus.localhost
83	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:25:50.084+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	23	\N	http://directus.localhost
84	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:25:54.42+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	17	\N	http://directus.localhost
85	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:25:54.428+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	18	\N	http://directus.localhost
86	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:25:54.435+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	19	\N	http://directus.localhost
87	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:25:54.441+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	20	\N	http://directus.localhost
88	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:25:54.455+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	23	\N	http://directus.localhost
89	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:25:54.468+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	21	\N	http://directus.localhost
90	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:25:54.477+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	22	\N	http://directus.localhost
91	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:26:00.091+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	17	\N	http://directus.localhost
92	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:26:00.097+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	19	\N	http://directus.localhost
93	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:26:00.104+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	20	\N	http://directus.localhost
94	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:26:00.117+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	18	\N	http://directus.localhost
95	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:26:00.137+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	23	\N	http://directus.localhost
96	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:26:00.149+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	21	\N	http://directus.localhost
97	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:26:00.159+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	22	\N	http://directus.localhost
98	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:26:03.038+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	18	\N	http://directus.localhost
99	update	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:26:06.042+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	directus_fields	23	\N	http://directus.localhost
100	create	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:26:55.992+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	messages	cda1e643-62c4-4c50-8b95-c20dedf2ebed	\N	http://directus.localhost
\.


--
-- Data for Name: directus_collections; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations, archive_field, archive_app_filter, archive_value, unarchive_value, sort_field, accountability, color, item_duplication_fields, sort, "group", collapse, preview_url, versioning) FROM stdin;
contexts	\N	\N	\N	f	f	\N	status	t	archived	draft	sort	all	\N	\N	\N	\N	open	\N	f
contexts_contexts	import_export	\N	\N	t	f	\N	\N	t	\N	\N	\N	all	\N	\N	\N	\N	open	\N	f
messages	\N	\N	\N	f	f	\N	status	t	archived	draft	\N	all	\N	\N	\N	\N	open	\N	f
\.


--
-- Data for Name: directus_dashboards; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_dashboards (id, name, icon, note, date_created, user_created, color) FROM stdin;
\.


--
-- Data for Name: directus_extensions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_extensions (enabled, id, folder, source, bundle) FROM stdin;
\.


--
-- Data for Name: directus_fields; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_fields (id, collection, field, special, interface, options, display, display_options, readonly, hidden, sort, width, translations, note, conditions, required, "group", validation, validation_message) FROM stdin;
23	messages	user	\N	input	\N	\N	\N	f	f	5	half	\N	\N	\N	f	\N	\N	\N
1	contexts	id	uuid	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
2	contexts	status	\N	select-dropdown	{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]}	labels	{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]}	f	f	2	full	\N	\N	\N	f	\N	\N	\N
3	contexts	sort	\N	input	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
4	contexts	user_created	user-created	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	4	half	\N	\N	\N	f	\N	\N	\N
5	contexts	date_created	date-created	datetime	\N	datetime	{"relative":true}	t	t	5	half	\N	\N	\N	f	\N	\N	\N
6	contexts	user_updated	user-updated	select-dropdown-m2o	{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}	user	\N	t	t	6	half	\N	\N	\N	f	\N	\N	\N
7	contexts	date_updated	date-updated	datetime	\N	datetime	{"relative":true}	t	t	7	half	\N	\N	\N	f	\N	\N	\N
9	contexts	title	\N	input	\N	\N	\N	f	f	8	half	\N	\N	\N	f	\N	\N	\N
16	contexts	type	\N	select-dropdown	{"choices":[{"text":"ecole","value":"Ecole"},{"text":"formation","value":"Formation"},{"text":"promotion","value":"Promotion"}]}	\N	\N	f	f	9	half	\N	\N	\N	t	\N	\N	\N
12	contexts_contexts	id	\N	\N	\N	\N	\N	f	t	1	full	\N	\N	\N	f	\N	\N	\N
13	contexts_contexts	contexts_id	\N	\N	\N	\N	\N	f	t	2	full	\N	\N	\N	f	\N	\N	\N
14	contexts_contexts	related_contexts_id	\N	\N	\N	\N	\N	f	t	3	full	\N	\N	\N	f	\N	\N	\N
11	contexts	parents	m2m	list-m2m	{"template":"{{related_contexts_id.title}}"}	related-values	{"template":"{{related_contexts_id.title}}"}	f	f	10	full	\N	\N	\N	f	\N	\N	\N
8	contexts	content	\N	input-rich-text-md	\N	\N	\N	f	f	11	full	\N	\N	\N	f	\N	\N	\N
17	messages	id	uuid	input	\N	\N	\N	t	t	1	full	\N	\N	\N	f	\N	\N	\N
19	messages	date_created	date-created	datetime	\N	datetime	{"relative":true}	t	t	2	half	\N	\N	\N	f	\N	\N	\N
20	messages	date_updated	date-updated	datetime	\N	datetime	{"relative":true}	t	t	3	half	\N	\N	\N	f	\N	\N	\N
21	messages	question	\N	input-multiline	\N	\N	\N	f	f	6	full	\N	\N	\N	t	\N	\N	\N
22	messages	response	\N	input-rich-text-md	\N	\N	\N	f	f	7	full	\N	\N	\N	f	\N	\N	\N
18	messages	status	\N	select-dropdown	{"choices":[{"text":"Terminée","value":"done","color":"var(--theme--primary)"},{"text":"En attente","value":"idle","color":"var(--theme--foreground)"},{"text":"Rejetée","value":"rejected","color":"var(--theme--warning)"}]}	labels	{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]}	f	f	4	half	\N	\N	\N	f	\N	\N	\N
\.


--
-- Data for Name: directus_files; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_files (id, storage, filename_disk, filename_download, title, type, folder, uploaded_by, uploaded_on, modified_by, modified_on, charset, filesize, width, height, duration, embed, description, location, tags, metadata, focal_point_x, focal_point_y, tus_id, tus_data) FROM stdin;
\.


--
-- Data for Name: directus_flows; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_flows (id, name, icon, color, description, status, trigger, accountability, options, operation, date_created, user_created) FROM stdin;
\.


--
-- Data for Name: directus_folders; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_folders (id, name, parent) FROM stdin;
\.


--
-- Data for Name: directus_migrations; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_migrations (version, name, "timestamp") FROM stdin;
20201028A	Remove Collection Foreign Keys	2024-11-13 11:01:21.683811+00
20201029A	Remove System Relations	2024-11-13 11:01:21.690164+00
20201029B	Remove System Collections	2024-11-13 11:01:21.695784+00
20201029C	Remove System Fields	2024-11-13 11:01:21.704882+00
20201105A	Add Cascade System Relations	2024-11-13 11:01:21.798751+00
20201105B	Change Webhook URL Type	2024-11-13 11:01:21.810247+00
20210225A	Add Relations Sort Field	2024-11-13 11:01:21.818094+00
20210304A	Remove Locked Fields	2024-11-13 11:01:21.824556+00
20210312A	Webhooks Collections Text	2024-11-13 11:01:21.834937+00
20210331A	Add Refresh Interval	2024-11-13 11:01:21.840008+00
20210415A	Make Filesize Nullable	2024-11-13 11:01:21.853314+00
20210416A	Add Collections Accountability	2024-11-13 11:01:21.8598+00
20210422A	Remove Files Interface	2024-11-13 11:01:21.863738+00
20210506A	Rename Interfaces	2024-11-13 11:01:21.888917+00
20210510A	Restructure Relations	2024-11-13 11:01:21.921189+00
20210518A	Add Foreign Key Constraints	2024-11-13 11:01:21.930376+00
20210519A	Add System Fk Triggers	2024-11-13 11:01:21.9802+00
20210521A	Add Collections Icon Color	2024-11-13 11:01:21.986161+00
20210525A	Add Insights	2024-11-13 11:01:22.007345+00
20210608A	Add Deep Clone Config	2024-11-13 11:01:22.013463+00
20210626A	Change Filesize Bigint	2024-11-13 11:01:22.027911+00
20210716A	Add Conditions to Fields	2024-11-13 11:01:22.032841+00
20210721A	Add Default Folder	2024-11-13 11:01:22.042363+00
20210802A	Replace Groups	2024-11-13 11:01:22.047379+00
20210803A	Add Required to Fields	2024-11-13 11:01:22.052512+00
20210805A	Update Groups	2024-11-13 11:01:22.057136+00
20210805B	Change Image Metadata Structure	2024-11-13 11:01:22.062011+00
20210811A	Add Geometry Config	2024-11-13 11:01:22.067319+00
20210831A	Remove Limit Column	2024-11-13 11:01:22.072047+00
20210903A	Add Auth Provider	2024-11-13 11:01:22.096494+00
20210907A	Webhooks Collections Not Null	2024-11-13 11:01:22.110029+00
20210910A	Move Module Setup	2024-11-13 11:01:22.119105+00
20210920A	Webhooks URL Not Null	2024-11-13 11:01:22.134228+00
20210924A	Add Collection Organization	2024-11-13 11:01:22.143021+00
20210927A	Replace Fields Group	2024-11-13 11:01:22.158222+00
20210927B	Replace M2M Interface	2024-11-13 11:01:22.162027+00
20210929A	Rename Login Action	2024-11-13 11:01:22.165485+00
20211007A	Update Presets	2024-11-13 11:01:22.175024+00
20211009A	Add Auth Data	2024-11-13 11:01:22.180518+00
20211016A	Add Webhook Headers	2024-11-13 11:01:22.185788+00
20211103A	Set Unique to User Token	2024-11-13 11:01:22.191997+00
20211103B	Update Special Geometry	2024-11-13 11:01:22.196214+00
20211104A	Remove Collections Listing	2024-11-13 11:01:22.204037+00
20211118A	Add Notifications	2024-11-13 11:01:22.22448+00
20211211A	Add Shares	2024-11-13 11:01:22.252698+00
20211230A	Add Project Descriptor	2024-11-13 11:01:22.258325+00
20220303A	Remove Default Project Color	2024-11-13 11:01:22.273546+00
20220308A	Add Bookmark Icon and Color	2024-11-13 11:01:22.279937+00
20220314A	Add Translation Strings	2024-11-13 11:01:22.28564+00
20220322A	Rename Field Typecast Flags	2024-11-13 11:01:22.292331+00
20220323A	Add Field Validation	2024-11-13 11:01:22.297977+00
20220325A	Fix Typecast Flags	2024-11-13 11:01:22.303287+00
20220325B	Add Default Language	2024-11-13 11:01:22.322256+00
20220402A	Remove Default Value Panel Icon	2024-11-13 11:01:22.338178+00
20220429A	Add Flows	2024-11-13 11:01:22.379329+00
20220429B	Add Color to Insights Icon	2024-11-13 11:01:22.385087+00
20220429C	Drop Non Null From IP of Activity	2024-11-13 11:01:22.390808+00
20220429D	Drop Non Null From Sender of Notifications	2024-11-13 11:01:22.396269+00
20220614A	Rename Hook Trigger to Event	2024-11-13 11:01:22.400416+00
20220801A	Update Notifications Timestamp Column	2024-11-13 11:01:22.416026+00
20220802A	Add Custom Aspect Ratios	2024-11-13 11:01:22.421576+00
20220826A	Add Origin to Accountability	2024-11-13 11:01:22.429889+00
20230401A	Update Material Icons	2024-11-13 11:01:22.444728+00
20230525A	Add Preview Settings	2024-11-13 11:01:22.451747+00
20230526A	Migrate Translation Strings	2024-11-13 11:01:22.467787+00
20230721A	Require Shares Fields	2024-11-13 11:01:22.480632+00
20230823A	Add Content Versioning	2024-11-13 11:01:22.507636+00
20230927A	Themes	2024-11-13 11:01:22.550853+00
20231009A	Update CSV Fields to Text	2024-11-13 11:01:22.557413+00
20231009B	Update Panel Options	2024-11-13 11:01:22.563679+00
20231010A	Add Extensions	2024-11-13 11:01:22.570102+00
20231215A	Add Focalpoints	2024-11-13 11:01:22.576943+00
20240122A	Add Report URL Fields	2024-11-13 11:01:22.583239+00
20240204A	Marketplace	2024-11-13 11:01:22.635099+00
20240305A	Change Useragent Type	2024-11-13 11:01:22.654661+00
20240311A	Deprecate Webhooks	2024-11-13 11:01:22.667538+00
20240422A	Public Registration	2024-11-13 11:01:22.677249+00
20240515A	Add Session Window	2024-11-13 11:01:22.682817+00
20240701A	Add Tus Data	2024-11-13 11:01:22.689574+00
\.


--
-- Data for Name: directus_notifications; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_notifications (id, "timestamp", status, recipient, sender, subject, message, collection, item) FROM stdin;
\.


--
-- Data for Name: directus_operations; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_operations (id, name, key, type, position_x, position_y, options, resolve, reject, flow, date_created, user_created) FROM stdin;
\.


--
-- Data for Name: directus_panels; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_panels (id, dashboard, name, icon, color, show_header, note, type, position_x, position_y, width, height, options, date_created, user_created) FROM stdin;
\.


--
-- Data for Name: directus_permissions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields) FROM stdin;
\.


--
-- Data for Name: directus_presets; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query, layout_options, refresh_interval, filter, icon, color) FROM stdin;
1	\N	ba8e1479-3511-4434-bf87-d9bdcdf249df	\N	contexts	\N	kanban	{"tabular":{"fields":["status","title","parents","type"]}}	{"tabular":{"widths":{"status":32,"title":351.20001220703125,"parents":312.79998779296875},"spacing":"comfortable"},"kanban":{"groupField":"type","groupTitle":null,"showUngrouped":false,"userField":"user_updated","crop":true,"dateField":"date_updated","textField":"status","titleField":"title"}}	\N	\N	bookmark	\N
2	\N	ba8e1479-3511-4434-bf87-d9bdcdf249df	\N	messages	\N	\N	{"tabular":{"fields":["status","question","user","response"]}}	{"tabular":{"widths":{"status":32,"question":408.79998779296875,"response":342.4000244140625}}}	\N	\N	bookmark	\N
\.


--
-- Data for Name: directus_relations; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field, one_allowed_collections, junction_field, sort_field, one_deselect_action) FROM stdin;
1	contexts	user_created	directus_users	\N	\N	\N	\N	\N	nullify
2	contexts	user_updated	directus_users	\N	\N	\N	\N	\N	nullify
4	contexts_contexts	related_contexts_id	contexts	\N	\N	\N	contexts_id	\N	nullify
5	contexts_contexts	contexts_id	contexts	parents	\N	\N	related_contexts_id	\N	nullify
\.


--
-- Data for Name: directus_revisions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_revisions (id, activity, collection, item, data, delta, parent, version) FROM stdin;
1	2	directus_fields	1	{"sort":1,"hidden":true,"readonly":true,"interface":"input","special":["uuid"],"field":"id","collection":"contexts"}	{"sort":1,"hidden":true,"readonly":true,"interface":"input","special":["uuid"],"field":"id","collection":"contexts"}	\N	\N
2	3	directus_fields	2	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"field":"status","collection":"contexts"}	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"field":"status","collection":"contexts"}	\N	\N
3	4	directus_fields	3	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"contexts"}	{"sort":3,"interface":"input","hidden":true,"field":"sort","collection":"contexts"}	\N	\N
4	5	directus_fields	4	{"sort":4,"special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","readonly":true,"hidden":true,"width":"half","field":"user_created","collection":"contexts"}	{"sort":4,"special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","readonly":true,"hidden":true,"width":"half","field":"user_created","collection":"contexts"}	\N	\N
5	6	directus_fields	5	{"sort":5,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"contexts"}	{"sort":5,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"contexts"}	\N	\N
6	7	directus_fields	6	{"sort":6,"special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","readonly":true,"hidden":true,"width":"half","field":"user_updated","collection":"contexts"}	{"sort":6,"special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","readonly":true,"hidden":true,"width":"half","field":"user_updated","collection":"contexts"}	\N	\N
7	8	directus_fields	7	{"sort":7,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"contexts"}	{"sort":7,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"contexts"}	\N	\N
8	9	directus_collections	contexts	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"contexts"}	{"sort_field":"sort","archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"contexts"}	\N	\N
9	10	directus_fields	8	{"sort":8,"interface":"input-rich-text-md","special":null,"collection":"contexts","field":"content"}	{"sort":8,"interface":"input-rich-text-md","special":null,"collection":"contexts","field":"content"}	\N	\N
10	11	directus_fields	9	{"sort":9,"interface":"input","special":null,"collection":"contexts","field":"title"}	{"sort":9,"interface":"input","special":null,"collection":"contexts","field":"title"}	\N	\N
11	12	directus_fields	1	{"id":1,"collection":"contexts","field":"id","special":["uuid"],"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"id","sort":1,"group":null}	\N	\N
12	13	directus_fields	2	{"id":2,"collection":"contexts","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"status","sort":2,"group":null}	\N	\N
13	14	directus_fields	3	{"id":3,"collection":"contexts","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"sort":3,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"sort","sort":3,"group":null}	\N	\N
14	15	directus_fields	4	{"id":4,"collection":"contexts","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"sort":4,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"user_created","sort":4,"group":null}	\N	\N
15	16	directus_fields	5	{"id":5,"collection":"contexts","field":"date_created","special":["date-created"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":5,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"date_created","sort":5,"group":null}	\N	\N
16	17	directus_fields	6	{"id":6,"collection":"contexts","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"sort":6,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"user_updated","sort":6,"group":null}	\N	\N
17	18	directus_fields	7	{"id":7,"collection":"contexts","field":"date_updated","special":["date-updated"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":7,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"date_updated","sort":7,"group":null}	\N	\N
18	19	directus_fields	9	{"id":9,"collection":"contexts","field":"title","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":8,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"title","sort":8,"group":null}	\N	\N
19	20	directus_fields	8	{"id":8,"collection":"contexts","field":"content","special":null,"interface":"input-rich-text-md","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":9,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"content","sort":9,"group":null}	\N	\N
28	29	directus_fields	11	{"sort":10,"interface":"list-m2m","special":["m2m"],"collection":"contexts","field":"parents"}	{"sort":10,"interface":"list-m2m","special":["m2m"],"collection":"contexts","field":"parents"}	\N	\N
32	33	directus_fields	14	{"sort":3,"hidden":true,"collection":"contexts_contexts","field":"related_contexts_id"}	{"sort":3,"hidden":true,"collection":"contexts_contexts","field":"related_contexts_id"}	\N	\N
20	21	directus_fields	10	{"sort":10,"interface":"select-dropdown-m2o","special":["m2o"],"options":{"template":"{{title}}"},"collection":"contexts","field":"parent_id"}	{"sort":10,"interface":"select-dropdown-m2o","special":["m2o"],"options":{"template":"{{title}}"},"collection":"contexts","field":"parent_id"}	\N	\N
21	22	contexts	f6800dad-1054-431d-8100-488cb231c081	{"status":"published","content":"# O'clock : Ecole tech\\n\\nLes cours ont lieux de 09h à 17h avec une pause de 1h pour le déjeuner. Une pause café le matin et l'après-midi est également prévue.\\n\\nEn général, à 15h le formateur libère les apprenants pour qu'ils puissent faire le challenge du jour.\\n\\nLes cours ont lieux sur BBB : <https://bbb.oclock.school/gl3>\\n\\nLes replay sont disponibles sur le dashboard : <https://playback.oclock.school/dashboards>\\n\\nLes émargement se font sur Edusign : <https://edusign.app/>\\n\\nA la fin de chaque saison de cours, un questionnaire de satisfaction vous est envoyé.\\n\\n## L'école\\n\\nFondée en 2016, O’clock s’est donné pour mission de rendre l’éducation technologique accessible à tous, partout en France, grâce à son format innovant le « téléprésentiel » qui vous permet d’assister à un cours, spécialement conçu pour être suivi en ligne, en temps réel, où que vous soyez.\\n\\nNous croyons fermement en des valeurs de partage, de bienveillance, et d’attention individuelle, offrant des formations diversifiées telles que le développement web, la sécurité réseau, et la conception d’applications. Ces valeurs portent notre organisation et notre pédagogie.\\n\\nNos programmes sont constamment mis à jour pour répondre aux besoins du marché de l’emploi, préparant les apprenants à diverses certifications professionnelles (concepteur d’application, développeur web, technicien sécurité réseau, DevOps…).\\n\\nCe qui distingue O’clock, c’est notre approche pédagogique unique. Nos formateurs, experts reconnus dans leur domaine, assurent un enseignement interactif et vivant, soutenu par notre plateforme d’enseignement exclusive, BigBlueButton. Cette approche est complétée par l’accompagnement individuel de nos tuteurs et conseillers, garantissant un taux d’achèvement exceptionnel de plus de 97%.\\n\\nNotre communauté dynamique, composée d’anciens apprenants et de partenaires économiques, témoigne de la solidarité et de l’esprit d’équipe cultivés durant les formations.\\n\\nAvec plus de 6000 alumni dans notre réseau, O’clock encourage l’entraide et la collaboration au-delà des salles de classe virtuelles.\\n\\nChez O’clock, nous envisageons l’avenir avec ambition, désireux d’intégrer davantage d’outils d’intelligence artificielle pour personnaliser davantage les apprentissages et étendre notre offre aux divers métiers de la tech.\\n\\nNotre vision est claire : être l’école de demain dès aujourd’hui, où l’apprentissage est synonyme de bonheur, et où chaque apprenant peut réaliser son plein potentiel, quel que soit son lieu de vie.\\n\\n## Questions réponses\\n\\n### Au fait, c'est quoi le téléprésentiel ?\\n\\nC’est comme si vous alliez en cours, mais sans avoir besoin d’y aller. C’est le moyen qu’on a trouvé et développé pour permettre à un maximum de monde d’accéder à la formation, via une salle de classe virtuelle. Les personnes à mobilité réduite ou vivant dans des communes reculées peuvent se former chez O’clock et bénéficier d’un apprentissage vivant grâce à ce format.\\n\\n### Modalités d’accès ?\\n\\nPour être admis, vous devez passer notre Chemin vers O’clock, un parcours d’inscription en deux étapes qui titillera vos connaissances en informatique et en anglais, votre capacité de logique, ainsi que votre motivation.\\n\\nUne fois que vous aurez arpenté ce chemin avec succès, vous pourrez vous positionner sur l’une de nos prochaines promotions à l’aide de votre référent admission, qui vous accompagnera tout au long de votre parcours.\\n\\nSi jamais vous êtes en situation de handicap, n’hésitez pas à en parler pendant ce chemin. On reviendra vers vous pour mettre en place différents aménagements afin de répondre au mieux à vos besoins.\\n\\n### On peut décrocher une certification avec une formation O’clock ?\\n\\nLa plupart de nos formations O’clock sont éligibles à différents Titres Professionnels reconnus par l’État, et inscrits au RNCP. Certains Titres sont équivalents à un bac+2, d’autres à un bac+4, voire plus. Pour plus de renseignement il est possible de consulter directement nos formations : découvrir le catalogue.\\n\\n### Est-ce que France Travail peut financer ma formation ?\\n\\nNotre école est appréciée et reconnue pour sa qualité auprès de nombreux organismes de financement, dont France Travail fait partie. 75% de nos apprenants bénéficient d’un financement pour leur formation. Mais tout ça, on vous en parle nettement mieux dans notre page financements.\\n\\n### Comment ça se passe le suivi et l’accompagnement chez O’clock ?\\n\\nVous serez suivi et accompagné par :\\n\\n- Les référents admissions ; Pour chacune de vos démarches administratives et questions sur les formations que vous pourriez avoir, ils seront présents, et ce, même avant que la formation n’ait commencé. Ce sont aussi eux qui remueront ciel et terre pour faire en sorte que vous décrochiez une solution de financement.\\n- Les formateurs ; Ils seront présents chaque jour à vos côtés durant vos heures de cours, et n’attendent qu’une chose : vous transmettre leur passion et leurs années d’expérience dans la tech.\\n- Les tuteurs pédagogiques ; Besoin d’une explication supplémentaire sur le cours que vous venez de suivre ? Vos tuteurs se feront un plaisir de vous réexpliquer tout ça. Ils seront présents pour vous tout au long de la formation, même une fois les cours terminés d’ailleurs, lors des challenges. Et ça, jusqu’à votre passage du Titre Professionnel.\\n- Les conseillers parcours apprenants ; Si jamais vous aviez un problème de santé, familial, personnel, ou que vous êtes dans une situation de handicap, vous pouvez d’adresser aux conseillers parcours apprenants. Ils sont là pour faire en sorte que la formation se passe le mieux possible pour vous.\\n\\n### Concernant le matériel et la connexion, j’ai besoin de quoi ?\\n\\nPour suivre la formation dans de bonnes conditions, il faut un débit minimum de 5 Mbps. Quant à votre ordinateur, il n’est pas nécessaire d’avoir une machine de guerre.\\n\\nSi vous avez une machine assez récente, ça devrait le faire. Dans le détail : un processeur disposant de 4 cœurs physiques (i5 ou i3 récent, ainsi que tous les processeurs AMD Ryzen) sera nécessaire. Concernant la RAM : 8 Go suffisent. Mais si vous avez plus, c’est toujours mieux. Pour le reste, un micro-casque et une configuration double écrans sont de rigueur.\\n\\n### Est-ce que je serai assez compétent pour trouver un emploi après votre formation ?\\n\\nOui ! C’est même un des grands objectifs. Niveau compétence, vous aurez tout le bagage nécessaire pour trouver un job  correspondant au parcours de formation choisi : de développeur web front-end, back-end, fullstack, à administrateur système, DevOps, encore designer UX/UI.\\nNous vous proposons des bagages technologiques et méthodologiques adaptés au marché de l’emploi.\\n","title":"Oclock"}	{"status":"published","content":"# O'clock : Ecole tech\\n\\nLes cours ont lieux de 09h à 17h avec une pause de 1h pour le déjeuner. Une pause café le matin et l'après-midi est également prévue.\\n\\nEn général, à 15h le formateur libère les apprenants pour qu'ils puissent faire le challenge du jour.\\n\\nLes cours ont lieux sur BBB : <https://bbb.oclock.school/gl3>\\n\\nLes replay sont disponibles sur le dashboard : <https://playback.oclock.school/dashboards>\\n\\nLes émargement se font sur Edusign : <https://edusign.app/>\\n\\nA la fin de chaque saison de cours, un questionnaire de satisfaction vous est envoyé.\\n\\n## L'école\\n\\nFondée en 2016, O’clock s’est donné pour mission de rendre l’éducation technologique accessible à tous, partout en France, grâce à son format innovant le « téléprésentiel » qui vous permet d’assister à un cours, spécialement conçu pour être suivi en ligne, en temps réel, où que vous soyez.\\n\\nNous croyons fermement en des valeurs de partage, de bienveillance, et d’attention individuelle, offrant des formations diversifiées telles que le développement web, la sécurité réseau, et la conception d’applications. Ces valeurs portent notre organisation et notre pédagogie.\\n\\nNos programmes sont constamment mis à jour pour répondre aux besoins du marché de l’emploi, préparant les apprenants à diverses certifications professionnelles (concepteur d’application, développeur web, technicien sécurité réseau, DevOps…).\\n\\nCe qui distingue O’clock, c’est notre approche pédagogique unique. Nos formateurs, experts reconnus dans leur domaine, assurent un enseignement interactif et vivant, soutenu par notre plateforme d’enseignement exclusive, BigBlueButton. Cette approche est complétée par l’accompagnement individuel de nos tuteurs et conseillers, garantissant un taux d’achèvement exceptionnel de plus de 97%.\\n\\nNotre communauté dynamique, composée d’anciens apprenants et de partenaires économiques, témoigne de la solidarité et de l’esprit d’équipe cultivés durant les formations.\\n\\nAvec plus de 6000 alumni dans notre réseau, O’clock encourage l’entraide et la collaboration au-delà des salles de classe virtuelles.\\n\\nChez O’clock, nous envisageons l’avenir avec ambition, désireux d’intégrer davantage d’outils d’intelligence artificielle pour personnaliser davantage les apprentissages et étendre notre offre aux divers métiers de la tech.\\n\\nNotre vision est claire : être l’école de demain dès aujourd’hui, où l’apprentissage est synonyme de bonheur, et où chaque apprenant peut réaliser son plein potentiel, quel que soit son lieu de vie.\\n\\n## Questions réponses\\n\\n### Au fait, c'est quoi le téléprésentiel ?\\n\\nC’est comme si vous alliez en cours, mais sans avoir besoin d’y aller. C’est le moyen qu’on a trouvé et développé pour permettre à un maximum de monde d’accéder à la formation, via une salle de classe virtuelle. Les personnes à mobilité réduite ou vivant dans des communes reculées peuvent se former chez O’clock et bénéficier d’un apprentissage vivant grâce à ce format.\\n\\n### Modalités d’accès ?\\n\\nPour être admis, vous devez passer notre Chemin vers O’clock, un parcours d’inscription en deux étapes qui titillera vos connaissances en informatique et en anglais, votre capacité de logique, ainsi que votre motivation.\\n\\nUne fois que vous aurez arpenté ce chemin avec succès, vous pourrez vous positionner sur l’une de nos prochaines promotions à l’aide de votre référent admission, qui vous accompagnera tout au long de votre parcours.\\n\\nSi jamais vous êtes en situation de handicap, n’hésitez pas à en parler pendant ce chemin. On reviendra vers vous pour mettre en place différents aménagements afin de répondre au mieux à vos besoins.\\n\\n### On peut décrocher une certification avec une formation O’clock ?\\n\\nLa plupart de nos formations O’clock sont éligibles à différents Titres Professionnels reconnus par l’État, et inscrits au RNCP. Certains Titres sont équivalents à un bac+2, d’autres à un bac+4, voire plus. Pour plus de renseignement il est possible de consulter directement nos formations : découvrir le catalogue.\\n\\n### Est-ce que France Travail peut financer ma formation ?\\n\\nNotre école est appréciée et reconnue pour sa qualité auprès de nombreux organismes de financement, dont France Travail fait partie. 75% de nos apprenants bénéficient d’un financement pour leur formation. Mais tout ça, on vous en parle nettement mieux dans notre page financements.\\n\\n### Comment ça se passe le suivi et l’accompagnement chez O’clock ?\\n\\nVous serez suivi et accompagné par :\\n\\n- Les référents admissions ; Pour chacune de vos démarches administratives et questions sur les formations que vous pourriez avoir, ils seront présents, et ce, même avant que la formation n’ait commencé. Ce sont aussi eux qui remueront ciel et terre pour faire en sorte que vous décrochiez une solution de financement.\\n- Les formateurs ; Ils seront présents chaque jour à vos côtés durant vos heures de cours, et n’attendent qu’une chose : vous transmettre leur passion et leurs années d’expérience dans la tech.\\n- Les tuteurs pédagogiques ; Besoin d’une explication supplémentaire sur le cours que vous venez de suivre ? Vos tuteurs se feront un plaisir de vous réexpliquer tout ça. Ils seront présents pour vous tout au long de la formation, même une fois les cours terminés d’ailleurs, lors des challenges. Et ça, jusqu’à votre passage du Titre Professionnel.\\n- Les conseillers parcours apprenants ; Si jamais vous aviez un problème de santé, familial, personnel, ou que vous êtes dans une situation de handicap, vous pouvez d’adresser aux conseillers parcours apprenants. Ils sont là pour faire en sorte que la formation se passe le mieux possible pour vous.\\n\\n### Concernant le matériel et la connexion, j’ai besoin de quoi ?\\n\\nPour suivre la formation dans de bonnes conditions, il faut un débit minimum de 5 Mbps. Quant à votre ordinateur, il n’est pas nécessaire d’avoir une machine de guerre.\\n\\nSi vous avez une machine assez récente, ça devrait le faire. Dans le détail : un processeur disposant de 4 cœurs physiques (i5 ou i3 récent, ainsi que tous les processeurs AMD Ryzen) sera nécessaire. Concernant la RAM : 8 Go suffisent. Mais si vous avez plus, c’est toujours mieux. Pour le reste, un micro-casque et une configuration double écrans sont de rigueur.\\n\\n### Est-ce que je serai assez compétent pour trouver un emploi après votre formation ?\\n\\nOui ! C’est même un des grands objectifs. Niveau compétence, vous aurez tout le bagage nécessaire pour trouver un job  correspondant au parcours de formation choisi : de développeur web front-end, back-end, fullstack, à administrateur système, DevOps, encore designer UX/UI.\\nNous vous proposons des bagages technologiques et méthodologiques adaptés au marché de l’emploi.\\n","title":"Oclock"}	\N	\N
22	23	contexts	3bd438bf-5691-4e0e-9742-ccb9dff5a8d4	{"content":"# Formation en continue\\n\\n","title":"Formation en continue","parent_id":"f6800dad-1054-431d-8100-488cb231c081"}	{"content":"# Formation en continue\\n\\n","title":"Formation en continue","parent_id":"f6800dad-1054-431d-8100-488cb231c081"}	\N	\N
23	24	contexts	34303cd8-5c09-4c94-ad98-288d13d320bc	{"content":"# Formation en Alternance\\n\\nLe CFA est Formasup.\\n","title":"Formation en Alternance","parent_id":"f6800dad-1054-431d-8100-488cb231c081"}	{"content":"# Formation en Alternance\\n\\nLe CFA est Formasup.\\n","title":"Formation en Alternance","parent_id":"f6800dad-1054-431d-8100-488cb231c081"}	\N	\N
24	25	contexts	28a6a701-0428-4980-b549-1e3d69650852	{"title":"DevOps","content":"# DevOps\\n\\nLa formation, de niveau 6, Administrateur Système DevOps vise à développer les compétences nécessaires pour automatiser, déployer et superviser des infrastructures et des applications dans des environnements cloud.\\n\\n## Objectifs\\n\\n- Automatiser le déploiement d’une infrastructure dans le cloud\\n  - Automatiser la création de serveurs à l’aide de scripts\\n  - Automatiser le déploiement d’une infrastructure\\n  - Sécuriser l’infrastructure\\n  - Mettre l’infrastructure en production dans le cloud\\n- Déployer en continu une application\\n  - Préparer un environnement de test\\n  - Gérer le stockage des données\\n  - Gérer des containers\\n  - Automatiser la mise en production d’une application avec une plateforme\\n- Superviser les services déployés\\n  - Définir et mettre en place des statistiques de services\\n  - Exploiter une solution de supervision\\n  - Echanger sur des réseaux professionnels éventuellement en anglais\\n\\n## Déroulement\\n\\n01 : 🟢 Intégration 35h\\n\\nCette saison permet aux apprenants de démarrer leur formation en douceur, en prenant en main les outils puis en abordant les premières notions.\\n\\nOutils O’clock\\nProgramme de formation\\nTitre pro\\nMarkdown\\nGit\\nGitHub\\nDevContainers\\n\\n- Prendre en main la formation et les outils O’Clock\\n- Découvrir le métier et les premiers outils DevOps\\n- Comprendre la pédagogie O’Clock et l’importance de l’entraide\\n\\n02 : 🟢 Algorithmique 35h\\n\\nUniformisation des connaissances en algorithmique pour tous les apprenants, basée sur le langage Python.\\n\\nPython\\n\\n- Appliquer les bases de l’algorithmique\\n- Appliquer le langage Python\\n\\n03 : 🟢 Développement Frontend et Versioning 35h\\n\\nCette saison couvre le développement frontend moderne dans une perspective DevOps. Elle aborde les fondamentaux du web, l’utilisation de Svelte, la maîtrise de Git, et les pratiques de déploiement. L’objectif est de préparer les apprenants à gérer efficacement le cycle complet d’une application frontend, de la conception au déploiement.\\n\\nHTML/CSS/JS\\nSvelte\\nNode.js\\nnpm\\nVite\\nGit\\nGitHub Pages\\nOptimisation perf.\\nCI/CD\\n\\n- Comprendre les concepts du développement frontend et l’architecture web moderne\\n- Maîtriser les outils de développement frontend actuels\\n- Appliquer le versioning avec Git, des bases aux techniques avancées\\n- Analyser les différences entre développement et production\\n- Évaluer les stratégies d’optimisation et de déploiement frontend\\n- Créer et déployer des applications frontend performantes\\n\\n04 : 🟢 Dev back 70h\\n\\nExploration du développement back-end, en réalisant des projets variés dans plusieurs langages. Un accent sera mis sur l’utilisation de GitHub pour la gestion de projet et la collaboration en équipe. Il faudra insister sur la création de branches, les pull requests, et la gestion des conflits. La première semaine sera consacrée à la création d’API avec Flask, la manipulation de bases de données SQL, et l’utilisation de psql pour DevOps. La deuxième semaine sera dédiée à l’exploration du langage Go, avec discordgo pour la création de bots Discord. Dans le challenge, fil rouge, les apprenants devront créer un bot Discord capable d’interagir avec une API externe pour gérer des projets et des tâches.\\n\\nGitHub\\nFlask\\nSQL\\npsql\\nORM\\nGo\\n\\n- Comprendre les principes de gestion de projet avec GitHub\\n- Appliquer les fondamentaux du développement back-end et la création d’API avec Flask\\n- Découvrir l’utilisation de SQL et psql pour DevOps\\n- Développer des compétences avancées en gestion de bases de données et ORM\\n- Explorer le langage Go et ses applications pratiques\\n\\n05 : 🟢 Container 35h\\n\\nUtilisation de Docker comme brique fondamentale d’un DevOps.\\n\\n- Dockerfile\\n- Docker compose\\n- Devcontainer\\n- Comprendre les concepts de conteneurisation\\n- Appliquer Docker dans un environnement de développement\\n- Analyser les conteneurs\\n\\n06 : 🟢 Système 70h\\n\\nManipulation avancée de Linux et installation de différents services tels qu’un serveur HTTP ou des bases de données pour mettre en place une application web.\\n\\nShell\\nScript\\nLinux\\n\\n- Se rappeler des différents OS\\n- Comprendre les règles de sécurisation Linux\\n- Appliquer l’administration de systèmes Linux\\n- Appliquer les procédures d’installation de services\\n- Analyser l’activité d’un serveur\\n\\n07 : 🔴 Réseau 70h\\n\\nGestions des réseaux et de ses principes fondamentaux pour préparer à la mise en place d’une infrastructure de serveurs.\\n\\nRoutage\\nProtocoles\\nDNS\\n\\n- Comprendre les réseaux\\n- Appliquer les configurations fondamentalesœ\\n\\n08 : 🔴 Infrastructure de serveurs 35h\\n\\nDéploiement automatisé de serveurs et mise en communication.\\n\\nAnsible\\nDocker\\n\\n- Comprendre les outils de déploiement\\n- Appliquer des recepts de déploiement\\n\\n09 : 🔴 Chaines de livraison 70h\\n\\nUtilisation avancée des chaines de livraison pour automatiser le déploiement d’applications.\\n\\n- Github actions\\n- Docker\\n\\n- Comprendre les chaines de livraison\\n- Appliquer Github Actions\\n- Appliquer ses propres actions\\n- Analyser les workflows\\n\\n10 : 🔴 Flux entrants 35h\\n\\nSécuriser les flux entrants d’un serveur et gérer la répartition de charge.\\n\\nFirewall\\nVPN\\nIPtables\\n\\n- Comprendre la répartition de charge\\n- Appliquer des règles de sécurité\\n- Analyser les flux entrants\\n\\n11 : 🔴 Cloud providers 70h\\n\\nGestion des fournisseurs de cloud et de leurs services pour préparer à la mise en place d’une infrastructure de serveurs.\\n\\nAWS\\nScaleway\\nOpenstack\\n\\n- Comprendre les cloud providers\\n- Appliquer sont propre cloud provider\\n- Analyser les services proposés par les leaders du marché\\n\\n12 : 🔴 Infrastructure as Code 35h\\n\\nAutomatiser le déploiement d’infrastructures avec Terraform.\\n\\nTerraform\\n\\n- Comprendre les principes de l’infrastructure as code\\n- Appliquer Terraform\\n\\n13 : 🔴 Container avancé 35h\\n\\nUtilisation avancée des conteneurs pour déployer des applications.\\n\\nDocker\\nPodman\\n\\n- Appliquer des concepts avancés de conteneurs\\n- Analyser des architectures complexes\\n\\n14 : 🔴 Orchestration 70h\\n\\nOrchestrer et superviser des applications distribuées.\\n\\nDocker swarm\\nPrometheus\\nKubernetes\\nHelm\\n\\n- Comprendre l’orchestration\\n- Appliquer des outils d’orchestration\\n- Analyser des architectures distribuées\\n\\n15 : Projet 98h\\n\\nProjet de fin de formation en autonomie.\\n\\n## Le métier de DevOps\\n\\nLe DevOps, combinaison des termes Développement et Opérations, est un ensemble de pratiques visant à améliorer la collaboration entre les équipes de développement et d'opérations pour livrer des projets web de manière efficace. Son rôle principal est de réduire les délais de développement et de déploiement, d'augmenter la fréquence des mises à jour, d'assurer la stabilité des systèmes, et d'automatiser les tâches répétitives. Né dans les années 2000, le DevOps s'inspire des pratiques agiles et est devenu essentiel dans un environnement concurrentiel pour permettre aux entreprises de rester agiles et réactives. Les métiers DevOps incluent des rôles comme Ingénieur DevOps et Architecte DevOps, et s'appuient sur des technologies comme Git, Jenkins, Docker, Kubernetes et Ansible. Les principes fondamentaux du DevOps incluent la collaboration, l'automatisation, la supervision et la sécurisation des processus.\\n","parent_id":"3bd438bf-5691-4e0e-9742-ccb9dff5a8d4"}	{"title":"DevOps","content":"# DevOps\\n\\nLa formation, de niveau 6, Administrateur Système DevOps vise à développer les compétences nécessaires pour automatiser, déployer et superviser des infrastructures et des applications dans des environnements cloud.\\n\\n## Objectifs\\n\\n- Automatiser le déploiement d’une infrastructure dans le cloud\\n  - Automatiser la création de serveurs à l’aide de scripts\\n  - Automatiser le déploiement d’une infrastructure\\n  - Sécuriser l’infrastructure\\n  - Mettre l’infrastructure en production dans le cloud\\n- Déployer en continu une application\\n  - Préparer un environnement de test\\n  - Gérer le stockage des données\\n  - Gérer des containers\\n  - Automatiser la mise en production d’une application avec une plateforme\\n- Superviser les services déployés\\n  - Définir et mettre en place des statistiques de services\\n  - Exploiter une solution de supervision\\n  - Echanger sur des réseaux professionnels éventuellement en anglais\\n\\n## Déroulement\\n\\n01 : 🟢 Intégration 35h\\n\\nCette saison permet aux apprenants de démarrer leur formation en douceur, en prenant en main les outils puis en abordant les premières notions.\\n\\nOutils O’clock\\nProgramme de formation\\nTitre pro\\nMarkdown\\nGit\\nGitHub\\nDevContainers\\n\\n- Prendre en main la formation et les outils O’Clock\\n- Découvrir le métier et les premiers outils DevOps\\n- Comprendre la pédagogie O’Clock et l’importance de l’entraide\\n\\n02 : 🟢 Algorithmique 35h\\n\\nUniformisation des connaissances en algorithmique pour tous les apprenants, basée sur le langage Python.\\n\\nPython\\n\\n- Appliquer les bases de l’algorithmique\\n- Appliquer le langage Python\\n\\n03 : 🟢 Développement Frontend et Versioning 35h\\n\\nCette saison couvre le développement frontend moderne dans une perspective DevOps. Elle aborde les fondamentaux du web, l’utilisation de Svelte, la maîtrise de Git, et les pratiques de déploiement. L’objectif est de préparer les apprenants à gérer efficacement le cycle complet d’une application frontend, de la conception au déploiement.\\n\\nHTML/CSS/JS\\nSvelte\\nNode.js\\nnpm\\nVite\\nGit\\nGitHub Pages\\nOptimisation perf.\\nCI/CD\\n\\n- Comprendre les concepts du développement frontend et l’architecture web moderne\\n- Maîtriser les outils de développement frontend actuels\\n- Appliquer le versioning avec Git, des bases aux techniques avancées\\n- Analyser les différences entre développement et production\\n- Évaluer les stratégies d’optimisation et de déploiement frontend\\n- Créer et déployer des applications frontend performantes\\n\\n04 : 🟢 Dev back 70h\\n\\nExploration du développement back-end, en réalisant des projets variés dans plusieurs langages. Un accent sera mis sur l’utilisation de GitHub pour la gestion de projet et la collaboration en équipe. Il faudra insister sur la création de branches, les pull requests, et la gestion des conflits. La première semaine sera consacrée à la création d’API avec Flask, la manipulation de bases de données SQL, et l’utilisation de psql pour DevOps. La deuxième semaine sera dédiée à l’exploration du langage Go, avec discordgo pour la création de bots Discord. Dans le challenge, fil rouge, les apprenants devront créer un bot Discord capable d’interagir avec une API externe pour gérer des projets et des tâches.\\n\\nGitHub\\nFlask\\nSQL\\npsql\\nORM\\nGo\\n\\n- Comprendre les principes de gestion de projet avec GitHub\\n- Appliquer les fondamentaux du développement back-end et la création d’API avec Flask\\n- Découvrir l’utilisation de SQL et psql pour DevOps\\n- Développer des compétences avancées en gestion de bases de données et ORM\\n- Explorer le langage Go et ses applications pratiques\\n\\n05 : 🟢 Container 35h\\n\\nUtilisation de Docker comme brique fondamentale d’un DevOps.\\n\\n- Dockerfile\\n- Docker compose\\n- Devcontainer\\n- Comprendre les concepts de conteneurisation\\n- Appliquer Docker dans un environnement de développement\\n- Analyser les conteneurs\\n\\n06 : 🟢 Système 70h\\n\\nManipulation avancée de Linux et installation de différents services tels qu’un serveur HTTP ou des bases de données pour mettre en place une application web.\\n\\nShell\\nScript\\nLinux\\n\\n- Se rappeler des différents OS\\n- Comprendre les règles de sécurisation Linux\\n- Appliquer l’administration de systèmes Linux\\n- Appliquer les procédures d’installation de services\\n- Analyser l’activité d’un serveur\\n\\n07 : 🔴 Réseau 70h\\n\\nGestions des réseaux et de ses principes fondamentaux pour préparer à la mise en place d’une infrastructure de serveurs.\\n\\nRoutage\\nProtocoles\\nDNS\\n\\n- Comprendre les réseaux\\n- Appliquer les configurations fondamentalesœ\\n\\n08 : 🔴 Infrastructure de serveurs 35h\\n\\nDéploiement automatisé de serveurs et mise en communication.\\n\\nAnsible\\nDocker\\n\\n- Comprendre les outils de déploiement\\n- Appliquer des recepts de déploiement\\n\\n09 : 🔴 Chaines de livraison 70h\\n\\nUtilisation avancée des chaines de livraison pour automatiser le déploiement d’applications.\\n\\n- Github actions\\n- Docker\\n\\n- Comprendre les chaines de livraison\\n- Appliquer Github Actions\\n- Appliquer ses propres actions\\n- Analyser les workflows\\n\\n10 : 🔴 Flux entrants 35h\\n\\nSécuriser les flux entrants d’un serveur et gérer la répartition de charge.\\n\\nFirewall\\nVPN\\nIPtables\\n\\n- Comprendre la répartition de charge\\n- Appliquer des règles de sécurité\\n- Analyser les flux entrants\\n\\n11 : 🔴 Cloud providers 70h\\n\\nGestion des fournisseurs de cloud et de leurs services pour préparer à la mise en place d’une infrastructure de serveurs.\\n\\nAWS\\nScaleway\\nOpenstack\\n\\n- Comprendre les cloud providers\\n- Appliquer sont propre cloud provider\\n- Analyser les services proposés par les leaders du marché\\n\\n12 : 🔴 Infrastructure as Code 35h\\n\\nAutomatiser le déploiement d’infrastructures avec Terraform.\\n\\nTerraform\\n\\n- Comprendre les principes de l’infrastructure as code\\n- Appliquer Terraform\\n\\n13 : 🔴 Container avancé 35h\\n\\nUtilisation avancée des conteneurs pour déployer des applications.\\n\\nDocker\\nPodman\\n\\n- Appliquer des concepts avancés de conteneurs\\n- Analyser des architectures complexes\\n\\n14 : 🔴 Orchestration 70h\\n\\nOrchestrer et superviser des applications distribuées.\\n\\nDocker swarm\\nPrometheus\\nKubernetes\\nHelm\\n\\n- Comprendre l’orchestration\\n- Appliquer des outils d’orchestration\\n- Analyser des architectures distribuées\\n\\n15 : Projet 98h\\n\\nProjet de fin de formation en autonomie.\\n\\n## Le métier de DevOps\\n\\nLe DevOps, combinaison des termes Développement et Opérations, est un ensemble de pratiques visant à améliorer la collaboration entre les équipes de développement et d'opérations pour livrer des projets web de manière efficace. Son rôle principal est de réduire les délais de développement et de déploiement, d'augmenter la fréquence des mises à jour, d'assurer la stabilité des systèmes, et d'automatiser les tâches répétitives. Né dans les années 2000, le DevOps s'inspire des pratiques agiles et est devenu essentiel dans un environnement concurrentiel pour permettre aux entreprises de rester agiles et réactives. Les métiers DevOps incluent des rôles comme Ingénieur DevOps et Architecte DevOps, et s'appuient sur des technologies comme Git, Jenkins, Docker, Kubernetes et Ansible. Les principes fondamentaux du DevOps incluent la collaboration, l'automatisation, la supervision et la sécurisation des processus.\\n","parent_id":"3bd438bf-5691-4e0e-9742-ccb9dff5a8d4"}	\N	\N
25	26	contexts	5546c767-0e15-4e22-bbbb-e0cf78eab9d7	{"status":"published","title":"Normes","content":"# Promo : Nornes\\n\\n## Ressources\\n\\n- Lien du Drive : <https://drive.google.com/drive/folders/1ssVgL9inx-yKFo-2iCK2JPj5X61h8xLG>\\n- Planning de la formation : <https://docs.google.com/spreadsheets/d/1tJ-B_OmqLfU7JqqBh3feVPNymSLrq29OzwnhwuKkJtY/edit?gid=0#gid=0>\\n- Référent : Anthony Cosson\\n- Github : <https://github.com/O-clock-Nornes>\\n\\n## Définition du nom de la promo\\n\\nLes Nornes (terme du vieux norrois, pluriel nornir) de la mythologie nordique sont comparables aux Dises qui règlent le destin de l'ensemble des habitants des neuf mondes de la cosmogonie nordique1.\\n\\nBien que les Nornes soient assez nombreuses, d'après l'interprétation de Snorri Sturluson de la Völuspá, les trois plus importantes sont appelées Urd, Verdandi et Skuld et résident près du puits d'Urd, le puits du Destin. Elles en tirent l'eau et en arrosent l'arbre Yggdrasil afin que ses branches ne pourrissent jamais2. Les Nornes sont décrites comme trois puissantes jötunns dont l'arrivée a mis fin à l'âge d'or des dieux2.\\n\\nEn plus de ces trois Nornes, il existe de nombreuses autres Nornes, qui arrivent lorsqu'une personne naît afin de fixer son avenir2. Ces Nornes peuvent être bienveillantes ou malveillantes ; elles étaient considérées responsables respectivement des événements heureux ou malheureux de la vie2.\\n","parent_id":"28a6a701-0428-4980-b549-1e3d69650852"}	{"status":"published","title":"Normes","content":"# Promo : Nornes\\n\\n## Ressources\\n\\n- Lien du Drive : <https://drive.google.com/drive/folders/1ssVgL9inx-yKFo-2iCK2JPj5X61h8xLG>\\n- Planning de la formation : <https://docs.google.com/spreadsheets/d/1tJ-B_OmqLfU7JqqBh3feVPNymSLrq29OzwnhwuKkJtY/edit?gid=0#gid=0>\\n- Référent : Anthony Cosson\\n- Github : <https://github.com/O-clock-Nornes>\\n\\n## Définition du nom de la promo\\n\\nLes Nornes (terme du vieux norrois, pluriel nornir) de la mythologie nordique sont comparables aux Dises qui règlent le destin de l'ensemble des habitants des neuf mondes de la cosmogonie nordique1.\\n\\nBien que les Nornes soient assez nombreuses, d'après l'interprétation de Snorri Sturluson de la Völuspá, les trois plus importantes sont appelées Urd, Verdandi et Skuld et résident près du puits d'Urd, le puits du Destin. Elles en tirent l'eau et en arrosent l'arbre Yggdrasil afin que ses branches ne pourrissent jamais2. Les Nornes sont décrites comme trois puissantes jötunns dont l'arrivée a mis fin à l'âge d'or des dieux2.\\n\\nEn plus de ces trois Nornes, il existe de nombreuses autres Nornes, qui arrivent lorsqu'une personne naît afin de fixer son avenir2. Ces Nornes peuvent être bienveillantes ou malveillantes ; elles étaient considérées responsables respectivement des événements heureux ou malheureux de la vie2.\\n","parent_id":"28a6a701-0428-4980-b549-1e3d69650852"}	\N	\N
26	27	contexts	28a6a701-0428-4980-b549-1e3d69650852	{"id":"28a6a701-0428-4980-b549-1e3d69650852","status":"published","sort":null,"user_created":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_created":"2024-11-13T11:11:15.113Z","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:11:41.634Z","content":"# DevOps\\n\\nLa formation, de niveau 6, Administrateur Système DevOps vise à développer les compétences nécessaires pour automatiser, déployer et superviser des infrastructures et des applications dans des environnements cloud.\\n\\n## Objectifs\\n\\n- Automatiser le déploiement d’une infrastructure dans le cloud\\n  - Automatiser la création de serveurs à l’aide de scripts\\n  - Automatiser le déploiement d’une infrastructure\\n  - Sécuriser l’infrastructure\\n  - Mettre l’infrastructure en production dans le cloud\\n- Déployer en continu une application\\n  - Préparer un environnement de test\\n  - Gérer le stockage des données\\n  - Gérer des containers\\n  - Automatiser la mise en production d’une application avec une plateforme\\n- Superviser les services déployés\\n  - Définir et mettre en place des statistiques de services\\n  - Exploiter une solution de supervision\\n  - Echanger sur des réseaux professionnels éventuellement en anglais\\n\\n## Déroulement\\n\\n01 : 🟢 Intégration 35h\\n\\nCette saison permet aux apprenants de démarrer leur formation en douceur, en prenant en main les outils puis en abordant les premières notions.\\n\\nOutils O’clock\\nProgramme de formation\\nTitre pro\\nMarkdown\\nGit\\nGitHub\\nDevContainers\\n\\n- Prendre en main la formation et les outils O’Clock\\n- Découvrir le métier et les premiers outils DevOps\\n- Comprendre la pédagogie O’Clock et l’importance de l’entraide\\n\\n02 : 🟢 Algorithmique 35h\\n\\nUniformisation des connaissances en algorithmique pour tous les apprenants, basée sur le langage Python.\\n\\nPython\\n\\n- Appliquer les bases de l’algorithmique\\n- Appliquer le langage Python\\n\\n03 : 🟢 Développement Frontend et Versioning 35h\\n\\nCette saison couvre le développement frontend moderne dans une perspective DevOps. Elle aborde les fondamentaux du web, l’utilisation de Svelte, la maîtrise de Git, et les pratiques de déploiement. L’objectif est de préparer les apprenants à gérer efficacement le cycle complet d’une application frontend, de la conception au déploiement.\\n\\nHTML/CSS/JS\\nSvelte\\nNode.js\\nnpm\\nVite\\nGit\\nGitHub Pages\\nOptimisation perf.\\nCI/CD\\n\\n- Comprendre les concepts du développement frontend et l’architecture web moderne\\n- Maîtriser les outils de développement frontend actuels\\n- Appliquer le versioning avec Git, des bases aux techniques avancées\\n- Analyser les différences entre développement et production\\n- Évaluer les stratégies d’optimisation et de déploiement frontend\\n- Créer et déployer des applications frontend performantes\\n\\n04 : 🟢 Dev back 70h\\n\\nExploration du développement back-end, en réalisant des projets variés dans plusieurs langages. Un accent sera mis sur l’utilisation de GitHub pour la gestion de projet et la collaboration en équipe. Il faudra insister sur la création de branches, les pull requests, et la gestion des conflits. La première semaine sera consacrée à la création d’API avec Flask, la manipulation de bases de données SQL, et l’utilisation de psql pour DevOps. La deuxième semaine sera dédiée à l’exploration du langage Go, avec discordgo pour la création de bots Discord. Dans le challenge, fil rouge, les apprenants devront créer un bot Discord capable d’interagir avec une API externe pour gérer des projets et des tâches.\\n\\nGitHub\\nFlask\\nSQL\\npsql\\nORM\\nGo\\n\\n- Comprendre les principes de gestion de projet avec GitHub\\n- Appliquer les fondamentaux du développement back-end et la création d’API avec Flask\\n- Découvrir l’utilisation de SQL et psql pour DevOps\\n- Développer des compétences avancées en gestion de bases de données et ORM\\n- Explorer le langage Go et ses applications pratiques\\n\\n05 : 🟢 Container 35h\\n\\nUtilisation de Docker comme brique fondamentale d’un DevOps.\\n\\n- Dockerfile\\n- Docker compose\\n- Devcontainer\\n- Comprendre les concepts de conteneurisation\\n- Appliquer Docker dans un environnement de développement\\n- Analyser les conteneurs\\n\\n06 : 🟢 Système 70h\\n\\nManipulation avancée de Linux et installation de différents services tels qu’un serveur HTTP ou des bases de données pour mettre en place une application web.\\n\\nShell\\nScript\\nLinux\\n\\n- Se rappeler des différents OS\\n- Comprendre les règles de sécurisation Linux\\n- Appliquer l’administration de systèmes Linux\\n- Appliquer les procédures d’installation de services\\n- Analyser l’activité d’un serveur\\n\\n07 : 🔴 Réseau 70h\\n\\nGestions des réseaux et de ses principes fondamentaux pour préparer à la mise en place d’une infrastructure de serveurs.\\n\\nRoutage\\nProtocoles\\nDNS\\n\\n- Comprendre les réseaux\\n- Appliquer les configurations fondamentalesœ\\n\\n08 : 🔴 Infrastructure de serveurs 35h\\n\\nDéploiement automatisé de serveurs et mise en communication.\\n\\nAnsible\\nDocker\\n\\n- Comprendre les outils de déploiement\\n- Appliquer des recepts de déploiement\\n\\n09 : 🔴 Chaines de livraison 70h\\n\\nUtilisation avancée des chaines de livraison pour automatiser le déploiement d’applications.\\n\\n- Github actions\\n- Docker\\n\\n- Comprendre les chaines de livraison\\n- Appliquer Github Actions\\n- Appliquer ses propres actions\\n- Analyser les workflows\\n\\n10 : 🔴 Flux entrants 35h\\n\\nSécuriser les flux entrants d’un serveur et gérer la répartition de charge.\\n\\nFirewall\\nVPN\\nIPtables\\n\\n- Comprendre la répartition de charge\\n- Appliquer des règles de sécurité\\n- Analyser les flux entrants\\n\\n11 : 🔴 Cloud providers 70h\\n\\nGestion des fournisseurs de cloud et de leurs services pour préparer à la mise en place d’une infrastructure de serveurs.\\n\\nAWS\\nScaleway\\nOpenstack\\n\\n- Comprendre les cloud providers\\n- Appliquer sont propre cloud provider\\n- Analyser les services proposés par les leaders du marché\\n\\n12 : 🔴 Infrastructure as Code 35h\\n\\nAutomatiser le déploiement d’infrastructures avec Terraform.\\n\\nTerraform\\n\\n- Comprendre les principes de l’infrastructure as code\\n- Appliquer Terraform\\n\\n13 : 🔴 Container avancé 35h\\n\\nUtilisation avancée des conteneurs pour déployer des applications.\\n\\nDocker\\nPodman\\n\\n- Appliquer des concepts avancés de conteneurs\\n- Analyser des architectures complexes\\n\\n14 : 🔴 Orchestration 70h\\n\\nOrchestrer et superviser des applications distribuées.\\n\\nDocker swarm\\nPrometheus\\nKubernetes\\nHelm\\n\\n- Comprendre l’orchestration\\n- Appliquer des outils d’orchestration\\n- Analyser des architectures distribuées\\n\\n15 : Projet 98h\\n\\nProjet de fin de formation en autonomie.\\n\\n## Le métier de DevOps\\n\\nLe DevOps, combinaison des termes Développement et Opérations, est un ensemble de pratiques visant à améliorer la collaboration entre les équipes de développement et d'opérations pour livrer des projets web de manière efficace. Son rôle principal est de réduire les délais de développement et de déploiement, d'augmenter la fréquence des mises à jour, d'assurer la stabilité des systèmes, et d'automatiser les tâches répétitives. Né dans les années 2000, le DevOps s'inspire des pratiques agiles et est devenu essentiel dans un environnement concurrentiel pour permettre aux entreprises de rester agiles et réactives. Les métiers DevOps incluent des rôles comme Ingénieur DevOps et Architecte DevOps, et s'appuient sur des technologies comme Git, Jenkins, Docker, Kubernetes et Ansible. Les principes fondamentaux du DevOps incluent la collaboration, l'automatisation, la supervision et la sécurisation des processus.\\n","title":"DevOps","parent_id":"3bd438bf-5691-4e0e-9742-ccb9dff5a8d4"}	{"status":"published","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:11:41.634Z"}	\N	\N
27	28	directus_fields	10	{"id":10,"collection":"contexts","field":"parent_id","special":["m2o"],"interface":"select-dropdown-m2o","options":{"template":"{{title}}"},"display":"related-values","display_options":{"template":"{{title}}"},"readonly":false,"hidden":false,"sort":10,"width":"full","translations":[{"language":"fr-FR","translation":"Context parent"}],"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"parent_id","display":"related-values","display_options":{"template":"{{title}}"},"translations":[{"language":"fr-FR","translation":"Context parent"}]}	\N	\N
29	30	directus_fields	12	{"sort":1,"hidden":true,"field":"id","collection":"contexts_contexts"}	{"sort":1,"hidden":true,"field":"id","collection":"contexts_contexts"}	\N	\N
30	31	directus_collections	contexts_contexts	{"hidden":true,"icon":"import_export","collection":"contexts_contexts"}	{"hidden":true,"icon":"import_export","collection":"contexts_contexts"}	\N	\N
31	32	directus_fields	13	{"sort":2,"hidden":true,"collection":"contexts_contexts","field":"contexts_id"}	{"sort":2,"hidden":true,"collection":"contexts_contexts","field":"contexts_id"}	\N	\N
35	36	contexts	5546c767-0e15-4e22-bbbb-e0cf78eab9d7	{"id":"5546c767-0e15-4e22-bbbb-e0cf78eab9d7","status":"published","sort":null,"user_created":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_created":"2024-11-13T11:11:37.055Z","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:14:14.142Z","content":"# Promo : Nornes\\n\\n## Ressources\\n\\n- Lien du Drive : <https://drive.google.com/drive/folders/1ssVgL9inx-yKFo-2iCK2JPj5X61h8xLG>\\n- Planning de la formation : <https://docs.google.com/spreadsheets/d/1tJ-B_OmqLfU7JqqBh3feVPNymSLrq29OzwnhwuKkJtY/edit?gid=0#gid=0>\\n- Référent : Anthony Cosson\\n- Github : <https://github.com/O-clock-Nornes>\\n\\n## Définition du nom de la promo\\n\\nLes Nornes (terme du vieux norrois, pluriel nornir) de la mythologie nordique sont comparables aux Dises qui règlent le destin de l'ensemble des habitants des neuf mondes de la cosmogonie nordique1.\\n\\nBien que les Nornes soient assez nombreuses, d'après l'interprétation de Snorri Sturluson de la Völuspá, les trois plus importantes sont appelées Urd, Verdandi et Skuld et résident près du puits d'Urd, le puits du Destin. Elles en tirent l'eau et en arrosent l'arbre Yggdrasil afin que ses branches ne pourrissent jamais2. Les Nornes sont décrites comme trois puissantes jötunns dont l'arrivée a mis fin à l'âge d'or des dieux2.\\n\\nEn plus de ces trois Nornes, il existe de nombreuses autres Nornes, qui arrivent lorsqu'une personne naît afin de fixer son avenir2. Ces Nornes peuvent être bienveillantes ou malveillantes ; elles étaient considérées responsables respectivement des événements heureux ou malheureux de la vie2.\\n","title":"Normes","parents":[1,2]}	{"user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:14:14.142Z"}	\N	\N
33	34	contexts_contexts	1	{"contexts_id":"5546c767-0e15-4e22-bbbb-e0cf78eab9d7","related_contexts_id":{"id":"28a6a701-0428-4980-b549-1e3d69650852"}}	{"contexts_id":"5546c767-0e15-4e22-bbbb-e0cf78eab9d7","related_contexts_id":{"id":"28a6a701-0428-4980-b549-1e3d69650852"}}	35	\N
34	35	contexts_contexts	2	{"contexts_id":"5546c767-0e15-4e22-bbbb-e0cf78eab9d7","related_contexts_id":{"id":"3bd438bf-5691-4e0e-9742-ccb9dff5a8d4"}}	{"contexts_id":"5546c767-0e15-4e22-bbbb-e0cf78eab9d7","related_contexts_id":{"id":"3bd438bf-5691-4e0e-9742-ccb9dff5a8d4"}}	35	\N
61	62	directus_fields	9	{"id":9,"collection":"contexts","field":"title","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":8,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"title","width":"half"}	\N	\N
63	64	directus_fields	1	{"id":1,"collection":"contexts","field":"id","special":["uuid"],"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"id","sort":1,"group":null}	\N	\N
36	37	directus_fields	11	{"id":11,"collection":"contexts","field":"parents","special":["m2m"],"interface":"list-m2m","options":{"template":"{{related_contexts_id.title}}"},"display":"related-values","display_options":{"template":"{{related_contexts_id.title}}"},"readonly":false,"hidden":false,"sort":10,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"parents","options":{"template":"{{related_contexts_id.title}}"},"display":"related-values","display_options":{"template":"{{related_contexts_id.title}}"}}	\N	\N
38	39	contexts	28a6a701-0428-4980-b549-1e3d69650852	{"id":"28a6a701-0428-4980-b549-1e3d69650852","status":"published","sort":null,"user_created":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_created":"2024-11-13T11:11:15.113Z","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:15:41.697Z","content":"# DevOps\\n\\nLa formation, de niveau 6, Administrateur Système DevOps vise à développer les compétences nécessaires pour automatiser, déployer et superviser des infrastructures et des applications dans des environnements cloud.\\n\\n## Objectifs\\n\\n- Automatiser le déploiement d’une infrastructure dans le cloud\\n  - Automatiser la création de serveurs à l’aide de scripts\\n  - Automatiser le déploiement d’une infrastructure\\n  - Sécuriser l’infrastructure\\n  - Mettre l’infrastructure en production dans le cloud\\n- Déployer en continu une application\\n  - Préparer un environnement de test\\n  - Gérer le stockage des données\\n  - Gérer des containers\\n  - Automatiser la mise en production d’une application avec une plateforme\\n- Superviser les services déployés\\n  - Définir et mettre en place des statistiques de services\\n  - Exploiter une solution de supervision\\n  - Echanger sur des réseaux professionnels éventuellement en anglais\\n\\n## Déroulement\\n\\n01 : 🟢 Intégration 35h\\n\\nCette saison permet aux apprenants de démarrer leur formation en douceur, en prenant en main les outils puis en abordant les premières notions.\\n\\nOutils O’clock\\nProgramme de formation\\nTitre pro\\nMarkdown\\nGit\\nGitHub\\nDevContainers\\n\\n- Prendre en main la formation et les outils O’Clock\\n- Découvrir le métier et les premiers outils DevOps\\n- Comprendre la pédagogie O’Clock et l’importance de l’entraide\\n\\n02 : 🟢 Algorithmique 35h\\n\\nUniformisation des connaissances en algorithmique pour tous les apprenants, basée sur le langage Python.\\n\\nPython\\n\\n- Appliquer les bases de l’algorithmique\\n- Appliquer le langage Python\\n\\n03 : 🟢 Développement Frontend et Versioning 35h\\n\\nCette saison couvre le développement frontend moderne dans une perspective DevOps. Elle aborde les fondamentaux du web, l’utilisation de Svelte, la maîtrise de Git, et les pratiques de déploiement. L’objectif est de préparer les apprenants à gérer efficacement le cycle complet d’une application frontend, de la conception au déploiement.\\n\\nHTML/CSS/JS\\nSvelte\\nNode.js\\nnpm\\nVite\\nGit\\nGitHub Pages\\nOptimisation perf.\\nCI/CD\\n\\n- Comprendre les concepts du développement frontend et l’architecture web moderne\\n- Maîtriser les outils de développement frontend actuels\\n- Appliquer le versioning avec Git, des bases aux techniques avancées\\n- Analyser les différences entre développement et production\\n- Évaluer les stratégies d’optimisation et de déploiement frontend\\n- Créer et déployer des applications frontend performantes\\n\\n04 : 🟢 Dev back 70h\\n\\nExploration du développement back-end, en réalisant des projets variés dans plusieurs langages. Un accent sera mis sur l’utilisation de GitHub pour la gestion de projet et la collaboration en équipe. Il faudra insister sur la création de branches, les pull requests, et la gestion des conflits. La première semaine sera consacrée à la création d’API avec Flask, la manipulation de bases de données SQL, et l’utilisation de psql pour DevOps. La deuxième semaine sera dédiée à l’exploration du langage Go, avec discordgo pour la création de bots Discord. Dans le challenge, fil rouge, les apprenants devront créer un bot Discord capable d’interagir avec une API externe pour gérer des projets et des tâches.\\n\\nGitHub\\nFlask\\nSQL\\npsql\\nORM\\nGo\\n\\n- Comprendre les principes de gestion de projet avec GitHub\\n- Appliquer les fondamentaux du développement back-end et la création d’API avec Flask\\n- Découvrir l’utilisation de SQL et psql pour DevOps\\n- Développer des compétences avancées en gestion de bases de données et ORM\\n- Explorer le langage Go et ses applications pratiques\\n\\n05 : 🟢 Container 35h\\n\\nUtilisation de Docker comme brique fondamentale d’un DevOps.\\n\\n- Dockerfile\\n- Docker compose\\n- Devcontainer\\n- Comprendre les concepts de conteneurisation\\n- Appliquer Docker dans un environnement de développement\\n- Analyser les conteneurs\\n\\n06 : 🟢 Système 70h\\n\\nManipulation avancée de Linux et installation de différents services tels qu’un serveur HTTP ou des bases de données pour mettre en place une application web.\\n\\nShell\\nScript\\nLinux\\n\\n- Se rappeler des différents OS\\n- Comprendre les règles de sécurisation Linux\\n- Appliquer l’administration de systèmes Linux\\n- Appliquer les procédures d’installation de services\\n- Analyser l’activité d’un serveur\\n\\n07 : 🔴 Réseau 70h\\n\\nGestions des réseaux et de ses principes fondamentaux pour préparer à la mise en place d’une infrastructure de serveurs.\\n\\nRoutage\\nProtocoles\\nDNS\\n\\n- Comprendre les réseaux\\n- Appliquer les configurations fondamentalesœ\\n\\n08 : 🔴 Infrastructure de serveurs 35h\\n\\nDéploiement automatisé de serveurs et mise en communication.\\n\\nAnsible\\nDocker\\n\\n- Comprendre les outils de déploiement\\n- Appliquer des recepts de déploiement\\n\\n09 : 🔴 Chaines de livraison 70h\\n\\nUtilisation avancée des chaines de livraison pour automatiser le déploiement d’applications.\\n\\n- Github actions\\n- Docker\\n\\n- Comprendre les chaines de livraison\\n- Appliquer Github Actions\\n- Appliquer ses propres actions\\n- Analyser les workflows\\n\\n10 : 🔴 Flux entrants 35h\\n\\nSécuriser les flux entrants d’un serveur et gérer la répartition de charge.\\n\\nFirewall\\nVPN\\nIPtables\\n\\n- Comprendre la répartition de charge\\n- Appliquer des règles de sécurité\\n- Analyser les flux entrants\\n\\n11 : 🔴 Cloud providers 70h\\n\\nGestion des fournisseurs de cloud et de leurs services pour préparer à la mise en place d’une infrastructure de serveurs.\\n\\nAWS\\nScaleway\\nOpenstack\\n\\n- Comprendre les cloud providers\\n- Appliquer sont propre cloud provider\\n- Analyser les services proposés par les leaders du marché\\n\\n12 : 🔴 Infrastructure as Code 35h\\n\\nAutomatiser le déploiement d’infrastructures avec Terraform.\\n\\nTerraform\\n\\n- Comprendre les principes de l’infrastructure as code\\n- Appliquer Terraform\\n\\n13 : 🔴 Container avancé 35h\\n\\nUtilisation avancée des conteneurs pour déployer des applications.\\n\\nDocker\\nPodman\\n\\n- Appliquer des concepts avancés de conteneurs\\n- Analyser des architectures complexes\\n\\n14 : 🔴 Orchestration 70h\\n\\nOrchestrer et superviser des applications distribuées.\\n\\nDocker swarm\\nPrometheus\\nKubernetes\\nHelm\\n\\n- Comprendre l’orchestration\\n- Appliquer des outils d’orchestration\\n- Analyser des architectures distribuées\\n\\n15 : Projet 98h\\n\\nProjet de fin de formation en autonomie.\\n\\n## Le métier de DevOps\\n\\nLe DevOps, combinaison des termes Développement et Opérations, est un ensemble de pratiques visant à améliorer la collaboration entre les équipes de développement et d'opérations pour livrer des projets web de manière efficace. Son rôle principal est de réduire les délais de développement et de déploiement, d'augmenter la fréquence des mises à jour, d'assurer la stabilité des systèmes, et d'automatiser les tâches répétitives. Né dans les années 2000, le DevOps s'inspire des pratiques agiles et est devenu essentiel dans un environnement concurrentiel pour permettre aux entreprises de rester agiles et réactives. Les métiers DevOps incluent des rôles comme Ingénieur DevOps et Architecte DevOps, et s'appuient sur des technologies comme Git, Jenkins, Docker, Kubernetes et Ansible. Les principes fondamentaux du DevOps incluent la collaboration, l'automatisation, la supervision et la sécurisation des processus.\\n","title":"DevOps","parents":[3]}	{"user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:15:41.697Z"}	\N	\N
37	38	contexts_contexts	3	{"contexts_id":"28a6a701-0428-4980-b549-1e3d69650852","related_contexts_id":{"id":"f6800dad-1054-431d-8100-488cb231c081"}}	{"contexts_id":"28a6a701-0428-4980-b549-1e3d69650852","related_contexts_id":{"id":"f6800dad-1054-431d-8100-488cb231c081"}}	38	\N
39	40	directus_fields	15	{"sort":11,"interface":"tags","special":["cast-json"],"options":{"allowCustom":false,"presets":["Ecole","Formation","Promotion"]},"collection":"contexts","field":"type"}	{"sort":11,"interface":"tags","special":["cast-json"],"options":{"allowCustom":false,"presets":["Ecole","Formation","Promotion"]},"collection":"contexts","field":"type"}	\N	\N
40	41	contexts	f6800dad-1054-431d-8100-488cb231c081	{"id":"f6800dad-1054-431d-8100-488cb231c081","status":"published","sort":null,"user_created":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_created":"2024-11-13T11:07:37.562Z","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:17:33.015Z","content":"# O'clock : Ecole tech\\n\\nLes cours ont lieux de 09h à 17h avec une pause de 1h pour le déjeuner. Une pause café le matin et l'après-midi est également prévue.\\n\\nEn général, à 15h le formateur libère les apprenants pour qu'ils puissent faire le challenge du jour.\\n\\nLes cours ont lieux sur BBB : <https://bbb.oclock.school/gl3>\\n\\nLes replay sont disponibles sur le dashboard : <https://playback.oclock.school/dashboards>\\n\\nLes émargement se font sur Edusign : <https://edusign.app/>\\n\\nA la fin de chaque saison de cours, un questionnaire de satisfaction vous est envoyé.\\n\\n## L'école\\n\\nFondée en 2016, O’clock s’est donné pour mission de rendre l’éducation technologique accessible à tous, partout en France, grâce à son format innovant le « téléprésentiel » qui vous permet d’assister à un cours, spécialement conçu pour être suivi en ligne, en temps réel, où que vous soyez.\\n\\nNous croyons fermement en des valeurs de partage, de bienveillance, et d’attention individuelle, offrant des formations diversifiées telles que le développement web, la sécurité réseau, et la conception d’applications. Ces valeurs portent notre organisation et notre pédagogie.\\n\\nNos programmes sont constamment mis à jour pour répondre aux besoins du marché de l’emploi, préparant les apprenants à diverses certifications professionnelles (concepteur d’application, développeur web, technicien sécurité réseau, DevOps…).\\n\\nCe qui distingue O’clock, c’est notre approche pédagogique unique. Nos formateurs, experts reconnus dans leur domaine, assurent un enseignement interactif et vivant, soutenu par notre plateforme d’enseignement exclusive, BigBlueButton. Cette approche est complétée par l’accompagnement individuel de nos tuteurs et conseillers, garantissant un taux d’achèvement exceptionnel de plus de 97%.\\n\\nNotre communauté dynamique, composée d’anciens apprenants et de partenaires économiques, témoigne de la solidarité et de l’esprit d’équipe cultivés durant les formations.\\n\\nAvec plus de 6000 alumni dans notre réseau, O’clock encourage l’entraide et la collaboration au-delà des salles de classe virtuelles.\\n\\nChez O’clock, nous envisageons l’avenir avec ambition, désireux d’intégrer davantage d’outils d’intelligence artificielle pour personnaliser davantage les apprentissages et étendre notre offre aux divers métiers de la tech.\\n\\nNotre vision est claire : être l’école de demain dès aujourd’hui, où l’apprentissage est synonyme de bonheur, et où chaque apprenant peut réaliser son plein potentiel, quel que soit son lieu de vie.\\n\\n## Questions réponses\\n\\n### Au fait, c'est quoi le téléprésentiel ?\\n\\nC’est comme si vous alliez en cours, mais sans avoir besoin d’y aller. C’est le moyen qu’on a trouvé et développé pour permettre à un maximum de monde d’accéder à la formation, via une salle de classe virtuelle. Les personnes à mobilité réduite ou vivant dans des communes reculées peuvent se former chez O’clock et bénéficier d’un apprentissage vivant grâce à ce format.\\n\\n### Modalités d’accès ?\\n\\nPour être admis, vous devez passer notre Chemin vers O’clock, un parcours d’inscription en deux étapes qui titillera vos connaissances en informatique et en anglais, votre capacité de logique, ainsi que votre motivation.\\n\\nUne fois que vous aurez arpenté ce chemin avec succès, vous pourrez vous positionner sur l’une de nos prochaines promotions à l’aide de votre référent admission, qui vous accompagnera tout au long de votre parcours.\\n\\nSi jamais vous êtes en situation de handicap, n’hésitez pas à en parler pendant ce chemin. On reviendra vers vous pour mettre en place différents aménagements afin de répondre au mieux à vos besoins.\\n\\n### On peut décrocher une certification avec une formation O’clock ?\\n\\nLa plupart de nos formations O’clock sont éligibles à différents Titres Professionnels reconnus par l’État, et inscrits au RNCP. Certains Titres sont équivalents à un bac+2, d’autres à un bac+4, voire plus. Pour plus de renseignement il est possible de consulter directement nos formations : découvrir le catalogue.\\n\\n### Est-ce que France Travail peut financer ma formation ?\\n\\nNotre école est appréciée et reconnue pour sa qualité auprès de nombreux organismes de financement, dont France Travail fait partie. 75% de nos apprenants bénéficient d’un financement pour leur formation. Mais tout ça, on vous en parle nettement mieux dans notre page financements.\\n\\n### Comment ça se passe le suivi et l’accompagnement chez O’clock ?\\n\\nVous serez suivi et accompagné par :\\n\\n- Les référents admissions ; Pour chacune de vos démarches administratives et questions sur les formations que vous pourriez avoir, ils seront présents, et ce, même avant que la formation n’ait commencé. Ce sont aussi eux qui remueront ciel et terre pour faire en sorte que vous décrochiez une solution de financement.\\n- Les formateurs ; Ils seront présents chaque jour à vos côtés durant vos heures de cours, et n’attendent qu’une chose : vous transmettre leur passion et leurs années d’expérience dans la tech.\\n- Les tuteurs pédagogiques ; Besoin d’une explication supplémentaire sur le cours que vous venez de suivre ? Vos tuteurs se feront un plaisir de vous réexpliquer tout ça. Ils seront présents pour vous tout au long de la formation, même une fois les cours terminés d’ailleurs, lors des challenges. Et ça, jusqu’à votre passage du Titre Professionnel.\\n- Les conseillers parcours apprenants ; Si jamais vous aviez un problème de santé, familial, personnel, ou que vous êtes dans une situation de handicap, vous pouvez d’adresser aux conseillers parcours apprenants. Ils sont là pour faire en sorte que la formation se passe le mieux possible pour vous.\\n\\n### Concernant le matériel et la connexion, j’ai besoin de quoi ?\\n\\nPour suivre la formation dans de bonnes conditions, il faut un débit minimum de 5 Mbps. Quant à votre ordinateur, il n’est pas nécessaire d’avoir une machine de guerre.\\n\\nSi vous avez une machine assez récente, ça devrait le faire. Dans le détail : un processeur disposant de 4 cœurs physiques (i5 ou i3 récent, ainsi que tous les processeurs AMD Ryzen) sera nécessaire. Concernant la RAM : 8 Go suffisent. Mais si vous avez plus, c’est toujours mieux. Pour le reste, un micro-casque et une configuration double écrans sont de rigueur.\\n\\n### Est-ce que je serai assez compétent pour trouver un emploi après votre formation ?\\n\\nOui ! C’est même un des grands objectifs. Niveau compétence, vous aurez tout le bagage nécessaire pour trouver un job  correspondant au parcours de formation choisi : de développeur web front-end, back-end, fullstack, à administrateur système, DevOps, encore designer UX/UI.\\nNous vous proposons des bagages technologiques et méthodologiques adaptés au marché de l’emploi.\\n","title":"Oclock","type":["Ecole"],"parents":[]}	{"type":["Ecole"],"user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:17:33.015Z"}	\N	\N
41	42	directus_fields	16	{"sort":11,"interface":"select-dropdown","special":null,"options":{"choices":[{"text":"ecole","value":"Ecole"},{"text":"formation","value":"Formation"},{"text":"promotion","value":"Promotion"}]},"collection":"contexts","field":"type"}	{"sort":11,"interface":"select-dropdown","special":null,"options":{"choices":[{"text":"ecole","value":"Ecole"},{"text":"formation","value":"Formation"},{"text":"promotion","value":"Promotion"}]},"collection":"contexts","field":"type"}	\N	\N
42	43	contexts	3bd438bf-5691-4e0e-9742-ccb9dff5a8d4	{"id":"3bd438bf-5691-4e0e-9742-ccb9dff5a8d4","status":"draft","sort":null,"user_created":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_created":"2024-11-13T11:08:23.342Z","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:20:10.186Z","content":"# Formation en continue\\n\\n","title":"Formation en continue","type":"Ecole","parents":[]}	{"type":"Ecole","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:20:10.186Z"}	\N	\N
43	44	contexts	f6800dad-1054-431d-8100-488cb231c081	{"id":"f6800dad-1054-431d-8100-488cb231c081","status":"published","sort":null,"user_created":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_created":"2024-11-13T11:07:37.562Z","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:20:12.353Z","content":"# O'clock : Ecole tech\\n\\nLes cours ont lieux de 09h à 17h avec une pause de 1h pour le déjeuner. Une pause café le matin et l'après-midi est également prévue.\\n\\nEn général, à 15h le formateur libère les apprenants pour qu'ils puissent faire le challenge du jour.\\n\\nLes cours ont lieux sur BBB : <https://bbb.oclock.school/gl3>\\n\\nLes replay sont disponibles sur le dashboard : <https://playback.oclock.school/dashboards>\\n\\nLes émargement se font sur Edusign : <https://edusign.app/>\\n\\nA la fin de chaque saison de cours, un questionnaire de satisfaction vous est envoyé.\\n\\n## L'école\\n\\nFondée en 2016, O’clock s’est donné pour mission de rendre l’éducation technologique accessible à tous, partout en France, grâce à son format innovant le « téléprésentiel » qui vous permet d’assister à un cours, spécialement conçu pour être suivi en ligne, en temps réel, où que vous soyez.\\n\\nNous croyons fermement en des valeurs de partage, de bienveillance, et d’attention individuelle, offrant des formations diversifiées telles que le développement web, la sécurité réseau, et la conception d’applications. Ces valeurs portent notre organisation et notre pédagogie.\\n\\nNos programmes sont constamment mis à jour pour répondre aux besoins du marché de l’emploi, préparant les apprenants à diverses certifications professionnelles (concepteur d’application, développeur web, technicien sécurité réseau, DevOps…).\\n\\nCe qui distingue O’clock, c’est notre approche pédagogique unique. Nos formateurs, experts reconnus dans leur domaine, assurent un enseignement interactif et vivant, soutenu par notre plateforme d’enseignement exclusive, BigBlueButton. Cette approche est complétée par l’accompagnement individuel de nos tuteurs et conseillers, garantissant un taux d’achèvement exceptionnel de plus de 97%.\\n\\nNotre communauté dynamique, composée d’anciens apprenants et de partenaires économiques, témoigne de la solidarité et de l’esprit d’équipe cultivés durant les formations.\\n\\nAvec plus de 6000 alumni dans notre réseau, O’clock encourage l’entraide et la collaboration au-delà des salles de classe virtuelles.\\n\\nChez O’clock, nous envisageons l’avenir avec ambition, désireux d’intégrer davantage d’outils d’intelligence artificielle pour personnaliser davantage les apprentissages et étendre notre offre aux divers métiers de la tech.\\n\\nNotre vision est claire : être l’école de demain dès aujourd’hui, où l’apprentissage est synonyme de bonheur, et où chaque apprenant peut réaliser son plein potentiel, quel que soit son lieu de vie.\\n\\n## Questions réponses\\n\\n### Au fait, c'est quoi le téléprésentiel ?\\n\\nC’est comme si vous alliez en cours, mais sans avoir besoin d’y aller. C’est le moyen qu’on a trouvé et développé pour permettre à un maximum de monde d’accéder à la formation, via une salle de classe virtuelle. Les personnes à mobilité réduite ou vivant dans des communes reculées peuvent se former chez O’clock et bénéficier d’un apprentissage vivant grâce à ce format.\\n\\n### Modalités d’accès ?\\n\\nPour être admis, vous devez passer notre Chemin vers O’clock, un parcours d’inscription en deux étapes qui titillera vos connaissances en informatique et en anglais, votre capacité de logique, ainsi que votre motivation.\\n\\nUne fois que vous aurez arpenté ce chemin avec succès, vous pourrez vous positionner sur l’une de nos prochaines promotions à l’aide de votre référent admission, qui vous accompagnera tout au long de votre parcours.\\n\\nSi jamais vous êtes en situation de handicap, n’hésitez pas à en parler pendant ce chemin. On reviendra vers vous pour mettre en place différents aménagements afin de répondre au mieux à vos besoins.\\n\\n### On peut décrocher une certification avec une formation O’clock ?\\n\\nLa plupart de nos formations O’clock sont éligibles à différents Titres Professionnels reconnus par l’État, et inscrits au RNCP. Certains Titres sont équivalents à un bac+2, d’autres à un bac+4, voire plus. Pour plus de renseignement il est possible de consulter directement nos formations : découvrir le catalogue.\\n\\n### Est-ce que France Travail peut financer ma formation ?\\n\\nNotre école est appréciée et reconnue pour sa qualité auprès de nombreux organismes de financement, dont France Travail fait partie. 75% de nos apprenants bénéficient d’un financement pour leur formation. Mais tout ça, on vous en parle nettement mieux dans notre page financements.\\n\\n### Comment ça se passe le suivi et l’accompagnement chez O’clock ?\\n\\nVous serez suivi et accompagné par :\\n\\n- Les référents admissions ; Pour chacune de vos démarches administratives et questions sur les formations que vous pourriez avoir, ils seront présents, et ce, même avant que la formation n’ait commencé. Ce sont aussi eux qui remueront ciel et terre pour faire en sorte que vous décrochiez une solution de financement.\\n- Les formateurs ; Ils seront présents chaque jour à vos côtés durant vos heures de cours, et n’attendent qu’une chose : vous transmettre leur passion et leurs années d’expérience dans la tech.\\n- Les tuteurs pédagogiques ; Besoin d’une explication supplémentaire sur le cours que vous venez de suivre ? Vos tuteurs se feront un plaisir de vous réexpliquer tout ça. Ils seront présents pour vous tout au long de la formation, même une fois les cours terminés d’ailleurs, lors des challenges. Et ça, jusqu’à votre passage du Titre Professionnel.\\n- Les conseillers parcours apprenants ; Si jamais vous aviez un problème de santé, familial, personnel, ou que vous êtes dans une situation de handicap, vous pouvez d’adresser aux conseillers parcours apprenants. Ils sont là pour faire en sorte que la formation se passe le mieux possible pour vous.\\n\\n### Concernant le matériel et la connexion, j’ai besoin de quoi ?\\n\\nPour suivre la formation dans de bonnes conditions, il faut un débit minimum de 5 Mbps. Quant à votre ordinateur, il n’est pas nécessaire d’avoir une machine de guerre.\\n\\nSi vous avez une machine assez récente, ça devrait le faire. Dans le détail : un processeur disposant de 4 cœurs physiques (i5 ou i3 récent, ainsi que tous les processeurs AMD Ryzen) sera nécessaire. Concernant la RAM : 8 Go suffisent. Mais si vous avez plus, c’est toujours mieux. Pour le reste, un micro-casque et une configuration double écrans sont de rigueur.\\n\\n### Est-ce que je serai assez compétent pour trouver un emploi après votre formation ?\\n\\nOui ! C’est même un des grands objectifs. Niveau compétence, vous aurez tout le bagage nécessaire pour trouver un job  correspondant au parcours de formation choisi : de développeur web front-end, back-end, fullstack, à administrateur système, DevOps, encore designer UX/UI.\\nNous vous proposons des bagages technologiques et méthodologiques adaptés au marché de l’emploi.\\n","title":"Oclock","type":"Ecole","parents":[]}	{"type":"Ecole","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:20:12.353Z"}	\N	\N
44	45	contexts	34303cd8-5c09-4c94-ad98-288d13d320bc	{"id":"34303cd8-5c09-4c94-ad98-288d13d320bc","status":"draft","sort":1,"user_created":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_created":"2024-11-13T11:08:41.818Z","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:20:17.292Z","content":"# Formation en Alternance\\n\\nLe CFA est Formasup.\\n","title":"Formation en Alternance","type":"Ecole","parents":[]}	{"type":"Ecole","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:20:17.292Z"}	\N	\N
45	46	contexts	5546c767-0e15-4e22-bbbb-e0cf78eab9d7	{"id":"5546c767-0e15-4e22-bbbb-e0cf78eab9d7","status":"published","sort":2,"user_created":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_created":"2024-11-13T11:11:37.055Z","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:20:19.107Z","content":"# Promo : Nornes\\n\\n## Ressources\\n\\n- Lien du Drive : <https://drive.google.com/drive/folders/1ssVgL9inx-yKFo-2iCK2JPj5X61h8xLG>\\n- Planning de la formation : <https://docs.google.com/spreadsheets/d/1tJ-B_OmqLfU7JqqBh3feVPNymSLrq29OzwnhwuKkJtY/edit?gid=0#gid=0>\\n- Référent : Anthony Cosson\\n- Github : <https://github.com/O-clock-Nornes>\\n\\n## Définition du nom de la promo\\n\\nLes Nornes (terme du vieux norrois, pluriel nornir) de la mythologie nordique sont comparables aux Dises qui règlent le destin de l'ensemble des habitants des neuf mondes de la cosmogonie nordique1.\\n\\nBien que les Nornes soient assez nombreuses, d'après l'interprétation de Snorri Sturluson de la Völuspá, les trois plus importantes sont appelées Urd, Verdandi et Skuld et résident près du puits d'Urd, le puits du Destin. Elles en tirent l'eau et en arrosent l'arbre Yggdrasil afin que ses branches ne pourrissent jamais2. Les Nornes sont décrites comme trois puissantes jötunns dont l'arrivée a mis fin à l'âge d'or des dieux2.\\n\\nEn plus de ces trois Nornes, il existe de nombreuses autres Nornes, qui arrivent lorsqu'une personne naît afin de fixer son avenir2. Ces Nornes peuvent être bienveillantes ou malveillantes ; elles étaient considérées responsables respectivement des événements heureux ou malheureux de la vie2.\\n","title":"Normes","type":"Promotion","parents":[1,2]}	{"type":"Promotion","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:20:19.107Z"}	\N	\N
46	47	contexts	28a6a701-0428-4980-b549-1e3d69650852	{"id":"28a6a701-0428-4980-b549-1e3d69650852","status":"published","sort":3,"user_created":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_created":"2024-11-13T11:11:15.113Z","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:20:20.469Z","content":"# DevOps\\n\\nLa formation, de niveau 6, Administrateur Système DevOps vise à développer les compétences nécessaires pour automatiser, déployer et superviser des infrastructures et des applications dans des environnements cloud.\\n\\n## Objectifs\\n\\n- Automatiser le déploiement d’une infrastructure dans le cloud\\n  - Automatiser la création de serveurs à l’aide de scripts\\n  - Automatiser le déploiement d’une infrastructure\\n  - Sécuriser l’infrastructure\\n  - Mettre l’infrastructure en production dans le cloud\\n- Déployer en continu une application\\n  - Préparer un environnement de test\\n  - Gérer le stockage des données\\n  - Gérer des containers\\n  - Automatiser la mise en production d’une application avec une plateforme\\n- Superviser les services déployés\\n  - Définir et mettre en place des statistiques de services\\n  - Exploiter une solution de supervision\\n  - Echanger sur des réseaux professionnels éventuellement en anglais\\n\\n## Déroulement\\n\\n01 : 🟢 Intégration 35h\\n\\nCette saison permet aux apprenants de démarrer leur formation en douceur, en prenant en main les outils puis en abordant les premières notions.\\n\\nOutils O’clock\\nProgramme de formation\\nTitre pro\\nMarkdown\\nGit\\nGitHub\\nDevContainers\\n\\n- Prendre en main la formation et les outils O’Clock\\n- Découvrir le métier et les premiers outils DevOps\\n- Comprendre la pédagogie O’Clock et l’importance de l’entraide\\n\\n02 : 🟢 Algorithmique 35h\\n\\nUniformisation des connaissances en algorithmique pour tous les apprenants, basée sur le langage Python.\\n\\nPython\\n\\n- Appliquer les bases de l’algorithmique\\n- Appliquer le langage Python\\n\\n03 : 🟢 Développement Frontend et Versioning 35h\\n\\nCette saison couvre le développement frontend moderne dans une perspective DevOps. Elle aborde les fondamentaux du web, l’utilisation de Svelte, la maîtrise de Git, et les pratiques de déploiement. L’objectif est de préparer les apprenants à gérer efficacement le cycle complet d’une application frontend, de la conception au déploiement.\\n\\nHTML/CSS/JS\\nSvelte\\nNode.js\\nnpm\\nVite\\nGit\\nGitHub Pages\\nOptimisation perf.\\nCI/CD\\n\\n- Comprendre les concepts du développement frontend et l’architecture web moderne\\n- Maîtriser les outils de développement frontend actuels\\n- Appliquer le versioning avec Git, des bases aux techniques avancées\\n- Analyser les différences entre développement et production\\n- Évaluer les stratégies d’optimisation et de déploiement frontend\\n- Créer et déployer des applications frontend performantes\\n\\n04 : 🟢 Dev back 70h\\n\\nExploration du développement back-end, en réalisant des projets variés dans plusieurs langages. Un accent sera mis sur l’utilisation de GitHub pour la gestion de projet et la collaboration en équipe. Il faudra insister sur la création de branches, les pull requests, et la gestion des conflits. La première semaine sera consacrée à la création d’API avec Flask, la manipulation de bases de données SQL, et l’utilisation de psql pour DevOps. La deuxième semaine sera dédiée à l’exploration du langage Go, avec discordgo pour la création de bots Discord. Dans le challenge, fil rouge, les apprenants devront créer un bot Discord capable d’interagir avec une API externe pour gérer des projets et des tâches.\\n\\nGitHub\\nFlask\\nSQL\\npsql\\nORM\\nGo\\n\\n- Comprendre les principes de gestion de projet avec GitHub\\n- Appliquer les fondamentaux du développement back-end et la création d’API avec Flask\\n- Découvrir l’utilisation de SQL et psql pour DevOps\\n- Développer des compétences avancées en gestion de bases de données et ORM\\n- Explorer le langage Go et ses applications pratiques\\n\\n05 : 🟢 Container 35h\\n\\nUtilisation de Docker comme brique fondamentale d’un DevOps.\\n\\n- Dockerfile\\n- Docker compose\\n- Devcontainer\\n- Comprendre les concepts de conteneurisation\\n- Appliquer Docker dans un environnement de développement\\n- Analyser les conteneurs\\n\\n06 : 🟢 Système 70h\\n\\nManipulation avancée de Linux et installation de différents services tels qu’un serveur HTTP ou des bases de données pour mettre en place une application web.\\n\\nShell\\nScript\\nLinux\\n\\n- Se rappeler des différents OS\\n- Comprendre les règles de sécurisation Linux\\n- Appliquer l’administration de systèmes Linux\\n- Appliquer les procédures d’installation de services\\n- Analyser l’activité d’un serveur\\n\\n07 : 🔴 Réseau 70h\\n\\nGestions des réseaux et de ses principes fondamentaux pour préparer à la mise en place d’une infrastructure de serveurs.\\n\\nRoutage\\nProtocoles\\nDNS\\n\\n- Comprendre les réseaux\\n- Appliquer les configurations fondamentalesœ\\n\\n08 : 🔴 Infrastructure de serveurs 35h\\n\\nDéploiement automatisé de serveurs et mise en communication.\\n\\nAnsible\\nDocker\\n\\n- Comprendre les outils de déploiement\\n- Appliquer des recepts de déploiement\\n\\n09 : 🔴 Chaines de livraison 70h\\n\\nUtilisation avancée des chaines de livraison pour automatiser le déploiement d’applications.\\n\\n- Github actions\\n- Docker\\n\\n- Comprendre les chaines de livraison\\n- Appliquer Github Actions\\n- Appliquer ses propres actions\\n- Analyser les workflows\\n\\n10 : 🔴 Flux entrants 35h\\n\\nSécuriser les flux entrants d’un serveur et gérer la répartition de charge.\\n\\nFirewall\\nVPN\\nIPtables\\n\\n- Comprendre la répartition de charge\\n- Appliquer des règles de sécurité\\n- Analyser les flux entrants\\n\\n11 : 🔴 Cloud providers 70h\\n\\nGestion des fournisseurs de cloud et de leurs services pour préparer à la mise en place d’une infrastructure de serveurs.\\n\\nAWS\\nScaleway\\nOpenstack\\n\\n- Comprendre les cloud providers\\n- Appliquer sont propre cloud provider\\n- Analyser les services proposés par les leaders du marché\\n\\n12 : 🔴 Infrastructure as Code 35h\\n\\nAutomatiser le déploiement d’infrastructures avec Terraform.\\n\\nTerraform\\n\\n- Comprendre les principes de l’infrastructure as code\\n- Appliquer Terraform\\n\\n13 : 🔴 Container avancé 35h\\n\\nUtilisation avancée des conteneurs pour déployer des applications.\\n\\nDocker\\nPodman\\n\\n- Appliquer des concepts avancés de conteneurs\\n- Analyser des architectures complexes\\n\\n14 : 🔴 Orchestration 70h\\n\\nOrchestrer et superviser des applications distribuées.\\n\\nDocker swarm\\nPrometheus\\nKubernetes\\nHelm\\n\\n- Comprendre l’orchestration\\n- Appliquer des outils d’orchestration\\n- Analyser des architectures distribuées\\n\\n15 : Projet 98h\\n\\nProjet de fin de formation en autonomie.\\n\\n## Le métier de DevOps\\n\\nLe DevOps, combinaison des termes Développement et Opérations, est un ensemble de pratiques visant à améliorer la collaboration entre les équipes de développement et d'opérations pour livrer des projets web de manière efficace. Son rôle principal est de réduire les délais de développement et de déploiement, d'augmenter la fréquence des mises à jour, d'assurer la stabilité des systèmes, et d'automatiser les tâches répétitives. Né dans les années 2000, le DevOps s'inspire des pratiques agiles et est devenu essentiel dans un environnement concurrentiel pour permettre aux entreprises de rester agiles et réactives. Les métiers DevOps incluent des rôles comme Ingénieur DevOps et Architecte DevOps, et s'appuient sur des technologies comme Git, Jenkins, Docker, Kubernetes et Ansible. Les principes fondamentaux du DevOps incluent la collaboration, l'automatisation, la supervision et la sécurisation des processus.\\n","title":"DevOps","type":"Formation","parents":[3]}	{"type":"Formation","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:20:20.469Z"}	\N	\N
47	48	directus_fields	16	{"id":16,"collection":"contexts","field":"type","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"ecole","value":"Ecole"},{"text":"formation","value":"Formation"},{"text":"promotion","value":"Promotion"}]},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":11,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"type","required":true}	\N	\N
48	49	contexts	3bd438bf-5691-4e0e-9742-ccb9dff5a8d4	{"id":"3bd438bf-5691-4e0e-9742-ccb9dff5a8d4","status":"draft","sort":4,"user_created":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_created":"2024-11-13T11:08:23.342Z","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:21:11.646Z","content":"# Formation en continue\\n\\n","title":"En continue","type":"Ecole","parents":[]}	{"title":"En continue","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:21:11.646Z"}	\N	\N
49	50	contexts	34303cd8-5c09-4c94-ad98-288d13d320bc	{"id":"34303cd8-5c09-4c94-ad98-288d13d320bc","status":"draft","sort":5,"user_created":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_created":"2024-11-13T11:08:41.818Z","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:21:18.317Z","content":"# Formation en Alternance\\n\\nLe CFA est Formasup.\\n","title":"En alternance","type":"Ecole","parents":[]}	{"title":"En alternance","user_updated":"ba8e1479-3511-4434-bf87-d9bdcdf249df","date_updated":"2024-11-13T11:21:18.317Z"}	\N	\N
50	51	directus_fields	1	{"id":1,"collection":"contexts","field":"id","special":["uuid"],"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"id","sort":1,"group":null}	\N	\N
51	52	directus_fields	2	{"id":2,"collection":"contexts","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"status","sort":2,"group":null}	\N	\N
52	53	directus_fields	3	{"id":3,"collection":"contexts","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"sort":3,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"sort","sort":3,"group":null}	\N	\N
53	54	directus_fields	4	{"id":4,"collection":"contexts","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"sort":4,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"user_created","sort":4,"group":null}	\N	\N
54	55	directus_fields	5	{"id":5,"collection":"contexts","field":"date_created","special":["date-created"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":5,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"date_created","sort":5,"group":null}	\N	\N
55	56	directus_fields	6	{"id":6,"collection":"contexts","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"sort":6,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"user_updated","sort":6,"group":null}	\N	\N
56	57	directus_fields	7	{"id":7,"collection":"contexts","field":"date_updated","special":["date-updated"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":7,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"date_updated","sort":7,"group":null}	\N	\N
57	58	directus_fields	9	{"id":9,"collection":"contexts","field":"title","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":8,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"title","sort":8,"group":null}	\N	\N
58	59	directus_fields	16	{"id":16,"collection":"contexts","field":"type","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"ecole","value":"Ecole"},{"text":"formation","value":"Formation"},{"text":"promotion","value":"Promotion"}]},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":9,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"type","sort":9,"group":null}	\N	\N
59	60	directus_fields	8	{"id":8,"collection":"contexts","field":"content","special":null,"interface":"input-rich-text-md","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":10,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"content","sort":10,"group":null}	\N	\N
60	61	directus_fields	11	{"id":11,"collection":"contexts","field":"parents","special":["m2m"],"interface":"list-m2m","options":{"template":"{{related_contexts_id.title}}"},"display":"related-values","display_options":{"template":"{{related_contexts_id.title}}"},"readonly":false,"hidden":false,"sort":11,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"parents","sort":11,"group":null}	\N	\N
62	63	directus_fields	16	{"id":16,"collection":"contexts","field":"type","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"ecole","value":"Ecole"},{"text":"formation","value":"Formation"},{"text":"promotion","value":"Promotion"}]},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":9,"width":"half","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"type","width":"half"}	\N	\N
64	65	directus_fields	2	{"id":2,"collection":"contexts","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"status","sort":2,"group":null}	\N	\N
65	66	directus_fields	3	{"id":3,"collection":"contexts","field":"sort","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":true,"sort":3,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"sort","sort":3,"group":null}	\N	\N
66	67	directus_fields	4	{"id":4,"collection":"contexts","field":"user_created","special":["user-created"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"sort":4,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"user_created","sort":4,"group":null}	\N	\N
67	68	directus_fields	5	{"id":5,"collection":"contexts","field":"date_created","special":["date-created"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":5,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"date_created","sort":5,"group":null}	\N	\N
68	69	directus_fields	6	{"id":6,"collection":"contexts","field":"user_updated","special":["user-updated"],"interface":"select-dropdown-m2o","options":{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"},"display":"user","display_options":null,"readonly":true,"hidden":true,"sort":6,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"user_updated","sort":6,"group":null}	\N	\N
69	70	directus_fields	7	{"id":7,"collection":"contexts","field":"date_updated","special":["date-updated"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":7,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"date_updated","sort":7,"group":null}	\N	\N
70	71	directus_fields	9	{"id":9,"collection":"contexts","field":"title","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":8,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"title","sort":8,"group":null}	\N	\N
71	72	directus_fields	16	{"id":16,"collection":"contexts","field":"type","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"ecole","value":"Ecole"},{"text":"formation","value":"Formation"},{"text":"promotion","value":"Promotion"}]},"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":9,"width":"half","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"type","sort":9,"group":null}	\N	\N
72	73	directus_fields	11	{"id":11,"collection":"contexts","field":"parents","special":["m2m"],"interface":"list-m2m","options":{"template":"{{related_contexts_id.title}}"},"display":"related-values","display_options":{"template":"{{related_contexts_id.title}}"},"readonly":false,"hidden":false,"sort":10,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"parents","sort":10,"group":null}	\N	\N
73	74	directus_fields	8	{"id":8,"collection":"contexts","field":"content","special":null,"interface":"input-rich-text-md","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":11,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"contexts","field":"content","sort":11,"group":null}	\N	\N
74	75	directus_fields	17	{"sort":1,"hidden":true,"readonly":true,"interface":"input","special":["uuid"],"field":"id","collection":"messages"}	{"sort":1,"hidden":true,"readonly":true,"interface":"input","special":["uuid"],"field":"id","collection":"messages"}	\N	\N
75	76	directus_fields	18	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"field":"status","collection":"messages"}	{"sort":2,"width":"full","options":{"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)"}]},"interface":"select-dropdown","display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"field":"status","collection":"messages"}	\N	\N
76	77	directus_fields	19	{"sort":3,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"messages"}	{"sort":3,"special":["date-created"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_created","collection":"messages"}	\N	\N
77	78	directus_fields	20	{"sort":4,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"messages"}	{"sort":4,"special":["date-updated"],"interface":"datetime","readonly":true,"hidden":true,"width":"half","display":"datetime","display_options":{"relative":true},"field":"date_updated","collection":"messages"}	\N	\N
78	79	directus_collections	messages	{"archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"messages"}	{"archive_field":"status","archive_value":"archived","unarchive_value":"draft","singleton":false,"collection":"messages"}	\N	\N
79	80	directus_fields	21	{"sort":5,"interface":"input-multiline","special":null,"required":true,"collection":"messages","field":"question"}	{"sort":5,"interface":"input-multiline","special":null,"required":true,"collection":"messages","field":"question"}	\N	\N
80	81	directus_fields	22	{"sort":6,"interface":"input-rich-text-md","special":null,"collection":"messages","field":"response"}	{"sort":6,"interface":"input-rich-text-md","special":null,"collection":"messages","field":"response"}	\N	\N
81	82	directus_fields	18	{"id":18,"collection":"messages","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Terminée","value":"done","color":"var(--theme--primary)"},{"text":"En attente","value":"idle","color":"var(--theme--foreground)"},{"text":"Rejetée","value":"rejected","color":"var(--theme--warning)"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"status","options":{"choices":[{"text":"Terminée","value":"done","color":"var(--theme--primary)"},{"text":"En attente","value":"idle","color":"var(--theme--foreground)"},{"text":"Rejetée","value":"rejected","color":"var(--theme--warning)"}]}}	\N	\N
82	83	directus_fields	23	{"sort":7,"interface":"input","special":null,"collection":"messages","field":"user"}	{"sort":7,"interface":"input","special":null,"collection":"messages","field":"user"}	\N	\N
83	84	directus_fields	17	{"id":17,"collection":"messages","field":"id","special":["uuid"],"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"id","sort":1,"group":null}	\N	\N
84	85	directus_fields	18	{"id":18,"collection":"messages","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Terminée","value":"done","color":"var(--theme--primary)"},{"text":"En attente","value":"idle","color":"var(--theme--foreground)"},{"text":"Rejetée","value":"rejected","color":"var(--theme--warning)"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"readonly":false,"hidden":false,"sort":2,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"status","sort":2,"group":null}	\N	\N
85	86	directus_fields	19	{"id":19,"collection":"messages","field":"date_created","special":["date-created"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":3,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"date_created","sort":3,"group":null}	\N	\N
86	87	directus_fields	20	{"id":20,"collection":"messages","field":"date_updated","special":["date-updated"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":4,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"date_updated","sort":4,"group":null}	\N	\N
87	88	directus_fields	23	{"id":23,"collection":"messages","field":"user","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":5,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"user","sort":5,"group":null}	\N	\N
88	89	directus_fields	21	{"id":21,"collection":"messages","field":"question","special":null,"interface":"input-multiline","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":6,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"question","sort":6,"group":null}	\N	\N
89	90	directus_fields	22	{"id":22,"collection":"messages","field":"response","special":null,"interface":"input-rich-text-md","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"response","sort":7,"group":null}	\N	\N
90	91	directus_fields	17	{"id":17,"collection":"messages","field":"id","special":["uuid"],"interface":"input","options":null,"display":null,"display_options":null,"readonly":true,"hidden":true,"sort":1,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"id","sort":1,"group":null}	\N	\N
91	92	directus_fields	19	{"id":19,"collection":"messages","field":"date_created","special":["date-created"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":2,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"date_created","sort":2,"group":null}	\N	\N
92	93	directus_fields	20	{"id":20,"collection":"messages","field":"date_updated","special":["date-updated"],"interface":"datetime","options":null,"display":"datetime","display_options":{"relative":true},"readonly":true,"hidden":true,"sort":3,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"date_updated","sort":3,"group":null}	\N	\N
93	94	directus_fields	18	{"id":18,"collection":"messages","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Terminée","value":"done","color":"var(--theme--primary)"},{"text":"En attente","value":"idle","color":"var(--theme--foreground)"},{"text":"Rejetée","value":"rejected","color":"var(--theme--warning)"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"readonly":false,"hidden":false,"sort":4,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"status","sort":4,"group":null}	\N	\N
94	95	directus_fields	23	{"id":23,"collection":"messages","field":"user","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":5,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"user","sort":5,"group":null}	\N	\N
95	96	directus_fields	21	{"id":21,"collection":"messages","field":"question","special":null,"interface":"input-multiline","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":6,"width":"full","translations":null,"note":null,"conditions":null,"required":true,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"question","sort":6,"group":null}	\N	\N
96	97	directus_fields	22	{"id":22,"collection":"messages","field":"response","special":null,"interface":"input-rich-text-md","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":7,"width":"full","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"response","sort":7,"group":null}	\N	\N
98	99	directus_fields	23	{"id":23,"collection":"messages","field":"user","special":null,"interface":"input","options":null,"display":null,"display_options":null,"readonly":false,"hidden":false,"sort":5,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"user","width":"half"}	\N	\N
97	98	directus_fields	18	{"id":18,"collection":"messages","field":"status","special":null,"interface":"select-dropdown","options":{"choices":[{"text":"Terminée","value":"done","color":"var(--theme--primary)"},{"text":"En attente","value":"idle","color":"var(--theme--foreground)"},{"text":"Rejetée","value":"rejected","color":"var(--theme--warning)"}]},"display":"labels","display_options":{"showAsDot":true,"choices":[{"text":"$t:published","value":"published","color":"var(--theme--primary)","foreground":"var(--theme--primary)","background":"var(--theme--primary-background)"},{"text":"$t:draft","value":"draft","color":"var(--theme--foreground)","foreground":"var(--theme--foreground)","background":"var(--theme--background-normal)"},{"text":"$t:archived","value":"archived","color":"var(--theme--warning)","foreground":"var(--theme--warning)","background":"var(--theme--warning-background)"}]},"readonly":false,"hidden":false,"sort":4,"width":"half","translations":null,"note":null,"conditions":null,"required":false,"group":null,"validation":null,"validation_message":null}	{"collection":"messages","field":"status","width":"half"}	\N	\N
99	100	messages	cda1e643-62c4-4c50-8b95-c20dedf2ebed	{"user":"Kévin","question":"À quelle heure commence le cours ?"}	{"user":"Kévin","question":"À quelle heure commence le cours ?"}	\N	\N
\.


--
-- Data for Name: directus_roles; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_roles (id, name, icon, description, ip_access, enforce_tfa, admin_access, app_access) FROM stdin;
157f3323-a72b-49f1-a068-ab9f27c820dc	Administrator	verified	$t:admin_description	\N	f	t	t
\.


--
-- Data for Name: directus_sessions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_sessions (token, "user", expires, ip, user_agent, share, origin, next_token) FROM stdin;
sORnvrrNKurvzs5YF8WFth-TcUcgmdcU8F-ax5p3XBAOe_alFj6qk3h9CAkToPjF	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-13 11:13:19.919+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	\N	http://directus.localhost	SUBwaItT2oZEOHweeCFqOQh7csE43JOBtRUhYDXtjsJy3XfHFB7qlmEuuiSJoO9H
SUBwaItT2oZEOHweeCFqOQh7csE43JOBtRUhYDXtjsJy3XfHFB7qlmEuuiSJoO9H	ba8e1479-3511-4434-bf87-d9bdcdf249df	2024-11-14 11:13:09.919+00	172.31.0.1	Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36	\N	http://directus.localhost	\N
\.


--
-- Data for Name: directus_settings; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_settings (id, project_name, project_url, project_color, project_logo, public_foreground, public_background, public_note, auth_login_attempts, auth_password_policy, storage_asset_transform, storage_asset_presets, custom_css, storage_default_folder, basemaps, mapbox_key, module_bar, project_descriptor, default_language, custom_aspect_ratios, public_favicon, default_appearance, default_theme_light, theme_light_overrides, default_theme_dark, theme_dark_overrides, report_error_url, report_bug_url, report_feature_url, public_registration, public_registration_verify_email, public_registration_role, public_registration_email_filter) FROM stdin;
\.


--
-- Data for Name: directus_shares; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_shares (id, name, collection, item, role, password, user_created, date_created, date_start, date_end, times_used, max_uses) FROM stdin;
\.


--
-- Data for Name: directus_translations; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_translations (id, language, key, value) FROM stdin;
\.


--
-- Data for Name: directus_users; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_users (id, first_name, last_name, email, password, location, title, description, tags, avatar, language, tfa_secret, status, role, token, last_access, last_page, provider, external_identifier, auth_data, email_notifications, appearance, theme_dark, theme_light, theme_light_overrides, theme_dark_overrides) FROM stdin;
ba8e1479-3511-4434-bf87-d9bdcdf249df	Admin	User	admin@oclock.io	$argon2id$v=19$m=65536,t=3,p=4$xR+vsqWZbBECafa73uN7PA$LfHopb615gA5LcQd48d3V6DfT7xQ/txpkRLKbmgSDkE	\N	\N	\N	\N	\N	\N	\N	active	157f3323-a72b-49f1-a068-ab9f27c820dc	\N	2024-11-13 11:13:09.928+00	/content/contexts	default	\N	\N	t	\N	\N	\N	\N	\N
\.


--
-- Data for Name: directus_versions; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_versions (id, key, name, collection, item, hash, date_created, date_updated, user_created, user_updated) FROM stdin;
\.


--
-- Data for Name: directus_webhooks; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.directus_webhooks (id, name, method, url, status, data, actions, collections, headers, was_active_before_deprecation, migrated_flow) FROM stdin;
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: directus
--

COPY public.messages (id, status, date_created, date_updated, question, response, "user") FROM stdin;
cda1e643-62c4-4c50-8b95-c20dedf2ebed	idle	2024-11-13 11:26:55.988+00	\N	À quelle heure commence le cours ?	\N	Kévin
\.


--
-- Name: contexts_contexts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.contexts_contexts_id_seq', 3, true);


--
-- Name: directus_activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_activity_id_seq', 100, true);


--
-- Name: directus_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_fields_id_seq', 23, true);


--
-- Name: directus_notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_notifications_id_seq', 1, false);


--
-- Name: directus_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_permissions_id_seq', 1, false);


--
-- Name: directus_presets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_presets_id_seq', 2, true);


--
-- Name: directus_relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_relations_id_seq', 5, true);


--
-- Name: directus_revisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_revisions_id_seq', 99, true);


--
-- Name: directus_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_settings_id_seq', 1, false);


--
-- Name: directus_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_webhooks_id_seq', 1, false);


--
-- Name: contexts_contexts contexts_contexts_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.contexts_contexts
    ADD CONSTRAINT contexts_contexts_pkey PRIMARY KEY (id);


--
-- Name: contexts contexts_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.contexts
    ADD CONSTRAINT contexts_pkey PRIMARY KEY (id);


--
-- Name: directus_activity directus_activity_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_activity
    ADD CONSTRAINT directus_activity_pkey PRIMARY KEY (id);


--
-- Name: directus_collections directus_collections_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_pkey PRIMARY KEY (collection);


--
-- Name: directus_dashboards directus_dashboards_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_pkey PRIMARY KEY (id);


--
-- Name: directus_extensions directus_extensions_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_extensions
    ADD CONSTRAINT directus_extensions_pkey PRIMARY KEY (id);


--
-- Name: directus_fields directus_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_fields
    ADD CONSTRAINT directus_fields_pkey PRIMARY KEY (id);


--
-- Name: directus_files directus_files_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_pkey PRIMARY KEY (id);


--
-- Name: directus_flows directus_flows_operation_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_operation_unique UNIQUE (operation);


--
-- Name: directus_flows directus_flows_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_pkey PRIMARY KEY (id);


--
-- Name: directus_folders directus_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_pkey PRIMARY KEY (id);


--
-- Name: directus_migrations directus_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_migrations
    ADD CONSTRAINT directus_migrations_pkey PRIMARY KEY (version);


--
-- Name: directus_notifications directus_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_pkey PRIMARY KEY (id);


--
-- Name: directus_operations directus_operations_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_pkey PRIMARY KEY (id);


--
-- Name: directus_operations directus_operations_reject_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_unique UNIQUE (reject);


--
-- Name: directus_operations directus_operations_resolve_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_unique UNIQUE (resolve);


--
-- Name: directus_panels directus_panels_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_pkey PRIMARY KEY (id);


--
-- Name: directus_permissions directus_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_pkey PRIMARY KEY (id);


--
-- Name: directus_presets directus_presets_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_pkey PRIMARY KEY (id);


--
-- Name: directus_relations directus_relations_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_relations
    ADD CONSTRAINT directus_relations_pkey PRIMARY KEY (id);


--
-- Name: directus_revisions directus_revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_pkey PRIMARY KEY (id);


--
-- Name: directus_roles directus_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_roles
    ADD CONSTRAINT directus_roles_pkey PRIMARY KEY (id);


--
-- Name: directus_sessions directus_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_pkey PRIMARY KEY (token);


--
-- Name: directus_settings directus_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_pkey PRIMARY KEY (id);


--
-- Name: directus_shares directus_shares_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_pkey PRIMARY KEY (id);


--
-- Name: directus_translations directus_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_translations
    ADD CONSTRAINT directus_translations_pkey PRIMARY KEY (id);


--
-- Name: directus_users directus_users_email_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_email_unique UNIQUE (email);


--
-- Name: directus_users directus_users_external_identifier_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_external_identifier_unique UNIQUE (external_identifier);


--
-- Name: directus_users directus_users_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_pkey PRIMARY KEY (id);


--
-- Name: directus_users directus_users_token_unique; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_token_unique UNIQUE (token);


--
-- Name: directus_versions directus_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_pkey PRIMARY KEY (id);


--
-- Name: directus_webhooks directus_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_webhooks
    ADD CONSTRAINT directus_webhooks_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: contexts_contexts contexts_contexts_contexts_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.contexts_contexts
    ADD CONSTRAINT contexts_contexts_contexts_id_foreign FOREIGN KEY (contexts_id) REFERENCES public.contexts(id) ON DELETE SET NULL;


--
-- Name: contexts_contexts contexts_contexts_related_contexts_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.contexts_contexts
    ADD CONSTRAINT contexts_contexts_related_contexts_id_foreign FOREIGN KEY (related_contexts_id) REFERENCES public.contexts(id) ON DELETE SET NULL;


--
-- Name: contexts contexts_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.contexts
    ADD CONSTRAINT contexts_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id);


--
-- Name: contexts contexts_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.contexts
    ADD CONSTRAINT contexts_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: directus_collections directus_collections_group_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_collections
    ADD CONSTRAINT directus_collections_group_foreign FOREIGN KEY ("group") REFERENCES public.directus_collections(collection);


--
-- Name: directus_dashboards directus_dashboards_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_dashboards
    ADD CONSTRAINT directus_dashboards_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_files directus_files_folder_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_folder_foreign FOREIGN KEY (folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;


--
-- Name: directus_files directus_files_modified_by_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_modified_by_foreign FOREIGN KEY (modified_by) REFERENCES public.directus_users(id);


--
-- Name: directus_files directus_files_uploaded_by_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_files
    ADD CONSTRAINT directus_files_uploaded_by_foreign FOREIGN KEY (uploaded_by) REFERENCES public.directus_users(id);


--
-- Name: directus_flows directus_flows_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_flows
    ADD CONSTRAINT directus_flows_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_folders directus_folders_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_folders
    ADD CONSTRAINT directus_folders_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_folders(id);


--
-- Name: directus_notifications directus_notifications_recipient_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_recipient_foreign FOREIGN KEY (recipient) REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_notifications directus_notifications_sender_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_notifications
    ADD CONSTRAINT directus_notifications_sender_foreign FOREIGN KEY (sender) REFERENCES public.directus_users(id);


--
-- Name: directus_operations directus_operations_flow_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_flow_foreign FOREIGN KEY (flow) REFERENCES public.directus_flows(id) ON DELETE CASCADE;


--
-- Name: directus_operations directus_operations_reject_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_reject_foreign FOREIGN KEY (reject) REFERENCES public.directus_operations(id);


--
-- Name: directus_operations directus_operations_resolve_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_resolve_foreign FOREIGN KEY (resolve) REFERENCES public.directus_operations(id);


--
-- Name: directus_operations directus_operations_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_operations
    ADD CONSTRAINT directus_operations_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_panels directus_panels_dashboard_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_dashboard_foreign FOREIGN KEY (dashboard) REFERENCES public.directus_dashboards(id) ON DELETE CASCADE;


--
-- Name: directus_panels directus_panels_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_panels
    ADD CONSTRAINT directus_panels_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_permissions directus_permissions_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_permissions
    ADD CONSTRAINT directus_permissions_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_presets directus_presets_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_presets directus_presets_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_presets
    ADD CONSTRAINT directus_presets_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_revisions directus_revisions_activity_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_activity_foreign FOREIGN KEY (activity) REFERENCES public.directus_activity(id) ON DELETE CASCADE;


--
-- Name: directus_revisions directus_revisions_parent_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_parent_foreign FOREIGN KEY (parent) REFERENCES public.directus_revisions(id);


--
-- Name: directus_revisions directus_revisions_version_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_revisions
    ADD CONSTRAINT directus_revisions_version_foreign FOREIGN KEY (version) REFERENCES public.directus_versions(id) ON DELETE CASCADE;


--
-- Name: directus_sessions directus_sessions_share_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_share_foreign FOREIGN KEY (share) REFERENCES public.directus_shares(id) ON DELETE CASCADE;


--
-- Name: directus_sessions directus_sessions_user_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_sessions
    ADD CONSTRAINT directus_sessions_user_foreign FOREIGN KEY ("user") REFERENCES public.directus_users(id) ON DELETE CASCADE;


--
-- Name: directus_settings directus_settings_project_logo_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_project_logo_foreign FOREIGN KEY (project_logo) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_background_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_background_foreign FOREIGN KEY (public_background) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_favicon_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_favicon_foreign FOREIGN KEY (public_favicon) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_foreground_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_foreground_foreign FOREIGN KEY (public_foreground) REFERENCES public.directus_files(id);


--
-- Name: directus_settings directus_settings_public_registration_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_public_registration_role_foreign FOREIGN KEY (public_registration_role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;


--
-- Name: directus_settings directus_settings_storage_default_folder_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_settings
    ADD CONSTRAINT directus_settings_storage_default_folder_foreign FOREIGN KEY (storage_default_folder) REFERENCES public.directus_folders(id) ON DELETE SET NULL;


--
-- Name: directus_shares directus_shares_collection_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;


--
-- Name: directus_shares directus_shares_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE CASCADE;


--
-- Name: directus_shares directus_shares_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_shares
    ADD CONSTRAINT directus_shares_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_users directus_users_role_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_users
    ADD CONSTRAINT directus_users_role_foreign FOREIGN KEY (role) REFERENCES public.directus_roles(id) ON DELETE SET NULL;


--
-- Name: directus_versions directus_versions_collection_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_collection_foreign FOREIGN KEY (collection) REFERENCES public.directus_collections(collection) ON DELETE CASCADE;


--
-- Name: directus_versions directus_versions_user_created_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_created_foreign FOREIGN KEY (user_created) REFERENCES public.directus_users(id) ON DELETE SET NULL;


--
-- Name: directus_versions directus_versions_user_updated_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_versions
    ADD CONSTRAINT directus_versions_user_updated_foreign FOREIGN KEY (user_updated) REFERENCES public.directus_users(id);


--
-- Name: directus_webhooks directus_webhooks_migrated_flow_foreign; Type: FK CONSTRAINT; Schema: public; Owner: directus
--

ALTER TABLE ONLY public.directus_webhooks
    ADD CONSTRAINT directus_webhooks_migrated_flow_foreign FOREIGN KEY (migrated_flow) REFERENCES public.directus_flows(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

