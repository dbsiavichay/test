--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: equipment_trademark; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY equipment_trademark (id, name) FROM stdin;
1	HP
2	ARI
3	TRIPP LITE
4	SPEEDMIND
5	CLON
6	LG
7	GENIUS
8	CDP
9	EPSON
10	CANNON
11	SAMSUNG
12	LEXMARK
13	VANTEC
14	COMPAQ
15	DELUX
16	BENQ
\.


--
-- Data for Name: equipment_type; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY equipment_type (id, name, is_part, specifications) FROM stdin;
2	MONITOR	f	[{"specification": ["Tipo"], "options": ["LED", "LCD", "PLASTA"], "for": "model"}, {"specification": ["Dimension"], "options": [], "for": "model"}]
3	TECLADO	f	[{"specification": ["Conector"], "options": ["USB", "PS2"], "for": "model"}]
4	MOUSE	f	[{"specification": ["Conector"], "options": ["USB", "PS2"], "for": "model"}]
5	REGULADOR	f	[]
6	IMPRESORA	f	[{"specification": ["Suministro"], "options": ["TONNER", "TINTA", "CINTA"], "for": "model"}, {"specification": ["Tipo"], "options": [{"name": "MONOCROMATICA", "suboptions": ["Cart. Negro"]}, {"name": "COLOR", "suboptions": ["Cart. Cyan", "Cart. Magenta", "Cart. Negro", "Cart. Amarillo"]}], "for": "model"}, {"specification": ["Ip"], "options": [], "for": "allocation"}]
1	PC	f	[{"specification": ["Procesador", "Ram", "Disco"], "options": [], "for": "device"}, {"specification": ["Unidad Optica"], "options": ["DVD Writer", "DVD Rom", "CD Writer", "CD Rom"], "for": "device"}, {"specification": ["Unidad Lectora"], "options": ["CARD READER", "FLOPPY", "NINGUNO"], "for": "device"}, {"specification": ["Ip", "Usuario"], "options": [], "for": "allocation"}, {"specification": ["Sistema Operativo"], "options": ["WINDOWS 7 PROFESIONAL", "WINDOWS XP PROFESIONAL", "UBUNTU", "UBUNTU SERVER", "CENTOS"], "for": "allocation"}, {"specification": ["Bits"], "options": ["32 BITS", "64 BITS"], "for": "allocation"}, {"specification": ["Acceso Remoto"], "options": ["SI", "NO"], "for": "allocation"}, {"specification": ["Uso"], "options": ["ESCRITORIO", "LAPTOP"], "for": "model"}]
7	SCANNER	f	[]
8	DISCO DURO	t	[{"specification": ["Conector"], "options": ["SATA", "IDE"], "for": "model"}, {"specification": ["Capacidad", "Velocidad"], "options": [], "for": "model"}, {"specification": ["Tipo"], "options": ["ESCRITORIO", "PORTATIL"], "for": "model"}]
\.


