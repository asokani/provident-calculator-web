class NumberFormat
  this.format = (number, decimals = 0, dec_point = ',', thousands_sep = ' ') ->
    # from https://github.com/GlitchMr/number-format/blob/master/lib/number-format.coffee
    negative = if number < 0 then '-' else ''
    number = Math.abs number
    decimal = ((number - parseInt number).toFixed decimals)[2..]
    number = "#{parseInt number.toFixed decimals}".split('').reverse().join('').
    replace(/...(?!$)/g, "$&#{thousands_sep.replace /\$/g, '$$$$'}").
    split('').reverse().join('')
    decimalPoint = if decimals isnt 0 then dec_point else ''
    "#{negative}#{number}#{decimalPoint}#{decimal}"

class TableData
  data: """
  issue_value	apr_45	interest_45	fee_45	fee_admin_45	total_45	instalment_45	instalment_last_45	fee_cash_45	apr_60	interest_60	fee_60	fee_admin_60	total_60	instalment_60	instalment_last_60	fee_cash_60	apr_100	interest_100	fee_100	fee_admin_100	total_100	instalment_100	instalment_last_100	fee_cash_100
  2300,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	546,73	610,30	1157,03	3457,03	34,58	33,61	1368,50
  2250,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	534,84	597,03	1131,87	3381,87	33,82	33,69	1338,75
  2200,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	522,96	583,76	1106,72	3306,72	33,07	32,79	1309,00
  2150,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	511,07	570,50	1081,57	3231,57	32,32	31,89	1279,25
  2100,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	499,19	557,23	1056,42	3156,42	31,57	30,99	1249,50
  2050,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	487,30	543,96	1031,26	3081,26	30,82	30,08	1219,75
  2000,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	475,41	530,70	1006,11	3006,11	30,07	29,18	1190,00
  1950,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	463,53	517,43	980,96	2930,96	29,31	29,27	1160,25
  1900,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	451,64	504,16	955,80	2855,80	28,56	28,36	1130,50
  1850,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	439,76	490,89	930,65	2780,65	27,81	27,46	1100,75
  1800,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	427,87	477,63	905,50	2705,50	27,06	26,56	1071,00
  1750,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	415,99	464,36	880,35	2630,35	26,31	25,66	1041,25
  1700,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	404,10	451,09	855,19	2555,19	25,56	24,75	1011,50
  1650,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	392,22	437,82	830,04	2480,04	24,81	23,85	981,75
  1600,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	380,33	424,56	804,89	2404,89	24,05	23,94	952,00
  1550,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	368,45	411,29	779,74	2329,74	23,30	23,04	922,25
  1500,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	356,56	398,02	754,58	2254,58	22,55	22,13	892,50
  1480,00	-	-	-	-	-	-	-	-	70,38	213,12	297,48	510,60	1990,60	33,18	32,98	762,20	-	-	-	-	-	-	-	-
  1460,00	-	-	-	-	-	-	-	-	70,38	210,24	293,46	503,70	1963,70	32,73	32,63	751,90	-	-	-	-	-	-	-	-
  1450,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	344,68	384,75	729,43	2179,43	21,80	21,23	862,75
  1440,00	-	-	-	-	-	-	-	-	70,38	207,36	289,44	496,80	1936,80	32,28	32,28	741,60	-	-	-	-	-	-	-	-
  1420,00	-	-	-	-	-	-	-	-	70,38	204,48	285,42	489,90	1909,90	31,84	31,34	731,30	-	-	-	-	-	-	-	-
  1400,00	-	-	-	-	-	-	-	-	70,38	201,60	281,40	483,00	1883,00	31,39	30,99	721,00	57,17	332,79	371,49	704,28	2104,28	21,05	20,33	833,00
  1380,00	-	-	-	-	-	-	-	-	70,38	198,72	277,38	476,10	1856,10	30,94	30,64	710,70	-	-	-	-	-	-	-	-
  1360,00	-	-	-	-	-	-	-	-	70,38	195,84	273,36	469,20	1829,20	30,49	30,29	700,40	-	-	-	-	-	-	-	-
  1350,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	320,90	358,22	679,12	2029,12	20,30	19,42	803,25
  1340,00	-	-	-	-	-	-	-	-	70,38	192,96	269,34	462,30	1802,30	30,04	29,94	690,10	-	-	-	-	-	-	-	-
  1320,00	-	-	-	-	-	-	-	-	70,38	190,08	265,32	455,40	1775,40	29,59	29,59	679,80	-	-	-	-	-	-	-	-
  1300,00	-	-	-	-	-	-	-	-	70,38	187,20	261,30	448,50	1748,50	29,15	28,65	669,50	57,17	309,02	344,95	653,97	1953,97	19,54	19,51	773,50
  1280,00	-	-	-	-	-	-	-	-	70,38	184,32	257,28	441,60	1721,60	28,70	28,30	659,20	-	-	-	-	-	-	-	-
  1260,00	-	-	-	-	-	-	-	-	70,38	181,44	253,26	434,70	1694,70	28,25	27,95	648,90	-	-	-	-	-	-	-	-
  1250,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	297,13	331,69	628,82	1878,82	18,79	18,61	743,75
  1240,00	-	-	-	-	-	-	-	-	70,38	178,56	249,24	427,80	1667,80	27,80	27,60	638,60	-	-	-	-	-	-	-	-
  1220,00	-	-	-	-	-	-	-	-	70,38	175,68	245,22	420,90	1640,90	27,35	27,25	628,30	-	-	-	-	-	-	-	-
  1200,00	69,48	130,19	171,63	301,82	1501,82	33,38	33,10	618,00	70,38	172,80	241,20	414,00	1614,00	26,90	26,90	618,00	57,17	285,25	318,42	603,67	1803,67	18,04	17,71	714,00
  1180,00	69,48	128,02	168,77	296,79	1476,79	32,82	32,71	607,70	70,38	169,92	237,18	407,10	1587,10	26,46	25,96	607,70	-	-	-	-	-	-	-	-
  1160,00	69,48	125,85	165,91	291,76	1451,76	32,27	31,88	597,40	70,38	167,04	233,16	400,20	1560,20	26,01	25,61	597,40	-	-	-	-	-	-	-	-
  1150,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	273,36	305,15	578,51	1728,51	17,29	16,80	684,25
  1140,00	69,48	123,68	163,05	286,73	1426,73	31,71	31,49	587,10	70,38	164,16	229,14	393,30	1533,30	25,56	25,26	587,10	-	-	-	-	-	-	-	-
  1120,00	69,48	121,51	160,19	281,70	1401,70	31,15	31,10	576,80	70,38	161,28	225,12	386,40	1506,40	25,11	24,91	576,80	-	-	-	-	-	-	-	-
  1100,00	69,48	119,34	157,33	276,67	1376,67	30,60	30,27	566,50	70,38	158,40	221,10	379,50	1479,50	24,66	24,56	566,50	57,17	261,48	291,88	553,36	1653,36	16,54	15,90	654,50
  1080,00	69,48	117,17	154,47	271,64	1351,64	30,04	29,88	556,20	70,38	155,52	217,08	372,60	1452,60	24,21	24,21	556,20	-	-	-	-	-	-	-	-
  1060,00	69,48	115,00	151,61	266,61	1326,61	29,49	29,05	545,90	70,38	152,64	213,06	365,70	1425,70	23,77	23,27	545,90	-	-	-	-	-	-	-	-
  1050,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	249,59	278,62	528,21	1578,21	15,79	15,00	624,75
  1040,00	69,48	112,83	148,74	261,57	1301,57	28,93	28,65	535,60	70,38	149,76	209,04	358,80	1398,80	23,32	22,92	535,60	-	-	-	-	-	-	-	-
  1020,00	69,48	110,66	145,88	256,54	1276,54	28,37	28,26	525,30	70,38	146,88	205,02	351,90	1371,90	22,87	22,57	525,30	-	-	-	-	-	-	-	-
  1000,00	69,48	108,49	143,02	251,51	1251,51	27,82	27,43	515,00	70,38	144,00	201,00	345,00	1345,00	22,42	22,22	515,00	57,17	237,70	265,35	503,05	1503,05	15,04	14,09	595,00
  980,00	69,48	106,32	140,16	246,48	1226,48	27,26	27,04	504,70	70,38	141,12	196,98	338,10	1318,10	21,97	21,87	504,70	-	-	-	-	-	-	-	-
  960,00	69,48	104,15	137,30	241,45	1201,45	26,70	26,65	494,40	70,38	138,24	192,96	331,20	1291,20	21,52	21,52	494,40	-	-	-	-	-	-	-	-
  950,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	225,82	252,08	477,90	1427,90	14,28	14,18	565,25
  940,00	69,48	101,98	134,44	236,42	1176,42	26,15	25,82	484,10	70,38	135,36	188,94	324,30	1264,30	21,08	20,58	484,10	-	-	-	-	-	-	-	-
  920,00	69,48	99,81	131,58	231,39	1151,39	25,59	25,43	473,80	70,38	132,48	184,92	317,40	1237,40	20,63	20,23	473,80	-	-	-	-	-	-	-	-
  900,00	69,48	97,64	128,72	226,36	1126,36	25,04	24,60	463,50	70,38	129,60	180,90	310,50	1210,50	20,18	19,88	463,50	57,17	213,94	238,81	452,75	1352,75	13,53	13,28	535,50
  880,00	69,48	95,47	125,86	221,33	1101,33	24,48	24,21	453,20	70,38	126,72	176,88	303,60	1183,60	19,73	19,53	453,20	-	-	-	-	-	-	-	-
  860,00	69,48	93,30	123,00	216,30	1076,30	23,92	23,82	442,90	70,38	123,84	172,86	296,70	1156,70	19,28	19,18	442,90	-	-	-	-	-	-	-	-
  850,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	202,05	225,55	427,60	1277,60	12,78	12,38	505,75
  840,00	69,48	91,13	120,14	211,27	1051,27	23,37	22,99	432,60	70,38	120,96	168,84	289,80	1129,80	18,83	18,83	432,60	-	-	-	-	-	-	-	-
  820,00	69,48	88,96	117,28	206,24	1026,24	22,81	22,60	422,30	70,38	118,08	164,82	282,90	1102,90	18,39	17,89	422,30	-	-	-	-	-	-	-	-
  800,00	69,48	86,79	114,42	201,21	1001,21	22,25	22,21	412,00	70,38	115,20	160,80	276,00	1076,00	17,94	17,54	412,00	57,17	190,16	212,28	402,44	1202,44	12,03	11,47	476,00
  780,00	69,48	84,62	111,56	196,18	976,18	21,70	21,38	401,70	70,38	112,32	156,78	269,10	1049,10	17,49	17,19	401,70	-	-	-	-	-	-	-	-
  760,00	69,48	82,45	108,70	191,15	951,15	21,14	20,99	391,40	70,38	109,44	152,76	262,20	1022,20	17,04	16,84	391,40	-	-	-	-	-	-	-	-
  750,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	178,28	199,01	377,29	1127,29	11,28	10,57	446,25
  740,00	69,48	80,28	105,84	186,12	926,12	20,59	20,16	381,10	70,38	106,56	148,74	255,30	995,30	16,59	16,49	381,10	-	-	-	-	-	-	-	-
  720,00	69,48	78,11	102,98	181,09	901,09	20,03	19,77	370,80	70,38	103,68	144,72	248,40	968,40	16,14	16,14	370,80	-	-	-	-	-	-	-	-
  700,00	69,48	75,94	100,12	176,06	876,06	19,47	19,38	360,50	70,38	100,80	140,70	241,50	941,50	15,70	15,20	360,50	57,17	166,40	185,74	352,14	1052,14	10,53	9,67	416,50
  680,00	69,48	73,77	97,26	171,03	851,03	18,92	18,55	350,20	70,38	97,92	136,68	234,60	914,60	15,25	14,85	350,20	-	-	-	-	-	-	-	-
  660,00	69,48	71,60	94,40	166,00	826,00	18,36	18,16	339,90	70,38	95,04	132,66	227,70	887,70	14,80	14,50	339,90	-	-	-	-	-	-	-	-
  650,00	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	57,17	154,51	172,48	326,99	976,99	9,77	9,76	386,75
  640,00	69,48	69,43	91,54	160,97	800,97	17,80	17,77	329,60	70,38	92,16	128,64	220,80	860,80	14,35	14,15	329,60	-	-	-	-	-	-	-	-
  620,00	69,48	67,26	88,68	155,94	775,94	17,25	16,94	319,30	70,38	89,28	124,62	213,90	833,90	13,90	13,80	319,30	-	-	-	-	-	-	-	-
  600,00	69,48	65,09	85,82	150,91	750,91	16,69	16,55	309,00	70,38	86,40	120,60	207,00	807,00	13,45	13,45	309,00	57,17	142,62	159,21	301,83	901,83	9,02	8,85	357,00
  580,00	69,48	62,92	82,96	145,88	725,88	16,14	15,72	298,70	70,38	83,52	116,58	200,10	780,10	13,01	12,51	298,70	-	-	-	-	-	-	-	-
  560,00	69,48	60,75	80,10	140,85	700,85	15,58	15,33	288,40	70,38	80,64	112,56	193,20	753,20	12,56	12,16	288,40	-	-	-	-	-	-	-	-
  540,00	69,48	58,59	77,23	135,82	675,82	15,02	14,94	278,10	70,38	77,76	108,54	186,30	726,30	12,11	11,81	278,10	-	-	-	-	-	-	-	-
  520,00	69,48	56,42	74,37	130,79	650,79	14,47	14,11	267,80	70,38	74,88	104,52	179,40	699,40	11,66	11,46	267,80	-	-	-	-	-	-	-	-
  500,00	69,48	54,25	71,51	125,76	625,76	13,91	13,72	257,50	70,38	72,00	100,50	172,50	672,50	11,21	11,11	257,50	-	-	-	-	-	-	-	-
  480,00	69,48	52,08	68,65	120,73	600,73	13,35	13,33	247,20	70,38	69,12	96,48	165,60	645,60	10,76	10,76	247,20	-	-	-	-	-	-	-	-
  460,00	69,48	49,91	65,79	115,70	575,70	12,80	12,50	236,90	70,38	66,24	92,46	158,70	618,70	10,32	9,82	236,90	-	-	-	-	-	-	-	-
  440,00	69,48	47,74	62,93	110,67	550,67	12,24	12,11	226,60	70,38	63,36	88,44	151,80	591,80	9,87	9,47	226,60	-	-	-	-	-	-	-	-
  420,00	69,48	45,57	60,07	105,64	525,64	11,69	11,28	216,30	70,38	60,48	84,42	144,90	564,90	9,42	9,12	216,30	-	-	-	-	-	-	-	-
  400,00	69,48	43,40	57,21	100,61	500,61	11,13	10,89	206,00	70,38	57,60	80,40	138,00	538,00	8,97	8,77	206,00	-	-	-	-	-	-	-	-
  380,00	69,48	41,23	54,35	95,58	475,58	10,57	10,50	195,70	70,38	54,72	76,38	131,10	511,10	8,52	8,42	195,70	-	-	-	-	-	-	-	-
  360,00	69,48	39,06	51,49	90,55	450,55	10,02	9,67	185,40	70,38	51,84	72,36	124,20	484,20	8,07	8,07	185,40	-	-	-	-	-	-	-	-
  340,00	69,48	36,88	48,63	85,51	425,51	9,46	9,27	175,10	70,38	48,96	68,34	117,30	457,30	7,63	7,13	175,10	-	-	-	-	-	-	-	-
  320,00	69,48	34,71	45,77	80,48	400,48	8,90	8,88	164,80	70,38	46,08	64,32	110,40	430,40	7,18	6,78	164,80	-	-	-	-	-	-	-	-
  300,00	69,48	32,54	42,91	75,45	375,45	8,35	8,05	154,50	70,38	43,20	60,30	103,50	403,50	6,73	6,43	154,50	-	-	-	-	-	-	-	-
  280,00	69,48	30,38	40,04	70,42	350,42	7,79	7,66	144,20	70,38	40,32	56,28	96,60	376,60	6,28	6,08	144,20	-	-	-	-	-	-	-	-
  260,00	69,48	28,21	37,18	65,39	325,39	7,24	6,83	133,90	70,38	37,44	52,26	89,70	349,70	5,83	5,73	133,90	-	-	-	-	-	-	-	-
  240,00	69,48	26,04	34,32	60,36	300,36	6,68	6,44	123,60	70,38	34,56	48,24	82,80	322,80	5,38	5,38	123,60	-	-	-	-	-	-	-	-
  220,00	69,48	23,87	31,46	55,33	275,33	6,12	6,05	113,30	70,38	31,68	44,22	75,90	295,90	4,94	4,44	113,30	-	-	-	-	-	-	-	-
  200,00	69,48	21,70	28,60	50,30	250,30	5,57	5,22	103,00	70,38	28,80	40,20	69,00	269,00	4,49	4,09	103,00	-	-	-	-	-	-	-	-
  180,00	69,48	19,53	25,74	45,27	225,27	5,01	4,83	92,70	70,38	25,92	36,18	62,10	242,10	4,04	3,74	92,70	-	-	-	-	-	-	-	-
  160,00	69,48	17,36	22,88	40,24	200,24	4,45	4,44	82,40	70,38	23,04	32,16	55,20	215,20	3,59	3,39	82,40	-	-	-	-	-	-	-	-
  140,00	69,48	15,19	20,02	35,21	175,21	3,90	3,61	72,10	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-
"""

