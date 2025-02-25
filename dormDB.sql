PGDMP         ,            
    y            dorm_service    14.0    14.0 b    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16468    dorm_service    DATABASE     v   CREATE DATABASE dorm_service WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Chinese (Traditional)_Taiwan.950';
    DROP DATABASE dorm_service;
                postgres    false            �            1259    16537    appliers    TABLE     �   CREATE TABLE public.appliers (
    applier_id integer NOT NULL,
    request_id integer NOT NULL,
    status integer DEFAULT 0,
    rating integer
);
    DROP TABLE public.appliers;
       public         heap    postgres    false            �            1259    16541 	   dormitory    TABLE     �   CREATE TABLE public.dormitory (
    location_id integer NOT NULL,
    dorm_floor_count integer NOT NULL,
    facilities text[],
    elevator_exist boolean NOT NULL
);
    DROP TABLE public.dormitory;
       public         heap    postgres    false            �            1259    16546    drive_service_post    TABLE     t   CREATE TABLE public.drive_service_post (
    request_id integer NOT NULL,
    from_id integer,
    to_id integer
);
 &   DROP TABLE public.drive_service_post;
       public         heap    postgres    false            �            1259    16549    heavylifting_service_post    TABLE     �   CREATE TABLE public.heavylifting_service_post (
    request_id integer NOT NULL,
    from_id integer,
    from_floor integer,
    to_id integer,
    to_floor integer,
    item character varying(50),
    item_weight character varying(50)
);
 -   DROP TABLE public.heavylifting_service_post;
       public         heap    postgres    false            �            1259    16552    host_event_post    TABLE     �   CREATE TABLE public.host_event_post (
    request_id integer NOT NULL,
    event_location_id integer,
    location_detail character varying(100)
);
 #   DROP TABLE public.host_event_post;
       public         heap    postgres    false            �            1259    16510    items    TABLE     �   CREATE TABLE public.items (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    price integer NOT NULL,
    on_offer boolean
);
    DROP TABLE public.items;
       public         heap    postgres    false            �            1259    16521    items2    TABLE     �   CREATE TABLE public.items2 (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    price integer NOT NULL,
    on_offer boolean
);
    DROP TABLE public.items2;
       public         heap    postgres    false            �            1259    16520    items2_id_seq    SEQUENCE     �   CREATE SEQUENCE public.items2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.items2_id_seq;
       public          postgres    false    212            �           0    0    items2_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.items2_id_seq OWNED BY public.items2.id;
          public          postgres    false    211            �            1259    16509    items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.items_id_seq;
       public          postgres    false    210            �           0    0    items_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;
          public          postgres    false    209            �            1259    16555    kill_cockroach_service_post    TABLE     x   CREATE TABLE public.kill_cockroach_service_post (
    request_id integer NOT NULL,
    requester_location_id integer
);
 /   DROP TABLE public.kill_cockroach_service_post;
       public         heap    postgres    false            �            1259    16558    levels    TABLE     �   CREATE TABLE public.levels (
    level_id integer NOT NULL,
    level_name character varying(50),
    rating_threshold real,
    count_threshold integer
);
    DROP TABLE public.levels;
       public         heap    postgres    false            �            1259    16561    location_class    TABLE     u   CREATE TABLE public.location_class (
    class_id integer NOT NULL,
    class_name character varying(20) NOT NULL
);
 "   DROP TABLE public.location_class;
       public         heap    postgres    false            �            1259    16564 	   locations    TABLE     �   CREATE TABLE public.locations (
    location_id integer NOT NULL,
    location_name character varying(50) NOT NULL,
    class integer DEFAULT 9 NOT NULL,
    longitude double precision NOT NULL,
    latitude double precision NOT NULL
);
    DROP TABLE public.locations;
       public         heap    postgres    false            �            1259    16568    locations_location_id_seq    SEQUENCE     �   CREATE SEQUENCE public.locations_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.locations_location_id_seq;
       public          postgres    false    222            �           0    0    locations_location_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.locations_location_id_seq OWNED BY public.locations.location_id;
          public          postgres    false    223            �            1259    16569    requests    TABLE     �  CREATE TABLE public.requests (
    request_id integer NOT NULL,
    requester_id integer,
    service_id integer,
    description character varying(600),
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    act_start_time timestamp without time zone,
    act_end_time timestamp without time zone,
    reward character varying(50),
    title character varying(50) NOT NULL
);
    DROP TABLE public.requests;
       public         heap    postgres    false            �            1259    16574    requests_request_id_seq    SEQUENCE     �   CREATE SEQUENCE public.requests_request_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.requests_request_id_seq;
       public          postgres    false    224            �           0    0    requests_request_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.requests_request_id_seq OWNED BY public.requests.request_id;
          public          postgres    false    225            �            1259    16575    service    TABLE     r   CREATE TABLE public.service (
    service_id integer NOT NULL,
    service_name character varying(50) NOT NULL
);
    DROP TABLE public.service;
       public         heap    postgres    false            �            1259    16578    service_service_id_seq    SEQUENCE     �   CREATE SEQUENCE public.service_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.service_service_id_seq;
       public          postgres    false    226            �           0    0    service_service_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.service_service_id_seq OWNED BY public.service.service_id;
          public          postgres    false    227            �            1259    16534    test    TABLE     N   CREATE TABLE public.test (
    applier_id integer,
    accepter_id integer
);
    DROP TABLE public.test;
       public         heap    postgres    false            �            1259    16579    user_points    TABLE     �   CREATE TABLE public.user_points (
    user_id integer NOT NULL,
    service_id integer NOT NULL,
    avg_rating real DEFAULT 0,
    counts integer DEFAULT 0 NOT NULL,
    level_id integer DEFAULT 1 NOT NULL
);
    DROP TABLE public.user_points;
       public         heap    postgres    false            �            1259    16585    users    TABLE     V  CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(50) NOT NULL,
    gender character(1) NOT NULL,
    phone_num character(10),
    fb_url character varying,
    dorm_id integer NOT NULL,
    password character varying(20) NOT NULL,
    CONSTRAINT all_digits CHECK ((phone_num !~~ '%[^0-9]%'::text))
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16591    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    229            �           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    230            �           2604    16513    items id    DEFAULT     d   ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);
 7   ALTER TABLE public.items ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    16524 	   items2 id    DEFAULT     f   ALTER TABLE ONLY public.items2 ALTER COLUMN id SET DEFAULT nextval('public.items2_id_seq'::regclass);
 8   ALTER TABLE public.items2 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    16592    locations location_id    DEFAULT     ~   ALTER TABLE ONLY public.locations ALTER COLUMN location_id SET DEFAULT nextval('public.locations_location_id_seq'::regclass);
 D   ALTER TABLE public.locations ALTER COLUMN location_id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    16593    requests request_id    DEFAULT     z   ALTER TABLE ONLY public.requests ALTER COLUMN request_id SET DEFAULT nextval('public.requests_request_id_seq'::regclass);
 B   ALTER TABLE public.requests ALTER COLUMN request_id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16594    service service_id    DEFAULT     x   ALTER TABLE ONLY public.service ALTER COLUMN service_id SET DEFAULT nextval('public.service_service_id_seq'::regclass);
 A   ALTER TABLE public.service ALTER COLUMN service_id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    16595    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    230    229            q          0    16537    appliers 
   TABLE DATA           J   COPY public.appliers (applier_id, request_id, status, rating) FROM stdin;
    public          postgres    false    214   �|       r          0    16541 	   dormitory 
   TABLE DATA           ^   COPY public.dormitory (location_id, dorm_floor_count, facilities, elevator_exist) FROM stdin;
    public          postgres    false    215   �}       s          0    16546    drive_service_post 
   TABLE DATA           H   COPY public.drive_service_post (request_id, from_id, to_id) FROM stdin;
    public          postgres    false    216   �~       t          0    16549    heavylifting_service_post 
   TABLE DATA           x   COPY public.heavylifting_service_post (request_id, from_id, from_floor, to_id, to_floor, item, item_weight) FROM stdin;
    public          postgres    false    217   �~       u          0    16552    host_event_post 
   TABLE DATA           Y   COPY public.host_event_post (request_id, event_location_id, location_detail) FROM stdin;
    public          postgres    false    218   �       m          0    16510    items 
   TABLE DATA           G   COPY public.items (id, name, description, price, on_offer) FROM stdin;
    public          postgres    false    210   ��       o          0    16521    items2 
   TABLE DATA           H   COPY public.items2 (id, name, description, price, on_offer) FROM stdin;
    public          postgres    false    212   ,�       v          0    16555    kill_cockroach_service_post 
   TABLE DATA           X   COPY public.kill_cockroach_service_post (request_id, requester_location_id) FROM stdin;
    public          postgres    false    219   I�       w          0    16558    levels 
   TABLE DATA           Y   COPY public.levels (level_id, level_name, rating_threshold, count_threshold) FROM stdin;
    public          postgres    false    220   ��       x          0    16561    location_class 
   TABLE DATA           >   COPY public.location_class (class_id, class_name) FROM stdin;
    public          postgres    false    221   �       y          0    16564 	   locations 
   TABLE DATA           [   COPY public.locations (location_id, location_name, class, longitude, latitude) FROM stdin;
    public          postgres    false    222   ��       {          0    16569    requests 
   TABLE DATA           �   COPY public.requests (request_id, requester_id, service_id, description, start_time, end_time, act_start_time, act_end_time, reward, title) FROM stdin;
    public          postgres    false    224   �       }          0    16575    service 
   TABLE DATA           ;   COPY public.service (service_id, service_name) FROM stdin;
    public          postgres    false    226   �       p          0    16534    test 
   TABLE DATA           7   COPY public.test (applier_id, accepter_id) FROM stdin;
    public          postgres    false    213   c�                 0    16579    user_points 
   TABLE DATA           X   COPY public.user_points (user_id, service_id, avg_rating, counts, level_id) FROM stdin;
    public          postgres    false    228   ��       �          0    16585    users 
   TABLE DATA           a   COPY public.users (user_id, user_name, gender, phone_num, fb_url, dorm_id, password) FROM stdin;
    public          postgres    false    229   x�       �           0    0    items2_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.items2_id_seq', 1, false);
          public          postgres    false    211            �           0    0    items_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.items_id_seq', 9, true);
          public          postgres    false    209            �           0    0    locations_location_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.locations_location_id_seq', 168, true);
          public          postgres    false    223            �           0    0    requests_request_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.requests_request_id_seq', 45, true);
          public          postgres    false    225            �           0    0    service_service_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.service_service_id_seq', 9, true);
          public          postgres    false    227            �           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 20, true);
          public          postgres    false    230            �           2606    16597    appliers appliers_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.appliers
    ADD CONSTRAINT appliers_pkey PRIMARY KEY (applier_id, request_id);
 @   ALTER TABLE ONLY public.appliers DROP CONSTRAINT appliers_pkey;
       public            postgres    false    214    214            �           2606    16599    dormitory dormitory_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.dormitory
    ADD CONSTRAINT dormitory_pkey PRIMARY KEY (location_id);
 B   ALTER TABLE ONLY public.dormitory DROP CONSTRAINT dormitory_pkey;
       public            postgres    false    215            �           2606    16601 *   drive_service_post drive_service_post_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.drive_service_post
    ADD CONSTRAINT drive_service_post_pkey PRIMARY KEY (request_id);
 T   ALTER TABLE ONLY public.drive_service_post DROP CONSTRAINT drive_service_post_pkey;
       public            postgres    false    216            �           2606    16603 8   heavylifting_service_post heavylifting_service_post_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.heavylifting_service_post
    ADD CONSTRAINT heavylifting_service_post_pkey PRIMARY KEY (request_id);
 b   ALTER TABLE ONLY public.heavylifting_service_post DROP CONSTRAINT heavylifting_service_post_pkey;
       public            postgres    false    217            �           2606    16605 $   host_event_post host_event_post_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.host_event_post
    ADD CONSTRAINT host_event_post_pkey PRIMARY KEY (request_id);
 N   ALTER TABLE ONLY public.host_event_post DROP CONSTRAINT host_event_post_pkey;
       public            postgres    false    218            �           2606    16530    items2 items2_name_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.items2
    ADD CONSTRAINT items2_name_key UNIQUE (name);
 @   ALTER TABLE ONLY public.items2 DROP CONSTRAINT items2_name_key;
       public            postgres    false    212            �           2606    16528    items2 items2_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.items2
    ADD CONSTRAINT items2_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.items2 DROP CONSTRAINT items2_pkey;
       public            postgres    false    212            �           2606    16519    items items_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.items DROP CONSTRAINT items_name_key;
       public            postgres    false    210            �           2606    16517    items items_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.items DROP CONSTRAINT items_pkey;
       public            postgres    false    210            �           2606    16607 <   kill_cockroach_service_post kill_cockroach_service_post_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.kill_cockroach_service_post
    ADD CONSTRAINT kill_cockroach_service_post_pkey PRIMARY KEY (request_id);
 f   ALTER TABLE ONLY public.kill_cockroach_service_post DROP CONSTRAINT kill_cockroach_service_post_pkey;
       public            postgres    false    219            �           2606    16609    levels levels_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.levels
    ADD CONSTRAINT levels_pkey PRIMARY KEY (level_id);
 <   ALTER TABLE ONLY public.levels DROP CONSTRAINT levels_pkey;
       public            postgres    false    220            �           2606    16611 "   location_class location_class_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.location_class
    ADD CONSTRAINT location_class_pkey PRIMARY KEY (class_id);
 L   ALTER TABLE ONLY public.location_class DROP CONSTRAINT location_class_pkey;
       public            postgres    false    221            �           2606    16613    locations locations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (location_id);
 B   ALTER TABLE ONLY public.locations DROP CONSTRAINT locations_pkey;
       public            postgres    false    222            �           2606    16615    requests requests_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT requests_pkey PRIMARY KEY (request_id);
 @   ALTER TABLE ONLY public.requests DROP CONSTRAINT requests_pkey;
       public            postgres    false    224            �           2606    16617    service service_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_pkey PRIMARY KEY (service_id);
 >   ALTER TABLE ONLY public.service DROP CONSTRAINT service_pkey;
       public            postgres    false    226            �           2606    16619    user_points user_points_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.user_points
    ADD CONSTRAINT user_points_pkey PRIMARY KEY (user_id, service_id);
 F   ALTER TABLE ONLY public.user_points DROP CONSTRAINT user_points_pkey;
       public            postgres    false    228    228            �           2606    16621    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    229            �           2606    16623    users users_user_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_name_key UNIQUE (user_name);
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT users_user_name_key;
       public            postgres    false    229            �           2606    16624    appliers fk_appliers_request_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.appliers
    ADD CONSTRAINT fk_appliers_request_id FOREIGN KEY (request_id) REFERENCES public.requests(request_id) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.appliers DROP CONSTRAINT fk_appliers_request_id;
       public          postgres    false    214    224    3268            �           2606    16629 !   appliers fk_appliers_requester_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.appliers
    ADD CONSTRAINT fk_appliers_requester_id FOREIGN KEY (applier_id) REFERENCES public.users(user_id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.appliers DROP CONSTRAINT fk_appliers_requester_id;
       public          postgres    false    214    229    3274            �           2606    16634 "   dormitory fk_dormitory_location_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.dormitory
    ADD CONSTRAINT fk_dormitory_location_id FOREIGN KEY (location_id) REFERENCES public.locations(location_id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.dormitory DROP CONSTRAINT fk_dormitory_location_id;
       public          postgres    false    215    222    3266            �           2606    16639 0   drive_service_post fk_drive_service_post_from_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.drive_service_post
    ADD CONSTRAINT fk_drive_service_post_from_id FOREIGN KEY (from_id) REFERENCES public.locations(location_id) ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.drive_service_post DROP CONSTRAINT fk_drive_service_post_from_id;
       public          postgres    false    216    222    3266            �           2606    16644 3   drive_service_post fk_drive_service_post_request_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.drive_service_post
    ADD CONSTRAINT fk_drive_service_post_request_id FOREIGN KEY (request_id) REFERENCES public.requests(request_id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.drive_service_post DROP CONSTRAINT fk_drive_service_post_request_id;
       public          postgres    false    216    224    3268            �           2606    16649 .   drive_service_post fk_drive_service_post_to_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.drive_service_post
    ADD CONSTRAINT fk_drive_service_post_to_id FOREIGN KEY (to_id) REFERENCES public.locations(location_id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.drive_service_post DROP CONSTRAINT fk_drive_service_post_to_id;
       public          postgres    false    222    3266    216            �           2606    16654 >   heavylifting_service_post fk_heavylifting_service_post_from_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.heavylifting_service_post
    ADD CONSTRAINT fk_heavylifting_service_post_from_id FOREIGN KEY (from_id) REFERENCES public.locations(location_id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.heavylifting_service_post DROP CONSTRAINT fk_heavylifting_service_post_from_id;
       public          postgres    false    3266    222    217            �           2606    16659 A   heavylifting_service_post fk_heavylifting_service_post_request_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.heavylifting_service_post
    ADD CONSTRAINT fk_heavylifting_service_post_request_id FOREIGN KEY (request_id) REFERENCES public.requests(request_id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.heavylifting_service_post DROP CONSTRAINT fk_heavylifting_service_post_request_id;
       public          postgres    false    3268    224    217            �           2606    16664 <   heavylifting_service_post fk_heavylifting_service_post_to_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.heavylifting_service_post
    ADD CONSTRAINT fk_heavylifting_service_post_to_id FOREIGN KEY (to_id) REFERENCES public.locations(location_id) ON DELETE SET NULL;
 f   ALTER TABLE ONLY public.heavylifting_service_post DROP CONSTRAINT fk_heavylifting_service_post_to_id;
       public          postgres    false    3266    222    217            �           2606    16669 4   host_event_post fk_host_event_post_event_location_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.host_event_post
    ADD CONSTRAINT fk_host_event_post_event_location_id FOREIGN KEY (event_location_id) REFERENCES public.locations(location_id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.host_event_post DROP CONSTRAINT fk_host_event_post_event_location_id;
       public          postgres    false    3266    222    218            �           2606    16674 -   host_event_post fk_host_event_post_request_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.host_event_post
    ADD CONSTRAINT fk_host_event_post_request_id FOREIGN KEY (request_id) REFERENCES public.requests(request_id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.host_event_post DROP CONSTRAINT fk_host_event_post_request_id;
       public          postgres    false    224    218    3268            �           2606    16679 E   kill_cockroach_service_post fk_kill_cockroach_service_post_request_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.kill_cockroach_service_post
    ADD CONSTRAINT fk_kill_cockroach_service_post_request_id FOREIGN KEY (request_id) REFERENCES public.requests(request_id) ON DELETE CASCADE;
 o   ALTER TABLE ONLY public.kill_cockroach_service_post DROP CONSTRAINT fk_kill_cockroach_service_post_request_id;
       public          postgres    false    219    224    3268            �           2606    16684 P   kill_cockroach_service_post fk_kill_cockroach_service_post_requester_location_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.kill_cockroach_service_post
    ADD CONSTRAINT fk_kill_cockroach_service_post_requester_location_id FOREIGN KEY (requester_location_id) REFERENCES public.locations(location_id) ON DELETE SET NULL;
 z   ALTER TABLE ONLY public.kill_cockroach_service_post DROP CONSTRAINT fk_kill_cockroach_service_post_requester_location_id;
       public          postgres    false    222    3266    219            �           2606    16689    locations fk_location_class    FK CONSTRAINT     �   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT fk_location_class FOREIGN KEY (class) REFERENCES public.location_class(class_id) ON DELETE SET DEFAULT;
 E   ALTER TABLE ONLY public.locations DROP CONSTRAINT fk_location_class;
       public          postgres    false    221    222    3264            �           2606    16694 !   requests fk_requests_requester_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT fk_requests_requester_id FOREIGN KEY (requester_id) REFERENCES public.users(user_id) ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.requests DROP CONSTRAINT fk_requests_requester_id;
       public          postgres    false    224    229    3274            �           2606    16699    requests fk_requests_service_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.requests
    ADD CONSTRAINT fk_requests_service_id FOREIGN KEY (service_id) REFERENCES public.service(service_id) ON DELETE SET NULL;
 I   ALTER TABLE ONLY public.requests DROP CONSTRAINT fk_requests_service_id;
       public          postgres    false    3270    226    224            �           2606    16704 #   user_points fk_user_points_level_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_points
    ADD CONSTRAINT fk_user_points_level_id FOREIGN KEY (level_id) REFERENCES public.levels(level_id) ON DELETE SET DEFAULT;
 M   ALTER TABLE ONLY public.user_points DROP CONSTRAINT fk_user_points_level_id;
       public          postgres    false    3262    228    220            �           2606    16709 %   user_points fk_user_points_service_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_points
    ADD CONSTRAINT fk_user_points_service_id FOREIGN KEY (service_id) REFERENCES public.service(service_id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.user_points DROP CONSTRAINT fk_user_points_service_id;
       public          postgres    false    3270    228    226            �           2606    16714 "   user_points fk_user_points_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_points
    ADD CONSTRAINT fk_user_points_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.user_points DROP CONSTRAINT fk_user_points_user_id;
       public          postgres    false    229    228    3274            �           2606    16719    users fk_users_dorm_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_dorm_id FOREIGN KEY (dorm_id) REFERENCES public.locations(location_id) ON DELETE SET NULL;
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_dorm_id;
       public          postgres    false    3266    229    222            q   �   x�M�э�0D��bN8N�MW��_�:��!$���x�@�D��&U��EԀ���o����~�֭�uD�G���5�����p����A�ړ<i$]I�T�,i�����o�'�%;+tr�����5OI*���z�af���fv&&&&&�M�M|?�A;��4g�3͙�l�l�l��q�8�;�;!�5�2��3�ɚe�Z�#�w�q��OX�=<���v������炙�}�J)?�z      r   �   x���M
�0���Y�8��z�=�;v� ��EE]T�����1mz���L��.$�}3�&� &龮;�����E�q<�u�E3/;��C�& ��G~���ӮG:�ؚ,~x�I_t�?nK��i�O�Ps��7�/e��V'�B�W ��¬�;T�J����V5�����z�&�{�r+t6�)*�M�Ρ���b�.�Lf(�A�()�J���|)YK�F)c��֕�?+CUL��H��J�a��xl�(�o9z-      s   E   x���� B�3�V��K��#z���-��Т4�6��ˍ���Y9�����8�F��!�?��      t     x�eP�J�0���>��$i���O����s
:(s̱��C��b�F��o�����E$��i�
v3��M񶅔v�v�U!��4�z�+�v6}q�|���|]_H�|���, I�0�e�8R� ���@,�Y�q�+��B\��H���g��R�h{�����x�uӜ�Z��cH��	�b�F0�����%Ϯ�th����d.��?m�niZ�澻ͳ�}����&�^�ܹI
ա��ޜ��_^n�袘���+�;��G&�:      u   �   x�U�I��@E��a�@T�K�Y@%��C$D�P�(��4��Zq��B�������@�,�eD����(��@1>�͋�����>�����ŤC�����p��vI�Sm����X�����Ֆ�s���X������s:hN�����ܾ�(|��\�v�MhZ+����i]P�HQP�}ѭ�����Gs�(T����^o?3|� �M���      m   #   x���L��ĔT��ENc0�,����� ���      o      x������ � �      v   1   x���  �wnDCQ�.�?�/5%O"� �ߡ2n٬V�[�;��2�      w   R   x�3�|6mó�nNN.#Χ�=�?�������F\Ɯ/W� Iqs�p�l��d�.NcN.SΧ:����i�i����� `~�      x   �   x�-�K
�0 ��F�w�4�P��`�H��RAr����v��,ff\]�XR5�3N`� ���Xq
�uIi.dx���6�:*���;��*����"n?Q�?\�$_����灅ϟ5о����f�Q�      y   n  x��Y�Z����03]��w9*��@���	"���X}y��*]��N"�?�[�k׾��v�D����9���n�f������O#J��(AtD�_	Q�'"�Q:�M6�����:�꼈fQ��s�wu_��*�T����P<�]�-�fA�<T3XQv׵��i�	�J������A�>��j�0VB��p@E�����0o�E�㸄�%NPmb X�HoK0!xlF���H$�x��b����(N�`
�1!��v%��E9�	u(�pUCQ�p�
F�-V�.���e��	��}��"�z���{1���g���C9�L�Cg0'����1�9�S������!�D)U�O�&��K[��q����	M�-S�j7N4��~���ġ�!�&�ے�0SR����R		��ZK#4#[[D��UD�y�F���1���3��]y6,[��hFc
����G�:"D�	SY~��ߏA������K��2����*���b�wY����.͡����������S�韢s�ĢR�.��D�,�>d�G�^��"��!M�H�?ݤ�uK���*C9��wp�^}l����� �H��w [�J;u�3��G��c�mM(%�`1C=}�ڃF<QU�;��6FG��ż�l��e����**����i��B�B��Q�y�.��1\'*�@� d%g�o�&4���阃�FN!w�X���~��ޮ����A��4b�㔘������Q+�\�Y���+���'�/8��Dp�zxH��T����|g��l�~M�m��^�A,	�X��D)�`ɮn�Z ��:s����'�&�>�`LA9_qB���{�Qa�]��p®�I�IR*a׌��)��x�$JO�針����Nw{�@�f:�I	D���1fI����?�����F+�XA�j���UA���d��S�{�v{G�+��%���sku��`Y��h�^�vZ���}�Yܵ�ei(�!#�~`�6�֢m��_�j�Y�S.T ��&��o�����7����J�p`,܄; ��n0�����b��n�OT���.�M	UT��(e������9j뿘�.��P��m�Ӆ��~�_��ו)4�̏D��%���x0Ń�,�#&_�3��'TYi�$r����5��Ӹ5$V�F!�1����&BOx�M0�b�+]\��=��׌����αD���w]=
J�~�R*P8�LSI��0�lN?���
�T����^Ri/���jV���[��,� 3F�
-���]/��8X/�,ͮQ�>m�K1��v���D�+�8�Ĩ���9��{HpMb%��23�b�ܷ4�ȅ��N�/G����JC��_.���'Oa����7�+WÁ�=`Z�l�.�K�����C�#�w��b�D����WI�eȄ�����?�������g�+ѤʁV1D��3[u��tУ�Ȧ�G\�ăC�a40�0,֥}X��G�5��$c����)����?ڡJ��~œpk3^}��M�8���v�����tz����HVΙ��R�MRROq��_����!|�bΡ����#�1B��
����pO��vF��m��w�W�q2�*��p�>��]?} ��'P��F�C3�F��n�z��/�Bf��9������Q�p*��7�4j��$I&ٴ[SUU�����N�lw^�/I��ș�Rn�o�@]�
�*�� �0?{����0m=W��]D�|�ƛ7��W�H"	��$W��w@N�V	l��J�7f� ����݀��h���t��y�cu���!�x���cq�{i畛܏��w%����|��n��12I�gâ3����q�X��NB��`2\�`h��54b����:^��@���y4��hP�m˄��-M´	�ZƦE0�ӹO�u�JȮ�ҭ8�~j��G؇���D�w7�����Z��dR�g$ʨ;BG��ͯ�7ި��x�Ks����}����sK��b��Z*Û��}�ٷ�7qKT~h*	�b��sO70)��A9���9������_�l��,3��*~BKe�	s��(���cq�F�[��S���z��Ů-�a���AE��D�T����9߱!��<;�M�=ft^M�`�;n=�ݖ��+�'[C۸�@Hι�_����s�	�IA��l�u�_.�M����(A9��Ct��|zyTt��+�w6�������;��c#�"DQEF6z\���i���L2O�e���F�4�ZY4�h�_vw����]���gC���=�x2�#fn���G�{XUwo��������C?BR"G�k���bxk_�{A
��Xz��{��n���P��4�^k6�D�y�����Yo�vߍ?It`E���X�����ln���T��/�۽��<���Å����\�?Cإ� ���˟�89@�Ch@37���q���@�`L�Ώ?f��ƶ�<��f����NvL�mA��|���#$���e�;Z=�'��2��-u�a��;Đ�W��PßAxb0�[$]���屓2yG� 9}pcxpb�:��:�\
��u`?��ݫF���Å�-G�'�����]�l�@��A�+Q�83Z|��q�x,���LA��3��e�U�����
�~=�r�-=�>��������H�(�j��OF�����6S��!|%9E;�7��5��5��I�Me��8a�S8�R0���y�`��T�g�x�5�(��uF���8F��T��(9�9���4*���އ�}�ľv�r���򗵲����qC�u��z�M�a���c��Ƿ�*
�# Q�n���=�0zz��W��J�7o�����`&�7	��(U[qr�~�l�����"�ι<�ׅ��H���W��䲯�      {   �  x��Y�n#�}&���̸Wn0���A>�@�e�Fb�#�ˀ���Dj$Q#��v%�$j��D�c��v���BN���M�a{h���KݪS�NՄ�?l��_���gPw�|��-߾e�E�n9�o/��ۯ~~\���)/�q�n��+���/�ee��}��Ko޼Ih���T��Z6��yE�'b��J�{p͛�֠��/��s��X��?�ĎnR����&�%����6�?cO�����l�g_\Ƀ8�vq��5�вK֨n��D\ϥT-撮N�e֦���;�2�h��r���_�__a+#8ƎF���"�t���毲����Wy���$�=h��e~{�:���/i$菪|��|s�T�y]a�.�=\t*Kla���w[s�Qy�����|�[�9��h��b�"�>%0�l�2Ŧ{���H(u�bӾ,�oR5��6i"zj1c�d����~���+�q�����#~r���|w���!���a�o����z&`q\t����������7/���
%>�B���6C�$�%��ڳ���ws��{�,Bd$����fk�b�]�� �蟢�P��<�&������u�~PcsK8!k���x�O�2�mϦ��o&g顒Ʋ2�ڄ����&3���`O�����tJl~ȯE*�F�\��=q��TW%V�w
����{՗�gi��b�:� ^�'�_8�s�ן����R��{w�#�u�Y�m$x�G�}��Ǒ����v����x�m���x�_��[Q>�eV��[0pC~�|nӔ�	ʂ ���|o~��#���Q5���v���Qvm!\Vx!4)���2�K��M6�~��o�l�zxp���|[~�#�n~~,&U]�8S��˔j���Z������)d��Z$
��h��&y3�6%�7ͼ���iS��J�}~n'�ߗăU�tca���Xo	} �Ȅzf&��i�+S�F�%��-k>�\��U�"���*+"��ةP-�@Ep5%+��R����Ga٘M�������M�$ʖ�f��&����*��I��N4;��eP��+�R8>šl���^d�!'�)%GH_�&�x�P%�<<��A�,�ex�6k��-��t���{��PN�u����樸��c~��j�IդW��	`B/Q��
��0�X��Wj^�į�۔X��x^|tht)��qG���@��}\�+θ�Ԏ��1J/��,5VS ��DّM�J�*1r�MU��D����q�=��I�F�G��s3�@}�	t�g��J��	k��k[���h:�%E�H��y�y.G0�IW�:Df�c6�N��u��^D����I~�(�T�]��)	�(�
�};Y�6W�n�&��[���LJU���m����\��Bb�]�
E��>!����Q�-�v��)�1W���WH[����`��0͈M�F#��N&_��$Q%p@K�;7�Γs7k�n�{ ��C^�zE�_���|`�_}q��'�JM�����D��I�Q�d�tt
� �?H��JѠ"8���Kn� l!��P� �3uw�=${:s��=��b�G#L����Bԡ�$}�Ɉ�@��WE'��Mh9�Hm/%��m�\7Ph��)+m�O|�S?���{n����^뢴�8�N�	�6��t%��<U=b����S����>���@]4%�"k��%�H>�o�R_� k4�6��;4��o���3P�S�+��Q�#�>�I
�(�z�&ww�?ɲ�#<�'�p©��j�.�>͆m�d�� ��]��i֜aOe@��ɷ�-�:�Kj���d��oiޭ_b������ڄ%��0��[���E��a"�lSNH2��ӅH��gS�0�P�0"@6]�1�b�2R�6�P蒀��&��{)�q���$��i!/��Y#I�6��P�� ʸ���8�y�n��PZ�t��Ph��'R����^�O��.p�;{�]C�%u5�jH�L�V��2����>y�w��K�����vD�-�3w�۳�s�M���&?��q��;�� 1�	�@'7��M��AĬ��_z�$<K8�*~b�_�#~еMIN��.��c�f��-ҟ���-�8��ґ����ԟ�����M����}'~�ݏ��B?����u���}MmAF������:]r��{e:�����F��O�����j&S"�K���?����DA;4����8�S�rV/+\��݆ӭwր��@tl/��Τ+��c�Z'���G����lb�^� �ЋID�]�غ���E�'=�)���m�����xJ��$�<�I�+�M�V�g�G`�%��g�j�
<�>�����lw��]V{��)��Ѡm�3�Aʨ��Ȧ�öp�b�9]�/���[�W#��tZ��bal��O�U��� ���Z��P����¾)�|���-����/�P jF�%*��}� o�[Ԏ���]��#��QG�LȐ��Pa��ni�Z�΍ eP��ް�-Zz4��+�`�1_�h=+.���Z��5�\K���M���&�G$����, kF�=�5(Q�#�A�&�B%/E=o�|�薪~��%E�|1D��ّ�\]�ۦ����Ƙ,i
8�v���s$����JShG�g#ab=��O�"���'y�����7Az����-ʔQ����C-H9�@��yhX~�[<��-֫��x<"�tC�7$ѐx�s\=jLƐM��ӳ��L�i��8�p���{v�����s|��"�/�G���kpΛ��"�G��&d�_��CY|���.�&č�^���wpc_�}L�%ߝ��D}�}���(��{Կ��*&Y/3��Tݳ�m��h��������6����,���D�T����B���|t���)�q��Fe=�L�_��NF�ڽ��{쳃K/!�� o��D9��)�۽����MBbE�¦Gmz�$����;zE��Q�>&%'E�W3��n(��o���<�ܮ�9�e9F���"�R�YY��ukD�ֿ����]i!fD#{��.)��c���o����������6���ޫUOP,?�8���]ZZ�o��J�S�5���)F6�Bg�e�f�?�]�N6]�،X�>߻ɣ�}q��,�n����D�P��:gž�Iw��wo��&|>�Q���!��U���+!��ϱ��=�Z�F˥���$�/b�� ��p��Ȉ#���FdьQ^��Yߜ��E	<��v?�@ڭ9�;�ݟ5��	'WJ���ӭ�@�Ϝ��5/YI���Ǌ5��9��:\�]����,�d��	Fp�T5b�{0�ș���	�~�ll%��㉬��[�(<y��uʬ=�C[*H�ff����Wo��#������r�]�n�����]z��9B,���!�֮Ѵj_=u��.�^�z�$�b�fՕ烠�
@���f�m��ٴt�Z��Apr2ٻ��8��.�>�q���7"ɖ"�1cw/X����������We��>`<+�)�������B_��J��6�zĦO�p��ｍɯ_%���;aT+      }   F   x�; ��1	載人服務
2	物品搬運
3	打蟑螂
4	辦活動
\.


�GM      p      x�340�4�0����� ,�         �   x�U�K�� C��0Tl�����12�-1��"l,'J��[+N���zi��&|^��[��Xw��b�Mߦoӷ��7�ַ���O?`��[�'���y�����/&5^�&�} ���B[��\�x1?�C���2��c�x����;d2hE@�Z��[mB6ւ\r�(�!���-�If�H.�=���23�����3��].�5�dǟjf��JYd      �   �  x��TMo�0>��Ic;�9 q'�qI�l	k�*	T�ڄ�&�E�4�B�@�X5(�3u�����j�",��y�|ء ����?�[�ڄ�M5�4m%7j�v���;u��|S���'�Û���|� ��r��"���^���X�D��R%[5�w�(U6y%%Cƃ�ɫ|���c���1�\I��N�ؔ�Y�h���8���(�ʴb�&Ƃb��L�NŠ/^��XtôVc!����7;D�M�&d����ۛ%�O�(8n-�|?�O�t��4�8�������`fe��[s#�\�D^�χ��d|y�,�.O�h ���_��ݶ8�]P�f�J�
(Q!������xx��V�Il�(�;i@�}����$!V�l�Ą��Qv~���?O�ɺ�b�$��Veͣ����J��v7�}#��̑Ks���y��T�;w��^�Y��2Yk��(}�H�_���Ε����1�B/���.�!x_A��i�     