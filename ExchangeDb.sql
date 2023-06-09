PGDMP                         z            FintechExchangeDb    14.2    14.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394    FintechExchangeDb    DATABASE     ^   CREATE DATABASE "FintechExchangeDb" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
 #   DROP DATABASE "FintechExchangeDb";
                postgres    false                       0    0    DATABASE "FintechExchangeDb"    COMMENT     V   COMMENT ON DATABASE "FintechExchangeDb" IS 'contain Order, OrderList and User Table';
                   postgres    false    3591                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    16409    Order    TABLE     �   CREATE TABLE public."Order" (
    id integer NOT NULL,
    order_creation_time timestamp without time zone NOT NULL,
    quantity numeric NOT NULL,
    price numeric NOT NULL,
    order_id integer NOT NULL
);
    DROP TABLE public."Order";
       public         heap    postgres    false    3            
           0    0    TABLE "Order"    COMMENT     �   COMMENT ON TABLE public."Order" IS 'Todo: connect to users once the web dev is up , now only connect to orderlist for matching algo purposes';
          public          postgres    false    211            �            1259    16402 	   OrderList    TABLE     o   CREATE TABLE public."OrderList" (
    id integer NOT NULL,
    type text NOT NULL,
    market text NOT NULL
);
    DROP TABLE public."OrderList";
       public         heap    postgres    false    3            �            1259    16395    Users    TABLE     �   CREATE TABLE public."Users" (
    id integer NOT NULL,
    username text NOT NULL,
    password text NOT NULL,
    email text NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false    3                      0    16409    Order 
   TABLE DATA           U   COPY public."Order" (id, order_creation_time, quantity, price, order_id) FROM stdin;
    public          postgres    false    211   �                  0    16402 	   OrderList 
   TABLE DATA           7   COPY public."OrderList" (id, type, market) FROM stdin;
    public          postgres    false    210   �+       �          0    16395    Users 
   TABLE DATA           @   COPY public."Users" (id, username, password, email) FROM stdin;
    public          postgres    false    209   �+       p           2606    16408    OrderList OrderList_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."OrderList"
    ADD CONSTRAINT "OrderList_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."OrderList" DROP CONSTRAINT "OrderList_pkey";
       public            postgres    false    210            r           2606    16413    Order Order_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "Order_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "Order_pkey";
       public            postgres    false    211            n           2606    16401    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    209            s           2606    16414    Order OrderList    FK CONSTRAINT     �   ALTER TABLE ONLY public."Order"
    ADD CONSTRAINT "OrderList" FOREIGN KEY (order_id) REFERENCES public."OrderList"(id) NOT VALID;
 =   ALTER TABLE ONLY public."Order" DROP CONSTRAINT "OrderList";
       public          postgres    false    210    211    3440                  x�}�[�Ĩ�D�O��'�^��j,=�q��3�u���'&lhۧ�����SN��H��?)����)�j���/=���f���r�����Q�G���}��	3�o�0iA���Y�0Kks3i��6�#i}~�h ]{ڟt1������?*