jQuery ->
	class Calculator
    table_space_string: """
<div class="row cols-1">
  <div class="container col1" id="result-table-space">

  </div>
</div>
"""
    table_string: """
<div id="loan-type-text">
    Vybral/a ste si _LOAN_TYPE_TEXT pôžičku vo výške _ISSUE_VALUE.
</div>
<table style="width:100%">
   <tr>
     <th style="width:10%">Spôsob splácania</th>
     <th style="width:15%">Výška pôžičky <a data-name="loan" class="help" href="#"></a></th>
     <th style="width:10%">Doba splácania (týždňov)<a data-name="weeks" class="help" href="#"></a></th>
     <th style="width:13%">Týždenná splátka <a data-name="week" class="help" href="#"></a></th>
     <th style="width:12%">Celkove naklady na spot. uver</th>
     <th style="width:10%">RPMN <a data-name="apr" class="help" href="#"></a></th>
     <th style="width:10%">Voliteľná služba zabezpečenia splátok úveru <a data-name="cash" class="help" href="#"></a></th>
     <th colspan="2" style="width:20%">Celkom na zaplatenie <a data-name="total" class="help" href="#"></a></th>
   </tr>
   _ROW
</table>
"""

    row_string: """
<tr>
  <td>_LOAN_TYPE</td>
  <td style="color: #0059A1;font-size: 21px;font-weight: bold;text-align: center;">_ISSUE_VALUE</td>
  <td style="font-size:17px;text-align:center;color: #0059A1;">_WEEKS</td>
  <td style="font-size:17px;text-align:center;color: #0059A1;">_INSTALMENT <a data-values="_INSTALMENT_LAST" data-name="weekinst" class="help" href="#"></a></td>
  <td style="font-size:17px;text-align:center;color: #0059A1;">_INTEREST_PLUS_FEE <a data-values="_DETAILED_FEES" data-name="intplusfee" class="help" href="#"></a></td>
  <td style="font-size:17px;text-align:center;color: #0059A1;">_APR</td>
  <td style="font-size:17px;text-align:center;color: #0059A1;">_FEE_CASH</td>
  <td style="font-weight: bold;font-size:18px;text-align:center;color: #0059A1;">_TOTAL</td>
  <td>_CHOOSE</td>
</tr>
"""
				  
    slider_string: """
<p style="margin:0.5em 0 1em;color: #0059A1;font-size: 18px;">Zvoľte si výšku pôžičky</p>
<div style="position: relative;" id="money-slider-holder">
  <div style="position:absolute;height:0;" id="money-bubble-value">
    <div style="background: #E42C2A;color:white;font-size: 1.5em;cursor:move;white-space:nowrap;position:relative;left:-50%;border-radius:5px;padding:10px;top:-65px;">
    	 <span class="value"></span>
    </div>
  <div style="position:absolute;top:-30px;left:-8px;width: 0;height: 0;	border-left: 8px solid transparent; border-right: 8px solid transparent;border-top: 12px solid #E42C2A;"></div>
  </div>
  <div class="money-slider"></div>
  <div style="float:left;margin:8px 0 0 0;">€140</div>
  <div style="float:right;margin:8px 0 0 0;">€2 300</div>


</div>
<div id="custom-dip-filter">
  <div id="custom-filters" style="float:none;">
    <div id="custom-filter-bar" class="clearfix">
      <div>
        <span class="label">Zvoľte si formu svojej pôžičky</span>
        <ul style="margin-bottom:20px">
          <li style="width: 233px;">
            <input checked="checked" type="radio" id="custom-filter-home-collect" name="filters" value="HomeCollect">
            <label for="custom-filter-home-collect" id="custom-filter-bank-transfer-label">Hotovostná
            </label>
            <div class="about"><ul class="bullets"><li>Hotovosť do 48 hodín.</li><li>Peniaze do vlastných rúk pri podpise zmluvy.</li><li>Maximálny komfort, všetko vyriešite z domova.</li></ul></div>
          </li>
          <li style="width: 233px;">
            <input type="radio" id="custom-filter-bank-transfer" name="filters" value="BankTransfer">
            <label for="custom-filter-bank-transfer" id="custom-filter-home-collect-label">Bezhotovostná
            </label>
            <div class="about"><ul class="bullets"><li>Peniaze najneskôr do 13 dní.</li><li>Peniaze získate na bankový účet.</li><li>Maximálny komfort a súkromie. </li><li>Bezhotovostný spôsob splácania.</li>
            </ul></div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
"""
      
    constructor: ->
      this.init_table()
      jQuery(".cols-2-wide .col1").append(@slider_string)
      jQuery(".cols-2-wide").after(@table_space_string)

      jQuery(".money-slider").slider({
        slide: this.onslide,
        min: 0,
        max: 93
      });
      #
      jQuery('head').append('<link rel="stylesheet" href="https://providentonline.cz/provident-remote-calc/style.css" type="text/css" />');
      jQuery(".money-slider").append('<div id="money-slider-fill" style="border-radius:5px;background:#df0909;opacity:0.6;position:absolute;top:0;z-index:5;width:0px;height:10px"></div>')
      jQuery("#money-bubble-value").mousedown(this.onmousedown)
      jQuery(window).mouseup(this.onmouseup)
      jQuery(window).mousemove(this.onmousemove)
      this.throttled_render = jQuery.throttle(150, false, (money_value) ->
        this.render_table(money_value)
      )
      jQuery("#result-table-space table td").css({
        "padding": "8px 5px"
      })
      jQuery("#custom-dip-filter input").change(=>
        @previous_value = -1
        this.onslide(null, {value:jQuery(".money-slider").slider("value")})
      )
      jQuery(".money-slider").slider("value", 29)
      this.onslide(null, {value:jQuery(".money-slider").slider("value")})
    onslide: (event, ui) =>
      value = ui.value
      position = value * jQuery(".money-slider").width() / 93.0
      jQuery("#money-bubble-value").css("left", position)
      jQuery("#money-slider-fill").css("width", position)
      money_value = @table_counter[value]
      money_formatted_value = "€#{NumberFormat.format(money_value)}"
      jQuery("#money-bubble-value div span.value").html(money_formatted_value)
      return if @previous_value == money_value
      @previous_value = money_value
      this.throttled_render(money_value)
    onmousedown: (event) =>
      @mousedown = true
      @mouse_x = event.pageX
      @original_value = jQuery(".money-slider").slider("value")
      event.preventDefault()
    onmouseup: (event) =>
      @mousedown = false
    onmousemove: (event) =>
      return if not @mousedown
      diff = event.pageX - @mouse_x
      diff_value = Math.round(diff / (jQuery(".money-slider").width() / 93.0))
      jQuery(".money-slider").slider("value", @original_value + diff_value)
      this.onslide(event, {value:jQuery(".money-slider").slider("value")})
      event.preventDefault()
    init_table: ->
      @table = []
      counter = 0
      @table_counter = []
      for row in TableData::data.split("\n")
        columns = row.replace(/^\s+|\s+$/g, "").split("\t")
        if counter++ == 0
          @header = columns
        else
          for week in [45, 60, 100]
            issue_value = this.get_value(columns, "issue_value")
            @table_counter[93 - (counter-2)] = issue_value
            if not @table[week]
              @table[week] = {}
            if not @table[week][issue_value]
              @table[week][issue_value] = {}
            for column in ["apr", "fee", "interest", "fee_admin", "fee_cash", "total",
              "instalment", "instalment_last"]
              @table[week][issue_value][column] = this.get_value(columns, column + "_" + week)

    get_value: (columns, name) ->
      value = columns[jQuery.inArray(name, @header)].replace(",", ".")
      if value != "-"
        return parseFloat(value)
      return value
    get_nearest_value: (week, current_row_key) ->
      found_valid = false
      for row_key in [current_row_key..0]
        issue_value = @table_counter[row_key]
        total = @table[week][issue_value]["total"]
        if total != "-"
          found_valid = true
          break
      return null if not found_valid

      for row_key in [current_row_key..93]
        issue_value = @table_counter[row_key]
        total = @table[week][issue_value]["total"]
        if total != "-"
          return issue_value
      return null

    render_table: (issue_value) ->
      rows = []
      if jQuery('#custom-filter-bank-transfer').is(':checked')
        loan_type = '<div class="bankTransfer replacement">Bankový prevod</div>'
        loan_type_text = 'bezhotovostnú'
        loan_type_code = "mt"
      else
        loan_type = '<div class="homeService replacement">Výber v domácnosti</div>'
        loan_type_text = 'hotovostnú'
        loan_type_code = "hc"
      main_issue_value = issue_value
      for week in [45, 60, 100]
        issue_value = main_issue_value
        total = @table[week][issue_value]["total"]
        if total == "-"
          nearest_valid_value = this.get_nearest_value(week, jQuery.inArray(issue_value, @table_counter))
          if not nearest_valid_value
            continue
          issue_value = nearest_valid_value
          total = @table[week][nearest_valid_value]["total"]

        row = @row_string
        fee_admin = @table[week][issue_value]["fee_admin"]
        interest = @table[week][issue_value]["interest"]
        interest_rate = if week == 45 then 22.90 else (if week == 60 then 22.38 else 21.50)
        detailed_fees = "Administratívny poplatok<br>€#{NumberFormat.format(fee_admin, 2)}<br>Urok<br>€#{NumberFormat.format(interest, 2)}<br>Ročná fixná úroková sadzba<br>#{NumberFormat.format(interest_rate, 2)} %"
        row = row.replace("_LOAN_TYPE", loan_type)
        row = row.replace("_DETAILED_FEES", detailed_fees)
        row = row.replace("_ISSUE_VALUE", "€#{NumberFormat.format(issue_value)}")
        row = row.replace("_WEEKS", week)
        instalment_last =  @table[week][issue_value]["instalment_last"]
        row = row.replace("_INSTALMENT_LAST", "€#{NumberFormat.format(instalment_last, 2)}")
        row = row.replace("_INSTALMENT", "€#{NumberFormat.format(@table[week][issue_value]["instalment"], 2)}")
        fee_admin = @table[week][issue_value]["fee_admin"]
        row = row.replace("_INTEREST_PLUS_FEE", "€#{NumberFormat.format(fee_admin, 2)}")
        row = row.replace("_APR", "#{NumberFormat.format(@table[week][issue_value]['apr'], 2)} %")
        fee_cash = @table[week][issue_value]["fee_cash"]
        if loan_type_code == "mt"
          row = row.replace("_FEE_CASH", "-")
        else
          row = row.replace("_FEE_CASH", "€#{NumberFormat.format(fee_cash,2)}")
        row = row.replace("_TOTAL", "€#{NumberFormat.format(total,2)}")

        a = 0
        switch issue_value
          when 140 then a = 482
          when 160 then a = 483
          when 180 then a = 484
          else
            a = issue_value/20+319
        b = if week == 45 then 17 else 18
        c = if loan_type_code == "mt" then 0 else 2

        if week == 100
          row = row.replace("_CHOOSE", "<a class='button rosy medium' href='https://www.provident.sk/pages/online-ziadost'>zvolit</a> ")
        else
          row = row.replace("_CHOOSE", "<a class='button rosy medium' href='http://www.provident.sk/loan_applications/select/#{a}/#{b}/#{c}'>zvolit</a> ")

        rows.push(row)

      table = @table_string
      table = table.replace("_LOAN_TYPE_TEXT", loan_type_text)
      table = table.replace("_ISSUE_VALUE", "€#{NumberFormat.format(issue_value)}")
      table = table.replace("_ROW", rows.join(""))
      jQuery("#result-table-space").html(table)
      jQuery("#result-table-space .help").click(->
        return false
      )
      jQuery("#result-table-space .help").simpletip({
        position: "top",
        offset: [0, -15],
        onBeforeShow: ->
          switch this.getParent().attr("data-name")
            when "loan"
              this.update('Suma, ktorú si chcete požičať');
            when "weeks"
              this.update('Počet týždňov - obdobie, v ktorom chcete pôžičku splácať');
            when "week"
              this.update('Suma, ktorú budete splácať každý týždeň');
            when "apr"
              this.update('RPMN - ročná percentuálna miera nákladov');
            when "cash"
              this.update('Voliteľne nebudete musieť priniesť každý týždeň splátku k nám, ale náš obchodný zástupca Vás navštívi doma.');
            when "total"
              this.update('Celková splatná suma');
            when "weekinst"
              this.update('Posledná splátka '+this.getParent().attr("data-values"));
            when "intplusfee"
              this.update(this.getParent().attr("data-values"));

      })

  new Calculator()

