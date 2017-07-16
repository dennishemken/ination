insert into phpgw_applications(app_name,app_enabled,app_order,app_tables,app_version) Values('smarsh_mail',1,1,'','1.0.0');
    

insert into phpgw_lang( lang,app_name, message_id, content) values ('en','common','smarsh_mail','Smarsh Mail');

insert into phpgw_hooks(hook_appname,hook_location,hook_filename) values ('smarsh_mail', 'bootstrap_header', 'hook_bootstrap_header.inc.php');

insert into phpgw_hooks(hook_appname,hook_location,hook_filename) values ('smarsh_mail', 'bootstrap_data', 'hook_bootstrap_data.inc.php');

insert into phpgw_hooks(hook_appname,hook_location,hook_filename) values ('smarsh_mail','settings','hook_settings.inc.php');


--
-- Sequence "user_ids"
-- Name: user_ids; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE user_ids
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Table "round_users"
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE round_users (
    user_id integer DEFAULT nextval('user_ids'::text) PRIMARY KEY,
    username character varying(128) DEFAULT ''::character varying NOT NULL,
    mail_host character varying(128) DEFAULT ''::character varying NOT NULL,
    alias character varying(128) DEFAULT ''::character varying NOT NULL,
    created timestamp with time zone DEFAULT now() NOT NULL,
    last_login timestamp with time zone DEFAULT now() NOT NULL,
    "language" character varying(5),
    preferences text DEFAULT ''::text NOT NULL
);

CREATE INDEX users_username_id_idx ON round_users (username);
CREATE INDEX users_alias_id_idx ON round_users (alias);

  
--
-- Table "round_session"
-- Name: session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "round_session" (
    sess_id character varying(40) DEFAULT ''::character varying PRIMARY KEY,
    created timestamp with time zone DEFAULT now() NOT NULL,
    changed timestamp with time zone DEFAULT now() NOT NULL,
    ip character varying(41) NOT NULL,
    vars text NOT NULL
);

CREATE INDEX session_changed_idx ON round_session (changed);


--
-- Sequence "round_identity_ids"
-- Name: identity_ids; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE round_identity_ids
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Table "round_identities"
-- Name: identities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE round_identities (
    identity_id integer DEFAULT nextval('round_identity_ids'::text) PRIMARY KEY,
    user_id integer NOT NULL REFERENCES round_users (user_id) ON DELETE CASCADE ON UPDATE CASCADE,
    del smallint DEFAULT 0 NOT NULL,
    standard smallint DEFAULT 0 NOT NULL,
    name character varying(128) NOT NULL,
    organization character varying(128),
    email character varying(128) NOT NULL,
    "reply-to" character varying(128),
    bcc character varying(128),
    signature text,
    html_signature integer DEFAULT 0 NOT NULL
);

CREATE INDEX identities_user_id_idx ON round_identities (user_id);


--
-- Sequence "round_contact_ids"
-- Name: contact_ids; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE round_contact_ids
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Table "round_contacts"
-- Name: contacts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE round_contacts (
    contact_id integer DEFAULT nextval('round_contact_ids'::text) PRIMARY KEY,
    user_id integer NOT NULL REFERENCES round_users (user_id) ON DELETE CASCADE ON UPDATE CASCADE,
    changed timestamp with time zone DEFAULT now() NOT NULL,
    del smallint DEFAULT 0 NOT NULL,
    name character varying(128) DEFAULT ''::character varying NOT NULL,
    email character varying(128) DEFAULT ''::character varying NOT NULL,
    firstname character varying(128) DEFAULT ''::character varying NOT NULL,
    surname character varying(128) DEFAULT ''::character varying NOT NULL,
    vcard text
);

CREATE INDEX contacts_user_id_idx ON round_contacts (user_id);

--
-- Sequence "cache_ids"
-- Name: cache_ids; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE round_cache_ids
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Table "cache"
-- Name: cache; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "round_cache" (
    cache_id integer DEFAULT nextval('round_cache_ids'::text) PRIMARY KEY,
    user_id integer NOT NULL REFERENCES round_users (user_id) ON DELETE CASCADE ON UPDATE CASCADE,
    cache_key character varying(128) DEFAULT ''::character varying NOT NULL,
    created timestamp with time zone DEFAULT now() NOT NULL,
    data text NOT NULL
);

CREATE INDEX cache_user_id_idx ON "round_cache" (user_id, cache_key);
CREATE INDEX cache_created_idx ON "round_cache" (created);

--
-- Sequence "message_ids"
-- Name: message_ids; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE round_message_ids
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Table "messages"
-- Name: messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE round_messages (
    message_id integer DEFAULT nextval('round_message_ids'::text) PRIMARY KEY,
    user_id integer NOT NULL REFERENCES round_users (user_id) ON DELETE CASCADE ON UPDATE CASCADE,
    del smallint DEFAULT 0 NOT NULL,
    cache_key character varying(128) DEFAULT ''::character varying NOT NULL,
    created timestamp with time zone DEFAULT now() NOT NULL,
    idx integer DEFAULT 0 NOT NULL,
    uid integer DEFAULT 0 NOT NULL,
    subject character varying(128) DEFAULT ''::character varying NOT NULL,
    "from" character varying(128) DEFAULT ''::character varying NOT NULL,
    "to" character varying(128) DEFAULT ''::character varying NOT NULL,
    cc character varying(128) DEFAULT ''::character varying NOT NULL,
    date timestamp with time zone NOT NULL,
    size integer DEFAULT 0 NOT NULL,
    headers text NOT NULL,
    structure text
);

ALTER TABLE round_messages ADD UNIQUE (user_id, cache_key, uid);
CREATE INDEX messages_created_idx ON round_messages (created);

insert into round_users (username,mail_host,alias,language)
(
select 
username,
incoming_server,
title,
'en_US' 
from nbmail_incoming_accounts where username <> 'admin' and username <> '');

insert into round_identities(user_id,name,organization,email,"reply-to")
(
SELECT
"public".round_users.user_id,
"public".nbmail_incoming_accounts.full_name,
"public".nbmail_incoming_accounts.organization,
"public".nbmail_incoming_accounts.email,
"public".nbmail_incoming_accounts.reply_to
FROM
"public".nbmail_incoming_accounts
Inner Join "public".round_users ON "public".round_users.username = "public".nbmail_incoming_accounts.username
);