M�$�dau�ԮO�l����O��t�Ԑ_o�M@I�t�&t�׎���*b�Q��(�Q�Ӛ^8[�R�)z}��@��~� �mmA�6�%7$��u^�x��f��Δk���(�y�2P~����͖�@�v�喫\D���8�>}�Q|����OaӢ���J�B�����Prs<Y/��v������5t�����d.��%&�R�2LNg@�q�ڋ���T��R�s�b	O��!Wrj��%ǟL�Ӣ�D;ʺ�L��q�#������~[�0>�d����\���0K:�-vA��/��D�<�e l��Hvw01����ؒ�� ���z*����TZ��X-;��4�j��m��z�'����:�9�,.�b���gRyx~&�c."�=���A����%�d�E�r��L(;����(�v���p#���G퉝�9�#>:K�܎��!�Q���3��H���(��d�"-��ԖDҫ�A�"�i�jM��zUmD�'�mI2a*�d����Q���A�%�,����-:����jP����A�Eo������r��(i*z#D6���+5��i>�id�5�{3�&�Q�Y���ŔQ�2���b�(�,k�0���r�ŧ��.�&�U&J6�f���K�uAY�@=ìʺt0*��88�
ʺ}�U[΂r.a �,��x�)(�u��l7J�V0�n�`�((�:����mPQ���pQQ�-��+�s�ܳ��l�ѥ�p[�KE�F��bn�.��3.*
�W0\Tv�p�ȑFZOyHȉ~ŠAI���)�*Ew��p�id�%��S��O[N"K��t5�&�A�� ��:�UA�\ui����\�i���M	�QF���4d4�\�#�b'���45P��sx��AU�i�τ��n�|(����z�M�X_9�tF�Aq����^��:�tƝ�R���S�D�|�k�R��L��_G�e˕�vv�]��_J��4��"�,�>�V�Y�h����K�v��Q�-(K�AS;��rNfº|��Q���>����=h^����^�9�Es_utZC֨�{V�2�de;`���.�!w�LG���*�t�,�n�d��� "�N�7N�.Z�к4�ww�h�*��B��8u7��e��Y�J��h�&�W>Zg�Z5�1�\�T�V�OY%�����y�F��k��,M*�@{b��Sֶ��*Z��;�Գݵh�d�G�NƖ�T��m|����Ơ�g�!
���p��*=�xj����-!��2�h�����g�RM���Q��ÉvɈV��9��Q����V��Q��IkG��bR�,h?s��N�@��5{�gO���Q�9�@oԸ�>G�ʢ���|��zJ}�p8���*�J�Xi4�V�&Gq�
�h�,wӢ0E��G�k1�1V��&E9�y��OV%ڿE���֨_��$��'��Cٕ�����(�����K)�5J�G]SϯX�g�'��<l���h$����R�U�5җ"��d#΄�ҿ��:�y�ڂ���3(�2ޑ>��ǮUX�+S���f)ҵ�����L-��fBk:N�W�*%6�<�Tbº���-����J�����65���,��;.�*�JW��iQ���^��}]=�/Xǯk���V��eu�n��	��*�ev��C��w�B�̌��9A�BV�2Id�D95-�)��킁|H[���e��EY5z��Y���Y~��մ
��?Ӣ�Z{��!�U�v�'�O�1�,��1��s{�C���'�$��ʼ��)�,!� ���Y�
�0DZ��
��jP�[iGR��Heq���m6@����tC7-#m9�p�B�T�Jk|���fY��Ł��L*dh!Ӣ丯"���Z�Y�)��>n՝!J�,�&��b9��<	jm�8�̲2}��e��M�� ~���@2oi����T�vڲݡd'��uX�]ֺ^�p�hAt��?��T�ߊ�iQf��}�gz1�N�2ѐV7��

�U���BS��@��rJ��:?41JO:�	Ŗ���@��ˍ�e(k���I��(��y4eX��N!�ce���g���x �0@!�z�\E�MR8O�K2��%�v��!�$ 0ā� �8P��!r�i�T�$��
q�dS�'��1S�'��㸙
>��_�.�th�A�!��'���1��'����'���1��'�l `��.;G`��/;G`�	2;G`��3;C `�I4� |���|���|B��|B�� H���s�H�ĳsTy2��'��1|�'����>�gg{t��Q�' �Q�'��`0(`@T��A;G@T�IB;yLT�IE�#"*�$��<&*�ģ�#&*����#&*�$��c�Ds<m�
d��c��O`� ����v�����v����v��DQ����V�!��=�=S(GQ+w��(�Y���c�a��a|���،��TF�s���?u�"}���f�67p�2J[��Q�'z��K�����gYn�6�ge�9l��꜓_U?>�s^b#|��#���Y�sr�F���y�/6�gQΤ76�gI΋Cl�ϒ�sUS>�rNc#|����F�,�9q�4����9'��>�t��|��~��g��v�R�j�Y�����n���g��KCV����s����C���D���;�Y>+x?]�>�]�Ѿgv�Y����ೂ���f�*7<Џehꍐ>ky渑>�yN��V%+�g9ϫCV�Ϫ�s�wS2WyR%����.���ڞ��t�E>sDt��>'ׂ���,�9mӭ�_���j����}����(ؓV���#����5m_(�P}����IK���C;.
�����A:�@���U7��I��V���g�Ǳ�xj:�u�
�R[/��
�X�{wZ?�}����n�����w��n����q�u����,�^AiVI���T���֒��.vd�ۭڦe��2��Q����"N�[>F���ʏr�M���$SQ�B�5OtR�S�ЯS.��/T]QA�H߮&�0�}���݊�h�W�fo��:��<QT͢�O#7���2A�2��㎌�k咢�ZY<([7�Z!��e�>���ND�r�K:80��W��v}�A�t�j]�
9�6�R�J�;ζ�5;
��V�Pm��5��b����|����(?�*�`B��~E�j����u�MM����:z�< �Л��qQp��(��-HY���OoAx�%d��!"�w��s��0��P֞�;	b,��׵�mR۠Uf�5��QjcU�z��~w��0!�Yr�k�&�ԏ	Q�7�����z0�$O��7#�Q�����s���x��|w�UݰZ+�&�H��+�t`i�i�DºJ�ߺ�JIےm�1�w®ؑn�t�&��Yu�	}���jj��|����R�$:̍��3�յŖ�j7
Nr=��L��q]@�0-J/�B��lb�_ng�JP+��Xv؁����%�����1����HI����(��ݬ��N�e��.���+�}7PxE���ۆy~?�r��.n�~?;1ʯ\7�D���/�cZ�_�?��JQp�u�����z���(�����iQ~���&�/fyԁ2Ԓi]�N����f��T�2l��C;*E	6ҹ���6�eM�h�i^��Q�m��-���l��R)ʰ�>���;�Q���*Q�2��S-ʮ�ϙ�G�zY:�>ŧEͺ^��R_�X��#VE��"V�@Yr9�9ig'i,u�@K� Ԉ�R9H�X� �K _@c���X�!G���	$ +u��C�J� f X�� +u��c�J(��R
;�Ԁ� +���c�J(jqȏˈ1�w��N�X�@A�4�:P�1��uLc�E�X�@Qǌ�:P�!c��L[dv0lp2�Nw)�8Ʊ�QP���R�p�c�%�X�@	8��Q�1��o�c�e �	  �X�@��8�:P�1��sHX����c�J(옰R
;&�ԁ	+u��c�J(R�|4=����cK(� �R9�:Ʊ��@(��R�:Ʊ�Q���Ph`/ā�<b/T��� ٝ�J�5�u��.f/� .툽P9�w�B����:@�N�r/�)āư�P9�7�)��q
u��/�B�(� �P9�����R1
�f/T��u�pi���]h~ H
q�9HDR�����,�O�֠�S�R���@�à*f�%�%��@�6�*�d\�W
4.�-\�^U(��{�r�R��Q~AE]�(<+~�
�'�R�ѳ�0A�Z(<����k(��h�|U�U�"�Y��3VD�h}��j�R�v�h�`��n��amA[Z �G[P�m�s�ޥ���ׁms��z���_U�L{ym��(̾���WWM�b
�*GI�y݌�n�Z��jhW.,��%z7U��|�7)Si���8��Y=�b��������ab����w�݁Q�oA4?lR�����]�U)�Q� �O�P㜆�=�[Ρ��|l�q����T��_
Q?5�4���%�]����U��6==ߟq��?��J��\�Bв��{�??�w(�3���QuF�:���g��%)j���� ggSv��R�R-����&�����T�"i)����d�ҝ:��a��;)����Q�R��<kq���~�c-�]ɨ�J�>��T�H�#K�E�aZ5��#E���NH�(4�e��/�����P�]��ᧁ狭?BRjw�E��C�I�n�@��qǄ�͇� �%��w&o� y��.;*d<t�^:r#I�P�n|�;.���ʼ��IpRT���t����l\KP)1}J�.5���ߝ���|�J�_��=����ٜ��E�;�~�����O�q��s�?Gֈ��ȯ4+���2�@�����}��<��r.�p^Q���O��joiv��&�[U�9�ɖV��g�W[}����uAN_-���^D�2��=;wb0��*���j�Ԧ�S�յ��Wsa^�_g'�V�^�҈��
��c6Q�G(�����z��G�(������(���~�Ol��`�'iD�ҋ(�����:������m�z\�F����B�������^�XN���kne��ہ�<�k'n;�;v�\[|N{�7"GQ��~�6&���$J�a�a?G�%xa:�� ��ȲexB7"E�t�%�t�������w`:�D���~-L����t��;������s{HQM ��9��,8��4��"��f�1$' ��Ɠ��� ��K�Ҙ �Pގ��G7����ݜ��C�n\�9�b�ܲṣ{@��`v��a�� �c���eގ�d����f�: ,D7Լ1,D7ټ1,D7߼!,D7�,D7���X�n��9X�n�y�cX�n�y;bX�n�y;bX�n��� �� �vİ��vİ�(�s�y�q�m8`!�q�-�����,D7�,D7mR0]����Bt����Bt��[�Bt��_GэHoy�MJoG��KoG��KoG��L ��ގ���ގ���ގ����: ,D7O�1,D7V�,D7Q��1,D7Q�uD��8��ǰ�T�vİ�T�vİݥ��#y�.��<y�.�m���]p3i��]pێ䡻��Bw�m�o���C�����v ݵ7�� ���@��pN�<t�#y�.�}7�Cw9n�ü� �<t��y�Ǚ:y��m���]���䡻4�uD �u9�� �e�-@��r[�<t����]�۪䡻6�1�Cwmn;�o	J�<t��#y��m����Oϡ �����V �%�-7�����V� �5��A��u�qb9tW�ڈ���fgr�����g!�@����{�;f[�R$�ջ�8H��w[�o���?��@��Cw%o��3}ٕ�Jޖ�u�-=9�y[p<tW�<�r��m���&��H��oh���x�ƹ�҈㡛��͡Gw�_4�n�}k4�n��K=�C7���Uw&<vD7����C��[S9t��������wB9t�x��ϰ�[�Z�.>�ݎ��َ������� ���`��b�~�f�*��7w���*Q�'�B��F[z�+t�����8
�oJm遘�������+t�ݵ��ik�Ҹ���Pu��Nք�Ҷthy@.Q?���"N�~�n;X��W}�oA}�(B}]������TQu �'�����s��먦qb%t�5�Z�{���G�ڢoUtKQ�G���o��*t����S���n�BTq��c�?���֟c°���c���\Y�?��b��P�� y��@�9�y�k�tik?���k;��ܼ�?���W��,�z�?�=v��|�߻���J�������y�;ǽM����6��=�����X1�B              x�3�L,��t
qv�2�L�L�qb���� }r<      �      x������ � �     