#! jQuery UI - v1.9.0 - 2012-10-23
# http://jqueryui.com
# Includes: jquery.ui.core.js, jquery.ui.widget.js, jquery.ui.mouse.js, jquery.ui.position.js, jquery.ui.slider.js
# Copyright (c) 2012 jQuery Foundation and other contributors Licensed MIT

`(function(e,t){function i(t,n){var r,i,o,u=t.nodeName.toLowerCase();return"area"===u?(r=t.parentNode,i=r.name,!t.href||!i||r.nodeName.toLowerCase()!=="map"?!1:(o=e("img[usemap=#"+i+"]")[0],!!o&&s(o))):(/input|select|textarea|button|object/.test(u)?!t.disabled:"a"===u?t.href||n:n)&&s(t)}function s(t){return!e(t).parents().andSelf().filter(function(){return e.css(this,"visibility")==="hidden"||e.expr.filters.hidden(this)}).length}var n=0,r=/^ui-id-\d+$/;e.ui=e.ui||{};if(e.ui.version)return;e.extend(e.ui,{version:"1.9.0",keyCode:{BACKSPACE:8,COMMA:188,DELETE:46,DOWN:40,END:35,ENTER:13,ESCAPE:27,HOME:36,LEFT:37,NUMPAD_ADD:107,NUMPAD_DECIMAL:110,NUMPAD_DIVIDE:111,NUMPAD_ENTER:108,NUMPAD_MULTIPLY:106,NUMPAD_SUBTRACT:109,PAGE_DOWN:34,PAGE_UP:33,PERIOD:190,RIGHT:39,SPACE:32,TAB:9,UP:38}}),e.fn.extend({_focus:e.fn.focus,focus:function(t,n){return typeof t=="number"?this.each(function(){var r=this;setTimeout(function(){e(r).focus(),n&&n.call(r)},t)}):this._focus.apply(this,arguments)},scrollParent:function(){var t;return e.browser.msie&&/(static|relative)/.test(this.css("position"))||/absolute/.test(this.css("position"))?t=this.parents().filter(function(){return/(relative|absolute|fixed)/.test(e.css(this,"position"))&&/(auto|scroll)/.test(e.css(this,"overflow")+e.css(this,"overflow-y")+e.css(this,"overflow-x"))}).eq(0):t=this.parents().filter(function(){return/(auto|scroll)/.test(e.css(this,"overflow")+e.css(this,"overflow-y")+e.css(this,"overflow-x"))}).eq(0),/fixed/.test(this.css("position"))||!t.length?e(document):t},zIndex:function(n){if(n!==t)return this.css("zIndex",n);if(this.length){var r=e(this[0]),i,s;while(r.length&&r[0]!==document){i=r.css("position");if(i==="absolute"||i==="relative"||i==="fixed"){s=parseInt(r.css("zIndex"),10);if(!isNaN(s)&&s!==0)return s}r=r.parent()}}return 0},uniqueId:function(){return this.each(function(){this.id||(this.id="ui-id-"+ ++n)})},removeUniqueId:function(){return this.each(function(){r.test(this.id)&&e(this).removeAttr("id")})}}),e("<a>").outerWidth(1).jquery||e.each(["Width","Height"],function(n,r){function u(t,n,r,s){return e.each(i,function(){n-=parseFloat(e.css(t,"padding"+this))||0,r&&(n-=parseFloat(e.css(t,"border"+this+"Width"))||0),s&&(n-=parseFloat(e.css(t,"margin"+this))||0)}),n}var i=r==="Width"?["Left","Right"]:["Top","Bottom"],s=r.toLowerCase(),o={innerWidth:e.fn.innerWidth,innerHeight:e.fn.innerHeight,outerWidth:e.fn.outerWidth,outerHeight:e.fn.outerHeight};e.fn["inner"+r]=function(n){return n===t?o["inner"+r].call(this):this.each(function(){e(this).css(s,u(this,n)+"px")})},e.fn["outer"+r]=function(t,n){return typeof t!="number"?o["outer"+r].call(this,t):this.each(function(){e(this).css(s,u(this,t,!0,n)+"px")})}}),e.extend(e.expr[":"],{data:e.expr.createPseudo?e.expr.createPseudo(function(t){return function(n){return!!e.data(n,t)}}):function(t,n,r){return!!e.data(t,r[3])},focusable:function(t){return i(t,!isNaN(e.attr(t,"tabindex")))},tabbable:function(t){var n=e.attr(t,"tabindex"),r=isNaN(n);return(r||n>=0)&&i(t,!r)}}),e(function(){var t=document.body,n=t.appendChild(n=document.createElement("div"));n.offsetHeight,e.extend(n.style,{minHeight:"100px",height:"auto",padding:0,borderWidth:0}),e.support.minHeight=n.offsetHeight===100,e.support.selectstart="onselectstart"in n,t.removeChild(n).style.display="none"}),e.fn.extend({disableSelection:function(){return this.bind((e.support.selectstart?"selectstart":"mousedown")+".ui-disableSelection",function(e){e.preventDefault()})},enableSelection:function(){return this.unbind(".ui-disableSelection")}}),e.extend(e.ui,{plugin:{add:function(t,n,r){var i,s=e.ui[t].prototype;for(i in r)s.plugins[i]=s.plugins[i]||[],s.plugins[i].push([n,r[i]])},call:function(e,t,n){var r,i=e.plugins[t];if(!i||!e.element[0].parentNode||e.element[0].parentNode.nodeType===11)return;for(r=0;r<i.length;r++)e.options[i[r][0]]&&i[r][1].apply(e.element,n)}},contains:e.contains,hasScroll:function(t,n){if(e(t).css("overflow")==="hidden")return!1;var r=n&&n==="left"?"scrollLeft":"scrollTop",i=!1;return t[r]>0?!0:(t[r]=1,i=t[r]>0,t[r]=0,i)},isOverAxis:function(e,t,n){return e>t&&e<t+n},isOver:function(t,n,r,i,s,o){return e.ui.isOverAxis(t,r,s)&&e.ui.isOverAxis(n,i,o)}})})(jQuery);(function(e,t){var n=0,r=Array.prototype.slice,i=e.cleanData;e.cleanData=function(t){for(var n=0,r;(r=t[n])!=null;n++)try{e(r).triggerHandler("remove")}catch(s){}i(t)},e.widget=function(t,n,r){var i,s,o,u,a=t.split(".")[0];t=t.split(".")[1],i=a+"-"+t,r||(r=n,n=e.Widget),e.expr[":"][i.toLowerCase()]=function(t){return!!e.data(t,i)},e[a]=e[a]||{},s=e[a][t],o=e[a][t]=function(e,t){if(!this._createWidget)return new o(e,t);arguments.length&&this._createWidget(e,t)},e.extend(o,s,{version:r.version,_proto:e.extend({},r),_childConstructors:[]}),u=new n,u.options=e.widget.extend({},u.options),e.each(r,function(t,i){e.isFunction(i)&&(r[t]=function(){var e=function(){return n.prototype[t].apply(this,arguments)},r=function(e){return n.prototype[t].apply(this,e)};return function(){var t=this._super,n=this._superApply,s;return this._super=e,this._superApply=r,s=i.apply(this,arguments),this._super=t,this._superApply=n,s}}())}),o.prototype=e.widget.extend(u,{widgetEventPrefix:t},r,{constructor:o,namespace:a,widgetName:t,widgetBaseClass:i,widgetFullName:i}),s?(e.each(s._childConstructors,function(t,n){var r=n.prototype;e.widget(r.namespace+"."+r.widgetName,o,n._proto)}),delete s._childConstructors):n._childConstructors.push(o),e.widget.bridge(t,o)},e.widget.extend=function(n){var i=r.call(arguments,1),s=0,o=i.length,u,a;for(;s<o;s++)for(u in i[s])a=i[s][u],i[s].hasOwnProperty(u)&&a!==t&&(n[u]=e.isPlainObject(a)?e.widget.extend({},n[u],a):a);return n},e.widget.bridge=function(n,i){var s=i.prototype.widgetFullName;e.fn[n]=function(o){var u=typeof o=="string",a=r.call(arguments,1),f=this;return o=!u&&a.length?e.widget.extend.apply(null,[o].concat(a)):o,u?this.each(function(){var r,i=e.data(this,s);if(!i)return e.error("cannot call methods on "+n+" prior to initialization; "+"attempted to call method '"+o+"'");if(!e.isFunction(i[o])||o.charAt(0)==="_")return e.error("no such method '"+o+"' for "+n+" widget instance");r=i[o].apply(i,a);if(r!==i&&r!==t)return f=r&&r.jquery?f.pushStack(r.get()):r,!1}):this.each(function(){var t=e.data(this,s);t?t.option(o||{})._init():new i(o,this)}),f}},e.Widget=function(e,t){},e.Widget._childConstructors=[],e.Widget.prototype={widgetName:"widget",widgetEventPrefix:"",defaultElement:"<div>",options:{disabled:!1,create:null},_createWidget:function(t,r){r=e(r||this.defaultElement||this)[0],this.element=e(r),this.uuid=n++,this.eventNamespace="."+this.widgetName+this.uuid,this.options=e.widget.extend({},this.options,this._getCreateOptions(),t),this.bindings=e(),this.hoverable=e(),this.focusable=e(),r!==this&&(e.data(r,this.widgetName,this),e.data(r,this.widgetFullName,this),this._on({remove:"destroy"}),this.document=e(r.style?r.ownerDocument:r.document||r),this.window=e(this.document[0].defaultView||this.document[0].parentWindow)),this._create(),this._trigger("create",null,this._getCreateEventData()),this._init()},_getCreateOptions:e.noop,_getCreateEventData:e.noop,_create:e.noop,_init:e.noop,destroy:function(){this._destroy(),this.element.unbind(this.eventNamespace).removeData(this.widgetName).removeData(this.widgetFullName).removeData(e.camelCase(this.widgetFullName)),this.widget().unbind(this.eventNamespace).removeAttr("aria-disabled").removeClass(this.widgetFullName+"-disabled "+"ui-state-disabled"),this.bindings.unbind(this.eventNamespace),this.hoverable.removeClass("ui-state-hover"),this.focusable.removeClass("ui-state-focus")},_destroy:e.noop,widget:function(){return this.element},option:function(n,r){var i=n,s,o,u;if(arguments.length===0)return e.widget.extend({},this.options);if(typeof n=="string"){i={},s=n.split("."),n=s.shift();if(s.length){o=i[n]=e.widget.extend({},this.options[n]);for(u=0;u<s.length-1;u++)o[s[u]]=o[s[u]]||{},o=o[s[u]];n=s.pop();if(r===t)return o[n]===t?null:o[n];o[n]=r}else{if(r===t)return this.options[n]===t?null:this.options[n];i[n]=r}}return this._setOptions(i),this},_setOptions:function(e){var t;for(t in e)this._setOption(t,e[t]);return this},_setOption:function(e,t){return this.options[e]=t,e==="disabled"&&(this.widget().toggleClass(this.widgetFullName+"-disabled ui-state-disabled",!!t).attr("aria-disabled",t),this.hoverable.removeClass("ui-state-hover"),this.focusable.removeClass("ui-state-focus")),this},enable:function(){return this._setOption("disabled",!1)},disable:function(){return this._setOption("disabled",!0)},_on:function(t,n){n?(t=e(t),this.bindings=this.bindings.add(t)):(n=t,t=this.element);var r=this;e.each(n,function(n,i){function s(){if(r.options.disabled===!0||e(this).hasClass("ui-state-disabled"))return;return(typeof i=="string"?r[i]:i).apply(r,arguments)}typeof i!="string"&&(s.guid=i.guid=i.guid||s.guid||e.guid++);var o=n.match(/^(\w+)\s*(.*)$/),u=o[1]+r.eventNamespace,a=o[2];a?r.widget().delegate(a,u,s):t.bind(u,s)})},_off:function(e,t){t=(t||"").split(" ").join(this.eventNamespace+" ")+this.eventNamespace,e.unbind(t).undelegate(t)},_delay:function(e,t){function n(){return(typeof e=="string"?r[e]:e).apply(r,arguments)}var r=this;return setTimeout(n,t||0)},_hoverable:function(t){this.hoverable=this.hoverable.add(t),this._on(t,{mouseenter:function(t){e(t.currentTarget).addClass("ui-state-hover")},mouseleave:function(t){e(t.currentTarget).removeClass("ui-state-hover")}})},_focusable:function(t){this.focusable=this.focusable.add(t),this._on(t,{focusin:function(t){e(t.currentTarget).addClass("ui-state-focus")},focusout:function(t){e(t.currentTarget).removeClass("ui-state-focus")}})},_trigger:function(t,n,r){var i,s,o=this.options[t];r=r||{},n=e.Event(n),n.type=(t===this.widgetEventPrefix?t:this.widgetEventPrefix+t).toLowerCase(),n.target=this.element[0],s=n.originalEvent;if(s)for(i in s)i in n||(n[i]=s[i]);return this.element.trigger(n,r),!(e.isFunction(o)&&o.apply(this.element[0],[n].concat(r))===!1||n.isDefaultPrevented())}},e.each({show:"fadeIn",hide:"fadeOut"},function(t,n){e.Widget.prototype["_"+t]=function(r,i,s){typeof i=="string"&&(i={effect:i});var o,u=i?i===!0||typeof i=="number"?n:i.effect||n:t;i=i||{},typeof i=="number"&&(i={duration:i}),o=!e.isEmptyObject(i),i.complete=s,i.delay&&r.delay(i.delay),o&&e.effects&&(e.effects.effect[u]||e.uiBackCompat!==!1&&e.effects[u])?r[t](i):u!==t&&r[u]?r[u](i.duration,i.easing,s):r.queue(function(n){e(this)[t](),s&&s.call(r[0]),n()})}}),e.uiBackCompat!==!1&&(e.Widget.prototype._getCreateOptions=function(){return e.metadata&&e.metadata.get(this.element[0])[this.widgetName]})})(jQuery);(function(e,t){var n=!1;e(document).mouseup(function(e){n=!1}),e.widget("ui.mouse",{version:"1.9.0",options:{cancel:"input,textarea,button,select,option",distance:1,delay:0},_mouseInit:function(){var t=this;this.element.bind("mousedown."+this.widgetName,function(e){return t._mouseDown(e)}).bind("click."+this.widgetName,function(n){if(!0===e.data(n.target,t.widgetName+".preventClickEvent"))return e.removeData(n.target,t.widgetName+".preventClickEvent"),n.stopImmediatePropagation(),!1}),this.started=!1},_mouseDestroy:function(){this.element.unbind("."+this.widgetName),this._mouseMoveDelegate&&e(document).unbind("mousemove."+this.widgetName,this._mouseMoveDelegate).unbind("mouseup."+this.widgetName,this._mouseUpDelegate)},_mouseDown:function(t){if(n)return;this._mouseStarted&&this._mouseUp(t),this._mouseDownEvent=t;var r=this,i=t.which===1,s=typeof this.options.cancel=="string"&&t.target.nodeName?e(t.target).closest(this.options.cancel).length:!1;if(!i||s||!this._mouseCapture(t))return!0;this.mouseDelayMet=!this.options.delay,this.mouseDelayMet||(this._mouseDelayTimer=setTimeout(function(){r.mouseDelayMet=!0},this.options.delay));if(this._mouseDistanceMet(t)&&this._mouseDelayMet(t)){this._mouseStarted=this._mouseStart(t)!==!1;if(!this._mouseStarted)return t.preventDefault(),!0}return!0===e.data(t.target,this.widgetName+".preventClickEvent")&&e.removeData(t.target,this.widgetName+".preventClickEvent"),this._mouseMoveDelegate=function(e){return r._mouseMove(e)},this._mouseUpDelegate=function(e){return r._mouseUp(e)},e(document).bind("mousemove."+this.widgetName,this._mouseMoveDelegate).bind("mouseup."+this.widgetName,this._mouseUpDelegate),t.preventDefault(),n=!0,!0},_mouseMove:function(t){return!e.browser.msie||document.documentMode>=9||!!t.button?this._mouseStarted?(this._mouseDrag(t),t.preventDefault()):(this._mouseDistanceMet(t)&&this._mouseDelayMet(t)&&(this._mouseStarted=this._mouseStart(this._mouseDownEvent,t)!==!1,this._mouseStarted?this._mouseDrag(t):this._mouseUp(t)),!this._mouseStarted):this._mouseUp(t)},_mouseUp:function(t){return e(document).unbind("mousemove."+this.widgetName,this._mouseMoveDelegate).unbind("mouseup."+this.widgetName,this._mouseUpDelegate),this._mouseStarted&&(this._mouseStarted=!1,t.target===this._mouseDownEvent.target&&e.data(t.target,this.widgetName+".preventClickEvent",!0),this._mouseStop(t)),!1},_mouseDistanceMet:function(e){return Math.max(Math.abs(this._mouseDownEvent.pageX-e.pageX),Math.abs(this._mouseDownEvent.pageY-e.pageY))>=this.options.distance},_mouseDelayMet:function(e){return this.mouseDelayMet},_mouseStart:function(e){},_mouseDrag:function(e){},_mouseStop:function(e){},_mouseCapture:function(e){return!0}})})(jQuery);(function(e,t){function h(e,t,n){return[parseInt(e[0],10)*(l.test(e[0])?t/100:1),parseInt(e[1],10)*(l.test(e[1])?n/100:1)]}function p(t,n){return parseInt(e.css(t,n),10)||0}e.ui=e.ui||{};var n,r=Math.max,i=Math.abs,s=Math.round,o=/left|center|right/,u=/top|center|bottom/,a=/[\+\-]\d+%?/,f=/^\w+/,l=/%$/,c=e.fn.position;e.position={scrollbarWidth:function(){if(n!==t)return n;var r,i,s=e("<div style='display:block;width:50px;height:50px;overflow:hidden;'><div style='height:100px;width:auto;'></div></div>"),o=s.children()[0];return e("body").append(s),r=o.offsetWidth,s.css("overflow","scroll"),i=o.offsetWidth,r===i&&(i=s[0].clientWidth),s.remove(),n=r-i},getScrollInfo:function(t){var n=t.isWindow?"":t.element.css("overflow-x"),r=t.isWindow?"":t.element.css("overflow-y"),i=n==="scroll"||n==="auto"&&t.width<t.element[0].scrollWidth,s=r==="scroll"||r==="auto"&&t.height<t.element[0].scrollHeight;return{width:i?e.position.scrollbarWidth():0,height:s?e.position.scrollbarWidth():0}},getWithinInfo:function(t){var n=e(t||window),r=e.isWindow(n[0]);return{element:n,isWindow:r,offset:n.offset()||{left:0,top:0},scrollLeft:n.scrollLeft(),scrollTop:n.scrollTop(),width:r?n.width():n.outerWidth(),height:r?n.height():n.outerHeight()}}},e.fn.position=function(t){if(!t||!t.of)return c.apply(this,arguments);t=e.extend({},t);var n,l,d,v,m,g=e(t.of),y=e.position.getWithinInfo(t.within),b=e.position.getScrollInfo(y),w=g[0],E=(t.collision||"flip").split(" "),S={};return w.nodeType===9?(l=g.width(),d=g.height(),v={top:0,left:0}):e.isWindow(w)?(l=g.width(),d=g.height(),v={top:g.scrollTop(),left:g.scrollLeft()}):w.preventDefault?(t.at="left top",l=d=0,v={top:w.pageY,left:w.pageX}):(l=g.outerWidth(),d=g.outerHeight(),v=g.offset()),m=e.extend({},v),e.each(["my","at"],function(){var e=(t[this]||"").split(" "),n,r;e.length===1&&(e=o.test(e[0])?e.concat(["center"]):u.test(e[0])?["center"].concat(e):["center","center"]),e[0]=o.test(e[0])?e[0]:"center",e[1]=u.test(e[1])?e[1]:"center",n=a.exec(e[0]),r=a.exec(e[1]),S[this]=[n?n[0]:0,r?r[0]:0],t[this]=[f.exec(e[0])[0],f.exec(e[1])[0]]}),E.length===1&&(E[1]=E[0]),t.at[0]==="right"?m.left+=l:t.at[0]==="center"&&(m.left+=l/2),t.at[1]==="bottom"?m.top+=d:t.at[1]==="center"&&(m.top+=d/2),n=h(S.at,l,d),m.left+=n[0],m.top+=n[1],this.each(function(){var o,u,a=e(this),f=a.outerWidth(),c=a.outerHeight(),w=p(this,"marginLeft"),x=p(this,"marginTop"),T=f+w+p(this,"marginRight")+b.width,N=c+x+p(this,"marginBottom")+b.height,C=e.extend({},m),k=h(S.my,a.outerWidth(),a.outerHeight());t.my[0]==="right"?C.left-=f:t.my[0]==="center"&&(C.left-=f/2),t.my[1]==="bottom"?C.top-=c:t.my[1]==="center"&&(C.top-=c/2),C.left+=k[0],C.top+=k[1],e.support.offsetFractions||(C.left=s(C.left),C.top=s(C.top)),o={marginLeft:w,marginTop:x},e.each(["left","top"],function(r,i){e.ui.position[E[r]]&&e.ui.position[E[r]][i](C,{targetWidth:l,targetHeight:d,elemWidth:f,elemHeight:c,collisionPosition:o,collisionWidth:T,collisionHeight:N,offset:[n[0]+k[0],n[1]+k[1]],my:t.my,at:t.at,within:y,elem:a})}),e.fn.bgiframe&&a.bgiframe(),t.using&&(u=function(e){var n=v.left-C.left,s=n+l-f,o=v.top-C.top,u=o+d-c,h={target:{element:g,left:v.left,top:v.top,width:l,height:d},element:{element:a,left:C.left,top:C.top,width:f,height:c},horizontal:s<0?"left":n>0?"right":"center",vertical:u<0?"top":o>0?"bottom":"middle"};l<f&&i(n+s)<l&&(h.horizontal="center"),d<c&&i(o+u)<d&&(h.vertical="middle"),r(i(n),i(s))>r(i(o),i(u))?h.important="horizontal":h.important="vertical",t.using.call(this,e,h)}),a.offset(e.extend(C,{using:u}))})},e.ui.position={fit:{left:function(e,t){var n=t.within,i=n.isWindow?n.scrollLeft:n.offset.left,s=n.width,o=e.left-t.collisionPosition.marginLeft,u=i-o,a=o+t.collisionWidth-s-i,f;t.collisionWidth>s?u>0&&a<=0?(f=e.left+u+t.collisionWidth-s-i,e.left+=u-f):a>0&&u<=0?e.left=i:u>a?e.left=i+s-t.collisionWidth:e.left=i:u>0?e.left+=u:a>0?e.left-=a:e.left=r(e.left-o,e.left)},top:function(e,t){var n=t.within,i=n.isWindow?n.scrollTop:n.offset.top,s=t.within.height,o=e.top-t.collisionPosition.marginTop,u=i-o,a=o+t.collisionHeight-s-i,f;t.collisionHeight>s?u>0&&a<=0?(f=e.top+u+t.collisionHeight-s-i,e.top+=u-f):a>0&&u<=0?e.top=i:u>a?e.top=i+s-t.collisionHeight:e.top=i:u>0?e.top+=u:a>0?e.top-=a:e.top=r(e.top-o,e.top)}},flip:{left:function(e,t){var n=t.within,r=n.offset.left+n.scrollLeft,s=n.width,o=n.isWindow?n.scrollLeft:n.offset.left,u=e.left-t.collisionPosition.marginLeft,a=u-o,f=u+t.collisionWidth-s-o,l=t.my[0]==="left"?-t.elemWidth:t.my[0]==="right"?t.elemWidth:0,c=t.at[0]==="left"?t.targetWidth:t.at[0]==="right"?-t.targetWidth:0,h=-2*t.offset[0],p,d;if(a<0){p=e.left+l+c+h+t.collisionWidth-s-r;if(p<0||p<i(a))e.left+=l+c+h}else if(f>0){d=e.left-t.collisionPosition.marginLeft+l+c+h-o;if(d>0||i(d)<f)e.left+=l+c+h}},top:function(e,t){var n=t.within,r=n.offset.top+n.scrollTop,s=n.height,o=n.isWindow?n.scrollTop:n.offset.top,u=e.top-t.collisionPosition.marginTop,a=u-o,f=u+t.collisionHeight-s-o,l=t.my[1]==="top",c=l?-t.elemHeight:t.my[1]==="bottom"?t.elemHeight:0,h=t.at[1]==="top"?t.targetHeight:t.at[1]==="bottom"?-t.targetHeight:0,p=-2*t.offset[1],d,v;a<0?(v=e.top+c+h+p+t.collisionHeight-s-r,e.top+c+h+p>a&&(v<0||v<i(a))&&(e.top+=c+h+p)):f>0&&(d=e.top-t.collisionPosition.marginTop+c+h+p-o,e.top+c+h+p>f&&(d>0||i(d)<f)&&(e.top+=c+h+p))}},flipfit:{left:function(){e.ui.position.flip.left.apply(this,arguments),e.ui.position.fit.left.apply(this,arguments)},top:function(){e.ui.position.flip.top.apply(this,arguments),e.ui.position.fit.top.apply(this,arguments)}}},function(){var t,n,r,i,s,o=document.getElementsByTagName("body")[0],u=document.createElement("div");t=document.createElement(o?"div":"body"),r={visibility:"hidden",width:0,height:0,border:0,margin:0,background:"none"},o&&e.extend(r,{position:"absolute",left:"-1000px",top:"-1000px"});for(s in r)t.style[s]=r[s];t.appendChild(u),n=o||document.documentElement,n.insertBefore(t,n.firstChild),u.style.cssText="position: absolute; left: 10.7432222px;",i=e(u).offset().left,e.support.offsetFractions=i>10&&i<11,t.innerHTML="",n.removeChild(t)}(),e.uiBackCompat!==!1&&function(e){var n=e.fn.position;e.fn.position=function(r){if(!r||!r.offset)return n.call(this,r);var i=r.offset.split(" "),s=r.at.split(" ");return i.length===1&&(i[1]=i[0]),/^\d/.test(i[0])&&(i[0]="+"+i[0]),/^\d/.test(i[1])&&(i[1]="+"+i[1]),s.length===1&&(/left|center|right/.test(s[0])?s[1]="center":(s[1]=s[0],s[0]="center")),n.call(this,e.extend(r,{at:s[0]+i[0]+" "+s[1]+i[1],offset:t}))}}(jQuery)})(jQuery);(function(e,t){e.widget("ui.draggable",e.ui.mouse,{version:"1.9.0",widgetEventPrefix:"drag",options:{addClasses:!0,appendTo:"parent",axis:!1,connectToSortable:!1,containment:!1,cursor:"auto",cursorAt:!1,grid:!1,handle:!1,helper:"original",iframeFix:!1,opacity:!1,refreshPositions:!1,revert:!1,revertDuration:500,scope:"default",scroll:!0,scrollSensitivity:20,scrollSpeed:20,snap:!1,snapMode:"both",snapTolerance:20,stack:!1,zIndex:!1},_create:function(){this.options.helper=="original"&&!/^(?:r|a|f)/.test(this.element.css("position"))&&(this.element[0].style.position="relative"),this.options.addClasses&&this.element.addClass("ui-draggable"),this.options.disabled&&this.element.addClass("ui-draggable-disabled"),this._mouseInit()},_destroy:function(){this.element.removeClass("ui-draggable ui-draggable-dragging ui-draggable-disabled"),this._mouseDestroy()},_mouseCapture:function(t){var n=this.options;return this.helper||n.disabled||e(t.target).is(".ui-resizable-handle")?!1:(this.handle=this._getHandle(t),this.handle?(e(n.iframeFix===!0?"iframe":n.iframeFix).each(function(){e('<div class="ui-draggable-iframeFix" style="background: #fff;"></div>').css({width:this.offsetWidth+"px",height:this.offsetHeight+"px",position:"absolute",opacity:"0.001",zIndex:1e3}).css(e(this).offset()).appendTo("body")}),!0):!1)},_mouseStart:function(t){var n=this.options;return this.helper=this._createHelper(t),this.helper.addClass("ui-draggable-dragging"),this._cacheHelperProportions(),e.ui.ddmanager&&(e.ui.ddmanager.current=this),this._cacheMargins(),this.cssPosition=this.helper.css("position"),this.scrollParent=this.helper.scrollParent(),this.offset=this.positionAbs=this.element.offset(),this.offset={top:this.offset.top-this.margins.top,left:this.offset.left-this.margins.left},e.extend(this.offset,{click:{left:t.pageX-this.offset.left,top:t.pageY-this.offset.top},parent:this._getParentOffset(),relative:this._getRelativeOffset()}),this.originalPosition=this.position=this._generatePosition(t),this.originalPageX=t.pageX,this.originalPageY=t.pageY,n.cursorAt&&this._adjustOffsetFromHelper(n.cursorAt),n.containment&&this._setContainment(),this._trigger("start",t)===!1?(this._clear(),!1):(this._cacheHelperProportions(),e.ui.ddmanager&&!n.dropBehaviour&&e.ui.ddmanager.prepareOffsets(this,t),this._mouseDrag(t,!0),e.ui.ddmanager&&e.ui.ddmanager.dragStart(this,t),!0)},_mouseDrag:function(t,n){this.position=this._generatePosition(t),this.positionAbs=this._convertPositionTo("absolute");if(!n){var r=this._uiHash();if(this._trigger("drag",t,r)===!1)return this._mouseUp({}),!1;this.position=r.position}if(!this.options.axis||this.options.axis!="y")this.helper[0].style.left=this.position.left+"px";if(!this.options.axis||this.options.axis!="x")this.helper[0].style.top=this.position.top+"px";return e.ui.ddmanager&&e.ui.ddmanager.drag(this,t),!1},_mouseStop:function(t){var n=!1;e.ui.ddmanager&&!this.options.dropBehaviour&&(n=e.ui.ddmanager.drop(this,t)),this.dropped&&(n=this.dropped,this.dropped=!1);var r=this.element[0],i=!1;while(r&&(r=r.parentNode))r==document&&(i=!0);if(!i&&this.options.helper==="original")return!1;if(this.options.revert=="invalid"&&!n||this.options.revert=="valid"&&n||this.options.revert===!0||e.isFunction(this.options.revert)&&this.options.revert.call(this.element,n)){var s=this;e(this.helper).animate(this.originalPosition,parseInt(this.options.revertDuration,10),function(){s._trigger("stop",t)!==!1&&s._clear()})}else this._trigger("stop",t)!==!1&&this._clear();return!1},_mouseUp:function(t){return e("div.ui-draggable-iframeFix").each(function(){this.parentNode.removeChild(this)}),e.ui.ddmanager&&e.ui.ddmanager.dragStop(this,t),e.ui.mouse.prototype._mouseUp.call(this,t)},cancel:function(){return this.helper.is(".ui-draggable-dragging")?this._mouseUp({}):this._clear(),this},_getHandle:function(t){var n=!this.options.handle||!e(this.options.handle,this.element).length?!0:!1;return e(this.options.handle,this.element).find("*").andSelf().each(function(){this==t.target&&(n=!0)}),n},_createHelper:function(t){var n=this.options,r=e.isFunction(n.helper)?e(n.helper.apply(this.element[0],[t])):n.helper=="clone"?this.element.clone().removeAttr("id"):this.element;return r.parents("body").length||r.appendTo(n.appendTo=="parent"?this.element[0].parentNode:n.appendTo),r[0]!=this.element[0]&&!/(fixed|absolute)/.test(r.css("position"))&&r.css("position","absolute"),r},_adjustOffsetFromHelper:function(t){typeof t=="string"&&(t=t.split(" ")),e.isArray(t)&&(t={left:+t[0],top:+t[1]||0}),"left"in t&&(this.offset.click.left=t.left+this.margins.left),"right"in t&&(this.offset.click.left=this.helperProportions.width-t.right+this.margins.left),"top"in t&&(this.offset.click.top=t.top+this.margins.top),"bottom"in t&&(this.offset.click.top=this.helperProportions.height-t.bottom+this.margins.top)},_getParentOffset:function(){this.offsetParent=this.helper.offsetParent();var t=this.offsetParent.offset();this.cssPosition=="absolute"&&this.scrollParent[0]!=document&&e.contains(this.scrollParent[0],this.offsetParent[0])&&(t.left+=this.scrollParent.scrollLeft(),t.top+=this.scrollParent.scrollTop());if(this.offsetParent[0]==document.body||this.offsetParent[0].tagName&&this.offsetParent[0].tagName.toLowerCase()=="html"&&e.browser.msie)t={top:0,left:0};return{top:t.top+(parseInt(this.offsetParent.css("borderTopWidth"),10)||0),left:t.left+(parseInt(this.offsetParent.css("borderLeftWidth"),10)||0)}},_getRelativeOffset:function(){if(this.cssPosition=="relative"){var e=this.element.position();return{top:e.top-(parseInt(this.helper.css("top"),10)||0)+this.scrollParent.scrollTop(),left:e.left-(parseInt(this.helper.css("left"),10)||0)+this.scrollParent.scrollLeft()}}return{top:0,left:0}},_cacheMargins:function(){this.margins={left:parseInt(this.element.css("marginLeft"),10)||0,top:parseInt(this.element.css("marginTop"),10)||0,right:parseInt(this.element.css("marginRight"),10)||0,bottom:parseInt(this.element.css("marginBottom"),10)||0}},_cacheHelperProportions:function(){this.helperProportions={width:this.helper.outerWidth(),height:this.helper.outerHeight()}},_setContainment:function(){var t=this.options;t.containment=="parent"&&(t.containment=this.helper[0].parentNode);if(t.containment=="document"||t.containment=="window")this.containment=[t.containment=="document"?0:e(window).scrollLeft()-this.offset.relative.left-this.offset.parent.left,t.containment=="document"?0:e(window).scrollTop()-this.offset.relative.top-this.offset.parent.top,(t.containment=="document"?0:e(window).scrollLeft())+e(t.containment=="document"?document:window).width()-this.helperProportions.width-this.margins.left,(t.containment=="document"?0:e(window).scrollTop())+(e(t.containment=="document"?document:window).height()||document.body.parentNode.scrollHeight)-this.helperProportions.height-this.margins.top];if(!/^(document|window|parent)$/.test(t.containment)&&t.containment.constructor!=Array){var n=e(t.containment),r=n[0];if(!r)return;var i=n.offset(),s=e(r).css("overflow")!="hidden";this.containment=[(parseInt(e(r).css("borderLeftWidth"),10)||0)+(parseInt(e(r).css("paddingLeft"),10)||0),(parseInt(e(r).css("borderTopWidth"),10)||0)+(parseInt(e(r).css("paddingTop"),10)||0),(s?Math.max(r.scrollWidth,r.offsetWidth):r.offsetWidth)-(parseInt(e(r).css("borderLeftWidth"),10)||0)-(parseInt(e(r).css("paddingRight"),10)||0)-this.helperProportions.width-this.margins.left-this.margins.right,(s?Math.max(r.scrollHeight,r.offsetHeight):r.offsetHeight)-(parseInt(e(r).css("borderTopWidth"),10)||0)-(parseInt(e(r).css("paddingBottom"),10)||0)-this.helperProportions.height-this.margins.top-this.margins.bottom],this.relative_container=n}else t.containment.constructor==Array&&(this.containment=t.containment)},_convertPositionTo:function(t,n){n||(n=this.position);var r=t=="absolute"?1:-1,i=this.options,s=this.cssPosition!="absolute"||this.scrollParent[0]!=document&&!!e.contains(this.scrollParent[0],this.offsetParent[0])?this.scrollParent:this.offsetParent,o=/(html|body)/i.test(s[0].tagName);return{top:n.top+this.offset.relative.top*r+this.offset.parent.top*r-(this.cssPosition=="fixed"?-this.scrollParent.scrollTop():o?0:s.scrollTop())*r,left:n.left+this.offset.relative.left*r+this.offset.parent.left*r-(this.cssPosition=="fixed"?-this.scrollParent.scrollLeft():o?0:s.scrollLeft())*r}},_generatePosition:function(t){var n=this.options,r=this.cssPosition!="absolute"||this.scrollParent[0]!=document&&!!e.contains(this.scrollParent[0],this.offsetParent[0])?this.scrollParent:this.offsetParent,i=/(html|body)/i.test(r[0].tagName),s=t.pageX,o=t.pageY;if(this.originalPosition){var u;if(this.containment){if(this.relative_container){var a=this.relative_container.offset();u=[this.containment[0]+a.left,this.containment[1]+a.top,this.containment[2]+a.left,this.containment[3]+a.top]}else u=this.containment;t.pageX-this.offset.click.left<u[0]&&(s=u[0]+this.offset.click.left),t.pageY-this.offset.click.top<u[1]&&(o=u[1]+this.offset.click.top),t.pageX-this.offset.click.left>u[2]&&(s=u[2]+this.offset.click.left),t.pageY-this.offset.click.top>u[3]&&(o=u[3]+this.offset.click.top)}if(n.grid){var f=n.grid[1]?this.originalPageY+Math.round((o-this.originalPageY)/n.grid[1])*n.grid[1]:this.originalPageY;o=u?f-this.offset.click.top<u[1]||f-this.offset.click.top>u[3]?f-this.offset.click.top<u[1]?f+n.grid[1]:f-n.grid[1]:f:f;var l=n.grid[0]?this.originalPageX+Math.round((s-this.originalPageX)/n.grid[0])*n.grid[0]:this.originalPageX;s=u?l-this.offset.click.left<u[0]||l-this.offset.click.left>u[2]?l-this.offset.click.left<u[0]?l+n.grid[0]:l-n.grid[0]:l:l}}return{top:o-this.offset.click.top-this.offset.relative.top-this.offset.parent.top+(this.cssPosition=="fixed"?-this.scrollParent.scrollTop():i?0:r.scrollTop()),left:s-this.offset.click.left-this.offset.relative.left-this.offset.parent.left+(this.cssPosition=="fixed"?-this.scrollParent.scrollLeft():i?0:r.scrollLeft())}},_clear:function(){this.helper.removeClass("ui-draggable-dragging"),this.helper[0]!=this.element[0]&&!this.cancelHelperRemoval&&this.helper.remove(),this.helper=null,this.cancelHelperRemoval=!1},_trigger:function(t,n,r){return r=r||this._uiHash(),e.ui.plugin.call(this,t,[n,r]),t=="drag"&&(this.positionAbs=this._convertPositionTo("absolute")),e.Widget.prototype._trigger.call(this,t,n,r)},plugins:{},_uiHash:function(e){return{helper:this.helper,position:this.position,originalPosition:this.originalPosition,offset:this.positionAbs}}}),e.ui.plugin.add("draggable","connectToSortable",{start:function(t,n){var r=e(this).data("draggable"),i=r.options,s=e.extend({},n,{item:r.element});r.sortables=[],e(i.connectToSortable).each(function(){var n=e.data(this,"sortable");n&&!n.options.disabled&&(r.sortables.push({instance:n,shouldRevert:n.options.revert}),n.refreshPositions(),n._trigger("activate",t,s))})},stop:function(t,n){var r=e(this).data("draggable"),i=e.extend({},n,{item:r.element});e.each(r.sortables,function(){this.instance.isOver?(this.instance.isOver=0,r.cancelHelperRemoval=!0,this.instance.cancelHelperRemoval=!1,this.shouldRevert&&(this.instance.options.revert=!0),this.instance._mouseStop(t),this.instance.options.helper=this.instance.options._helper,r.options.helper=="original"&&this.instance.currentItem.css({top:"auto",left:"auto"})):(this.instance.cancelHelperRemoval=!1,this.instance._trigger("deactivate",t,i))})},drag:function(t,n){var r=e(this).data("draggable"),i=this,s=function(t){var n=this.offset.click.top,r=this.offset.click.left,i=this.positionAbs.top,s=this.positionAbs.left,o=t.height,u=t.width,a=t.top,f=t.left;return e.ui.isOver(i+n,s+r,a,f,o,u)};e.each(r.sortables,function(s){this.instance.positionAbs=r.positionAbs,this.instance.helperProportions=r.helperProportions,this.instance.offset.click=r.offset.click,this.instance._intersectsWith(this.instance.containerCache)?(this.instance.isOver||(this.instance.isOver=1,this.instance.currentItem=e(i).clone().removeAttr("id").appendTo(this.instance.element).data("sortable-item",!0),this.instance.options._helper=this.instance.options.helper,this.instance.options.helper=function(){return n.helper[0]},t.target=this.instance.currentItem[0],this.instance._mouseCapture(t,!0),this.instance._mouseStart(t,!0,!0),this.instance.offset.click.top=r.offset.click.top,this.instance.offset.click.left=r.offset.click.left,this.instance.offset.parent.left-=r.offset.parent.left-this.instance.offset.parent.left,this.instance.offset.parent.top-=r.offset.parent.top-this.instance.offset.parent.top,r._trigger("toSortable",t),r.dropped=this.instance.element,r.currentItem=r.element,this.instance.fromOutside=r),this.instance.currentItem&&this.instance._mouseDrag(t)):this.instance.isOver&&(this.instance.isOver=0,this.instance.cancelHelperRemoval=!0,this.instance.options.revert=!1,this.instance._trigger("out",t,this.instance._uiHash(this.instance)),this.instance._mouseStop(t,!0),this.instance.options.helper=this.instance.options._helper,this.instance.currentItem.remove(),this.instance.placeholder&&this.instance.placeholder.remove(),r._trigger("fromSortable",t),r.dropped=!1)})}}),e.ui.plugin.add("draggable","cursor",{start:function(t,n){var r=e("body"),i=e(this).data("draggable").options;r.css("cursor")&&(i._cursor=r.css("cursor")),r.css("cursor",i.cursor)},stop:function(t,n){var r=e(this).data("draggable").options;r._cursor&&e("body").css("cursor",r._cursor)}}),e.ui.plugin.add("draggable","opacity",{start:function(t,n){var r=e(n.helper),i=e(this).data("draggable").options;r.css("opacity")&&(i._opacity=r.css("opacity")),r.css("opacity",i.opacity)},stop:function(t,n){var r=e(this).data("draggable").options;r._opacity&&e(n.helper).css("opacity",r._opacity)}}),e.ui.plugin.add("draggable","scroll",{start:function(t,n){var r=e(this).data("draggable");r.scrollParent[0]!=document&&r.scrollParent[0].tagName!="HTML"&&(r.overflowOffset=r.scrollParent.offset())},drag:function(t,n){var r=e(this).data("draggable"),i=r.options,s=!1;if(r.scrollParent[0]!=document&&r.scrollParent[0].tagName!="HTML"){if(!i.axis||i.axis!="x")r.overflowOffset.top+r.scrollParent[0].offsetHeight-t.pageY<i.scrollSensitivity?r.scrollParent[0].scrollTop=s=r.scrollParent[0].scrollTop+i.scrollSpeed:t.pageY-r.overflowOffset.top<i.scrollSensitivity&&(r.scrollParent[0].scrollTop=s=r.scrollParent[0].scrollTop-i.scrollSpeed);if(!i.axis||i.axis!="y")r.overflowOffset.left+r.scrollParent[0].offsetWidth-t.pageX<i.scrollSensitivity?r.scrollParent[0].scrollLeft=s=r.scrollParent[0].scrollLeft+i.scrollSpeed:t.pageX-r.overflowOffset.left<i.scrollSensitivity&&(r.scrollParent[0].scrollLeft=s=r.scrollParent[0].scrollLeft-i.scrollSpeed)}else{if(!i.axis||i.axis!="x")t.pageY-e(document).scrollTop()<i.scrollSensitivity?s=e(document).scrollTop(e(document).scrollTop()-i.scrollSpeed):e(window).height()-(t.pageY-e(document).scrollTop())<i.scrollSensitivity&&(s=e(document).scrollTop(e(document).scrollTop()+i.scrollSpeed));if(!i.axis||i.axis!="y")t.pageX-e(document).scrollLeft()<i.scrollSensitivity?s=e(document).scrollLeft(e(document).scrollLeft()-i.scrollSpeed):e(window).width()-(t.pageX-e(document).scrollLeft())<i.scrollSensitivity&&(s=e(document).scrollLeft(e(document).scrollLeft()+i.scrollSpeed))}s!==!1&&e.ui.ddmanager&&!i.dropBehaviour&&e.ui.ddmanager.prepareOffsets(r,t)}}),e.ui.plugin.add("draggable","snap",{start:function(t,n){var r=e(this).data("draggable"),i=r.options;r.snapElements=[],e(i.snap.constructor!=String?i.snap.items||":data(draggable)":i.snap).each(function(){var t=e(this),n=t.offset();this!=r.element[0]&&r.snapElements.push({item:this,width:t.outerWidth(),height:t.outerHeight(),top:n.top,left:n.left})})},drag:function(t,n){var r=e(this).data("draggable"),i=r.options,s=i.snapTolerance,o=n.offset.left,u=o+r.helperProportions.width,a=n.offset.top,f=a+r.helperProportions.height;for(var l=r.snapElements.length-1;l>=0;l--){var c=r.snapElements[l].left,h=c+r.snapElements[l].width,p=r.snapElements[l].top,d=p+r.snapElements[l].height;if(!(c-s<o&&o<h+s&&p-s<a&&a<d+s||c-s<o&&o<h+s&&p-s<f&&f<d+s||c-s<u&&u<h+s&&p-s<a&&a<d+s||c-s<u&&u<h+s&&p-s<f&&f<d+s)){r.snapElements[l].snapping&&r.options.snap.release&&r.options.snap.release.call(r.element,t,e.extend(r._uiHash(),{snapItem:r.snapElements[l].item})),r.snapElements[l].snapping=!1;continue}if(i.snapMode!="inner"){var v=Math.abs(p-f)<=s,m=Math.abs(d-a)<=s,g=Math.abs(c-u)<=s,y=Math.abs(h-o)<=s;v&&(n.position.top=r._convertPositionTo("relative",{top:p-r.helperProportions.height,left:0}).top-r.margins.top),m&&(n.position.top=r._convertPositionTo("relative",{top:d,left:0}).top-r.margins.top),g&&(n.position.left=r._convertPositionTo("relative",{top:0,left:c-r.helperProportions.width}).left-r.margins.left),y&&(n.position.left=r._convertPositionTo("relative",{top:0,left:h}).left-r.margins.left)}var b=v||m||g||y;if(i.snapMode!="outer"){var v=Math.abs(p-a)<=s,m=Math.abs(d-f)<=s,g=Math.abs(c-o)<=s,y=Math.abs(h-u)<=s;v&&(n.position.top=r._convertPositionTo("relative",{top:p,left:0}).top-r.margins.top),m&&(n.position.top=r._convertPositionTo("relative",{top:d-r.helperProportions.height,left:0}).top-r.margins.top),g&&(n.position.left=r._convertPositionTo("relative",{top:0,left:c}).left-r.margins.left),y&&(n.position.left=r._convertPositionTo("relative",{top:0,left:h-r.helperProportions.width}).left-r.margins.left)}!r.snapElements[l].snapping&&(v||m||g||y||b)&&r.options.snap.snap&&r.options.snap.snap.call(r.element,t,e.extend(r._uiHash(),{snapItem:r.snapElements[l].item})),r.snapElements[l].snapping=v||m||g||y||b}}}),e.ui.plugin.add("draggable","stack",{start:function(t,n){var r=e(this).data("draggable").options,i=e.makeArray(e(r.stack)).sort(function(t,n){return(parseInt(e(t).css("zIndex"),10)||0)-(parseInt(e(n).css("zIndex"),10)||0)});if(!i.length)return;var s=parseInt(i[0].style.zIndex)||0;e(i).each(function(e){this.style.zIndex=s+e}),this[0].style.zIndex=s+i.length}}),e.ui.plugin.add("draggable","zIndex",{start:function(t,n){var r=e(n.helper),i=e(this).data("draggable").options;r.css("zIndex")&&(i._zIndex=r.css("zIndex")),r.css("zIndex",i.zIndex)},stop:function(t,n){var r=e(this).data("draggable").options;r._zIndex&&e(n.helper).css("zIndex",r._zIndex)}})})(jQuery);(function(e,t){var n=5;e.widget("ui.slider",e.ui.mouse,{version:"1.9.0",widgetEventPrefix:"slide",options:{animate:!1,distance:0,max:100,min:0,orientation:"horizontal",range:!1,step:1,value:0,values:null},_create:function(){var t,r=this.options,i=this.element.find(".ui-slider-handle").addClass("ui-state-default ui-corner-all"),s="<a class='ui-slider-handle ui-state-default ui-corner-all' href='#'></a>",o=r.values&&r.values.length||1,u=[];this._keySliding=!1,this._mouseSliding=!1,this._animateOff=!0,this._handleIndex=null,this._detectOrientation(),this._mouseInit(),this.element.addClass("ui-slider ui-slider-"+this.orientation+" ui-widget"+" ui-widget-content"+" ui-corner-all"+(r.disabled?" ui-slider-disabled ui-disabled":"")),this.range=e([]),r.range&&(r.range===!0&&(r.values||(r.values=[this._valueMin(),this._valueMin()]),r.values.length&&r.values.length!==2&&(r.values=[r.values[0],r.values[0]])),this.range=e("<div></div>").appendTo(this.element).addClass("ui-slider-range ui-widget-header"+(r.range==="min"||r.range==="max"?" ui-slider-range-"+r.range:"")));for(t=i.length;t<o;t++)u.push(s);this.handles=i.add(e(u.join("")).appendTo(this.element)),this.handle=this.handles.eq(0),this.handles.add(this.range).filter("a").click(function(e){e.preventDefault()}).mouseenter(function(){r.disabled||e(this).addClass("ui-state-hover")}).mouseleave(function(){e(this).removeClass("ui-state-hover")}).focus(function(){r.disabled?e(this).blur():(e(".ui-slider .ui-state-focus").removeClass("ui-state-focus"),e(this).addClass("ui-state-focus"))}).blur(function(){e(this).removeClass("ui-state-focus")}),this.handles.each(function(t){e(this).data("ui-slider-handle-index",t)}),this._on(this.handles,{keydown:function(t){var r,i,s,o,u=e(t.target).data("ui-slider-handle-index");switch(t.keyCode){case e.ui.keyCode.HOME:case e.ui.keyCode.END:case e.ui.keyCode.PAGE_UP:case e.ui.keyCode.PAGE_DOWN:case e.ui.keyCode.UP:case e.ui.keyCode.RIGHT:case e.ui.keyCode.DOWN:case e.ui.keyCode.LEFT:t.preventDefault();if(!this._keySliding){this._keySliding=!0,e(t.target).addClass("ui-state-active"),r=this._start(t,u);if(r===!1)return}}o=this.options.step,this.options.values&&this.options.values.length?i=s=this.values(u):i=s=this.value();switch(t.keyCode){case e.ui.keyCode.HOME:s=this._valueMin();break;case e.ui.keyCode.END:s=this._valueMax();break;case e.ui.keyCode.PAGE_UP:s=this._trimAlignValue(i+(this._valueMax()-this._valueMin())/n);break;case e.ui.keyCode.PAGE_DOWN:s=this._trimAlignValue(i-(this._valueMax()-this._valueMin())/n);break;case e.ui.keyCode.UP:case e.ui.keyCode.RIGHT:if(i===this._valueMax())return;s=this._trimAlignValue(i+o);break;case e.ui.keyCode.DOWN:case e.ui.keyCode.LEFT:if(i===this._valueMin())return;s=this._trimAlignValue(i-o)}this._slide(t,u,s)},keyup:function(t){var n=e(t.target).data("ui-slider-handle-index");this._keySliding&&(this._keySliding=!1,this._stop(t,n),this._change(t,n),e(t.target).removeClass("ui-state-active"))}}),this._refreshValue(),this._animateOff=!1},_destroy:function(){this.handles.remove(),this.range.remove(),this.element.removeClass("ui-slider ui-slider-horizontal ui-slider-vertical ui-slider-disabled ui-widget ui-widget-content ui-corner-all"),this._mouseDestroy()},_mouseCapture:function(t){var n,r,i,s,o,u,a,f,l=this,c=this.options;return c.disabled?!1:(this.elementSize={width:this.element.outerWidth(),height:this.element.outerHeight()},this.elementOffset=this.element.offset(),n={x:t.pageX,y:t.pageY},r=this._normValueFromMouse(n),i=this._valueMax()-this._valueMin()+1,this.handles.each(function(t){var n=Math.abs(r-l.values(t));i>n&&(i=n,s=e(this),o=t)}),c.range===!0&&this.values(1)===c.min&&(o+=1,s=e(this.handles[o])),u=this._start(t,o),u===!1?!1:(this._mouseSliding=!0,this._handleIndex=o,s.addClass("ui-state-active").focus(),a=s.offset(),f=!e(t.target).parents().andSelf().is(".ui-slider-handle"),this._clickOffset=f?{left:0,top:0}:{left:t.pageX-a.left-s.width()/2,top:t.pageY-a.top-s.height()/2-(parseInt(s.css("borderTopWidth"),10)||0)-(parseInt(s.css("borderBottomWidth"),10)||0)+(parseInt(s.css("marginTop"),10)||0)},this.handles.hasClass("ui-state-hover")||this._slide(t,o,r),this._animateOff=!0,!0))},_mouseStart:function(e){return!0},_mouseDrag:function(e){var t={x:e.pageX,y:e.pageY},n=this._normValueFromMouse(t);return this._slide(e,this._handleIndex,n),!1},_mouseStop:function(e){return this.handles.removeClass("ui-state-active"),this._mouseSliding=!1,this._stop(e,this._handleIndex),this._change(e,this._handleIndex),this._handleIndex=null,this._clickOffset=null,this._animateOff=!1,!1},_detectOrientation:function(){this.orientation=this.options.orientation==="vertical"?"vertical":"horizontal"},_normValueFromMouse:function(e){var t,n,r,i,s;return this.orientation==="horizontal"?(t=this.elementSize.width,n=e.x-this.elementOffset.left-(this._clickOffset?this._clickOffset.left:0)):(t=this.elementSize.height,n=e.y-this.elementOffset.top-(this._clickOffset?this._clickOffset.top:0)),r=n/t,r>1&&(r=1),r<0&&(r=0),this.orientation==="vertical"&&(r=1-r),i=this._valueMax()-this._valueMin(),s=this._valueMin()+r*i,this._trimAlignValue(s)},_start:function(e,t){var n={handle:this.handles[t],value:this.value()};return this.options.values&&this.options.values.length&&(n.value=this.values(t),n.values=this.values()),this._trigger("start",e,n)},_slide:function(e,t,n){var r,i,s;this.options.values&&this.options.values.length?(r=this.values(t?0:1),this.options.values.length===2&&this.options.range===!0&&(t===0&&n>r||t===1&&n<r)&&(n=r),n!==this.values(t)&&(i=this.values(),i[t]=n,s=this._trigger("slide",e,{handle:this.handles[t],value:n,values:i}),r=this.values(t?0:1),s!==!1&&this.values(t,n,!0))):n!==this.value()&&(s=this._trigger("slide",e,{handle:this.handles[t],value:n}),s!==!1&&this.value(n))},_stop:function(e,t){var n={handle:this.handles[t],value:this.value()};this.options.values&&this.options.values.length&&(n.value=this.values(t),n.values=this.values()),this._trigger("stop",e,n)},_change:function(e,t){if(!this._keySliding&&!this._mouseSliding){var n={handle:this.handles[t],value:this.value()};this.options.values&&this.options.values.length&&(n.value=this.values(t),n.values=this.values()),this._trigger("change",e,n)}},value:function(e){if(arguments.length){this.options.value=this._trimAlignValue(e),this._refreshValue(),this._change(null,0);return}return this._value()},values:function(t,n){var r,i,s;if(arguments.length>1){this.options.values[t]=this._trimAlignValue(n),this._refreshValue(),this._change(null,t);return}if(!arguments.length)return this._values();if(!e.isArray(arguments[0]))return this.options.values&&this.options.values.length?this._values(t):this.value();r=this.options.values,i=arguments[0];for(s=0;s<r.length;s+=1)r[s]=this._trimAlignValue(i[s]),this._change(null,s);this._refreshValue()},_setOption:function(t,n){var r,i=0;e.isArray(this.options.values)&&(i=this.options.values.length),e.Widget.prototype._setOption.apply(this,arguments);switch(t){case"disabled":n?(this.handles.filter(".ui-state-focus").blur(),this.handles.removeClass("ui-state-hover"),this.handles.prop("disabled",!0),this.element.addClass("ui-disabled")):(this.handles.prop("disabled",!1),this.element.removeClass("ui-disabled"));break;case"orientation":this._detectOrientation(),this.element.removeClass("ui-slider-horizontal ui-slider-vertical").addClass("ui-slider-"+this.orientation),this._refreshValue();break;case"value":this._animateOff=!0,this._refreshValue(),this._change(null,0),this._animateOff=!1;break;case"values":this._animateOff=!0,this._refreshValue();for(r=0;r<i;r+=1)this._change(null,r);this._animateOff=!1}},_value:function(){var e=this.options.value;return e=this._trimAlignValue(e),e},_values:function(e){var t,n,r;if(arguments.length)return t=this.options.values[e],t=this._trimAlignValue(t),t;n=this.options.values.slice();for(r=0;r<n.length;r+=1)n[r]=this._trimAlignValue(n[r]);return n},_trimAlignValue:function(e){if(e<=this._valueMin())return this._valueMin();if(e>=this._valueMax())return this._valueMax();var t=this.options.step>0?this.options.step:1,n=(e-this._valueMin())%t,r=e-n;return Math.abs(n)*2>=t&&(r+=n>0?t:-t),parseFloat(r.toFixed(5))},_valueMin:function(){return this.options.min},_valueMax:function(){return this.options.max},_refreshValue:function(){var t,n,r,i,s,o=this.options.range,u=this.options,a=this,f=this._animateOff?!1:u.animate,l={};this.options.values&&this.options.values.length?this.handles.each(function(r,i){n=(a.values(r)-a._valueMin())/(a._valueMax()-a._valueMin())*100,l[a.orientation==="horizontal"?"left":"bottom"]=n+"%",e(this).stop(1,1)[f?"animate":"css"](l,u.animate),a.options.range===!0&&(a.orientation==="horizontal"?(r===0&&a.range.stop(1,1)[f?"animate":"css"]({left:n+"%"},u.animate),r===1&&a.range[f?"animate":"css"]({width:n-t+"%"},{queue:!1,duration:u.animate})):(r===0&&a.range.stop(1,1)[f?"animate":"css"]({bottom:n+"%"},u.animate),r===1&&a.range[f?"animate":"css"]({height:n-t+"%"},{queue:!1,duration:u.animate}))),t=n}):(r=this.value(),i=this._valueMin(),s=this._valueMax(),n=s!==i?(r-i)/(s-i)*100:0,l[this.orientation==="horizontal"?"left":"bottom"]=n+"%",this.handle.stop(1,1)[f?"animate":"css"](l,u.animate),o==="min"&&this.orientation==="horizontal"&&this.range.stop(1,1)[f?"animate":"css"]({width:n+"%"},u.animate),o==="max"&&this.orientation==="horizontal"&&this.range[f?"animate":"css"]({width:100-n+"%"},{queue:!1,duration:u.animate}),o==="min"&&this.orientation==="vertical"&&this.range.stop(1,1)[f?"animate":"css"]({height:n+"%"},u.animate),o==="max"&&this.orientation==="vertical"&&this.range[f?"animate":"css"]({height:100-n+"%"},{queue:!1,duration:u.animate}))}})})(jQuery);`