--
-- Data for Name: equipment_model; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY equipment_model (id, name, specifications, type_id, trademark_id) FROM stdin;
3	Z23I	{"Dimension": "23", "Tipo": "LCD"}	2	1
4	KB 57211	{"Conector": "USB"}	3	1
5	MOFYUO	{"Conector": "USB"}	4	1
6	VR2008R	{}	5	3
8	S1933	{"Dimension": "18.5\\"", "Tipo": "LCD"}	2	1
9	KB-0316	{"Conector": "PS2"}	3	1
11	M-SBF96	{"Conector": "PS2"}	4	1
13	W1943SI	{"Dimension": "18.5\\"", "Tipo": "LCD"}	2	6
15	GM-03022P	{"Conector": "PS2"}	4	7
16	CDP	{}	5	8
68	LP2275W	{"Dimension": "18.5\\"", "Tipo": "LCD"}	2	1
18	LV1911	{"Dimension": "18.5\\"", "Tipo": "LCD"}	2	1
20	LS1000X	{}	5	3
22	LASERJET PRO 400	{"Cart. Negro": "80A", "Tipo": "MONOCROMATICA", "Suministro": "TONNER"}	6	1
23	COLOR LASERJET CP2025DN	{"Cart. Magenta": "CC533A", "Tipo": "COLOR", "Cart. Cyan": "CC531A", "Cart. Negro": "CC530A", "Cart. Amarillo": "CC532A", "Suministro": "TONNER"}	6	1
24	COLOR LASERJET 2605DN	{"Cart. Magenta": "Q6003A", "Tipo": "COLOR", "Cart. Cyan": "Q6001A", "Cart. Negro": "Q6000A", "Cart. Amarillo": "Q6002A", "Suministro": "TONNER"}	6	1
26	LASERJET P2015	{"Cart. Negro": "53A", "Tipo": "MONOCROMATICA", "Suministro": "TONNER"}	6	1
25	LASERJET P2055DN	{"Cart. Negro": "CE505X", "Tipo": "MONOCROMATICA", "Suministro": "TONNER"}	6	1
28	B1930N	{"Dimension": "18\\"                                                                                                         ", "Tipo": "LCD"}	2	11
29	SK-1688	{"Conector": "PS2"}	3	1
30	5WSUSA	{}	5	3
32	LP2065	{"Dimension": "20\\"", "Tipo": "LCD"}	2	1
33	2253LW	{"Dimension": "20\\"", "Tipo": "LCD"}	2	11
21	MOFXKO	{"Conector": "PS2"}	4	1
69	M312	{"Conector": "PS2"}	4	15
34	GL950A	{"Dimension": "18.5\\"", "Tipo": "LCD"}	2	2
35	GENERICO	{"Conector": "USB"}	3	2
70	M-U0031-O	{"Conector": "USB"}	4	1
71	M-S69	{"Conector": "PS2"}	4	1
72	MOAFKOA	{"Conector": "PS2"}	4	1
73	WORKSTATION XW4100	{"Uso": "ESCRITORIO"}	1	1
74	GL950	{"Dimension": "15\\"", "Tipo": "LCD"}	2	16
85	1502	{"Dimension": "14\\"", "Tipo": "LCD"}	2	1
75	COMPAQ D530	{"Uso": "ESCRITORIO"}	1	1
1	GENERICO	{"Uso": "ESCRITORIO"}	1	2
12	GENERICO	{"Uso": "ESCRITORIO"}	1	5
7	COMPAQ 6200 PRO MT	{"Uso": "ESCRITORIO"}	1	1
17	COMPAQ 6300 PRO MT	{"Uso": "ESCRITORIO"}	1	1
27	COMPAQ D220 MT	{"Uso": "ESCRITORIO"}	1	1
31	PRODESK 400 G1 MT	{"Uso": "ESCRITORIO"}	1	1
2	WORKSTATION Z230 TWR	{"Uso": "ESCRITORIO"}	1	1
36	1000-1422LA	{"Uso": "LAPTOP"}	1	1
37	WORKFORCE GT-S55	{}	7	9
38	C746DN	{"Cart. Magenta": "C746A1MG", "Tipo": "COLOR", "Cart. Cyan": "C746A1CG", "Cart. Negro": "C746A1KG", "Cart. Amarillo": "C746A1YG", "Suministro": "TONNER"}	6	12
39	COMPAQ DC5700 MT	{"Uso": "ESCRITORIO"}	1	1
40	L1706	{"Dimension": "14\\"", "Tipo": "LCD"}	2	1
41	LASERJET ENTERPRISE 600 M602X	{"Cart. Negro": "90X", "Tipo": "MONOCROMATICA", "Suministro": "TONNER"}	6	1
42	XW4300 WORKSTATION	{"Uso": "ESCRITORIO"}	1	1
43	2033SN	{"Dimension": "17\\"", "Tipo": "LCD"}	2	11
44	GM-050009P	{"Conector": "PS2"}	4	7
45	KB-220E	{"Conector": "USB"}	3	7
46	LS606X	{}	5	3
47	Z400 WORKSTATION	{"Uso": "ESCRITORIO"}	1	1
48	ZR2240W	{"Dimension": "20\\"", "Tipo": "LCD"}	2	1
19	M-S0005O	{"Conector": "PS2"}	4	1
49	Z200 WORKSTATION	{"Uso": "ESCRITORIO"}	1	1
50	LA2205WG	{"Dimension": "20\\"", "Tipo": "LCD"}	2	1
51	M-UAE96	{"Conector": "USB"}	4	1
52	LS604AX	{}	5	3
53	VR1208R	{}	5	3
10	SM-AVR1006	{}	5	4
54	Z420 WORKSTATION	{"Uso": "ESCRITORIO"}	1	1
55	APOLLO-OU	{"Conector": "USB"}	4	1
56	KU-1156	{"Conector": "USB"}	3	1
57	19EN33S	{"Dimension": "18.5\\"", "Tipo": "LED"}	2	6
58	GENERICO	{"Conector": "USB"}	4	13
59	XK-C07M	{"Conector": "USB"}	3	13
60	AVR200M	{}	5	13
61	W1943CV	{"Dimension": "15\\"", "Tipo": "LCD"}	2	6
62	SK-2880	{"Conector": "PS2"}	3	1
63	WORKSTATION XW4400	{"Uso": "ESCRITORIO"}	1	1
64	AQ6-23K15	{"Conector": "PS2"}	3	14
65	SCANJET 5590	{}	7	1
66	ZBOOK 15	{"Uso": "LAPTOP"}	1	1
67	WORKSTATION XW4600	{"Uso": "ESCRITORIO"}	1	1
76	KB-0133	{"Conector": "PS2"}	3	1
77	GM-04003A	{"Conector": "PS2"}	4	7
78	KB-120	{"Conector": "PS2"}	3	7
79	E2341	{"Dimension": "19\\"", "Tipo": "LCD"}	2	6
80	L2045W	{"Dimension": "18.5\\"", "Tipo": "LCD"}	2	1
81	EVO 510	{"Uso": "ESCRITORIO"}	1	14
82	L1716	{"Dimension": "14\\"", "Tipo": "LCD"}	2	1
14	GK-07008U	{"Conector": "PS2"}	3	7
83	LQ036AA	{"Capacidad": "500GB", "Conector": "SATA", "Tipo": "ESCRITORIO", "Velocidad": "7200RPM"}	8	1
84	COMPAQ DC5000 MT	{"Uso": "ESCRITORIO"}	1	1
86	NETSCROLL 120	{"Conector": "PS2"}	4	7
87	PROBOOK 6360B	{"Uso": "LAPTOP"}	1	1
\.


--
-- Data for Name: providers_provider; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY providers_provider (id, ruc, name, representative, address, city, cellphone, telephone) FROM stdin;
1	1710124882001	COPI.COM	MONICA ELIZABETH PEREZ PAREDES	ACUÑA OE1-41 Y AV. 10 DE AGOSTO	QUITO		022236710
2	1791772229001	TECNOPLUS	SANDRA ARACELY ROCA MERA	JIPIJAPA, ISLA SAN CRISTOBAL N44-534 E ISLA SEYMOUR	QUITO		022272459
3	1711752996001	VAGADAMIA	PAUL DARIO DAVILA GONZALEZ	LA GRANJA, II ETAPA DOMINGO COMIN N31-97 GASPAR DE CARVAJAL	QUITO	0998323998	2244100
\.


--
-- Data for Name: equipment_device; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY equipment_device (id, code, serial, part, state, invoice, date_purchase, date_warranty, specifications, model_id, provider_id) FROM stdin;
22	1266	3CQ5024KGT		1	7616	2015-08-17	2018-08-17	{}	3	2
23	1277-03	BDMHE0CHH7WAWH		1	7616	2015-08-17	\N	{}	4	2
3	1274-03	BDMHEOCHH7WAFI		1	7616	2015-08-17	\N	{}	4	2
8	1273-03	BDMHE0CHH7WAWI		1	7616	2015-08-17	\N	{}	4	2
15	1275-05	2432APBL5762404141		1	7616	2015-08-17	2017-08-17	{}	6	2
29	1278-04	X75270801846		1	7616	2015-08-17	\N	{}	5	2
7	1269	3CQ5024KGL		1	7616	2015-08-17	2018-08-17	{}	3	2
33	1272-03	BDMHE0CHH7WAON		1	7616	2015-08-17	\N	{}	4	2
48	980-04	FCGLH0DN33U387	600553-002	1		\N	\N	{}	19	\N
25	1277-05	2432APBL5762404147		1	7616	2015-08-17	2017-08-17	{}	6	2
36	785	MXL1491FKR		1		\N	\N	{"Usuario": "mpalacios", "Ip": "172.16.8.214", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Bits": "32 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL CORE I7 2600 3.40Ghz", "Sistema Operativo": "UBUNTU", "Acceso Remoto": "SI"}	7	\N
2	1267	3CQ5024KGB		1	7616	2015-08-17	2018-08-17	{}	3	2
59	945	VNB3K13607		1		\N	\N	{"Ip": "172.16.8.50"}	22	\N
26	1278	2UA5231Y2F		1	7616	2015-08-17	2018-08-17	{"Usuario": "SMONTALUISA", "Ip": "172.16.10.142", "Ram": "8 GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "1TB SATA", "Bits": "64 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "XEON  3.4 Ghz", "Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Acceso Remoto": "NO"}	2	2
32	1264	3CQ5024KGD		1	7616	2015-08-17	2018-08-17	{}	3	2
18	1276-03	BDMHEOCHH7WAFG		1	7616	2015-08-17	\N	{}	4	2
9	1273-04	FCMHHOAHD8KO86		1	7616	2015-08-17	\N	{}	5	2
20	1276-05	2432APBL5762404144		1	7616	2015-08-17	2017-08-17	{}	6	2
21	1277	2UA5231Y2R		1	7616	2015-08-17	2018-08-17	{"Usuario": "vlopez", "Ip": "172.16.9.32", "Ram": "8GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "1 TB SATA", "Bits": "64 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "XEON 3.4 Ghz", "Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Acceso Remoto": "SI"}	2	2
27	1265	3CQ5024KFZ		1	7616	2015-08-17	2018-08-17	{}	3	2
38	785-03	B77670AVBQF2LX	352750-161	1		\N	\N	{}	9	\N
19	1276-04	FCMHHOAHD8KOB9		1	7616	2015-08-17	\N	{}	5	2
14	1275-04	FCMHHOAHD8KOB1		1	7616	2015-08-17	\N	{}	5	2
16	1276	2UA5231Y34		1	7616	2015-08-17	2018-08-17	{"Usuario": "MBARAHONA", "Ip": "172.16.9.37", "Ram": "8GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "1TB SATA", "Bits": "64 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "XEON 3.4 Ghz", "Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Acceso Remoto": "NO"}	2	2
35	1272-05	2432APBC5762404143		1	7616	2015-08-17	2017-08-17	{}	6	2
58	498	CNHC81107X		1		\N	\N	{"Ip": "USB"}	24	\N
17	1268	3CQ5024K8G		1	7616	2015-08-17	2018-08-17	{}	3	2
13	1275-03	BDMHEOCHH7WAOO		1	7616	2015-08-17	\N	{}	4	2
34	1272-04	FCMHHOAHD8KOB5		1	7616	2015-08-17	\N	{}	5	2
5	1274-05	2432APB25762404145		1	7616	2015-08-17	2017-08-17	{}	6	2
6	1273	2UA5231Y2X		1	7616	2015-08-17	2018-08-17	{"Usuario": "USER4", "Ip": "172.16.10.161", "Ram": "8GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "1TB SATA", "Bits": "64 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL XEON 3.4GHz", "Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Acceso Remoto": "SI"}	2	2
12	1271	3CQ5024KGX		1	7616	2015-08-17	2018-08-17	{}	3	2
28	1278-03	BDMHEOC5Y8K05B		1	7616	2015-08-17	\N	{}	4	2
24	1277-04	FCMHHOAHD8KOBA		1	7616	2015-08-17	\N	{}	5	2
30	1278-05	2432APBL5762404148		1	7616	2015-08-17	2017-08-17	{}	6	2
1	1274	2UA5231435		1	7616	2015-08-17	2018-08-17	{"Usuario": "USER7", "Ip": "172.16.11.88", "Ram": "8 GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "1 TB SATA", "Bits": "64 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "XEON (R) 3.4 Ghz", "Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Acceso Remoto": "NO"}	2	2
40	842	SMAVR1006		1		\N	\N	{}	10	\N
42	710	102UXUN58782		1		\N	\N	{}	13	\N
46	981	GCM3020BR3		1		\N	\N	{}	18	\N
47	251	BDAEV0QVB3Q6B3	434820-167	1		\N	\N	{}	9	\N
39	785-04	FATSQ0EDR1BOBT	417441-002	1		\N	\N	{}	11	\N
49	225	225		1		\N	\N	{}	20	\N
55	914	MXL2470937		1		\N	\N	{"Usuario": "walarcon", "Ip": "172.16.8.216", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB", "Bits": "64 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7 3770 3.40 GHz", "Sistema Operativo": "UBUNTU", "Acceso Remoto": "NO"}	17	\N
50	980	MXL3021QP9		1		\N	\N	{"Usuario": "tculcay", "Ip": "172.16.8.219", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Bits": "64 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7 3770 3.40 GHz", "Sistema Operativo": "UBUNTU", "Acceso Remoto": "SI"}	17	\N
37	797	CNC119R7CN	625366-001	1		\N	\N	{}	8	\N
52	914-03	BAUDU0OVB3CD26		1		\N	\N	{}	9	\N
10	1273-05	2432APBL5762404146		1	7616	2015-08-17	2017-08-17	{}	6	2
53	914-04	FCGLH0DHD3KVTO		1		\N	\N	{}	21	\N
45	693	09061604003028		1		\N	\N	{}	16	\N
41	1169			1		\N	\N	{"Usuario": "hp", "Acceso Remoto": "SI", "Ip": "172.16.8.212", "Ram": "2GB", "Unidad Optica": "DVD Writer", "Disco": "350GB", "Bits": "32 BITS", "Unidad Lectora": "CARD READER", "Procesador": "DUAL CORE E2220 2.40 GHz", "Sistema Operativo": "UBUNTU"}	12	\N
51	913	6CM2300Q5H	675802-001	1		\N	\N	{}	18	\N
43	1169-03	ZCE1A1600999		1		\N	\N	{}	14	\N
4	1274-04	FCMHHOAHD8KOB8		1	7616	2015-08-17	\N	{}	5	2
54	142	L245APBL5710712001		1		\N	\N	{}	6	\N
44	1169-04	X75270801857		1		\N	\N	{}	15	\N
56	950	VNB3D12656		1		\N	\N	{"Ip": "172.16.12.130"}	22	\N
57	582	CNBSD01066		1		\N	\N	{"Ip": "172.16.11.130"}	23	\N
61	696	 CNB9068816		1		\N	\N	{"Ip": "172.16.11.4"}	25	\N
62	657	YC5RH9LZ908313D	5670972	1		\N	\N	{}	28	\N
60	345	MXD42806GS	DV670A#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS XP PROFESIONAL", "Usuario": "fmontenegro", "Acceso Remoto": "NO", "Ip": "172.16.11.20", "Ram": "512MB DDR", "Unidad Optica": "CD Writer", "Disco": "40GB", "Unidad Lectora": "FLOPPY", "Procesador": "PENTIUM 4 2.80GHz", "Bits": "32 BITS"}	27	\N
93	976	MXL304045C	QV983AV#006	1		\N	\N	{"Sistema Operativo": "UBUNTU", "Usuario": "osolis", "Ip": "172.16.12.77", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7-3370 3.4GHz", "Bits": "32 BITS", "Acceso Remoto": "SI"}	17	\N
63	345-04	FATSQ0EDR1BOWU	417441-002	1		\N	\N	{}	11	\N
66	789	CNC119RH5D	XJ311A	1		\N	\N	{}	8	\N
94	975	6CM30312TT	A5V72A	1		\N	\N	{}	18	\N
69	391	9428BY0LS436401363		1		\N	\N	{}	30	\N
82	804	5CG3323S9K		1		2012-03-07	2013-03-07	{"Usuario": "user", "Ip": "172.16.9.210", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Bits": "64 BITS", "Unidad Lectora": "CARD READER", "Procesador": "INTEL I5-3230M 2.66GHz", "Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Acceso Remoto": "NO"}	36	\N
11	1275	2UA5231932		1	7616	2015-08-17	2018-08-17	{"Usuario": "AREYES", "Ip": "172.16.11.89", "Ram": "8 GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "1 TB SATA", "Bits": "64 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "XEON 3.4Ghz", "Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Acceso Remoto": "NO"}	2	2
65	777	MXL1491FQ5	XL504AV#244	1		\N	\N	{"Usuario": "fmontenegro", "Ip": "172.16.11.35", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Bits": "32 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7 2600 3.40 GHz", "Sistema Operativo": "UBUNTU", "Acceso Remoto": "SI"}	7	\N
83	1316	RVXZ023917		1	7614	2015-12-31	2017-12-31	{}	37	3
71	449	CNG71601KB	396709-02	1		\N	\N	{}	32	\N
74	956	MXL304045R	QV983AV#006	1		\N	\N	{"Sistema Operativo": "UBUNTU", "Usuario": "dsiavichay", "Acceso Remoto": "NO", "Ip": "172.16.8.68", "Ram": "4GB RAM", "Unidad Optica": "DVD Writer", "Disco": "1.5TB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7-3770 3.40GHz", "Bits": "64 BITS"}	17	\N
75	509	AQ22HVMQ203147P		1		\N	\N	{}	33	\N
84	1284	5026129424K34	41G0050	1	7356	2015-11-04	2018-11-04	{"Ip": "172.16.8.51"}	38	3
79	1302-02	COMARIFX832011154713-02		1	2590	2015-11-16	2018-11-16	{}	34	1
81	1302-04	FB7330AN3UM09LU		1		\N	\N	{}	11	\N
80	1302-03	COMARIFX832011154713-03		1	2590	2015-11-16	2018-11-16	{}	35	1
78	1302	COMARIFX832011154713		1	2590	2015-11-16	2018-11-16	{"Usuario": "hp", "Ip": "172.16.8.70", "Ram": "4 GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Bits": "64 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "AMDFX 8320", "Sistema Operativo": "UBUNTU", "Acceso Remoto": "NO"}	1	1
70	1200	MXL2361L9C	QV983AV#006	1		\N	\N	{"Usuario": "administrador", "Ip": "172.16.8.72", "Ram": "4 GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Bits": "32 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7-3770 GHz", "Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Acceso Remoto": "SI"}	17	\N
76	956-04	FCGLH0DHD3SJ52	537748-001	1		\N	\N	{}	21	\N
64	345-03	C0405223396		1		\N	\N	{}	29	\N
77	956-03	BDAEV0QVB3U2VJ	701428-161	1		\N	\N	{}	9	\N
72	1200-03	BAUDU0OVB3B3HB	537745-161	1		\N	\N	{}	9	\N
68	777-03	BAUDU0OVB1J77M	537745-161	1		\N	\N	{}	9	\N
67	777-04	FB7330AN3W80OEY	417966-001	1		\N	\N	{}	11	\N
73	1200-04	FCGLH0DFZ3CNEV	577748-001	1		\N	\N	{}	19	\N
85	461	MXJ72508H3	EW287AV	1		\N	\N	{"Sistema Operativo": "UBUNTU", "Usuario": "fpallchisaca", "Acceso Remoto": "SI", "Ip": "172.16.11.14", "Ram": "1GB", "Unidad Optica": "DVD Rom", "Disco": "80GB", "Unidad Lectora": "FLOPPY", "Procesador": "PENTIUN D 3.4GHz", "Bits": "32 BITS"}	39	\N
86	462	CNK71008RG	437327-001	1		\N	\N	{}	40	\N
88	461-04	461-04		1		\N	\N	{}	11	\N
87	461-03	BC3370BGAUH9F7	435302-161	1		\N	\N	{}	9	\N
89	CNDCGBD1NT	CNDCGBD1NT	CE993A	1	7691	2016-03-01	2019-03-01	{}	41	3
90	CNDCGBD23S	CNDCGBD23S	CE993A	1	7691	2016-03-01	2019-03-01	{}	41	3
91	CNDCGBD1Q3	CNDCGBD1Q3	CE993A	1	7691	2016-03-01	2019-03-01	{}	41	3
92	CNDCGBD1NK	CNDCGBD1NK	CE993A	1	7691	2016-03-01	2019-03-01	{}	41	3
31	1272	2UA5231Y30		1	7616	2015-08-17	2018-08-17	{"Usuario": "frubio", "Ip": "172.16.9.15", "Ram": "8GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "1TB SATA", "Bits": "64 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "XEON 3.4 Ghz", "Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Acceso Remoto": "NO"}	2	2
99	610	CM20H9LS422433P	LS20CMYKF/ZM	1		\N	\N	{}	43	\N
95	976-04	FCGLH0DFZ3CNEZ	600553-002	1		\N	\N	{}	19	\N
96	976-03	BDAEV0QVB3U2SK	701428-161	1		\N	\N	{}	9	\N
97	624	CNB9N91375	CE459A	1		\N	\N	{"Ip": "172.16.12.75"}	25	\N
98	404	2UA5390FR4	PY95QUA#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS XP PROFESIONAL", "Usuario": "jmena", "Acceso Remoto": "NO", "Ip": "172.16.10.80", "Ram": "4GB DDR2", "Unidad Optica": "DVD Writer", "Disco": "150GB IDE", "Unidad Lectora": "NINGUNO", "Procesador": "PENTIUM 4 3.20GHz", "Bits": "32 BITS"}	42	\N
101	55	ZCE1C3102985		1		\N	\N	{}	45	\N
100	54	139613006193		1		\N	\N	{}	44	\N
102	58	AGLS600Q2		1		\N	\N	{}	46	\N
103	811	2UA2120TQK	VS933AV#529	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "ialvarez", "Acceso Remoto": "SI", "Ip": "172.16.10.85", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "CARD READER", "Procesador": "INTEL XEON 2.53GHz", "Bits": "64 BITS"}	47	\N
104	812	812		1		\N	\N	{}	48	\N
105	811-04	FCGLH0D5B1Y2YW	600553-002	1		\N	\N	{}	19	\N
106	811-03	BAUDU0OVB1S85G	434820-162	1		\N	\N	{}	9	\N
108	1317	RVXZ023918		1		\N	\N	{}	37	\N
110	715	3CQ1113HB5		1		\N	\N	{}	50	\N
111	714-04	FATSK0LN30GEPS		1		\N	\N	{}	51	\N
112	714-03	BAUDU0KVB0FGRO	434820-162	1		\N	\N	{}	9	\N
113	77	U0050921	16-1707	1		\N	\N	{}	52	\N
107	823	SM-AVR1006		1		\N	\N	{}	10	\N
172	646	CNC93612VN		1		\N	\N	{}	68	\N
173	706-04	FCGLF0DN33IG25		1		\N	\N	{}	70	\N
174	706-03	BAUHR0IGAZR29F		1		\N	\N	{}	9	\N
229	635-04	F5320B05BWF09BH		1		\N	\N	{}	51	\N
230	635-03	BAUDU0HVBY602T		1		\N	\N	{}	9	\N
109	714	2UA11714YN	XV070T#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "osilva", "Acceso Remoto": "SI", "Ip": "172.16.10.81", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "CARD READER", "Procesador": "INTEL XEON 2.4GHz", "Bits": "64 BITS"}	49	\N
114	716	2UA11714YP	XV070LT#AVM	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "mvintimilla", "Acceso Remoto": "SI", "Ip": "172.16.10.79", "Ram": "10GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "CARD READER", "Procesador": "INTEL XEON 2.4GHZ", "Bits": "64 BITS"}	49	\N
115	717	3CQ1102KT5	MM274A	1		\N	\N	{}	50	\N
116	716-04	FATSK0LN30GEQI	537749-001	1		\N	\N	{}	51	\N
117	716-03	BAUBU0KVB0FGRP	434820-162	1		\N	\N	{}	9	\N
118	937	2245APBLS710711992		1		\N	\N	{}	53	\N
119	813	2UA2120TQD	VS933AV#529	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "djara", "Acceso Remoto": "SI", "Ip": "172.16.10.86", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "CARD READER", "Procesador": "INTEL XEON 2.53GHz", "Bits": "64 BITS"}	47	\N
120	814	814		1		\N	\N	{}	48	\N
121	813-04	FCGLH0D5B1Y3AI	600553-002	1		\N	\N	{}	19	\N
122	813-03	BAUDU0OVB1S85J	434820-162	1		\N	\N	{}	9	\N
123	824	110730-03197		1		\N	\N	{}	10	\N
129	1198	1998-01		1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "kchico", "Acceso Remoto": "SI", "Ip": "172.16.10.84", "Ram": "8GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "1TB SATA", "Unidad Lectora": "CARD READER", "Procesador": "INTEL I7 3.4GHz", "Bits": "64 BITS"}	12	\N
130	1198-02	308NDMTAA179		1		\N	\N	{}	57	\N
131	1198-04	1198-04		1		\N	\N	{}	58	\N
132	1198-03	1198-03		1		\N	\N	{}	59	\N
133	1198-05	C13311573		1		\N	\N	{}	60	\N
134	397	2UA54600VJ	PY950UA#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS XP PROFESIONAL", "Usuario": "tmendoza", "Acceso Remoto": "NO", "Ip": "172.16.10.76", "Ram": "4GB DDR2", "Unidad Optica": "DVD Writer", "Disco": "750GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "PENTIUM 4 3.20GHz", "Bits": "32 BITS"}	42	\N
139	931	VNB3D12566		1		\N	\N	{"Ip": "172.16.10.65"}	22	\N
135	866	201NDTC48625		1		\N	\N	{}	61	\N
136	59	59-04		1		\N	\N	{}	15	\N
137	397-03	B93CB0ACPS66TX		1		\N	\N	{}	62	\N
138	397-05	397-05		1		\N	\N	{}	46	\N
124	1089	2UA3392FDS	E2A37LT#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "jguzman", "Acceso Remoto": "SI", "Ip": "172.16.10.82", "Ram": "16GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL XEON 3.00GHz", "Bits": "64 BITS"}	54	\N
125	1090	1090		1		\N	\N	{}	48	\N
126	1089-04	FCMHH0CAU4W7WX	672652-001	1		\N	\N	{}	55	\N
128	399	9428BY0LS436401364		1		\N	\N	{}	46	\N
127	1089-03	BDMHE0CVB4V8VW	672647-163	1		\N	\N	{}	56	\N
152	443	CNG63605CJ	EF227A	1		\N	\N	{}	32	\N
141	965	C6M3060KVF		1		\N	\N	{}	18	\N
142	964-04	FCGLH0DHD3SCXU		1		\N	\N	{}	21	\N
143	964-03	BDAEV0Q5Y3Y5Y4		1		\N	\N	{}	9	\N
144	219	U0050934		1		\N	\N	{}	52	\N
140	964	MXL311148V	QV983AV#006	1		\N	\N	{"Usuario": "vjaramillo", "Ip": "172.16.8.147", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Bits": "64 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7-3770 3.4 GHz", "Sistema Operativo": "UBUNTU", "Acceso Remoto": "SI"}	17	\N
145	467	MXJ72508G7	EW287AV	1		\N	\N	{"Sistema Operativo": "WINDOWS XP PROFESIONAL", "Usuario": "duzho", "Acceso Remoto": "NO", "Ip": "172.16.11.143", "Ram": "2GB DDR2", "Unidad Optica": "DVD Writer", "Disco": "80GB IDE", "Unidad Lectora": "FLOPPY", "Procesador": "PENTIUM D 3.4GHz", "Bits": "32 BITS"}	39	\N
146	468	CNN7124348		1		\N	\N	{}	40	\N
147	467-04	FB7330AN3UM09KZ		1		\N	\N	{}	11	\N
148	467-03	B93CB0ACPT2CR7		1		\N	\N	{}	62	\N
149	469	9248AY0LS436400917		1		\N	\N	{}	46	\N
150	1122	PHGFD06797		1		\N	\N	{"Ip": "172.16.11.131"}	22	\N
151	442	2UA64319X4	RL340LA#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "acesen", "Acceso Remoto": "SI", "Ip": "172.16.9.18", "Ram": "8GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB DDR3", "Unidad Lectora": "FLOPPY", "Procesador": "INTEL CORE 2 DUO 2.13 GHz", "Bits": "64 BITS"}	63	\N
153	442-04	FCGLH0D9W3XDK9		1		\N	\N	{}	21	\N
155	833	110730-03194		1		\N	\N	{}	10	\N
154	160	B13AA0T39IJ2KB		1		\N	\N	{}	64	\N
156	1075	CN365WH0FN		1		\N	\N	{}	65	\N
158	721	CNB9089467	CE4594	1		\N	\N	{"Ip": "172.16.9.3"}	25	\N
157	620	CNGS311633	CB495A	1		\N	\N	{"Ip": "172.16.9.2"}	23	\N
159	821	2UA2120TQH	VS933AV#529	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "cpina", "Acceso Remoto": "SI", "Ip": "172.16.9.27", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "CARD READER", "Procesador": "INTEL XEON 2.53GHz", "Bits": "64 BITS"}	47	\N
160	822	822-02		1		\N	\N	{}	48	\N
161	821-04	FCGLH0D9W1WYN3		1		\N	\N	{}	21	\N
162	821-03	BAUDU0OVB1S85D		1		\N	\N	{}	9	\N
163	645	2UA0010S25	WE831LA#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "asinchi", "Acceso Remoto": "SI", "Ip": "172.16.9.13", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "CARD READER", "Procesador": "INTEL CORE 2 QUAD 2.66GHz", "Bits": "64 BITS"}	67	\N
165	689	CNC93612VR		1		\N	\N	{}	68	\N
164	645-04	W65646200763		1		\N	\N	{}	15	\N
166	645-03	BAUDU0HVBY60CP		1		\N	\N	{}	9	\N
167	708	2UA11007VX	XV067LT#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "nespinoza", "Acceso Remoto": "SI", "Ip": "172.16.9.26", "Ram": "10GB DRR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL XEON 2.4 GHz", "Bits": "64 BITS"}	49	\N
168	690	CNC925090L		1		\N	\N	{}	68	\N
169	708-04	M310090328812		1		\N	\N	{}	69	\N
170	708-03	BAUDU0OVB1G5RW		1		\N	\N	{}	9	\N
171	706	2UA11007W0		1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "preyes", "Acceso Remoto": "SI", "Ip": "172.16.9.11", "Ram": "10GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL XEON 2.4 GHz", "Bits": "64 BITS"}	49	\N
175	1085	2UA3392FDX	E2A37LT#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "plopez", "Acceso Remoto": "SI", "Ip": "172.16.9.12", "Ram": "16GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL XEON 3.00GHz", "Bits": "64 BITS"}	54	\N
176	1086	1086-02		1		\N	\N	{}	48	\N
177	1085-04	FCGLF0DN33IG2T		1		\N	\N	{}	70	\N
178	1085-03	BDMHE0CVB4V8VV		1		\N	\N	{}	56	\N
179	439	2UA64319SF	RL340LA#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "rtenecora", "Acceso Remoto": "SI", "Ip": "172.16.9.14", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "150GB SATA", "Unidad Lectora": "FLOPPY", "Procesador": "INTEL CORE 2 DUO 2.13 GHz", "Bits": "64 BITS"}	63	\N
180	440	CNG63605CH		1		\N	\N	{}	32	\N
181	440-04	440-04		1		\N	\N	{}	71	\N
182	170	B13AAQT39IJ463		1		\N	\N	{}	64	\N
183	707	2UA11007VZ	XV067LT#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "jsinchi", "Acceso Remoto": "SI", "Ip": "172.16.9.33", "Ram": "8GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL XEON 2.40 GHz", "Bits": "64 BITS"}	49	\N
184	688	CNC937016V		1		\N	\N	{}	68	\N
185	707-04	FATSK0LN3ZY8OO		1		\N	\N	{}	51	\N
186	707-03	BAUHR0HVBYS6KI		1		\N	\N	{}	9	\N
187	450	2UA64815XN	RL3440LA#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS XP PROFESIONAL", "Usuario": "lcastillo", "Acceso Remoto": "NO", "Ip": "172.16.11.18", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "250GB IDE", "Unidad Lectora": "FLOPPY", "Procesador": "INTEL CORE 2 DUO 2.13 GHz", "Bits": "32 BITS"}	63	\N
188	453	CNG71601JX		1		\N	\N	{}	32	\N
189	450-04	FCMHF0A9W5Y4RY		1		\N	\N	{}	21	\N
190	450-03	B93CB0ACPTHFNP		1		\N	\N	{}	62	\N
191	736	MXL1451KT9	XL504AV#104	1		\N	\N	{"Sistema Operativo": "WINDOWS XP PROFESIONAL", "Usuario": "jgarbay", "Acceso Remoto": "NO", "Ip": "172.16.9.22", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7-2600 3.4 GHz", "Bits": "32 BITS"}	7	\N
192	737	CNC134PL2J		1		\N	\N	{}	8	\N
193	736-04	FATSQ0E671A1DZ		1		\N	\N	{}	72	\N
194	736-03	BAUDU0OVB1G3J5		1		\N	\N	{}	9	\N
196	739	CNC134PKTT	XJ311A	1		\N	\N	{}	8	\N
195	738	MXL1480CNP	XL504AV#244	1		\N	\N	{"Sistema Operativo": "WINDOWS XP PROFESIONAL", "Usuario": "dcarpio", "Acceso Remoto": "NO", "Ip": "172.16.9.21", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7-2600 3.4GHz", "Bits": "32 BITS"}	7	\N
197	738-04	FATSQ0E671GAAD		1		\N	\N	{}	72	\N
198	738-03	BAUBU0OVB1IDPC		1		\N	\N	{}	9	\N
200	735	CNC134PL2Q	XJ311A	1		\N	\N	{}	8	\N
201	734-04	FATSQ0E5B3177WV		1		\N	\N	{}	11	\N
202	734-03	BAUHR0IGAZR295		1		\N	\N	{}	9	\N
203	317	2UA4390749	DY791AW#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS XP PROFESIONAL", "Usuario": "fpuenchera", "Acceso Remoto": "SI", "Ip": "172.16.9.30", "Ram": "4GB DDR2", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "FLOPPY", "Procesador": "INTEL PENTUM 4 3.0GHz", "Bits": "32 BITS"}	73	\N
204	995	ETB4D01240SL0		1		\N	\N	{}	74	\N
205	317-04	X77664202390		1		\N	\N	{}	15	\N
206	317-03	ZCE261901318		1		\N	\N	{}	14	\N
207	1049	MXL322011T	QV983AV#006	1		\N	\N	{"Sistema Operativo": "UBUNTU", "Usuario": "jnoguera", "Acceso Remoto": "SI", "Ip": "172.16.10.139", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7-3770 3.4GHz", "Bits": "64 BITS"}	17	\N
208	1050	C6M3060LVV		1		\N	\N	{}	18	\N
209	1049-04	FCGLH0DN033MLLH		1		\N	\N	{}	19	\N
210	1049-03	BDAEV0Q5Y4H9IB		1		\N	\N	{}	9	\N
215	947	VNB3D12554		1		\N	\N	{"Ip": "172.16.10.132"}	22	\N
212	713	102UXEZ58780		1		\N	\N	{}	13	\N
213	120-04	X77664202375		1		\N	\N	{}	15	\N
211	120	MXJ344028B	DG061A#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS XP PROFESIONAL", "Usuario": "jnoguera", "Acceso Remoto": "SI", "Ip": "172.16.10.153", "Ram": "512MB DDR2", "Unidad Optica": "DVD Writer", "Disco": "150GB IDE", "Unidad Lectora": "FLOPPY", "Procesador": "INTEL PENTIUM 4 2.66GHz", "Bits": "32 BITS"}	75	\N
216	1076	CN365WH02D		1		\N	\N	{}	65	\N
214	119	B69220KGAP96BG		1		\N	\N	{}	76	\N
217	651	CNGS311640	CB495A	1		\N	\N	{"Ip": "172.16.10.130"}	23	\N
218	1149	MXL3481X49	QV983AV#293	1		\N	\N	{"Sistema Operativo": "UBUNTU", "Usuario": "csanunga", "Acceso Remoto": "SI", "Ip": "172.16.10.144", "Ram": "2GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL PENTIUM G2030 3.0GHz", "Bits": "32 BITS"}	17	\N
219	1150	6CM3312CP1	A5V72A	1		\N	\N	{}	18	\N
220	1149-04	FCGLH0DHD5KBIO		1		\N	\N	{}	21	\N
221	1149-03	BDAEV0Q5Y5F9OY		1		\N	\N	{}	9	\N
222	652	CNB9022405		1		\N	\N	{"Ip": "172.16.10.129"}	25	\N
223	1155	MXL3481X6P	QV983AV#293	1		\N	\N	{"Sistema Operativo": "UBUNTU", "Usuario": "jaguirre", "Acceso Remoto": "SI", "Ip": "172.16.10.145", "Ram": "2GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL PENTIUM G2030 3.0GHz", "Bits": "32 BITS"}	17	\N
224	1156	6CM3312CBK		1		\N	\N	{}	18	\N
225	1155-04	FCGLH0DHD5KB6F		1		\N	\N	{}	21	\N
226	1155-03	BDAEV0Q5Y5F9LR		1		\N	\N	{}	9	\N
228	636	CNC937011Z		1		\N	\N	{}	68	\N
227	635	2UA0010S22	WE831LA#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "dmancheno", "Acceso Remoto": "SI", "Ip": "172.16.10.154", "Ram": "8GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "CARD READER", "Procesador": "INTEL CORE 2 QUAD 2.66GHz", "Bits": "64 BITS"}	67	\N
231	1093	2UA3392FDV	E2A37LT#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "bojeda", "Acceso Remoto": "SI", "Ip": "172.16.10.152", "Ram": "16GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "1TB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL XEON 3.0GHz", "Bits": "64 BITS"}	54	\N
232	1094	1094-02		1		\N	\N	{}	48	\N
233	1094-04	FB7330AN3UM09MK		1		\N	\N	{}	11	\N
234	1093-03	BDMHE0CVB4V8Z		1		\N	\N	{}	56	\N
235	438	2UA64319SJ	RL304LA#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "gsuarez", "Acceso Remoto": "SI", "Ip": "172.16.10.146", "Ram": "6GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "250GB SATA", "Unidad Lectora": "FLOPPY", "Procesador": "INTEL CORE 2 DUO 2.13GHz", "Bits": "64 BITS"}	63	\N
236	649	649-02		1		\N	\N	{}	68	\N
237	438-04	X77045309690		1		\N	\N	{}	77	\N
238	438-03	ZM9215007897		1		\N	\N	{}	78	\N
239	1051	MXL3211S41	QV983AV#006	1		\N	\N	{"Sistema Operativo": "UBUNTU", "Usuario": "dcazar", "Acceso Remoto": "SI", "Ip": "172.16.10.143", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7-3770 3.4GHz", "Bits": "32 BITS"}	17	\N
240	653	CNC93700Y8	KE289A	1		\N	\N	{}	68	\N
241	1051-04	FCGLH0DN33ML55		1		\N	\N	{}	19	\N
242	1051-03	BDAEV0QVB4I6CN		1		\N	\N	{}	9	\N
243	1152	MXL3481X33	QV983AV#293	1		\N	\N	{"Sistema Operativo": "UBUNTU", "Usuario": "dmaldonado", "Acceso Remoto": "SI", "Ip": "172.16.10.158", "Ram": "2GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL PENTUIM G2030 3.0GHz", "Bits": "32 BITS"}	17	\N
244	1153	6CM3312CN5		1		\N	\N	{}	18	\N
245	1152-04	FCGLH0DHD5KBGN		1		\N	\N	{}	21	\N
246	1152-03	BDAEV0Q5Y5F8SA		1		\N	\N	{}	9	\N
247	451	2UA64815Y8	RL340LA#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS XP PROFESIONAL", "Usuario": "vgomez", "Acceso Remoto": "SI", "Ip": "172.16.10.147", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "250GB SATA", "Unidad Lectora": "FLOPPY", "Procesador": "INTEL 2 DUO 2.13GHz", "Bits": "32 BITS"}	63	\N
248	452	452-02		1		\N	\N	{}	32	\N
249	451-04	FATSK0J9WT7S0B		1		\N	\N	{}	5	\N
250	451-03	B93CB0LGAT705T		1		\N	\N	{}	9	\N
251	1087	2UA3392FDT	E2A37LT#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "azavala", "Acceso Remoto": "SI", "Ip": "172.16.9.39", "Ram": "16GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL XEON 3.0GHz", "Bits": "64 BITS"}	54	\N
252	1088	1088-02		1		\N	\N	{}	48	\N
253	1087-04	FCGLF0DN33IG1Z		1		\N	\N	{}	70	\N
254	1087-03	BDMHE0CVB4V8V1		1		\N	\N	{}	56	\N
255	543	2UA8411BXJ	KF243LA#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS XP PROFESIONAL", "Usuario": "jgonzales", "Acceso Remoto": "SI", "Ip": "172.16.10.150", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "250GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL CORE 2 QUAD 2.4GHz", "Bits": "32 BITS"}	67	\N
256	867	202NDXQ9N490		1		\N	\N	{}	79	\N
257	189	W65646200764		1		\N	\N	{}	15	\N
258	543-03	BC3370GVBWV0K5		1		\N	\N	{}	9	\N
263	641	2UA0010S1L	WE831LA#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "bsalinas", "Acceso Remoto": "SI", "Ip": "172.16.10.141", "Ram": "8GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "CARD READER", "Procesador": "INTEL CORE 2 QUAD 2.66GHz", "Bits": "32 BITS"}	67	\N
264	642	CNC937016X		1		\N	\N	{}	68	\N
265	641-04	FATSK0J9WY7WDA		1		\N	\N	{}	5	\N
266	641-03	BAUDU0HVBY602H		1		\N	\N	{}	9	\N
259	545	2UA8411BXD	KF243LA#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS XP PROFESIONAL", "Usuario": "cgranda", "Acceso Remoto": "SI", "Ip": "172.16.10.140", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "250GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL CORE 2 QUAD 2.4GHz", "Bits": "32 BITS"}	67	\N
260	544	CNT82520RP		1		\N	\N	{}	80	\N
261	545-04	FATSK0J9WY7S0J		1		\N	\N	{}	5	\N
262	545-03	BC3370GVBWEG3V		1		\N	\N	{}	9	\N
267	815	2UA2120TQF	VS933AV#529	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "rguevara", "Acceso Remoto": "SI", "Ip": "172.16.11.145", "Ram": "12GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "6.5TB SATA", "Unidad Lectora": "CARD READER", "Procesador": "INTEL XEON 2.53GHz", "Bits": "64 BITS"}	47	\N
268	816	816-02		1		\N	\N	{}	48	\N
269	815-04	FCGLH0D5B1Y3AV		1		\N	\N	{}	19	\N
270	815-03	BAUDU0OVB1S85C		1		\N	\N	{}	9	\N
271	764	MXL1412Q50	XL504AV#104	1		\N	\N	{"Sistema Operativo": "UBUNTU", "Usuario": "eortiz", "Acceso Remoto": "SI", "Ip": "172.16.12.13", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7-2600 3.4GHz", "Bits": "32 BITS"}	7	\N
272	769	CNC134PKRS		1		\N	\N	{}	8	\N
273	764-04	764-04		1		\N	\N	{}	11	\N
274	764-03	BAUDU0OVB1G4H0		1		\N	\N	{}	9	\N
275	758	MXL1480CNZ	XL504AV#244	1		\N	\N	{"Sistema Operativo": "UBUNTU", "Usuario": "jayuy", "Acceso Remoto": "SI", "Ip": "172.16.12.17", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7-2600 3.4GHz", "Bits": "32 BITS"}	7	\N
276	759	CNC047PY05		1		\N	\N	{}	8	\N
277	758-04	FATSQ0E671GAAT		1		\N	\N	{}	72	\N
278	758-03	BAUDU0OVB1IDO2		1		\N	\N	{}	9	\N
283	730	CNBJ553741	CE459A	1		\N	\N	{"Ip": "172.16.12.3"}	25	\N
280	765	CNC134PKRN		1		\N	\N	{}	8	\N
281	768-04	FATSQ0ECU21H96		1		\N	\N	{}	11	\N
282	768-03	BAUDU0OVB0WCX9		1		\N	\N	{}	9	\N
279	768	MXL1451KD6	XL504AV#104	1		\N	\N	{"Sistema Operativo": "UBUNTU", "Usuario": "mpujupata", "Acceso Remoto": "SI", "Ip": "172.16.12.14", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7-2600 3.4GHz", "Bits": "32 BITS"}	7	\N
284	102	6Y27-KN8Z-R06P		1		\N	\N	{"Sistema Operativo": "WINDOWS XP PROFESIONAL", "Usuario": "bescobar", "Acceso Remoto": "SI", "Ip": "172.16.12.18", "Ram": "1GB DDR2", "Unidad Optica": "CD Writer", "Disco": "40GB IDE", "Unidad Lectora": "FLOPPY", "Procesador": "PENTIUM 4 2.0GHz", "Bits": "32 BITS"}	81	\N
285	497	CNN741043P		1		\N	\N	{}	40	\N
286	102-04	X77664202380		1		\N	\N	{}	15	\N
287	102-03	ZCE261901319		1		\N	\N	{}	45	\N
288	766	MXL1480CN6	XL504AV#244	1		\N	\N	{"Sistema Operativo": "UBUNTU", "Usuario": "sgarcia", "Acceso Remoto": "SI", "Ip": "172.16.12.16", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7-2600 3.4GHz", "Bits": "32 BITS"}	7	\N
289	767	CNC134PKH3		1		\N	\N	{}	8	\N
290	766-04	FATSQ0E671GFCO		1		\N	\N	{}	72	\N
291	766-03	BAUDU0OVB1IDPG		1		\N	\N	{}	9	\N
292	760	MXL137047G	XL504AV#104	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "mguanoluisa", "Acceso Remoto": "SI", "Ip": "172.16.12.11", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7-2600 3.4GHz", "Bits": "32 BITS"}	7	\N
293	1180	910NDWEB4113		1		\N	\N	{}	61	\N
294	760-04	FATSQ0E671A888		1		\N	\N	{}	72	\N
295	760-03	BAUDU0OVB0UB11		1		\N	\N	{}	9	\N
296	731	CNB9L68719		1		\N	\N	{"Ip": "172.16.12.1"}	25	\N
298	770	MXL1451KRC	XL504AV#104	1		\N	\N	{"Sistema Operativo": "WINDOWS XP PROFESIONAL", "Usuario": "jcardenas", "Acceso Remoto": "SI", "Ip": "172.16.12.12", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7-2600 3.4GHz", "Bits": "32 BITS"}	7	\N
299	771	CNC134PKPY		1		\N	\N	{}	8	\N
300	770-04	FATSQ0E671A4H7		1		\N	\N	{}	72	\N
301	770-03	BAUDU0OVB1G5O0		1		\N	\N	{}	9	\N
297	801	VNB3R03647	CE459A	1		\N	\N	{"Ip": "172.16.12.4"}	25	\N
302	762	MXL1451KD9	XL504AV#104	1		\N	\N	{"Sistema Operativo": "UBUNTU", "Usuario": "mmero", "Acceso Remoto": "SI", "Ip": "172.16.12.15", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7-2600 3.4GHz", "Bits": "32 BITS"}	7	\N
306	732	CNBL969986		1		\N	\N	{"Ip": "172.16.12.6"}	23	\N
303	763	CNC134PKQR		1		\N	\N	{}	8	\N
304	762-04	762-04		1		\N	\N	{}	11	\N
305	762-03	BAUDU0OVB1G4HB		1		\N	\N	{}	9	\N
307	20051004	20051004	LQ036AA	1	6845	2013-12-02	2014-12-02	{}	83	2
199	734	MXL1451KCX	XL504AV#104	1		\N	\N	{"Usuario": "jmartinez", "Ip": "172.16.9.23", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Bits": "64 BITS", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I7-2600 34GHz", "Sistema Operativo": "UBUNTU", "Acceso Remoto": "SI"}	7	\N
308	337	MXJ43904K4	PB650A#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS XP PROFESIONAL", "Usuario": "srevelo", "Acceso Remoto": "SI", "Ip": "172.16.9.213", "Ram": "2GB DDR2", "Unidad Optica": "DVD Writer", "Disco": "150GB IDE", "Unidad Lectora": "FLOPPY", "Procesador": "PENTIUM 4 2.53GHz", "Bits": "32 BITS"}	84	\N
309	338	338-02		1		\N	\N	{}	85	\N
310	337-04	X48330006883		1		\N	\N	{}	86	\N
311	337-03	B93CB0ACPRR4KT		1		\N	\N	{}	62	\N
312	803	2CE1493863		1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "jrevelo", "Acceso Remoto": "SI", "Ip": "172.16.9.139", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB DDR3", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I5-2410 2.3GHz", "Bits": "64 BITS"}	87	\N
313	776	2CE14531F8	LR942LA#ABM	1		\N	\N	{"Sistema Operativo": "WINDOWS 7 PROFESIONAL", "Usuario": "ltenecora", "Acceso Remoto": "NO", "Ip": "172.16.10.208/209", "Ram": "4GB DDR3", "Unidad Optica": "DVD Writer", "Disco": "500GB SATA", "Unidad Lectora": "NINGUNO", "Procesador": "INTEL I5-2410M 2.3GHz", "Bits": "64 BITS"}	87	\N
\.


--
-- Data for Name: allocation_allocation; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY allocation_allocation (id, employee, department, area, date_joined, is_active, device_id) FROM stdin;
1	1400598759	12	3	2015-08-17	t	1
2	1400598759	12	3	2015-08-17	t	2
3	1400598759	12	3	2015-08-17	t	3
4	1400598759	12	3	2015-08-17	t	4
5	1400598759	12	3	2015-08-17	t	5
6	1400422414	7	3	2015-08-17	t	6
7	1400422414	7	3	2015-08-17	t	7
8	1400422414	7	3	2015-08-17	t	8
9	1400422414	7	3	2015-08-17	t	9
10	1400422414	7	3	2015-08-17	t	10
11	1400446918	6	4	2015-08-17	t	31
12	1400446918	6	4	2015-08-17	t	32
13	1400446918	6	4	2015-08-17	t	33
14	1400446918	6	4	2015-08-17	t	34
15	1400446918	6	4	2015-08-17	t	35
16	1709527418	7	2	2015-08-17	t	26
17	1709527418	7	2	2015-08-17	t	27
18	1709527418	7	2	2015-08-17	t	28
19	1709527418	7	2	2015-08-17	t	29
20	1709527418	7	2	2015-08-17	t	30
26	0104852710	6	4	2015-08-17	t	16
27	0104852710	6	4	2015-08-17	t	17
28	0104852710	6	4	2015-08-17	t	18
29	0104852710	6	4	2015-08-17	t	19
30	0104852710	6	4	2015-08-17	t	20
31	1400435770	12	3	2015-08-17	t	11
32	1400435770	12	3	2015-08-17	t	12
33	1400435770	12	3	2015-08-17	t	13
34	1400435770	12	3	2015-08-17	t	14
35	1400435770	12	3	2015-08-17	t	15
46	1400194518	3	5	2016-01-26	t	36
47	1400194518	3	5	2016-01-26	t	37
48	1400194518	3	5	2016-01-26	t	38
49	1400194518	3	5	2016-01-26	t	39
50	1400194518	3	5	2016-01-26	t	40
51	1400649305	3	5	2016-01-26	t	42
52	1400649305	3	5	2016-01-26	t	43
53	1400649305	3	5	2016-01-26	t	44
54	1400649305	3	5	2016-01-26	t	45
55	1400649305	3	5	2016-01-26	t	41
56	1400479802	3	5	2016-01-26	t	46
57	1400479802	3	5	2016-01-26	t	47
58	1400479802	3	5	2016-01-26	t	48
59	1400479802	3	5	2016-01-26	t	49
60	1400479802	3	5	2016-01-26	t	50
61	0201360815	3	5	2016-01-26	t	51
62	0201360815	3	5	2016-01-26	t	52
63	0201360815	3	5	2016-01-26	t	53
64	0201360815	3	5	2016-01-26	t	54
65	0201360815	3	5	2016-01-26	t	55
66	1401022601	16	2	2016-01-26	t	56
67	1400307409	14	4	2016-01-26	t	57
68	1400363287	16	2	2016-01-27	t	58
69	1400306609	11	5	2016-01-27	t	60
70	1400306609	11	5	2016-01-27	t	61
71	1400306609	11	5	2016-01-27	t	62
72	1400306609	11	5	2016-01-27	t	63
73	1400306609	11	5	2016-01-27	t	64
74	1400306609	11	5	2016-01-27	t	65
75	1400306609	11	5	2016-01-27	t	66
76	1400306609	11	5	2016-01-27	t	67
77	1400306609	11	5	2016-01-27	t	69
78	1400306609	11	5	2016-01-27	t	68
79	1400426753	4	2	2016-02-23	t	70
80	1400426753	4	2	2016-02-23	t	71
81	1400426753	4	2	2016-02-23	t	73
82	1400426753	4	2	2016-02-23	t	72
83	1400690143	4	2	2016-02-23	t	74
84	1400690143	4	2	2016-02-23	t	75
85	1400690143	4	2	2016-02-23	t	76
86	1400690143	4	2	2016-02-23	t	77
87	1400426753	4	2	2016-02-23	t	78
88	1400426753	4	2	2016-02-23	t	79
89	1400426753	4	2	2016-02-23	t	81
90	1400426753	4	2	2016-02-23	t	80
91	1803382710	4	4	2016-02-26	t	82
92	1400371710	4	2	2016-02-26	t	83
93	1400371710	4	2	2016-02-26	t	59
94	1400371710	4	2	2016-02-26	t	84
95	1400616080	11	3	2016-02-29	t	85
96	1400616080	11	3	2016-02-29	t	86
97	1400616080	11	3	2016-02-29	t	88
98	1400616080	11	3	2016-02-29	t	87
99	1400358832	17	1	2016-03-03	t	93
100	1400358832	17	1	2016-03-03	t	94
101	1400358832	17	1	2016-03-03	t	95
102	1400358832	17	1	2016-03-03	t	96
103	1708250624	17	1	2016-03-03	t	97
104	1400336507	9	3	2016-03-04	t	98
105	1400336507	9	3	2016-03-04	t	99
106	1400336507	9	3	2016-03-04	t	101
107	1400336507	9	3	2016-03-04	t	100
108	1400336507	9	3	2016-03-04	t	102
109	1704454287	9	2	2016-03-04	t	103
110	1704454287	9	2	2016-03-04	t	104
111	1704454287	9	2	2016-03-04	t	105
112	1704454287	9	2	2016-03-04	t	106
113	1704454287	9	2	2016-03-04	t	108
114	0101675122	9	5	2016-03-04	t	109
115	0101675122	9	5	2016-03-04	t	110
116	0101675122	9	5	2016-03-04	t	111
21	0103801932	6	4	2015-08-17	f	21
25	0103801932	6	4	2015-08-17	f	25
23	0103801932	6	4	2015-08-17	f	23
117	0101675122	9	5	2016-03-04	t	112
118	0101675122	9	5	2016-03-04	t	113
119	1704454287	9	2	2016-03-04	t	107
120	0702115783	9	2	2016-03-04	t	114
121	0702115783	9	2	2016-03-04	t	115
122	0702115783	9	2	2016-03-04	t	116
123	0702115783	9	2	2016-03-04	t	117
124	0702115783	9	2	2016-03-04	t	118
125	1400480800	9	2	2016-03-04	t	119
126	1400480800	9	2	2016-03-04	t	120
127	1400480800	9	2	2016-03-04	t	121
128	1400480800	9	2	2016-03-04	t	122
129	1400480800	9	2	2016-03-04	t	123
130	1400475495	9	2	2016-03-04	t	129
131	1400475495	9	2	2016-03-04	t	130
132	1400475495	9	2	2016-03-04	t	131
133	1400475495	9	2	2016-03-04	t	132
134	1400475495	9	2	2016-03-04	t	133
135	1400324883	9	1	2016-03-04	t	134
136	1400324883	9	1	2016-03-04	t	139
137	1400324883	9	1	2016-03-04	t	135
138	1400324883	9	1	2016-03-04	t	136
139	1400324883	9	1	2016-03-04	t	137
140	1400324883	9	1	2016-03-04	t	138
141	0912106143	9	2	2016-03-04	t	124
142	0912106143	9	2	2016-03-04	t	125
143	0912106143	9	2	2016-03-04	t	126
144	0912106143	9	2	2016-03-04	t	128
145	0912106143	9	2	2016-03-04	t	127
146	1400343651	12	1	2016-03-08	t	140
147	1400343651	12	1	2016-03-08	t	141
148	1400343651	12	1	2016-03-08	t	142
149	1400343651	12	1	2016-03-08	t	143
150	1400343651	12	1	2016-03-08	t	144
151	1400307409	14	1	2016-03-09	t	145
152	1400307409	14	1	2016-03-09	t	146
153	1400307409	14	1	2016-03-09	t	147
154	1400307409	14	1	2016-03-09	t	148
155	1400307409	14	1	2016-03-09	t	149
156	1400307409	14	1	2016-03-09	t	150
157	1400385702	6	4	2016-03-09	t	151
158	1400385702	6	4	2016-03-09	t	152
159	1400385702	6	4	2016-03-09	t	153
160	1400385702	6	4	2016-03-09	t	155
161	1400385702	6	4	2016-03-09	t	154
162	1400385702	6	4	2016-03-09	t	156
163	0104088786	6	4	2016-03-09	t	158
164	0104088786	6	4	2016-03-09	t	157
165	0104712708	6	5	2016-03-09	t	159
166	0104712708	6	5	2016-03-09	t	160
167	0104712708	6	5	2016-03-09	t	161
168	0104712708	6	5	2016-03-09	t	162
22	0103801932	6	4	2015-08-17	f	22
24	0103801932	6	4	2015-08-17	f	24
169	0103801932	6	5	2016-03-09	t	22
170	0103801932	6	5	2016-03-09	t	21
171	0103801932	6	5	2016-03-09	t	24
172	0103801932	6	5	2016-03-09	t	25
173	0103801932	6	5	2016-03-09	t	23
174	1400452718	6	5	2016-03-09	t	163
175	1400452718	6	5	2016-03-09	t	165
176	1400452718	6	5	2016-03-09	t	164
177	1400452718	6	5	2016-03-09	t	166
178	1710620558	6	4	2016-03-09	t	167
179	1710620558	6	4	2016-03-09	t	168
180	1710620558	6	4	2016-03-09	t	169
181	1710620558	6	4	2016-03-09	t	170
182	0915931653	6	5	2016-03-09	t	171
183	0915931653	6	5	2016-03-09	t	172
184	0915931653	6	5	2016-03-09	t	173
185	0915931653	6	5	2016-03-09	t	174
186	1400512768	6	5	2016-03-09	t	175
187	1400512768	6	5	2016-03-09	t	176
188	1400512768	6	5	2016-03-09	t	177
189	1400512768	6	5	2016-03-09	t	178
190	1400489975	6	5	2016-03-09	t	179
191	1400489975	6	5	2016-03-09	t	180
192	1400489975	6	5	2016-03-09	t	181
193	1400489975	6	5	2016-03-09	t	182
194	1400545537	6	5	2016-03-09	t	183
195	1400545537	6	5	2016-03-09	t	184
196	1400545537	6	5	2016-03-09	t	185
197	1400545537	6	5	2016-03-09	t	186
198	1400367601	6	6	2016-03-09	t	187
199	1400367601	6	6	2016-03-09	t	188
200	1400367601	6	6	2016-03-09	t	189
201	1400367601	6	6	2016-03-09	t	190
202	0602775249	6	6	2016-03-09	t	191
203	0602775249	6	6	2016-03-09	t	192
204	0602775249	6	6	2016-03-09	t	193
205	0602775249	6	6	2016-03-09	t	194
206	2000062808	6	6	2016-03-10	t	196
207	2000062808	6	6	2016-03-10	t	195
208	2000062808	6	6	2016-03-10	t	197
209	2000062808	6	6	2016-03-10	t	198
214	1400564306	6	6	2016-03-10	t	203
215	1400564306	6	6	2016-03-10	t	204
216	1400564306	6	6	2016-03-10	t	205
217	1400564306	6	6	2016-03-10	t	206
218	1400201313	7	1	2016-03-10	t	207
219	1400201313	7	1	2016-03-10	t	208
220	1400201313	7	1	2016-03-10	t	209
221	1400201313	7	1	2016-03-10	t	210
211	0103797031	6	6	2016-03-10	f	200
212	0103797031	6	6	2016-03-10	f	201
213	0103797031	6	6	2016-03-10	f	202
222	1400201313	7	1	2016-03-10	t	215
223	1400201313	7	1	2016-03-10	t	212
224	1400201313	7	1	2016-03-10	t	213
225	1400201313	7	1	2016-03-10	t	211
226	1400201313	7	1	2016-03-10	t	216
227	1400201313	7	1	2016-03-10	t	214
228	1400422414	7	1	2016-03-10	t	217
229	1400507248	7	2	2016-03-10	t	218
230	1400507248	7	2	2016-03-10	t	219
231	1400507248	7	2	2016-03-10	t	220
232	1400507248	7	2	2016-03-10	t	221
233	1400201313	7	1	2016-03-10	t	222
234	1400468755	7	2	2016-03-10	t	223
235	1400468755	7	2	2016-03-10	t	224
236	1400468755	7	2	2016-03-10	t	225
237	1400468755	7	2	2016-03-10	t	226
238	1400484422	7	3	2016-03-10	t	227
239	1400484422	7	3	2016-03-10	t	228
240	1400484422	7	3	2016-03-10	t	229
241	1400484422	7	3	2016-03-10	t	230
242	1400344535	7	2	2016-03-10	t	231
243	1400344535	7	2	2016-03-10	t	232
244	1400344535	7	2	2016-03-10	t	233
245	1400344535	7	2	2016-03-10	t	234
246	1400458434	7	3	2016-03-10	t	235
247	1400458434	7	3	2016-03-10	t	236
248	1400458434	7	3	2016-03-10	t	237
249	1400458434	7	3	2016-03-10	t	238
250	1400503411	7	2	2016-03-10	t	239
251	1400503411	7	2	2016-03-10	t	240
252	1400503411	7	2	2016-03-10	t	241
253	1400503411	7	2	2016-03-10	t	242
254	1400430144	7	2	2016-03-10	t	243
255	1400430144	7	2	2016-03-10	t	244
256	1400430144	7	2	2016-03-10	t	245
257	1400430144	7	2	2016-03-10	t	246
258	1400469308	7	3	2016-03-10	t	247
259	1400469308	7	3	2016-03-10	t	248
260	1400469308	7	3	2016-03-10	t	249
261	1400469308	7	3	2016-03-10	t	250
262	1400490106	7	2	2016-03-10	t	251
263	1400490106	7	2	2016-03-10	t	252
264	1400490106	7	2	2016-03-10	t	253
265	1400490106	7	2	2016-03-10	t	254
266	1400485064	7	3	2016-03-10	t	255
267	1400485064	7	3	2016-03-10	t	256
268	1400485064	7	3	2016-03-10	t	257
269	1400485064	7	3	2016-03-10	t	258
270	1400584452	7	3	2016-03-10	t	263
271	1400584452	7	3	2016-03-10	t	264
272	1400584452	7	3	2016-03-10	t	265
273	1400584452	7	3	2016-03-10	t	266
274	0102428968	7	3	2016-03-10	t	259
275	0102428968	7	3	2016-03-10	t	260
276	0102428968	7	3	2016-03-10	t	261
277	0102428968	7	3	2016-03-10	t	262
278	1600486946	14	2	2016-03-10	t	267
279	1600486946	14	2	2016-03-10	t	268
280	1600486946	14	2	2016-03-10	t	269
281	1600486946	14	2	2016-03-10	t	270
282	1400681753	15	1	2016-03-11	t	271
283	1400681753	15	1	2016-03-11	t	272
284	1400681753	15	1	2016-03-11	t	273
285	1400681753	15	1	2016-03-11	t	274
286	1400628192	15	1	2016-03-11	t	275
287	1400628192	15	1	2016-03-11	t	276
288	1400628192	15	1	2016-03-11	t	277
289	1400628192	15	1	2016-03-11	t	278
290	1400628192	15	1	2016-03-11	t	283
291	1400517866	15	1	2016-03-11	t	279
292	1400517866	15	1	2016-03-11	t	280
293	1400517866	15	1	2016-03-11	t	281
294	1400517866	15	1	2016-03-11	t	282
295	1600211856	15	1	2016-03-11	t	284
296	1600211856	15	1	2016-03-11	t	285
297	1600211856	15	1	2016-03-11	t	286
298	1600211856	15	1	2016-03-11	t	287
299	1102320643	15	1	2016-03-11	t	288
300	1102320643	15	1	2016-03-11	t	289
301	1102320643	15	1	2016-03-11	t	290
302	1102320643	15	1	2016-03-11	t	291
303	1600409997	15	1	2016-03-11	t	292
304	1600409997	15	1	2016-03-11	t	293
305	1600409997	15	1	2016-03-11	t	294
306	1600409997	15	1	2016-03-11	t	295
307	1600409997	15	1	2016-03-11	t	296
308	1400196596	15	1	2016-03-11	t	298
309	1400196596	15	1	2016-03-11	t	299
310	1400196596	15	1	2016-03-11	t	300
311	1400196596	15	1	2016-03-11	t	301
312	1400196596	15	1	2016-03-11	t	297
313	1400494793	15	1	2016-03-11	t	302
314	1400494793	15	1	2016-03-11	t	306
315	1400494793	15	1	2016-03-11	t	303
316	1400494793	15	1	2016-03-11	t	304
317	1400494793	15	1	2016-03-11	t	305
318	1400670822	4	4	2016-03-11	t	308
319	1400670822	4	4	2016-03-11	t	309
320	1400670822	4	4	2016-03-11	t	310
321	1400670822	4	4	2016-03-11	t	311
210	0103797031	6	6	2016-03-10	f	199
322	0103797031	2	1	2016-03-11	t	199
323	0103797031	2	1	2016-03-11	t	200
324	0103797031	2	1	2016-03-11	t	201
325	0103797031	2	1	2016-03-11	t	202
326	1400457188	13	1	2016-03-11	t	312
327	1400565030	10	1	2016-03-17	t	313
\.


--
-- Name: allocation_allocation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('allocation_allocation_id_seq', 327, true);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	equipment	trademark
8	equipment	type
9	equipment	model
10	equipment	device
11	allocation	allocation
12	organization	department
13	organization	section
14	organization	contributor
15	organization	employee
16	providers	provider
17	technical_assistance	maintenance
18	technical_assistance	parts
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add trademark	7	add_trademark
20	Can change trademark	7	change_trademark
21	Can delete trademark	7	delete_trademark
22	Can add type	8	add_type
23	Can change type	8	change_type
24	Can delete type	8	delete_type
25	Can add model	9	add_model
26	Can change model	9	change_model
27	Can delete model	9	delete_model
28	Can add device	10	add_device
29	Can change device	10	change_device
30	Can delete device	10	delete_device
31	Can add allocation	11	add_allocation
32	Can change allocation	11	change_allocation
33	Can delete allocation	11	delete_allocation
34	Can add department	12	add_department
35	Can change department	12	change_department
36	Can delete department	12	delete_department
37	Can add section	13	add_section
38	Can change section	13	change_section
39	Can delete section	13	delete_section
40	Can add contributor	14	add_contributor
41	Can change contributor	14	change_contributor
42	Can delete contributor	14	delete_contributor
43	Can add employee	15	add_employee
44	Can change employee	15	change_employee
45	Can delete employee	15	delete_employee
46	Can add provider	16	add_provider
47	Can change provider	16	change_provider
48	Can delete provider	16	delete_provider
49	Can add maintenance	17	add_maintenance
50	Can change maintenance	17	change_maintenance
51	Can delete maintenance	17	delete_maintenance
52	Can add parts	18	add_parts
53	Can change parts	18	change_parts
54	Can delete parts	18	delete_parts
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('auth_permission_id_seq', 54, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('django_content_type_id_seq', 18, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-11-19 15:40:46.600425-05
2	auth	0001_initial	2015-11-19 15:40:46.667731-05
3	admin	0001_initial	2015-11-19 15:40:46.694632-05
4	allocation	0001_initial	2015-11-19 15:40:46.709139-05
5	contenttypes	0002_remove_content_type_name	2015-11-19 15:40:46.767276-05
6	auth	0002_alter_permission_name_max_length	2015-11-19 15:40:46.786906-05
7	auth	0003_alter_user_email_max_length	2015-11-19 15:40:46.80849-05
8	auth	0004_alter_user_username_opts	2015-11-19 15:40:46.84662-05
9	auth	0005_alter_user_last_login_null	2015-11-19 15:40:46.865985-05
10	auth	0006_require_contenttypes_0002	2015-11-19 15:40:46.867786-05
11	sessions	0001_initial	2015-11-19 15:40:46.879224-05
12	technical_assistance	0001_initial	2016-03-01 09:11:48.262609-05
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('django_migrations_id_seq', 12, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Name: equipment_device_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('equipment_device_id_seq', 313, true);


--
-- Name: equipment_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('equipment_model_id_seq', 87, true);


--
-- Name: equipment_trademark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('equipment_trademark_id_seq', 16, true);


--
-- Name: equipment_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('equipment_type_id_seq', 8, true);


--
-- Name: providers_provider_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('providers_provider_id_seq', 3, true);


--
-- Data for Name: technical_assistance_maintenance; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY technical_assistance_maintenance (id, date, problem, solution, device_id) FROM stdin;
1	2016-02-26	Lentitud en el equipo, se detectó fallo en el disco duro.	Validación de garantía y reposición de disco.	31
2	2016-03-11	Necesidad de respaldar información	Cambio de disco duro y formateo del equipo con linux	199
\.


--
-- Name: technical_assistance_maintenance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('technical_assistance_maintenance_id_seq', 2, true);


--
-- Data for Name: technical_assistance_parts; Type: TABLE DATA; Schema: public; Owner: coninf
--

COPY technical_assistance_parts (id, is_active, maintenance_id, part_id) FROM stdin;
1	t	2	307
\.


--
-- Name: technical_assistance_parts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: coninf
--

SELECT pg_catalog.setval('technical_assistance_parts_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

