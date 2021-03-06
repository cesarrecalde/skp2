PGDMP                         s            skp    9.1.13    9.1.13 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16386    skp    DATABASE     u   CREATE DATABASE skp WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_PY.UTF-8' LC_CTYPE = 'es_PY.UTF-8';
    DROP DATABASE skp;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6            �            3079    11719    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    198            �            1259    20133    autenticacion_persona    TABLE     �   CREATE TABLE autenticacion_persona (
    id integer NOT NULL,
    nombre character varying(150) NOT NULL,
    ci integer NOT NULL
);
 )   DROP TABLE public.autenticacion_persona;
       public         root    false    6            �            1259    20131    autenticacion_persona_id_seq    SEQUENCE     ~   CREATE SEQUENCE autenticacion_persona_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.autenticacion_persona_id_seq;
       public       root    false    6    179            �           0    0    autenticacion_persona_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE autenticacion_persona_id_seq OWNED BY autenticacion_persona.id;
            public       root    false    178            �            1259    16420 
   auth_group    TABLE     �   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL,
    "Fecha" timestamp with time zone,
    "Usuario_id" integer
);
    DROP TABLE public.auth_group;
       public         root    false    6            �            1259    16418    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       root    false    168    6            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       root    false    167            �            1259    16430    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         root    false    6            �            1259    16428    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       root    false    6    170            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       root    false    169            �            1259    16410    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         root    false    6            �            1259    16408    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       root    false    6    166            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       root    false    165            �            1259    16440 	   auth_user    TABLE     ^  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    direccion text,
    observacion text,
    telefono integer,
    CONSTRAINT auth_user_telefono_check CHECK ((telefono >= 0))
);
    DROP TABLE public.auth_user;
       public         root    false    1945    6            �            1259    16450    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         root    false    6            �            1259    16448    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       root    false    6    174            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       root    false    173            �            1259    16438    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       root    false    6    172            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       root    false    171            �            1259    16460    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         root    false    6            �            1259    16458 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       root    false    6    176            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       root    false    175            �            1259    32976    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         root    false    1962    6            �            1259    32983    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       root    false    196    6            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       root    false    197            �            1259    16400    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         root    false    6            �            1259    16398    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       root    false    164    6            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       root    false    163            �            1259    16389    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         root    false    6            �            1259    16387    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       root    false    162    6            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       root    false    161            �            1259    16536    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         root    false    6            �            1259    28945    flujos_actividad    TABLE     �   CREATE TABLE flujos_actividad (
    id integer NOT NULL,
    "Nombre" character varying(30) NOT NULL,
    "Orden" integer,
    "idTabla" integer
);
 $   DROP TABLE public.flujos_actividad;
       public         root    false    6            �            1259    28943    flujos_actividad_id_seq    SEQUENCE     y   CREATE SEQUENCE flujos_actividad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.flujos_actividad_id_seq;
       public       root    false    6    181            �           0    0    flujos_actividad_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE flujos_actividad_id_seq OWNED BY flujos_actividad.id;
            public       root    false    180            �            1259    28955    flujos_flujo    TABLE     �   CREATE TABLE flujos_flujo (
    id integer NOT NULL,
    "Nombre" character varying(30) NOT NULL,
    "Estado" character varying(15) NOT NULL,
    "Descripcion" text,
    "Fecha_creacion" timestamp with time zone,
    "Usuario_creador_id" integer
);
     DROP TABLE public.flujos_flujo;
       public         root    false    6            �            1259    28968    flujos_flujo_Actividades    TABLE     �   CREATE TABLE "flujos_flujo_Actividades" (
    id integer NOT NULL,
    flujo_id integer NOT NULL,
    actividad_id integer NOT NULL
);
 .   DROP TABLE public."flujos_flujo_Actividades";
       public         root    false    6            �            1259    28966    flujos_flujo_Actividades_id_seq    SEQUENCE     �   CREATE SEQUENCE "flujos_flujo_Actividades_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."flujos_flujo_Actividades_id_seq";
       public       root    false    6    185            �           0    0    flujos_flujo_Actividades_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "flujos_flujo_Actividades_id_seq" OWNED BY "flujos_flujo_Actividades".id;
            public       root    false    184            �            1259    28953    flujos_flujo_id_seq    SEQUENCE     u   CREATE SEQUENCE flujos_flujo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.flujos_flujo_id_seq;
       public       root    false    183    6            �           0    0    flujos_flujo_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE flujos_flujo_id_seq OWNED BY flujos_flujo.id;
            public       root    false    182            �            1259    29008    proyectos_proyecto    TABLE     |  CREATE TABLE proyectos_proyecto (
    id integer NOT NULL,
    "Nombre" character varying(30) NOT NULL,
    "Descripcion" text,
    "Fecha_inicio" date,
    "Fecha_finalizacion" date,
    "Cliente" character varying(30),
    "Estado" character varying(15) NOT NULL,
    "Scrum_Master_id" integer,
    "Fecha_creacion" timestamp with time zone,
    "Usuario_creador_id" integer
);
 &   DROP TABLE public.proyectos_proyecto;
       public         root    false    6            �            1259    29021     proyectos_proyecto_Grupo_trabajo    TABLE     �   CREATE TABLE "proyectos_proyecto_Grupo_trabajo" (
    id integer NOT NULL,
    proyecto_id integer NOT NULL,
    user_id integer NOT NULL
);
 6   DROP TABLE public."proyectos_proyecto_Grupo_trabajo";
       public         root    false    6            �            1259    29019 '   proyectos_proyecto_Grupo_trabajo_id_seq    SEQUENCE     �   CREATE SEQUENCE "proyectos_proyecto_Grupo_trabajo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."proyectos_proyecto_Grupo_trabajo_id_seq";
       public       root    false    189    6            �           0    0 '   proyectos_proyecto_Grupo_trabajo_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE "proyectos_proyecto_Grupo_trabajo_id_seq" OWNED BY "proyectos_proyecto_Grupo_trabajo".id;
            public       root    false    188            �            1259    29006    proyectos_proyecto_id_seq    SEQUENCE     {   CREATE SEQUENCE proyectos_proyecto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.proyectos_proyecto_id_seq;
       public       root    false    6    187            �           0    0    proyectos_proyecto_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE proyectos_proyecto_id_seq OWNED BY proyectos_proyecto.id;
            public       root    false    186            �            1259    29105    sprint_sprint    TABLE     �  CREATE TABLE sprint_sprint (
    id integer NOT NULL,
    "Nombre" character varying(30) NOT NULL,
    "Descripcion" text,
    "Fecha_inicio" date,
    "Fecha_finalizacion" date,
    "Cliente" character varying(30),
    "Estado" character varying(15) NOT NULL,
    "Fecha_creacion" timestamp with time zone,
    "Usuario_creador_id" integer,
    "Proyecto_asignado_id" integer,
    "Duracion" integer,
    is_active boolean NOT NULL,
    CONSTRAINT "sprint_sprint_Duracion_check" CHECK (("Duracion" >= 0))
);
 !   DROP TABLE public.sprint_sprint;
       public         root    false    1959    6            �            1259    29147    sprint_sprint_UserStorys    TABLE     �   CREATE TABLE "sprint_sprint_UserStorys" (
    id integer NOT NULL,
    sprint_id integer NOT NULL,
    userstory_id integer NOT NULL
);
 .   DROP TABLE public."sprint_sprint_UserStorys";
       public         root    false    6            �            1259    29145    sprint_sprint_UserStorys_id_seq    SEQUENCE     �   CREATE SEQUENCE "sprint_sprint_UserStorys_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."sprint_sprint_UserStorys_id_seq";
       public       root    false    195    6            �           0    0    sprint_sprint_UserStorys_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE "sprint_sprint_UserStorys_id_seq" OWNED BY "sprint_sprint_UserStorys".id;
            public       root    false    194            �            1259    29103    sprint_sprint_id_seq    SEQUENCE     v   CREATE SEQUENCE sprint_sprint_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sprint_sprint_id_seq;
       public       root    false    193    6            �           0    0    sprint_sprint_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE sprint_sprint_id_seq OWNED BY sprint_sprint.id;
            public       root    false    192            �            1259    29076    userstory_userstory    TABLE     �  CREATE TABLE userstory_userstory (
    id integer NOT NULL,
    "Nombre" character varying(30) NOT NULL,
    "Descripcion" text,
    "Valor_tecnico" integer,
    "Valor_de_negocio" integer,
    "Size" integer,
    "Estado" character varying(15) NOT NULL,
    "Fecha_creacion" timestamp with time zone,
    "Usuario_asignado_id" integer,
    "Usuario_creador_id" integer,
    "Proyecto_asignado_id" integer,
    is_active boolean NOT NULL,
    CONSTRAINT "userstory_userstory_Size_check" CHECK (("Size" >= 0)),
    CONSTRAINT "userstory_userstory_Valor_de_negocio_check" CHECK (("Valor_de_negocio" >= 0)),
    CONSTRAINT "userstory_userstory_Valor_tecnico_check" CHECK (("Valor_tecnico" >= 0))
);
 '   DROP TABLE public.userstory_userstory;
       public         root    false    1955    1956    1957    6            �            1259    29074    userstory_userstory_id_seq    SEQUENCE     |   CREATE SEQUENCE userstory_userstory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.userstory_userstory_id_seq;
       public       root    false    6    191            �           0    0    userstory_userstory_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE userstory_userstory_id_seq OWNED BY userstory_userstory.id;
            public       root    false    190            �           2604    32985    id    DEFAULT     v   ALTER TABLE ONLY autenticacion_persona ALTER COLUMN id SET DEFAULT nextval('autenticacion_persona_id_seq'::regclass);
 G   ALTER TABLE public.autenticacion_persona ALTER COLUMN id DROP DEFAULT;
       public       root    false    178    179    179            �           2604    32986    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       root    false    167    168    168            �           2604    32987    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       root    false    169    170    170            �           2604    32988    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       root    false    165    166    166            �           2604    32989    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       root    false    171    172    172            �           2604    32990    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       root    false    173    174    174            �           2604    32991    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       root    false    176    175    176            �           2604    32992    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       root    false    197    196            �           2604    32993    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       root    false    164    163    164            �           2604    32994    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       root    false    161    162    162            �           2604    32995    id    DEFAULT     l   ALTER TABLE ONLY flujos_actividad ALTER COLUMN id SET DEFAULT nextval('flujos_actividad_id_seq'::regclass);
 B   ALTER TABLE public.flujos_actividad ALTER COLUMN id DROP DEFAULT;
       public       root    false    181    180    181            �           2604    32996    id    DEFAULT     d   ALTER TABLE ONLY flujos_flujo ALTER COLUMN id SET DEFAULT nextval('flujos_flujo_id_seq'::regclass);
 >   ALTER TABLE public.flujos_flujo ALTER COLUMN id DROP DEFAULT;
       public       root    false    182    183    183            �           2604    32997    id    DEFAULT     �   ALTER TABLE ONLY "flujos_flujo_Actividades" ALTER COLUMN id SET DEFAULT nextval('"flujos_flujo_Actividades_id_seq"'::regclass);
 L   ALTER TABLE public."flujos_flujo_Actividades" ALTER COLUMN id DROP DEFAULT;
       public       root    false    184    185    185            �           2604    32998    id    DEFAULT     p   ALTER TABLE ONLY proyectos_proyecto ALTER COLUMN id SET DEFAULT nextval('proyectos_proyecto_id_seq'::regclass);
 D   ALTER TABLE public.proyectos_proyecto ALTER COLUMN id DROP DEFAULT;
       public       root    false    186    187    187            �           2604    32999    id    DEFAULT     �   ALTER TABLE ONLY "proyectos_proyecto_Grupo_trabajo" ALTER COLUMN id SET DEFAULT nextval('"proyectos_proyecto_Grupo_trabajo_id_seq"'::regclass);
 T   ALTER TABLE public."proyectos_proyecto_Grupo_trabajo" ALTER COLUMN id DROP DEFAULT;
       public       root    false    188    189    189            �           2604    33000    id    DEFAULT     f   ALTER TABLE ONLY sprint_sprint ALTER COLUMN id SET DEFAULT nextval('sprint_sprint_id_seq'::regclass);
 ?   ALTER TABLE public.sprint_sprint ALTER COLUMN id DROP DEFAULT;
       public       root    false    192    193    193            �           2604    33001    id    DEFAULT     �   ALTER TABLE ONLY "sprint_sprint_UserStorys" ALTER COLUMN id SET DEFAULT nextval('"sprint_sprint_UserStorys_id_seq"'::regclass);
 L   ALTER TABLE public."sprint_sprint_UserStorys" ALTER COLUMN id DROP DEFAULT;
       public       root    false    194    195    195            �           2604    33002    id    DEFAULT     r   ALTER TABLE ONLY userstory_userstory ALTER COLUMN id SET DEFAULT nextval('userstory_userstory_id_seq'::regclass);
 E   ALTER TABLE public.userstory_userstory ALTER COLUMN id DROP DEFAULT;
       public       root    false    190    191    191            �          0    20133    autenticacion_persona 
   TABLE DATA               8   COPY autenticacion_persona (id, nombre, ci) FROM stdin;
    public       root    false    179    2224   X      �           0    0    autenticacion_persona_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('autenticacion_persona_id_seq', 1, false);
            public       root    false    178            �          0    16420 
   auth_group 
   TABLE DATA               >   COPY auth_group (id, name, "Fecha", "Usuario_id") FROM stdin;
    public       root    false    168    2224   u      �           0    0    auth_group_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('auth_group_id_seq', 3, true);
            public       root    false    167            �          0    16430    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       root    false    170    2224   �      �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 148, true);
            public       root    false    169            �          0    16410    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       root    false    166    2224   �      �           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 36, true);
            public       root    false    165            �          0    16440 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, direccion, observacion, telefono) FROM stdin;
    public       root    false    172    2224   �      �          0    16450    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       root    false    174    2224   �      �           0    0    auth_user_groups_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_user_groups_id_seq', 4, true);
            public       root    false    173            �           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 4, true);
            public       root    false    171            �          0    16460    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       root    false    176    2224   �      �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       root    false    175            �          0    32976    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       root    false    196    2224   �      �           0    0    django_admin_log_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('django_admin_log_id_seq', 5, true);
            public       root    false    197            �          0    16400    django_content_type 
   TABLE DATA               B   COPY django_content_type (id, name, app_label, model) FROM stdin;
    public       root    false    164    2224   4      �           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 12, true);
            public       root    false    163            �          0    16389    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       root    false    162    2224   �      �           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 31, true);
            public       root    false    161            �          0    16536    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       root    false    177    2224   A      �          0    28945    flujos_actividad 
   TABLE DATA               E   COPY flujos_actividad (id, "Nombre", "Orden", "idTabla") FROM stdin;
    public       root    false    181    2224         �           0    0    flujos_actividad_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('flujos_actividad_id_seq', 2, true);
            public       root    false    180            �          0    28955    flujos_flujo 
   TABLE DATA               n   COPY flujos_flujo (id, "Nombre", "Estado", "Descripcion", "Fecha_creacion", "Usuario_creador_id") FROM stdin;
    public       root    false    183    2224   �      �          0    28968    flujos_flujo_Actividades 
   TABLE DATA               I   COPY "flujos_flujo_Actividades" (id, flujo_id, actividad_id) FROM stdin;
    public       root    false    185    2224   �      �           0    0    flujos_flujo_Actividades_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"flujos_flujo_Actividades_id_seq"', 2, true);
            public       root    false    184            �           0    0    flujos_flujo_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('flujos_flujo_id_seq', 3, true);
            public       root    false    182            �          0    29008    proyectos_proyecto 
   TABLE DATA               �   COPY proyectos_proyecto (id, "Nombre", "Descripcion", "Fecha_inicio", "Fecha_finalizacion", "Cliente", "Estado", "Scrum_Master_id", "Fecha_creacion", "Usuario_creador_id") FROM stdin;
    public       root    false    187    2224         �          0    29021     proyectos_proyecto_Grupo_trabajo 
   TABLE DATA               O   COPY "proyectos_proyecto_Grupo_trabajo" (id, proyecto_id, user_id) FROM stdin;
    public       root    false    189    2224   y      �           0    0 '   proyectos_proyecto_Grupo_trabajo_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"proyectos_proyecto_Grupo_trabajo_id_seq"', 4, true);
            public       root    false    188            �           0    0    proyectos_proyecto_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('proyectos_proyecto_id_seq', 1, true);
            public       root    false    186            �          0    29105    sprint_sprint 
   TABLE DATA               �   COPY sprint_sprint (id, "Nombre", "Descripcion", "Fecha_inicio", "Fecha_finalizacion", "Cliente", "Estado", "Fecha_creacion", "Usuario_creador_id", "Proyecto_asignado_id", "Duracion", is_active) FROM stdin;
    public       root    false    193    2224   �      �          0    29147    sprint_sprint_UserStorys 
   TABLE DATA               J   COPY "sprint_sprint_UserStorys" (id, sprint_id, userstory_id) FROM stdin;
    public       root    false    195    2224   �      �           0    0    sprint_sprint_UserStorys_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('"sprint_sprint_UserStorys_id_seq"', 1, true);
            public       root    false    194            �           0    0    sprint_sprint_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('sprint_sprint_id_seq', 1, true);
            public       root    false    192            �          0    29076    userstory_userstory 
   TABLE DATA               �   COPY userstory_userstory (id, "Nombre", "Descripcion", "Valor_tecnico", "Valor_de_negocio", "Size", "Estado", "Fecha_creacion", "Usuario_asignado_id", "Usuario_creador_id", "Proyecto_asignado_id", is_active) FROM stdin;
    public       root    false    191    2224   !      �           0    0    userstory_userstory_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('userstory_userstory_id_seq', 1, true);
            public       root    false    190            �           2606    20138    autenticacion_persona_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY autenticacion_persona
    ADD CONSTRAINT autenticacion_persona_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.autenticacion_persona DROP CONSTRAINT autenticacion_persona_pkey;
       public         root    false    179    179    2225            �           2606    16427    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         root    false    168    168    2225            �           2606    16437 1   auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public         root    false    170    170    170    2225            �           2606    16435    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         root    false    170    170    2225            �           2606    16425    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         root    false    168    168    2225            �           2606    16417 ,   auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public         root    false    166    166    166    2225            �           2606    16415    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         root    false    166    166    2225            �           2606    16455    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         root    false    174    174    2225            �           2606    16457 %   auth_user_groups_user_id_group_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 `   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
       public         root    false    174    174    174    2225            �           2606    16445    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         root    false    172    172    2225            �           2606    16465    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         root    false    176    176    2225            �           2606    16467 4   auth_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 y   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
       public         root    false    176    176    176    2225            �           2606    16447    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         root    false    172    172    2225                       2606    33004    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         root    false    196    196    2225            �           2606    16407 3   django_content_type_app_label_45f3b1d93ec8c61c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);
 q   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq;
       public         root    false    164    164    164    2225            �           2606    16405    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         root    false    164    164    2225            �           2606    16397    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         root    false    162    162    2225            �           2606    16543    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         root    false    177    177    2225            �           2606    28950    flujos_actividad_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY flujos_actividad
    ADD CONSTRAINT flujos_actividad_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.flujos_actividad DROP CONSTRAINT flujos_actividad_pkey;
       public         root    false    181    181    2225            �           2606    28975 2   flujos_flujo_Actividades_flujo_id_actividad_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY "flujos_flujo_Actividades"
    ADD CONSTRAINT "flujos_flujo_Actividades_flujo_id_actividad_id_key" UNIQUE (flujo_id, actividad_id);
 y   ALTER TABLE ONLY public."flujos_flujo_Actividades" DROP CONSTRAINT "flujos_flujo_Actividades_flujo_id_actividad_id_key";
       public         root    false    185    185    185    2225            �           2606    28973    flujos_flujo_Actividades_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "flujos_flujo_Actividades"
    ADD CONSTRAINT "flujos_flujo_Actividades_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."flujos_flujo_Actividades" DROP CONSTRAINT "flujos_flujo_Actividades_pkey";
       public         root    false    185    185    2225            �           2606    28965    flujos_flujo_Nombre_key 
   CONSTRAINT     ^   ALTER TABLE ONLY flujos_flujo
    ADD CONSTRAINT "flujos_flujo_Nombre_key" UNIQUE ("Nombre");
 P   ALTER TABLE ONLY public.flujos_flujo DROP CONSTRAINT "flujos_flujo_Nombre_key";
       public         root    false    183    183    2225            �           2606    28963    flujos_flujo_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY flujos_flujo
    ADD CONSTRAINT flujos_flujo_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.flujos_flujo DROP CONSTRAINT flujos_flujo_pkey;
       public         root    false    183    183    2225            �           2606    29026 %   proyectos_proyecto_Grupo_trabajo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "proyectos_proyecto_Grupo_trabajo"
    ADD CONSTRAINT "proyectos_proyecto_Grupo_trabajo_pkey" PRIMARY KEY (id);
 t   ALTER TABLE ONLY public."proyectos_proyecto_Grupo_trabajo" DROP CONSTRAINT "proyectos_proyecto_Grupo_trabajo_pkey";
       public         root    false    189    189    2225            �           2606    29028 8   proyectos_proyecto_Grupo_trabajo_proyecto_id_user_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY "proyectos_proyecto_Grupo_trabajo"
    ADD CONSTRAINT "proyectos_proyecto_Grupo_trabajo_proyecto_id_user_id_key" UNIQUE (proyecto_id, user_id);
 �   ALTER TABLE ONLY public."proyectos_proyecto_Grupo_trabajo" DROP CONSTRAINT "proyectos_proyecto_Grupo_trabajo_proyecto_id_user_id_key";
       public         root    false    189    189    189    2225            �           2606    29018    proyectos_proyecto_Nombre_key 
   CONSTRAINT     j   ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT "proyectos_proyecto_Nombre_key" UNIQUE ("Nombre");
 \   ALTER TABLE ONLY public.proyectos_proyecto DROP CONSTRAINT "proyectos_proyecto_Nombre_key";
       public         root    false    187    187    2225            �           2606    29016    proyectos_proyecto_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT proyectos_proyecto_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.proyectos_proyecto DROP CONSTRAINT proyectos_proyecto_pkey;
       public         root    false    187    187    2225                       2606    29115    sprint_sprint_Nombre_key 
   CONSTRAINT     `   ALTER TABLE ONLY sprint_sprint
    ADD CONSTRAINT "sprint_sprint_Nombre_key" UNIQUE ("Nombre");
 R   ALTER TABLE ONLY public.sprint_sprint DROP CONSTRAINT "sprint_sprint_Nombre_key";
       public         root    false    193    193    2225                       2606    29152    sprint_sprint_UserStorys_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "sprint_sprint_UserStorys"
    ADD CONSTRAINT "sprint_sprint_UserStorys_pkey" PRIMARY KEY (id);
 d   ALTER TABLE ONLY public."sprint_sprint_UserStorys" DROP CONSTRAINT "sprint_sprint_UserStorys_pkey";
       public         root    false    195    195    2225            	           2606    29154 3   sprint_sprint_UserStorys_sprint_id_userstory_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY "sprint_sprint_UserStorys"
    ADD CONSTRAINT "sprint_sprint_UserStorys_sprint_id_userstory_id_key" UNIQUE (sprint_id, userstory_id);
 z   ALTER TABLE ONLY public."sprint_sprint_UserStorys" DROP CONSTRAINT "sprint_sprint_UserStorys_sprint_id_userstory_id_key";
       public         root    false    195    195    195    2225                       2606    29113    sprint_sprint_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY sprint_sprint
    ADD CONSTRAINT sprint_sprint_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.sprint_sprint DROP CONSTRAINT sprint_sprint_pkey;
       public         root    false    193    193    2225            �           2606    29089    userstory_userstory_Nombre_key 
   CONSTRAINT     l   ALTER TABLE ONLY userstory_userstory
    ADD CONSTRAINT "userstory_userstory_Nombre_key" UNIQUE ("Nombre");
 ^   ALTER TABLE ONLY public.userstory_userstory DROP CONSTRAINT "userstory_userstory_Nombre_key";
       public         root    false    191    191    2225            �           2606    29087    userstory_userstory_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY userstory_userstory
    ADD CONSTRAINT userstory_userstory_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.userstory_userstory DROP CONSTRAINT userstory_userstory_pkey;
       public         root    false    191    191    2225            �           1259    16551    auth_group_ae6be32e    INDEX     K   CREATE INDEX auth_group_ae6be32e ON auth_group USING btree ("Usuario_id");
 '   DROP INDEX public.auth_group_ae6be32e;
       public         root    false    168    2225            �           1259    16474 %   auth_group_name_253ae2a6331666e8_like    INDEX     i   CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);
 9   DROP INDEX public.auth_group_name_253ae2a6331666e8_like;
       public         root    false    168    2225            �           1259    16485    auth_group_permissions_0e939a4f    INDEX     _   CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public         root    false    170    2225            �           1259    16486    auth_group_permissions_8373b171    INDEX     d   CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public         root    false    170    2225            �           1259    16473    auth_permission_417f1b1c    INDEX     X   CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public         root    false    166    2225            �           1259    16499    auth_user_groups_0e939a4f    INDEX     S   CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_0e939a4f;
       public         root    false    174    2225            �           1259    16498    auth_user_groups_e8701ad4    INDEX     R   CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);
 -   DROP INDEX public.auth_user_groups_e8701ad4;
       public         root    false    174    2225            �           1259    16511 #   auth_user_user_permissions_8373b171    INDEX     l   CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);
 7   DROP INDEX public.auth_user_user_permissions_8373b171;
       public         root    false    176    2225            �           1259    16510 #   auth_user_user_permissions_e8701ad4    INDEX     f   CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);
 7   DROP INDEX public.auth_user_user_permissions_e8701ad4;
       public         root    false    176    2225            �           1259    16487 (   auth_user_username_51b3b110094b8aae_like    INDEX     o   CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);
 <   DROP INDEX public.auth_user_username_51b3b110094b8aae_like;
       public         root    false    172    2225            
           1259    33005    django_admin_log_417f1b1c    INDEX     Z   CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public         root    false    196    2225                       1259    33006    django_admin_log_e8701ad4    INDEX     R   CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public         root    false    196    2225            �           1259    16544    django_session_de54fa62    INDEX     R   CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public         root    false    177    2225            �           1259    16545 0   django_session_session_key_461cfeaa630ca218_like    INDEX        CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);
 D   DROP INDEX public.django_session_session_key_461cfeaa630ca218_like;
       public         root    false    177    2225            �           1259    28976 -   flujos_actividad_Nombre_42c266ccd5b5837d_like    INDEX     }   CREATE INDEX "flujos_actividad_Nombre_42c266ccd5b5837d_like" ON flujos_actividad USING btree ("Nombre" varchar_pattern_ops);
 C   DROP INDEX public."flujos_actividad_Nombre_42c266ccd5b5837d_like";
       public         root    false    181    2225            �           1259    28982    flujos_flujo_56ac0855    INDEX     W   CREATE INDEX flujos_flujo_56ac0855 ON flujos_flujo USING btree ("Usuario_creador_id");
 )   DROP INDEX public.flujos_flujo_56ac0855;
       public         root    false    183    2225            �           1259    28995 !   flujos_flujo_Actividades_6f919ae9    INDEX     k   CREATE INDEX "flujos_flujo_Actividades_6f919ae9" ON "flujos_flujo_Actividades" USING btree (actividad_id);
 7   DROP INDEX public."flujos_flujo_Actividades_6f919ae9";
       public         root    false    185    2225            �           1259    28994 !   flujos_flujo_Actividades_bd1d5624    INDEX     g   CREATE INDEX "flujos_flujo_Actividades_bd1d5624" ON "flujos_flujo_Actividades" USING btree (flujo_id);
 7   DROP INDEX public."flujos_flujo_Actividades_bd1d5624";
       public         root    false    185    2225            �           1259    28983 (   flujos_flujo_Nombre_80ac4eefc469076_like    INDEX     t   CREATE INDEX "flujos_flujo_Nombre_80ac4eefc469076_like" ON flujos_flujo USING btree ("Nombre" varchar_pattern_ops);
 >   DROP INDEX public."flujos_flujo_Nombre_80ac4eefc469076_like";
       public         root    false    183    2225            �           1259    29048    proyectos_proyecto_56ac0855    INDEX     c   CREATE INDEX proyectos_proyecto_56ac0855 ON proyectos_proyecto USING btree ("Usuario_creador_id");
 /   DROP INDEX public.proyectos_proyecto_56ac0855;
       public         root    false    187    2225            �           1259    29047 )   proyectos_proyecto_Grupo_trabajo_e8701ad4    INDEX     v   CREATE INDEX "proyectos_proyecto_Grupo_trabajo_e8701ad4" ON "proyectos_proyecto_Grupo_trabajo" USING btree (user_id);
 ?   DROP INDEX public."proyectos_proyecto_Grupo_trabajo_e8701ad4";
       public         root    false    189    2225            �           1259    29046 )   proyectos_proyecto_Grupo_trabajo_f543c3f9    INDEX     z   CREATE INDEX "proyectos_proyecto_Grupo_trabajo_f543c3f9" ON "proyectos_proyecto_Grupo_trabajo" USING btree (proyecto_id);
 ?   DROP INDEX public."proyectos_proyecto_Grupo_trabajo_f543c3f9";
       public         root    false    189    2225            �           1259    29035 /   proyectos_proyecto_Nombre_5aa85695e8c06938_like    INDEX     �   CREATE INDEX "proyectos_proyecto_Nombre_5aa85695e8c06938_like" ON proyectos_proyecto USING btree ("Nombre" varchar_pattern_ops);
 E   DROP INDEX public."proyectos_proyecto_Nombre_5aa85695e8c06938_like";
       public         root    false    187    2225            �           1259    29034    proyectos_proyecto_f4cd2b0a    INDEX     `   CREATE INDEX proyectos_proyecto_f4cd2b0a ON proyectos_proyecto USING btree ("Scrum_Master_id");
 /   DROP INDEX public.proyectos_proyecto_f4cd2b0a;
       public         root    false    187    2225            �           1259    29121    sprint_sprint_56ac0855    INDEX     Y   CREATE INDEX sprint_sprint_56ac0855 ON sprint_sprint USING btree ("Usuario_creador_id");
 *   DROP INDEX public.sprint_sprint_56ac0855;
       public         root    false    193    2225            �           1259    29188    sprint_sprint_80b83c89    INDEX     [   CREATE INDEX sprint_sprint_80b83c89 ON sprint_sprint USING btree ("Proyecto_asignado_id");
 *   DROP INDEX public.sprint_sprint_80b83c89;
       public         root    false    193    2225            �           1259    29122 *   sprint_sprint_Nombre_427388f816e1b2ae_like    INDEX     w   CREATE INDEX "sprint_sprint_Nombre_427388f816e1b2ae_like" ON sprint_sprint USING btree ("Nombre" varchar_pattern_ops);
 @   DROP INDEX public."sprint_sprint_Nombre_427388f816e1b2ae_like";
       public         root    false    193    2225                       1259    29166 !   sprint_sprint_UserStorys_4d4c3b6a    INDEX     k   CREATE INDEX "sprint_sprint_UserStorys_4d4c3b6a" ON "sprint_sprint_UserStorys" USING btree (userstory_id);
 7   DROP INDEX public."sprint_sprint_UserStorys_4d4c3b6a";
       public         root    false    195    2225                       1259    29165 !   sprint_sprint_UserStorys_b688f27b    INDEX     h   CREATE INDEX "sprint_sprint_UserStorys_b688f27b" ON "sprint_sprint_UserStorys" USING btree (sprint_id);
 7   DROP INDEX public."sprint_sprint_UserStorys_b688f27b";
       public         root    false    195    2225            �           1259    29100    userstory_userstory_5622a7cc    INDEX     f   CREATE INDEX userstory_userstory_5622a7cc ON userstory_userstory USING btree ("Usuario_asignado_id");
 0   DROP INDEX public.userstory_userstory_5622a7cc;
       public         root    false    191    2225            �           1259    29101    userstory_userstory_56ac0855    INDEX     e   CREATE INDEX userstory_userstory_56ac0855 ON userstory_userstory USING btree ("Usuario_creador_id");
 0   DROP INDEX public.userstory_userstory_56ac0855;
       public         root    false    191    2225            �           1259    29194    userstory_userstory_80b83c89    INDEX     g   CREATE INDEX userstory_userstory_80b83c89 ON userstory_userstory USING btree ("Proyecto_asignado_id");
 0   DROP INDEX public.userstory_userstory_80b83c89;
       public         root    false    191    2225            �           1259    29102 0   userstory_userstory_Nombre_7484bc344fd54706_like    INDEX     �   CREATE INDEX "userstory_userstory_Nombre_7484bc344fd54706_like" ON userstory_userstory USING btree ("Nombre" varchar_pattern_ops);
 F   DROP INDEX public."userstory_userstory_Nombre_7484bc344fd54706_like";
       public         root    false    191    2225                       2606    29195 >   Proyecto_asignado_id_2695d2b245a67991_fk_proyectos_proyecto_id    FK CONSTRAINT     �   ALTER TABLE ONLY userstory_userstory
    ADD CONSTRAINT "Proyecto_asignado_id_2695d2b245a67991_fk_proyectos_proyecto_id" FOREIGN KEY ("Proyecto_asignado_id") REFERENCES proyectos_proyecto(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.userstory_userstory DROP CONSTRAINT "Proyecto_asignado_id_2695d2b245a67991_fk_proyectos_proyecto_id";
       public       root    false    2029    187    191    2225            !           2606    29189 >   Proyecto_asignado_id_4faf80a0d82ce869_fk_proyectos_proyecto_id    FK CONSTRAINT     �   ALTER TABLE ONLY sprint_sprint
    ADD CONSTRAINT "Proyecto_asignado_id_4faf80a0d82ce869_fk_proyectos_proyecto_id" FOREIGN KEY ("Proyecto_asignado_id") REFERENCES proyectos_proyecto(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.sprint_sprint DROP CONSTRAINT "Proyecto_asignado_id_4faf80a0d82ce869_fk_proyectos_proyecto_id";
       public       root    false    193    187    2029    2225                       2606    16468 ?   auth_content_type_id_508cf46651277a81_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id;
       public       root    false    1967    164    166    2225                       2606    16552 6   auth_group_Usuario_id_63c754eb6bfcbf97_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT "auth_group_Usuario_id_63c754eb6bfcbf97_fk_auth_user_id" FOREIGN KEY ("Usuario_id") REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT "auth_group_Usuario_id_63c754eb6bfcbf97_fk_auth_user_id";
       public       root    false    168    172    1986    2225                       2606    16475 ?   auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id;
       public       root    false    168    1978    170    2225                       2606    16480 ?   auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id;
       public       root    false    170    166    1972    2225                       2606    16505 ?   auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id;
       public       root    false    1972    176    166    2225                       2606    16493 ;   auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id;
       public       root    false    168    1978    174    2225                       2606    16488 9   auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id;
       public       root    false    172    1986    174    2225                       2606    16500 ?   auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id;
       public       root    false    176    1986    172    2225            $           2606    33007 ?   djan_content_type_id_697914295151027a_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id;
       public       root    false    164    196    1967    2225            %           2606    33012 9   django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id;
       public       root    false    1986    196    172    2225                       2606    29178 ?   flujos_flu_actividad_id_59b690fd57c2646c_fk_flujos_actividad_id    FK CONSTRAINT     �   ALTER TABLE ONLY "flujos_flujo_Actividades"
    ADD CONSTRAINT flujos_flu_actividad_id_59b690fd57c2646c_fk_flujos_actividad_id FOREIGN KEY (actividad_id) REFERENCES flujos_actividad(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."flujos_flujo_Actividades" DROP CONSTRAINT flujos_flu_actividad_id_59b690fd57c2646c_fk_flujos_actividad_id;
       public       root    false    2010    181    185    2225                       2606    28977 ?   flujos_fluj_Usuario_creador_id_66a0c65a8ec3a8fe_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY flujos_flujo
    ADD CONSTRAINT "flujos_fluj_Usuario_creador_id_66a0c65a8ec3a8fe_fk_auth_user_id" FOREIGN KEY ("Usuario_creador_id") REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.flujos_flujo DROP CONSTRAINT "flujos_fluj_Usuario_creador_id_66a0c65a8ec3a8fe_fk_auth_user_id";
       public       root    false    1986    172    183    2225                       2606    29183 ?   flujos_flujo_Activ_flujo_id_3db7e564f60f262d_fk_flujos_flujo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "flujos_flujo_Actividades"
    ADD CONSTRAINT "flujos_flujo_Activ_flujo_id_3db7e564f60f262d_fk_flujos_flujo_id" FOREIGN KEY (flujo_id) REFERENCES flujos_flujo(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."flujos_flujo_Actividades" DROP CONSTRAINT "flujos_flujo_Activ_flujo_id_3db7e564f60f262d_fk_flujos_flujo_id";
       public       root    false    2016    183    185    2225                       2606    29054 ?   proyectos_p_Usuario_creador_id_38d44a92317cc7c4_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT "proyectos_p_Usuario_creador_id_38d44a92317cc7c4_fk_auth_user_id" FOREIGN KEY ("Usuario_creador_id") REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.proyectos_proyecto DROP CONSTRAINT "proyectos_p_Usuario_creador_id_38d44a92317cc7c4_fk_auth_user_id";
       public       root    false    172    1986    187    2225                       2606    29069 ?   proyectos_proy_Scrum_Master_id_144dc0737423a5d7_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT "proyectos_proy_Scrum_Master_id_144dc0737423a5d7_fk_auth_user_id" FOREIGN KEY ("Scrum_Master_id") REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.proyectos_proyecto DROP CONSTRAINT "proyectos_proy_Scrum_Master_id_144dc0737423a5d7_fk_auth_user_id";
       public       root    false    187    172    1986    2225                       2606    29059 ?   proyectos_proyecto_Gru_user_id_44d9f00ab5a73817_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY "proyectos_proyecto_Grupo_trabajo"
    ADD CONSTRAINT "proyectos_proyecto_Gru_user_id_44d9f00ab5a73817_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."proyectos_proyecto_Grupo_trabajo" DROP CONSTRAINT "proyectos_proyecto_Gru_user_id_44d9f00ab5a73817_fk_auth_user_id";
       public       root    false    172    1986    189    2225                       2606    29064 ?   proyectos_proyecto_id_190ad33de9827525_fk_proyectos_proyecto_id    FK CONSTRAINT     �   ALTER TABLE ONLY "proyectos_proyecto_Grupo_trabajo"
    ADD CONSTRAINT proyectos_proyecto_id_190ad33de9827525_fk_proyectos_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES proyectos_proyecto(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."proyectos_proyecto_Grupo_trabajo" DROP CONSTRAINT proyectos_proyecto_id_190ad33de9827525_fk_proyectos_proyecto_id;
       public       root    false    187    189    2029    2225            #           2606    29160 ?   sprint__userstory_id_1bfe27b6ad70d8e6_fk_userstory_userstory_id    FK CONSTRAINT     �   ALTER TABLE ONLY "sprint_sprint_UserStorys"
    ADD CONSTRAINT sprint__userstory_id_1bfe27b6ad70d8e6_fk_userstory_userstory_id FOREIGN KEY (userstory_id) REFERENCES userstory_userstory(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."sprint_sprint_UserStorys" DROP CONSTRAINT sprint__userstory_id_1bfe27b6ad70d8e6_fk_userstory_userstory_id;
       public       root    false    195    2043    191    2225                        2606    29116 ?   sprint_spri_Usuario_creador_id_75cf8853232a8ac6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY sprint_sprint
    ADD CONSTRAINT "sprint_spri_Usuario_creador_id_75cf8853232a8ac6_fk_auth_user_id" FOREIGN KEY ("Usuario_creador_id") REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.sprint_sprint DROP CONSTRAINT "sprint_spri_Usuario_creador_id_75cf8853232a8ac6_fk_auth_user_id";
       public       root    false    1986    172    193    2225            "           2606    29155 ?   sprint_sprint_Us_sprint_id_1f59335fd4aa3ee1_fk_sprint_sprint_id    FK CONSTRAINT     �   ALTER TABLE ONLY "sprint_sprint_UserStorys"
    ADD CONSTRAINT "sprint_sprint_Us_sprint_id_1f59335fd4aa3ee1_fk_sprint_sprint_id" FOREIGN KEY (sprint_id) REFERENCES sprint_sprint(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."sprint_sprint_UserStorys" DROP CONSTRAINT "sprint_sprint_Us_sprint_id_1f59335fd4aa3ee1_fk_sprint_sprint_id";
       public       root    false    193    195    2050    2225                       2606    29090 ?   userstory__Usuario_asignado_id_6b3174574270adab_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY userstory_userstory
    ADD CONSTRAINT "userstory__Usuario_asignado_id_6b3174574270adab_fk_auth_user_id" FOREIGN KEY ("Usuario_asignado_id") REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.userstory_userstory DROP CONSTRAINT "userstory__Usuario_asignado_id_6b3174574270adab_fk_auth_user_id";
       public       root    false    172    191    1986    2225                       2606    29095 ?   userstory_us_Usuario_creador_id_5747c880a471a6e_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY userstory_userstory
    ADD CONSTRAINT "userstory_us_Usuario_creador_id_5747c880a471a6e_fk_auth_user_id" FOREIGN KEY ("Usuario_creador_id") REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.userstory_userstory DROP CONSTRAINT "userstory_us_Usuario_creador_id_5747c880a471a6e_fk_auth_user_id";
       public       root    false    191    1986    172    2225            �      x������ � �      �   N   x�3�LL����,.)JL�/�4204�50�52R02�#=3#�(�	�1�#v�
F�V�FV��z�&F�P�1z\\\ 3b�      �   	  x�ѻ��0C��(fG (zy�ױ�2�Ϙ���Eܙi���/s�+����y�zAg}����n�E(�‥��Z��b|�j|�r��zZP=:%����@���z��zz�zz�z��z^p=�g��L��<p=oL=�X_N��P�;;��@�s��&����[ge'Ot��@�@:`DUl"�l#�l$M%�j2QeӉ��v/�Rt夢+�}�5�+�]9����EWN0�r�q*'���O+'�r�q*'�d�<��S9�8�����wR�      �   �  x�]�Mn�0F��)8A5I�]��*�jJd*����v�<�E��h���E?����7������Ͻ�%����|w�Z����B��%I��N�6�Y�h�Tқ�(l-��n�6d����(��Z�<�.�4�J�o$xnnUe�|��r>���	0r<8=��~�}�8UE	���R�.0:3����G���N��t�u<V�y f�MX+�����N�f�s��31G�v�2���KT�$̰n�/7�����̈́L�F�L���$�"i?��o�Qu�J5�Zj%�^�6R,Q4�%�����՞��0�t���؛��&d4gfY�9(��T���F�� �=4L��A��ְ؂?#C�`��J2)6�����-M�� �X��H      �   �   x�m�[K�P�g���[��s.ꁠ�t��E��Y�����T���%"ؙa��Ï(m��f�ڿEȸf2 ��1�Q����Q;���jW����&~�F5��$��L~=�}z����`�9�9���p��m��W�&�p������gH���>�	��ғ��M���X3Yʥֺ��d�}1^X'����H�!p���/�,���"��tf�%������Һ�N�ý8l=i�SV[ ��������sX�      �      x�3�4�4����� 	_      �      x������ � �      �   Y   x�3�4204�50�50S02�2��26ӳ�0723�rs��Xrq:g$楧�(d��$��)$�A8��E�ũEz�&�&\1z\\\ ���      �   �   x�]�K�0D��)zD��.l�4��6�b���I�
X͛�e�V0P�X/qݍ�g_,�l�#:�����H)Լ !��5Ʉ'0�e���j2��3��[��w2y�����h���"M�m����v���1��\�T����"�p��˯�j�M͟��Gx�!���w#      �   ?  x���[n�0@��*�����T�P��0jCH��~�iR�����9�/_l��iN���2� `O�2�O���fO�)u(�'�~�Q�_�?w�ؕ�|O?!�(��4�0��t�1�H	R�Lo�Q�OSX��Nв��d����}�ً��άp��x������{�N|�zuFiEm����w��*�=��l��p �2.c�h!F+��[��V�7/��m8.���H61��+N	фu���T��C��
�+<�ݢ�R!_LUY56�4�����%&��R*L����A�a�3�~�C��<��e:���9�%��8��/���y�Ӑ�͠�o�!����vh�],��k��s���4s�K���<�w�0^no�d��;�!���$�0�:��Đ5^V^L���8}�e|1zDi���6�3^?��{��,}��������S�8U-РI�O�'Y�tyEJsL��
��0Ρ?.���p{��mE�dKʖ
w��;M�����e��ky/�m-�`����6W����Ei�0�5լ��;��m%0��b����E��jG��|<�������B      �   .  x��ˎ�8�����Av�N�Hg��iP'(\l�&�K�Đ !�?��,F�ٌ�fZ�Edٮ����
��J�m���Kʲ����8�j���T�B5/"Y�>�P�U�Lh��H�'F&R	�Ta X�)�LL��������v=?�����t��G&}�8-��j�d��N�,�3$�,e��Fy�B���\�V|�O�b�D�������k�ѳ".�e�G�������Z��S��77�%����2�#�²�����\��T�{�0���7@ >�>xC�9��]�w��ˮ�]��Us:pRh�T�v�Sx�Q�r(���A�dk9Uy�0��r���R�A^�~;��`�E���H�a��Ad��y����KKN-�\�J��Q9��8����/�6��͆3 ����<�A{����]iꔏ�9��Sw ���	��v���e6��~.�~v�68ې�b�c�n�<5�� *�A����*d��&��}l�䅵 ��i´z2������A���I��g߿�iu����|fs;��W�2o�u��C���fSO���_M�7_V�t�]���������zGuV���Wt���>����5�mݤ��f67 �g��6�.房4ӎ���V-i��Tͱ�ަ��ǹ+{q�Y�G�e[Z�:O[C.��C�JE��,u,��I�/s6�Q0�5���B$����������2���;Y����L�x��5���[���İO���}r��y��������s~��~d��xSh��{d'�cg�8.�^~ۡ?�S�E�Zv��MM��nvs����o���]�}��a���U7      �      x�3�4Bc.#N4����� N�      �   >   x�3�,/L�tL.�,��,O-,�4204�50�52Q02�25�20�376701�rs��qqq �f      �      x�3�4�4�2�F\1z\\\ ?      �   L   x�3�,(ʯLM.�W0�����΀Լ��Լ�TNcN#CS]]##c+cS+cs=Ssc�(�1W� ���      �      x�3�4�4����� 	]      �   R   x�3�,(ʯLM.�W0�L,N��! # 5/%35�$�����T��D��B��������B������(�i�i�i�Y����� cU�      �      x�3�4�4����� �X      �   K   x�3�,-V0��F`�X������\P��W�id`h�k`�kd�`dlehjeh�gdabjn�4BC��=... ���     