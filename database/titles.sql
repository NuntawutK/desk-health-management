PGDMP     /    	            
    {            taskheal    15.4    15.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16423    taskheal    DATABASE     �   CREATE DATABASE taskheal WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.874';
    DROP DATABASE taskheal;
                postgres    false            �            1259    16526    titles    TABLE     e   CREATE TABLE public.titles (
    title_id integer NOT NULL,
    title_name character varying(255)
);
    DROP TABLE public.titles;
       public         heap    postgres    false            �            1259    16525    titles_title_id_seq    SEQUENCE     �   CREATE SEQUENCE public.titles_title_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.titles_title_id_seq;
       public          postgres    false    219                       0    0    titles_title_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.titles_title_id_seq OWNED BY public.titles.title_id;
          public          postgres    false    218            x           2604    16529    titles title_id    DEFAULT     r   ALTER TABLE ONLY public.titles ALTER COLUMN title_id SET DEFAULT nextval('public.titles_title_id_seq'::regclass);
 >   ALTER TABLE public.titles ALTER COLUMN title_id DROP DEFAULT;
       public          postgres    false    218    219    219            
          0    16526    titles 
   TABLE DATA           6   COPY public.titles (title_id, title_name) FROM stdin;
    public          postgres    false    219   �
                  0    0    titles_title_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.titles_title_id_seq', 9, true);
          public          postgres    false    218            z           2606    16531    titles titles_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);
 <   ALTER TABLE ONLY public.titles DROP CONSTRAINT titles_pkey;
       public            postgres    false    219            
   ^   x�M�9
�0E���U����P����	!����c���ZLTTb,��h�Rщ�U���!gQ���p92DL2���ީ��*_������I�P �G (     