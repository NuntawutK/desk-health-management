PGDMP     +                
    {            taskheal    15.4    15.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16423    taskheal    DATABASE     �   CREATE DATABASE taskheal WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.874';
    DROP DATABASE taskheal;
                postgres    false            �            1259    16533    institution    TABLE     v   CREATE TABLE public.institution (
    institution_id integer NOT NULL,
    institution_name character varying(255)
);
    DROP TABLE public.institution;
       public         heap    postgres    false            �            1259    16532    institution_institution_id_seq    SEQUENCE     �   CREATE SEQUENCE public.institution_institution_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.institution_institution_id_seq;
       public          postgres    false    221                       0    0    institution_institution_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.institution_institution_id_seq OWNED BY public.institution.institution_id;
          public          postgres    false    220            x           2604    16536    institution institution_id    DEFAULT     �   ALTER TABLE ONLY public.institution ALTER COLUMN institution_id SET DEFAULT nextval('public.institution_institution_id_seq'::regclass);
 I   ALTER TABLE public.institution ALTER COLUMN institution_id DROP DEFAULT;
       public          postgres    false    221    220    221            
          0    16533    institution 
   TABLE DATA           G   COPY public.institution (institution_id, institution_name) FROM stdin;
    public          postgres    false    221   i                  0    0    institution_institution_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.institution_institution_id_seq', 40, true);
          public          postgres    false    220            z           2606    16538    institution institution_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.institution
    ADD CONSTRAINT institution_pkey PRIMARY KEY (institution_id);
 F   ALTER TABLE ONLY public.institution DROP CONSTRAINT institution_pkey;
       public            postgres    false    221            
   �   x�u��j�0�ϫ����N��cB.!9�ҋP{A^���QJ�V.�-3;b����N1�+�bDG<�JBgPG:�KhG���dF-�d������ʍ^���2��'NC��Z�08k0N��:��Y���*��Kt3.�(7�F�4��H	�QT.�KxSw&g�6:�>�+�UHT �?�~S�hB�(�d�!k8ؠ8M{8�جy��=����� U�Ͽ4p�ڈ�'!�����     