PGDMP      !                }            admin_management    16.3    16.3 S    L           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            M           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            N           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            O           1262    1494127    admin_management    DATABASE     �   CREATE DATABASE admin_management WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
     DROP DATABASE admin_management;
                postgres    false            �            1259    1518788    carts    TABLE     �   CREATE TABLE public.carts (
    id bigint NOT NULL,
    user_id bigint,
    product_id bigint,
    qty numeric,
    price numeric,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.carts;
       public         heap    postgres    false            �            1259    1518787    carts_id_seq    SEQUENCE     u   CREATE SEQUENCE public.carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.carts_id_seq;
       public          postgres    false    227            P           0    0    carts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;
          public          postgres    false    226            �            1259    1518763 	   customers    TABLE     Y   CREATE TABLE public.customers (
    id bigint NOT NULL,
    name text,
    email text
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    1518762    customers_id_seq    SEQUENCE     y   CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.customers_id_seq;
       public          postgres    false    225            Q           0    0    customers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
          public          postgres    false    224            �            1259    1494161    permissions    TABLE     K   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name text
);
    DROP TABLE public.permissions;
       public         heap    postgres    false            �            1259    1494160    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public          postgres    false    220            R           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
          public          postgres    false    219            �            1259    1510876    products    TABLE       CREATE TABLE public.products (
    id bigint NOT NULL,
    title text,
    description text,
    price numeric,
    img_url text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    barcode text,
    stock numeric,
    sell_price numeric
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    1510875    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    223            S           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    222            �            1259    1535122    profits    TABLE     �   CREATE TABLE public.profits (
    id bigint NOT NULL,
    transaction_id bigint,
    total numeric,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.profits;
       public         heap    postgres    false            �            1259    1535121    profits_id_seq    SEQUENCE     w   CREATE SEQUENCE public.profits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.profits_id_seq;
       public          postgres    false    233            T           0    0    profits_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.profits_id_seq OWNED BY public.profits.id;
          public          postgres    false    232            �            1259    1510500    role_permissions    TABLE     i   CREATE TABLE public.role_permissions (
    role_id bigint NOT NULL,
    permission_id bigint NOT NULL
);
 $   DROP TABLE public.role_permissions;
       public         heap    postgres    false            �            1259    1494147    roles    TABLE     E   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name text
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    1494146    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    218            U           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    217            �            1259    1526943    transaction_details    TABLE     �   CREATE TABLE public.transaction_details (
    id integer NOT NULL,
    transaction_id bigint,
    product_id bigint,
    qty numeric,
    price numeric
);
 '   DROP TABLE public.transaction_details;
       public         heap    postgres    false            �            1259    1526942    transaction_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transaction_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.transaction_details_id_seq;
       public          postgres    false    231            V           0    0    transaction_details_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.transaction_details_id_seq OWNED BY public.transaction_details.id;
          public          postgres    false    230            �            1259    1526929    transactions    TABLE     "  CREATE TABLE public.transactions (
    id bigint NOT NULL,
    user_id bigint,
    customer_id bigint,
    invoice text,
    cash numeric,
    change numeric,
    discount numeric,
    grand_total numeric,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
     DROP TABLE public.transactions;
       public         heap    postgres    false            �            1259    1526928    transactions_id_seq    SEQUENCE     |   CREATE SEQUENCE public.transactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.transactions_id_seq;
       public          postgres    false    229            W           0    0    transactions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;
          public          postgres    false    228            �            1259    1494129    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    first_name text,
    last_name text,
    email text,
    password bytea,
    role_id bigint
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    1494128    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    216            X           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    215            �           2604    1518791    carts id    DEFAULT     d   ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);
 7   ALTER TABLE public.carts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    1518766    customers id    DEFAULT     l   ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);
 ;   ALTER TABLE public.customers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            ~           2604    1494164    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220                       2604    1510879    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    1535125 
   profits id    DEFAULT     h   ALTER TABLE ONLY public.profits ALTER COLUMN id SET DEFAULT nextval('public.profits_id_seq'::regclass);
 9   ALTER TABLE public.profits ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            }           2604    1494150    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    1526946    transaction_details id    DEFAULT     �   ALTER TABLE ONLY public.transaction_details ALTER COLUMN id SET DEFAULT nextval('public.transaction_details_id_seq'::regclass);
 E   ALTER TABLE public.transaction_details ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    1526932    transactions id    DEFAULT     r   ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);
 >   ALTER TABLE public.transactions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            |           2604    1494132    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            C          0    1518788    carts 
   TABLE DATA           \   COPY public.carts (id, user_id, product_id, qty, price, created_at, updated_at) FROM stdin;
    public          postgres    false    227   �_       A          0    1518763 	   customers 
   TABLE DATA           4   COPY public.customers (id, name, email) FROM stdin;
    public          postgres    false    225   �_       <          0    1494161    permissions 
   TABLE DATA           /   COPY public.permissions (id, name) FROM stdin;
    public          postgres    false    220   �`       ?          0    1510876    products 
   TABLE DATA           ~   COPY public.products (id, title, description, price, img_url, created_at, updated_at, barcode, stock, sell_price) FROM stdin;
    public          postgres    false    223   �`       I          0    1535122    profits 
   TABLE DATA           T   COPY public.profits (id, transaction_id, total, created_at, updated_at) FROM stdin;
    public          postgres    false    233   �c       =          0    1510500    role_permissions 
   TABLE DATA           B   COPY public.role_permissions (role_id, permission_id) FROM stdin;
    public          postgres    false    221   d       :          0    1494147    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    218   cd       G          0    1526943    transaction_details 
   TABLE DATA           Y   COPY public.transaction_details (id, transaction_id, product_id, qty, price) FROM stdin;
    public          postgres    false    231   �d       E          0    1526929    transactions 
   TABLE DATA           �   COPY public.transactions (id, user_id, customer_id, invoice, cash, change, discount, grand_total, created_at, updated_at) FROM stdin;
    public          postgres    false    229   (e       8          0    1494129    users 
   TABLE DATA           T   COPY public.users (id, first_name, last_name, email, password, role_id) FROM stdin;
    public          postgres    false    216   �f       Y           0    0    carts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.carts_id_seq', 43, true);
          public          postgres    false    226            Z           0    0    customers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customers_id_seq', 8, true);
          public          postgres    false    224            [           0    0    permissions_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.permissions_id_seq', 8, true);
          public          postgres    false    219            \           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 16, true);
          public          postgres    false    222            ]           0    0    profits_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.profits_id_seq', 3, true);
          public          postgres    false    232            ^           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 12, true);
          public          postgres    false    217            _           0    0    transaction_details_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.transaction_details_id_seq', 27, true);
          public          postgres    false    230            `           0    0    transactions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.transactions_id_seq', 24, true);
          public          postgres    false    228            a           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 30, true);
          public          postgres    false    215            �           2606    1518795    carts carts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_pkey;
       public            postgres    false    227            �           2606    1518770    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    225            �           2606    1494168    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    220            �           2606    1510883    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    223            �           2606    1535129    profits profits_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.profits
    ADD CONSTRAINT profits_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.profits DROP CONSTRAINT profits_pkey;
       public            postgres    false    233            �           2606    1510504 &   role_permissions role_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT role_permissions_pkey PRIMARY KEY (role_id, permission_id);
 P   ALTER TABLE ONLY public.role_permissions DROP CONSTRAINT role_permissions_pkey;
       public            postgres    false    221    221            �           2606    1494154    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    218            �           2606    1526948 ,   transaction_details transaction_details_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.transaction_details
    ADD CONSTRAINT transaction_details_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.transaction_details DROP CONSTRAINT transaction_details_pkey;
       public            postgres    false    231            �           2606    1526936    transactions transactions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_pkey;
       public            postgres    false    229            �           2606    1518772    customers uni_customers_email 
   CONSTRAINT     Y   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT uni_customers_email UNIQUE (email);
 G   ALTER TABLE ONLY public.customers DROP CONSTRAINT uni_customers_email;
       public            postgres    false    225            �           2606    1494138    users uni_users_email 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uni_users_email UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT uni_users_email;
       public            postgres    false    216            �           2606    1494136    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            �           2606    1526937    carts fk_carts_product    FK CONSTRAINT     {   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT fk_carts_product FOREIGN KEY (product_id) REFERENCES public.products(id);
 @   ALTER TABLE ONLY public.carts DROP CONSTRAINT fk_carts_product;
       public          postgres    false    223    227    4752            �           2606    1535130    profits fk_profits_transaction    FK CONSTRAINT     �   ALTER TABLE ONLY public.profits
    ADD CONSTRAINT fk_profits_transaction FOREIGN KEY (transaction_id) REFERENCES public.transactions(id);
 H   ALTER TABLE ONLY public.profits DROP CONSTRAINT fk_profits_transaction;
       public          postgres    false    229    4760    233            �           2606    1510505 /   role_permissions fk_role_permissions_permission    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT fk_role_permissions_permission FOREIGN KEY (permission_id) REFERENCES public.permissions(id);
 Y   ALTER TABLE ONLY public.role_permissions DROP CONSTRAINT fk_role_permissions_permission;
       public          postgres    false    220    4748    221            �           2606    1510510 )   role_permissions fk_role_permissions_role    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_permissions
    ADD CONSTRAINT fk_role_permissions_role FOREIGN KEY (role_id) REFERENCES public.roles(id);
 S   ALTER TABLE ONLY public.role_permissions DROP CONSTRAINT fk_role_permissions_role;
       public          postgres    false    221    4746    218            �           2606    1535145 $   transactions fk_transactions_cashier    FK CONSTRAINT     �   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT fk_transactions_cashier FOREIGN KEY (user_id) REFERENCES public.users(id);
 N   ALTER TABLE ONLY public.transactions DROP CONSTRAINT fk_transactions_cashier;
       public          postgres    false    4744    216    229            �           2606    1535140 %   transactions fk_transactions_customer    FK CONSTRAINT     �   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT fk_transactions_customer FOREIGN KEY (customer_id) REFERENCES public.customers(id);
 O   ALTER TABLE ONLY public.transactions DROP CONSTRAINT fk_transactions_customer;
       public          postgres    false    229    225    4754            �           2606    1526991 7   transaction_details fk_transactions_transaction_details    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaction_details
    ADD CONSTRAINT fk_transactions_transaction_details FOREIGN KEY (transaction_id) REFERENCES public.transactions(id);
 a   ALTER TABLE ONLY public.transaction_details DROP CONSTRAINT fk_transactions_transaction_details;
       public          postgres    false    229    4760    231            �           2606    1535135 !   transactions fk_transactions_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT fk_transactions_user FOREIGN KEY (user_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.transactions DROP CONSTRAINT fk_transactions_user;
       public          postgres    false    216    4744    229            �           2606    1494155    users fk_users_role    FK CONSTRAINT     r   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_users_role FOREIGN KEY (role_id) REFERENCES public.roles(id);
 =   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_users_role;
       public          postgres    false    218    216    4746            �           2606    1526968 7   transaction_details transaction_details_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaction_details
    ADD CONSTRAINT transaction_details_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id);
 a   ALTER TABLE ONLY public.transaction_details DROP CONSTRAINT transaction_details_product_id_fkey;
       public          postgres    false    4752    231    223            �           2606    1526959 ;   transaction_details transaction_details_transaction_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaction_details
    ADD CONSTRAINT transaction_details_transaction_id_fkey FOREIGN KEY (transaction_id) REFERENCES public.transactions(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.transaction_details DROP CONSTRAINT transaction_details_transaction_id_fkey;
       public          postgres    false    4760    231    229            C   :   x�32�4�b#SN##S]s]K#C+c+S=KCCsKms��\1z\\\ :�Q      A   �   x�U�;�0��S�Q�)�1-4t4K��*�`,����jv�mq�w�gB��퇜�O�:\�|*�����8�T��{�^��k��R߄���<A�[-60)��@)V}3:��^�P�v���/_��P�H�      <   T   x�3�,�L-�/-N-*�2�LM�,�r�!2E�9��\&�"SP��R�\R�e����!�%E�yŉ�%��y�\5(b1z\\\ �A-)      ?   �  x���Oo�0���O�;r:<�'7ʁ\�r���n�l�����h�H�(��'�~�����y������M�鱮���{hk7ǵ��� ݗ��q����O���~=�j�W�O��y:�W����^	`��x��8�B�<���ALQ�@<u�C�F�� AA�uuA�+���I�%Dv�S����i��6�g��u���S���ؼ���4��a��0�����1Q�J�Z&7��*�a���%5�f���~.�O������Vwx!;�o�l���F�=��q�hֆH��{���2$��h�Sd��K���Bŕ%O.W/1�`��=������!���V�c�+0�b����W�1��C ��/֑��(ĩu�Er��eJ���3z�g�RY��� �>�����ފ܊˃cq�H��ǿ�z!�IQ�ة7�FJ�����*��"/���:�R�<-�C)��	����7�_o��F�F��m�����3�9|�1��l��Ò�Oj���:3^ĥ���װ�h�����w�C���5?����;MDdH ��᱗ah#�ҙ�h�{���n�eN��?��.%8�4�9����27~�wПҿ�k���|��Ĝ ��?�ă����K m�k]��G��ˬ9-��4�0���<��0{;¹d�[N��y��v?Y"�      I   c   x�}���0Cѳ4��E��#[�d�9�ޚ ��4!��r��,���<�� ߫~ÅY��B��=���TՅq{C6[eQ�>��?�X��z3�(      =   7   x���  C�3Ƅ"�0�?���KJKE����J���Aa�d������ICn�      :   (   x�3�tL����2��L-O-*�2�tM�,�/����� ���      G   }   x�U��� ߢ����I�����$�G�
À9�`����!0�sfEʹ{�˿�@xz�|*k���JcLa�p�wm�	��Cc�J���?K��΄ZI�l�_����e|?���?/*      E   �  x�m�=n�0�k��(���:M�H��������J�5@/4 ?�94҆q������>~~??�6��m(�z+l���C~�rV�%+o���8duG��	�^u &�U��'AF��4�&�I^Hr��C��S#��\�!��yRY3w�n�/=9'F&��W�I3��3fQ7v���.���5�))��2�B6���0��tr��/�x��-��s^XO��V��S.�e��Tt떼� ��.U���y���g�Qk�vBp�)�����܀h
��7������3��gR��z�w3�p�}�)G�}�*�a��x&�����Q�B��y}p��r�R�G��P=�2��M��eb��lɏ�Z��cG�/ϬJ|�:HHPDV8�l8nW;�9x|�b'c�LC�E���_���?���      8   h  x���ߒ�6Ư�O�O�Xґd�u��PZ� fzÍl�l���$Y��������@'���|�����ս=7��7�����ױ���'����`1dϳ��r�)��C�2v��lsr�>%��sJ�Z�)��Ƥ��tq��]ܑR�)��]c��ےG5O)��R���Ż쾀����pm�v>M�����r*f�U���PBn�ws�� #��\�O�����I��f)r���ZL%�+X�����~��������S�=7{���e��3���Ṫ�}b�f�Y��"8y�W�h�O��N8m�)�7�|����yu�o��N�.^���S-k�[�R`2$��vp�A+�
E*��AhKG]r��ˁ�{�3����'���=���
�w����� O��U]oc,%�����RmJ���9�C�6�l�p�]�1XEn��R('��<�ZThV戥f� E��{����{S��a�x�v�&�x�$8 ���HƋM�����1K��_Z�����d��U�YI��),(��ﭮO�Sk?�������;:���Y�2�a=wp9�p�*X(MI0k*_ oOa�8���*X7Fx���<�9�	��+���r>V�����@V 
:�X��1�LР\[���
�!�r)n�����"�J�DG '҉a�f-
]B|���z����b�|*�{$ƚ��DV�(�eJ
���5�
�X��ŀ�Qzʋ6��y�\-= p�m���><=�ө��s=����ˎ�.�1,��e:I��φm50�S�.U�&�q'bXvM���R{;��b������}<<���}iW�oz�q�.�רt׬�e�4�B�
x�e��Eڌi�����F*���k����щ�2��y�v�ۡ�g����|v����G��b��jn
A�=BnOГB��)���ɵhx��V�NȟzD$�Z��R:�{u�?s�$O@��]ֺ�Xz��N%�+fŬԆgԚJyR7�8J�o��J�}���,�-�y���.,�h�ҋ������F=v )�X�H�C[ �&ܙ�@�4�4}�z"�j�Q�Ѳ,�
IQ�K��T+���Ľ��&=v�$�PO%�1��慠o�����N�h�{����5z�W��8�J��6��:/�z��
RBec�����v��p9�����_�-�ir߄����l��?�S�_J���1�(WB�O�;�Q����U���I��*(W�r�r��z}8��n4�y�d�[2UF�j��@�'�3�"�(�5�!�!�A��h��j�5LPx`�0��$��q�C��8�pG�'l����/���VԲԢR�ҫf-F(=H\���t���;Ɉ^O�
lcʬ<���pل:1�*�:���(��������3�=N��!'$�hP&�L���a�I`L_H��yu@�8j\Ft}M[���QsVS��#�\�^ͥ��T/��N���?�ӥ�S��v�H(P��Vn%5��<b�
h�����$V6cPNf���ӹh3�v­��֣bEKlcV�P���V��0��#D}�����EӔ��!f�2���-lK}��B�0� <[SDkD:���W���.��9����7�3�������_|�Ks     