#/*
#* jQuery throttle / debounce - v1.1 - 3/7/2010
#* http://benalman.com/projects/jquery-throttle-debounce-plugin/
#*
#* Copyright (c) 2010 "Cowboy" Ben Alman
#* Dual licensed under the MIT and GPL licenses.
#* http://benalman.com/about/license/
#*/
`(function(b,c){var $=b.jQuery||b.Cowboy||(b.Cowboy={}),a;$.throttle=a=function(e,f,j,i){var h,d=0;if(typeof f!=="boolean"){i=j;j=f;f=c}function g(){var o=this,m=+new Date()-d,n=arguments;function l(){d=+new Date();j.apply(o,n)}function k(){h=c}if(i&&!h){l()}h&&clearTimeout(h);if(i===c&&m>e){l()}else{if(f!==true){h=setTimeout(i?k:l,i===c?e-m:e)}}}if($.guid){g.guid=j.guid=j.guid||$.guid++}return g};$.debounce=function(d,e,f){return f===c?a(d,e,false):a(d,f,e!==false)}})(this);`

#/**
#* jquery.simpletip 1.3.1. A simple tooltip plugin
#*
#* Copyright (c) 2009 Craig Thompson
#* http://craigsworks.com
#*
#* Licensed under GPLv3
#* http://www.opensource.org/licenses/gpl-3.0.html
#*
#* Launch  : February 2009
#* Version : 1.3.1
#* Released: February 5, 2009 - 11:04am
#*/
`(function($){function Simpletip(elem,conf){var self=this;elem=jQuery(elem);var tooltip=jQuery(document.createElement('div')).addClass(conf.baseClass).addClass((conf.fixed)?conf.fixedClass:'').addClass((conf.persistent)?conf.persistentClass:'').html(conf.content).appendTo(elem);if(!conf.hidden)tooltip.show();else tooltip.hide();if(!conf.persistent){elem.hover(function(event){self.show(event)},function(){self.hide()});if(!conf.fixed){elem.mousemove(function(event){if(tooltip.css('display')!=='none')self.updatePos(event);});};}else{elem.click(function(event){if(event.target===elem.get(0)){if(tooltip.css('display')!=='none')self.hide();else self.show();};});jQuery(window).mousedown(function(event){if(tooltip.css('display')!=='none'){var check=(conf.focus)?jQuery(event.target).parents('.tooltip').andSelf().filter(function(){return this===tooltip.get(0)}).length:0;if(check===0)self.hide();};});};jQuery.extend(self,{getVersion:function(){return[1,2,0];},getParent:function(){return elem;},getTooltip:function(){return tooltip;},getPos:function(){return tooltip.offset();},setPos:function(posX,posY){var elemPos=elem.offset();if(typeof posX=='string')posX=parseInt(posX)+elemPos.left;if(typeof posY=='string')posY=parseInt(posY)+elemPos.top;tooltip.css({left:posX,top:posY});return self;},show:function(event){conf.onBeforeShow.call(self);self.updatePos((conf.fixed)?null:event);switch(conf.showEffect){case'fade':tooltip.fadeIn(conf.showTime);break;case'slide':tooltip.slideDown(conf.showTime,self.updatePos);break;case'custom':conf.showCustom.call(tooltip,conf.showTime);break;default:case'none':tooltip.show();break;};tooltip.addClass(conf.activeClass);conf.onShow.call(self);return self;},hide:function(){conf.onBeforeHide.call(self);switch(conf.hideEffect){case'fade':tooltip.fadeOut(conf.hideTime);break;case'slide':tooltip.slideUp(conf.hideTime);break;case'custom':conf.hideCustom.call(tooltip,conf.hideTime);break;default:case'none':tooltip.hide();break;};tooltip.removeClass(conf.activeClass);conf.onHide.call(self);return self;},update:function(content){tooltip.html(content);conf.content=content;return self;},load:function(uri,data){conf.beforeContentLoad.call(self);tooltip.load(uri,data,function(){conf.onContentLoad.call(self);});return self;},boundryCheck:function(posX,posY){var newX=posX+tooltip.outerWidth();var newY=posY+tooltip.outerHeight();var windowWidth=jQuery(window).width()+jQuery(window).scrollLeft();var windowHeight=jQuery(window).height()+jQuery(window).scrollTop();return[(newX>=windowWidth),(newY>=windowHeight)];},updatePos:function(event){var tooltipWidth=tooltip.outerWidth();var tooltipHeight=tooltip.outerHeight();if(!event&&conf.fixed){if(conf.position.constructor==Array){posX=parseInt(conf.position[0]);posY=parseInt(conf.position[1]);}else if(jQuery(conf.position).attr('nodeType')===1){var offset=jQuery(conf.position).offset();posX=offset.left;posY=offset.top;}else{var elemPos=elem.offset();var elemWidth=elem.outerWidth();var elemHeight=elem.outerHeight();switch(conf.position){case'top':var posX=elemPos.left-(tooltipWidth/2)+(elemWidth/2);var posY=elemPos.top-tooltipHeight;break;case'bottom':var posX=elemPos.left-(tooltipWidth/2)+(elemWidth/2);var posY=elemPos.top+elemHeight;break;case'left':var posX=elemPos.left-tooltipWidth;var posY=elemPos.top-(tooltipHeight/2)+(elemHeight/2);break;case'right':var posX=elemPos.left+elemWidth;var posY=elemPos.top-(tooltipHeight/2)+(elemHeight/2);break;default:case'default':var posX=(elemWidth/2)+elemPos.left+20;var posY=elemPos.top;break;};};}else{var posX=event.pageX;var posY=event.pageY;};if(typeof conf.position!='object'){posX=posX+conf.offset[0];posY=posY+conf.offset[1];if(conf.boundryCheck){var overflow=self.boundryCheck(posX,posY);if(overflow[0])posX=posX-(tooltipWidth/2)-(2*conf.offset[0]);if(overflow[1])posY=posY-(tooltipHeight/2)-(2*conf.offset[1]);}}else{if(typeof conf.position[0]=="string")posX=String(posX);if(typeof conf.position[1]=="string")posY=String(posY);};self.setPos(posX,posY);return self;}});};jQuery.fn.simpletip=function(conf){var api=jQuery(this).eq(typeof conf=='number'?conf:0).data("simpletip");if(api)return api;var defaultConf={content:'A simple tooltip',persistent:false,focus:false,hidden:true,position:'default',offset:[0,0],boundryCheck:true,fixed:true,showEffect:'fade',showTime:150,showCustom:null,hideEffect:'fade',hideTime:150,hideCustom:null,baseClass:'tooltip',activeClass:'active',fixedClass:'fixed',persistentClass:'persistent',focusClass:'focus',onBeforeShow:function(){},onShow:function(){},onBeforeHide:function(){},onHide:function(){},beforeContentLoad:function(){},onContentLoad:function(){}};jQuery.extend(defaultConf,conf);this.each(function(){var el=new Simpletip(jQuery(this),defaultConf);jQuery(this).data("simpletip",el);});return this;};})();`