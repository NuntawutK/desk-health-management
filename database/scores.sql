PGDMP         	            
    {            taskheal    15.4    15.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16423    taskheal    DATABASE     �   CREATE DATABASE taskheal WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.874';
    DROP DATABASE taskheal;
                postgres    false            �            1259    16540    scores    TABLE     �   CREATE TABLE public.scores (
    score_id integer NOT NULL,
    user_id integer NOT NULL,
    task_description text,
    score_value integer,
    watch_time integer,
    score_date date
);
    DROP TABLE public.scores;
       public         heap    postgres    false            �            1259    16539    scores_score_id_seq    SEQUENCE     �   CREATE SEQUENCE public.scores_score_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.scores_score_id_seq;
       public          postgres    false    223                       0    0    scores_score_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.scores_score_id_seq OWNED BY public.scores.score_id;
          public          postgres    false    222            x           2604    16543    scores score_id    DEFAULT     r   ALTER TABLE ONLY public.scores ALTER COLUMN score_id SET DEFAULT nextval('public.scores_score_id_seq'::regclass);
 >   ALTER TABLE public.scores ALTER COLUMN score_id DROP DEFAULT;
       public          postgres    false    223    222    223                      0    16540    scores 
   TABLE DATA           j   COPY public.scores (score_id, user_id, task_description, score_value, watch_time, score_date) FROM stdin;
    public          postgres    false    223   y                  0    0    scores_score_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.scores_score_id_seq', 4, true);
          public          postgres    false    222            z           2606    16547    scores scores_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.scores
    ADD CONSTRAINT scores_pkey PRIMARY KEY (score_id);
 <   ALTER TABLE ONLY public.scores DROP CONSTRAINT scores_pkey;
       public            postgres    false    223            {           2606    16605    scores score_user_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.scores
    ADD CONSTRAINT score_user_fk FOREIGN KEY (user_id) REFERENCES public.users(user_id) NOT VALID;
 >   ALTER TABLE ONLY public.scores DROP CONSTRAINT score_user_fk;
       public          postgres    false    223               �   x�}�Kn�0D��)���t�.����KA��D��9�"���m{|�>~�۲, ���e���!)]�c��*���2�Au���U֠���0rQ����H�,[�Ƕ�(nH5�$�2����
u<(�%��Y�R!��W�;t�	C|?C\�tB|�//
���� λio�x��0U3Ytp#�t&�(�r��XZf��ޝ�Vp�����m:9�V�^���Q���7T��D�?B7��     