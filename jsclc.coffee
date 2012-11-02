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
  hc: """
issue_value	apr_45	fee_45	interest_45	fee_admin_45	fee_cash_45	total_45	total_pay_45	instalment_45	instalment_last_45	apr_60	fee_60	interest_60	fee_admin_60	fee_cash_60	total_60	total_pay_60	instalment_60	instalment_last_60	apr_100	fee_100	interest_100	fee_admin_100	fee_cash_100	total_100	total_pay_100	instalment_100	instalment_last_100
80000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	82946	16582	18764	47600	162946	115346	1630	1576
78000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	80872	16167	18295	46410	158872	112462	1589	1561
76000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	78798	15753	17825	45220	154798	109578	1548	1546
74000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	76725	15338	17357	44030	150725	106695	1508	1433
72000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	74651	14924	16887	42840	146651	103811	1467	1418
70000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	72577	14509	16418	41650	142577	100927	1426	1403
68000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	70504	14095	15949	40460	138504	98044	1386	1290
66000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	68430	13680	15480	39270	134430	95160	1345	1275
64000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	66357	13266	15011	38080	130357	92277	1304	1261
62000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	64283	12851	14542	36890	126283	89393	1263	1246
60000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	62209	12436	14073	35700	122209	86509	1223	1132
58000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	60136	12022	13604	34510	118136	83626	1182	1118
56000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	58062	11607	13135	33320	114062	80742	1141	1103
54000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	55988	11193	12665	32130	109988	77858	1100	1088
52000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	53915	10778	12197	30940	105915	74975	1060	975
50000	-	-	-	-	-	-	-	-	-	63,93	41803	6386	9502	25915	91803	65888	1531	1474	49,70	51841	10364	11727	29750	101841	72091	1019	960
49000	-	-	-	-	-	-	-	-	-	63,93	40967	6258	9312	25397	89967	64570	1500	1467	-	-	-	-	-	-	-	-	-
48000	-	-	-	-	-	-	-	-	-	63,93	40130	6130	9122	24878	88130	63252	1469	1459	49,70	49767	9949	11258	28560	97767	69207	978	945
47000	-	-	-	-	-	-	-	-	-	63,93	39294	6002	8932	24360	86294	61934	1439	1393	-	-	-	-	-	-	-	-	-
46000	-	-	-	-	-	-	-	-	-	63,93	38459	5875	8742	23842	84459	60617	1408	1387	49,70	47694	9535	10789	27370	93694	66324	937	931
45000	-	-	-	-	-	-	-	-	-	63,93	37623	5747	8552	23324	82623	59299	1378	1321	-	-	-	-	-	-	-	-	-
44000	-	-	-	-	-	-	-	-	-	63,93	36786	5619	8362	22805	80786	57981	1347	1313	49,70	45620	9120	10320	26180	89620	63440	897	817
43000	-	-	-	-	-	-	-	-	-	63,93	35950	5492	8171	22287	78950	56663	1316	1306	-	-	-	-	-	-	-	-	-
42000	-	-	-	-	-	-	-	-	-	63,93	35115	5364	7982	21769	77115	55346	1286	1241	49,70	43546	8705	9851	24990	85546	60556	856	802
41000	-	-	-	-	-	-	-	-	-	63,93	34278	5236	7792	21250	75278	54028	1255	1233	-	-	-	-	-	-	-	-	-
40000	70,96	29003	3815	6400	18788	69003	50215	1534	1507	63,93	33442	5109	7601	20732	73442	52710	1225	1167	49,70	41473	8291	9382	23800	81473	57673	815	788
39000	70,96	28277	3719	6240	18318	67277	48959	1496	1453	63,93	32606	4981	7411	20214	71606	51392	1194	1160	-	-	-	-	-	-	-	-	-
38000	70,96	27553	3624	6080	17849	65553	47704	1457	1445	63,93	31770	4853	7222	19695	69770	50075	1163	1153	49,70	39399	7876	8913	22610	77399	54789	774	773
37000	70,96	26827	3528	5920	17379	63827	46448	1419	1391	63,93	30934	4726	7031	19177	67934	48757	1133	1087	-	-	-	-	-	-	-	-	-
36000	70,96	26102	3433	5760	16909	62102	45193	1381	1338	63,93	30098	4598	6841	18659	66098	47439	1102	1080	49,70	37326	7462	8444	21420	73326	51906	734	660
35000	70,96	25378	3338	5600	16440	60378	43938	1342	1330	63,93	29262	4470	6651	18141	64262	46121	1072	1014	-	-	-	-	-	-	-	-	-
34000	70,96	24652	3242	5440	15970	58652	42682	1304	1276	63,93	28426	4342	6462	17622	62426	44804	1041	1007	49,70	35252	7047	7975	20230	69252	49022	693	645
33000	70,96	23927	3147	5280	15500	56927	41427	1266	1223	63,93	27590	4215	6271	17104	60590	43486	1010	1000	-	-	-	-	-	-	-	-	-
32000	70,96	23202	3052	5120	15030	55202	40172	1227	1214	63,93	26754	4087	6081	16586	58754	42168	980	934	49,70	33178	6633	7505	19040	65178	46138	652	630
31000	70,96	22477	2956	4960	14561	53477	38916	1189	1161	63,93	25917	3959	5891	16067	56917	40850	949	926	-	-	-	-	-	-	-	-	-
30000	70,96	21752	2861	4800	14091	51752	37661	1151	1108	63,93	25082	3832	5701	15549	55082	39533	919	861	49,70	31105	6218	7037	17850	61105	43255	612	517
29000	70,96	21027	2766	4640	13621	50027	36406	1112	1099	63,93	24246	3704	5511	15031	53246	38215	888	854	-	-	-	-	-	-	-	-	-
28000	70,96	20302	2670	4480	13152	48302	35150	1074	1046	63,93	23409	3576	5321	14512	51409	36897	857	846	49,70	29031	5804	6567	16660	57031	40371	571	502
27000	70,96	19577	2575	4320	12682	46577	33895	1036	993	63,93	22573	3448	5131	13994	49573	35579	827	780	-	-	-	-	-	-	-	-	-
26000	70,96	18851	2479	4160	12212	44851	32639	997	983	63,93	21738	3321	4941	13476	47738	34262	796	774	49,70	26957	5389	6098	15470	52957	37487	530	487
25000	70,96	18127	2384	4000	11743	43127	31384	959	931	63,93	20902	3193	4751	12958	45902	32944	766	708	-	-	-	-	-	-	-	-	-
24000	70,96	17402	2289	3840	11273	41402	30129	921	878	63,93	20065	3065	4561	12439	44065	31626	735	700	49,70	24884	4975	5629	14280	48884	34604	489	473
23000	70,96	16676	2193	3680	10803	39676	28873	882	868	63,93	19229	2937	4371	11921	42229	30308	704	693	-	-	-	-	-	-	-	-	-
22000	70,96	15951	2098	3520	10333	37951	27618	844	815	63,93	18394	2810	4181	11403	40394	28991	674	628	49,70	22810	4560	5160	13090	44810	31720	449	359
21000	70,96	15227	2003	3360	9864	36227	26363	806	763	63,93	17557	2682	3991	10884	38557	27673	643	620	-	-	-	-	-	-	-	-	-
20000	70,96	14501	1907	3200	9394	34501	25107	767	753	63,93	16721	2554	3801	10366	36721	26355	613	554	49,70	20736	4145	4691	11900	40736	28836	408	344
19000	70,96	13776	1812	3040	8924	32776	23852	729	700	63,93	15885	2426	3611	9848	34885	25037	582	547	-	-	-	-	-	-	-	-	-
18000	70,96	13052	1717	2880	8455	31052	22597	691	648	63,93	15049	2299	3421	9329	33049	23720	551	540	49,70	18663	3731	4222	10710	36663	25953	367	330
17000	70,96	12326	1621	2720	7985	29326	21341	652	638	63,93	14213	2171	3231	8811	31213	22402	521	474	-	-	-	-	-	-	-	-	-
16000	70,96	11601	1526	2560	7515	27601	20086	614	585	63,93	13377	2043	3041	8293	29377	21084	490	467	49,70	16589	3316	3753	9520	32589	23069	326	315
15000	70,96	10876	1430	2400	7046	25876	18830	576	532	63,93	12541	1916	2850	7775	27541	19766	460	401	-	-	-	-	-	-	-	-	-
14000	70,96	10151	1335	2240	6576	24151	17575	537	523	63,93	11705	1788	2661	7256	25705	18449	429	394	-	-	-	-	-	-	-	-	-
13000	70,96	9426	1240	2080	6106	22426	16320	499	470	63,93	10869	1660	2471	6738	23869	17131	398	387	-	-	-	-	-	-	-	-	-
12000	70,96	8700	1144	1920	5636	20700	15064	460	460	63,93	10033	1533	2280	6220	22033	15813	368	321	-	-	-	-	-	-	-	-	-
11000	70,96	7976	1049	1760	5167	18976	13809	422	408	63,93	9196	1405	2090	5701	20196	14495	337	313	-	-	-	-	-	-	-	-	-
10000	70,96	7251	954	1600	4697	17251	12554	384	355	63,93	8361	1277	1901	5183	18361	13178	307	248	-	-	-	-	-	-	-	-	-
9000	70,96	6525	858	1440	4227	15525	11298	345	345	63,93	7525	1150	1710	4665	16525	11860	276	241	-	-	-	-	-	-	-	-	-
8000	70,96	5801	763	1280	3758	13801	10043	307	293	63,93	6688	1022	1520	4146	14688	10542	245	233	-	-	-	-	-	-	-	-	-
7000	70,96	5076	668	1120	3288	12076	8788	269	240	63,93	5852	894	1330	3628	12852	9224	215	167	-	-	-	-	-	-	-	-	-
6000	70,96	4350	572	960	2818	10350	7532	230	230	63,93	5017	766	1141	3110	11017	7907	184	161	-	-	-	-	-	-	-	-	-
5000	70,96	3626	477	800	2349	8626	6277	192	178	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-
4000	70,96	2900	381	640	1879	6900	5021	154	124	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-
"""

  mt: """
issue_value	apr_45	fee_45	interest_45	fee_admin_45	fee_cash_45	total_45	total_pay_45	instalment_45	instalment_last_45	apr_60	fee_60	interest_60	fee_admin_60	fee_cash_60	total_60	total_pay_60	instalment_60	instalment_last_60	apr_100	fee_100	interest_100	fee_admin_100	fee_cash_100	total_100	total_pay_100	instalment_100	instalment_last_100
80000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	35346	16582	18764	-	115346	115346	1154	1100
78000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	34462	16167	18295	-	112462	112462	1125	1087
76000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	33578	15753	17825	-	109578	109578	1096	1074
74000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	32695	15338	17357	-	106695	106695	1067	1062
72000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	31811	14924	16887	-	103811	103811	1039	950
70000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	30927	14509	16418	-	100927	100927	1010	937
68000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	30044	14095	15949	-	98044	98044	981	925
66000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	29160	13680	15480	-	95160	95160	952	912
64000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	28277	13266	15011	-	92277	92277	923	900
62000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	27393	12851	14542	-	89393	89393	894	887
60000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	26509	12436	14073	-	86509	86509	866	775
58000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	25626	12022	13604	-	83626	83626	837	763
56000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	24742	11607	13135	-	80742	80742	808	750
54000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	23858	11193	12665	-	77858	77858	779	737
52000	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	49,70	22975	10778	12197	-	74975	74975	750	725
50000	-	-	-	-	-	-	-	-	-	63,93	15888	6386	9502	-	65888	65888	1099	1047	49,70	22091	10364	11727	-	72091	72091	721	712
49000	-	-	-	-	-	-	-	-	-	63,93	15570	6258	9312	-	64570	64570	1077	1027	-	-	-	-	-	-	-	-	-
48000	-	-	-	-	-	-	-	-	-	63,93	15252	6130	9122	-	63252	63252	1055	1007	49,70	21207	9949	11258	-	69207	69208	693	600
47000	-	-	-	-	-	-	-	-	-	63,93	14934	6002	8932	-	61934	61934	1033	987	-	-	-	-	-	-	-	-	-
46000	-	-	-	-	-	-	-	-	-	63,93	14617	5875	8742	-	60617	60617	1011	968	49,70	20324	9535	10789	-	66324	66325	664	588
45000	-	-	-	-	-	-	-	-	-	63,93	14299	5747	8552	-	59299	59299	989	948	-	-	-	-	-	-	-	-	-
44000	-	-	-	-	-	-	-	-	-	63,93	13981	5619	8362	-	57981	57981	967	928	49,70	19440	9120	10320	-	63440	63441	635	575
43000	-	-	-	-	-	-	-	-	-	63,93	13663	5492	8171	-	56663	56663	945	908	-	-	-	-	-	-	-	-	-
42000	-	-	-	-	-	-	-	-	-	63,93	13346	5364	7982	-	55346	55346	923	889	49,70	18556	8705	9851	-	60556	60557	606	562
41000	-	-	-	-	-	-	-	-	-	63,93	13028	5236	7792	-	54028	54028	901	869	-	-	-	-	-	-	-	-	-
40000	70,96	10215	3815	6400	-	50215	50215	1116	1111	63,93	12710	5109	7601	-	52710	52710	879	849	49,70	17673	8291	9382	-	57673	57674	577	550
39000	70,96	9959	3719	6240	-	48959	48959	1088	1087	63,93	12392	4981	7411	-	51392	51392	857	829	-	-	-	-	-	-	-	-	-
38000	70,96	9704	3624	6080	-	47704	47704	1061	1020	63,93	12075	4853	7222	-	50075	50075	835	810	49,70	16789	7876	8913	-	54789	54790	548	537
37000	70,96	9448	3528	5920	-	46448	46448	1033	996	63,93	11757	4726	7031	-	48757	48757	813	790	-	-	-	-	-	-	-	-	-
36000	70,96	9193	3433	5760	-	45193	45193	1005	973	63,93	11439	4598	6841	-	47439	47439	791	770	49,70	15906	7462	8444	-	51906	51907	520	426
35000	70,96	8938	3338	5600	-	43938	43938	977	950	63,93	11121	4470	6651	-	46121	46121	769	750	-	-	-	-	-	-	-	-	-
34000	70,96	8682	3242	5440	-	42682	42682	949	926	63,93	10804	4342	6462	-	44804	44804	747	731	49,70	15022	7047	7975	-	49022	49023	491	413
33000	70,96	8427	3147	5280	-	41427	41427	921	903	63,93	10486	4215	6271	-	43486	43486	725	711	-	-	-	-	-	-	-	-	-
32000	70,96	8172	3052	5120	-	40172	40172	893	880	63,93	10168	4087	6081	-	42168	42168	703	691	49,70	14138	6633	7505	-	46138	46139	462	400
31000	70,96	7916	2956	4960	-	38916	38916	865	856	63,93	9850	3959	5891	-	40850	40850	681	671	-	-	-	-	-	-	-	-	-
30000	70,96	7661	2861	4800	-	37661	37661	837	833	63,93	9533	3832	5701	-	39533	39533	659	652	49,70	13255	6218	7037	-	43255	43256	433	388
29000	70,96	7406	2766	4640	-	36406	36406	810	766	63,93	9215	3704	5511	-	38215	38215	637	632	-	-	-	-	-	-	-	-	-
28000	70,96	7150	2670	4480	-	35150	35150	782	742	63,93	8897	3576	5321	-	36897	36897	615	612	49,70	12371	5804	6567	-	40371	40372	404	375
27000	70,96	6895	2575	4320	-	33895	33895	754	719	63,93	8579	3448	5131	-	35579	35579	593	592	-	-	-	-	-	-	-	-	-
26000	70,96	6639	2479	4160	-	32639	32639	726	695	63,93	8262	3321	4941	-	34262	34262	572	514	49,70	11487	5389	6098	-	37487	37488	375	362
25000	70,96	6384	2384	4000	-	31384	31384	698	672	63,93	7944	3193	4751	-	32944	32944	550	494	-	-	-	-	-	-	-	-	-
24000	70,96	6129	2289	3840	-	30129	30129	670	649	63,93	7626	3065	4561	-	31626	31626	528	474	49,70	10604	4975	5629	-	34604	34605	347	251
23000	70,96	5873	2193	3680	-	28873	28873	642	625	63,93	7308	2937	4371	-	30308	30308	506	454	-	-	-	-	-	-	-	-	-
22000	70,96	5618	2098	3520	-	27618	27618	614	602	63,93	6991	2810	4181	-	28991	28991	484	435	49,70	9720	4560	5160	-	31720	31721	318	238
21000	70,96	5363	2003	3360	-	26363	26363	586	579	63,93	6673	2682	3991	-	27673	27673	462	415	-	-	-	-	-	-	-	-	-
20000	70,96	5107	1907	3200	-	25107	25107	558	555	63,93	6355	2554	3801	-	26355	26355	440	395	49,70	8836	4145	4691	-	28836	28837	289	225
19000	70,96	4852	1812	3040	-	23852	23852	531	488	63,93	6037	2426	3611	-	25037	25037	418	375	-	-	-	-	-	-	-	-	-
18000	70,96	4597	1717	2880	-	22597	22597	503	465	63,93	5720	2299	3421	-	23720	23720	396	356	49,70	7953	3731	4222	-	25953	25954	260	213
17000	70,96	4341	1621	2720	-	21341	21341	475	441	63,93	5402	2171	3231	-	22402	22402	374	336	-	-	-	-	-	-	-	-	-
16000	70,96	4086	1526	2560	-	20086	20086	447	418	63,93	5084	2043	3041	-	21084	21084	352	316	49,70	7069	3316	3753	-	23069	23070	231	200
15000	70,96	3830	1430	2400	-	18830	18830	419	394	63,93	4766	1916	2850	-	19766	19766	330	296	-	-	-	-	-	-	-	-	-
14000	70,96	3575	1335	2240	-	17575	17575	391	371	63,93	4449	1788	2661	-	18449	18449	308	277	-	-	-	-	-	-	-	-	-
13000	70,96	3320	1240	2080	-	16320	16320	363	348	63,93	4131	1660	2471	-	17131	17131	286	257	-	-	-	-	-	-	-	-	-
12000	70,96	3064	1144	1920	-	15064	15064	335	324	63,93	3813	1533	2280	-	15813	15813	264	237	-	-	-	-	-	-	-	-	-
11000	70,96	2809	1049	1760	-	13809	13809	307	301	63,93	3495	1405	2090	-	14495	14495	242	217	-	-	-	-	-	-	-	-	-
10000	70,96	2554	954	1600	-	12554	12554	279	278	63,93	3178	1277	1901	-	13178	13178	220	198	-	-	-	-	-	-	-	-	-
9000	70,96	2298	858	1440	-	11298	11298	252	210	63,93	2860	1150	1710	-	11860	11860	198	178	-	-	-	-	-	-	-	-	-
8000	70,96	2043	763	1280	-	10043	10043	224	187	63,93	2542	1022	1520	-	10542	10542	176	158	-	-	-	-	-	-	-	-	-
7000	70,96	1788	668	1120	-	8788	8788	196	164	63,93	2224	894	1330	-	9224	9224	154	138	-	-	-	-	-	-	-	-	-
6000	70,96	1532	572	960	-	7532	7532	168	140	63,93	1907	766	1141	-	7907	7907	132	119	-	-	-	-	-	-	-	-	-
5000	70,96	1277	477	800	-	6277	6277	140	117	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-
4000	70,96	1021	381	640	-	5021	5021	112	93	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-	-
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
    Vybral/a jste si _LOAN_TYPE_TEXT půjčku ve výši _ISSUE_VALUE.
</div>
<table style="width:100%">
   <tr>
     <th style="width:10%">Typ půjčky <a data-name="type" class="help" href="#"></a></th>
     <th style="width:15%">Výše půjčky <a data-name="loan" class="help" href="#"></a></th>
     <th style="width:10%">Doba splácení (týdnů) <a data-name="weeks" class="help" href="#"></a></th>
     <th style="width:13%">Týdenní splátka <a data-name="week" class="help" href="#"></a></th>
     <th style="width:12%">Celkové náklady</th>
     <th style="width:10%">RPSN <a data-name="apr" class="help" href="#"></a></th>
     <th style="width:10%">Poplatek za hotovostní inkasní službu <a data-name="cash" class="help" href="#"></a></th>
     <th colspan="2" style="width:20%">Celkem ke splacení <a data-name="total" class="help" href="#"></a></th>
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
<p style="margin:0.5em 0 1em;color: #0059A1;font-size: 18px;">Zvolte si výši půjčky</p>
<div style="position: relative;" id="money-slider-holder">
  <div style="position:absolute;height:0;" id="money-bubble-value">
    <div style="background: #E42C2A;color:white;font-size: 1.5em;cursor:move;white-space:nowrap;position:relative;left:-50%;border-radius:5px;padding:10px;top:-65px;">
    	 <span class="value"></span>
    </div>
  <div style="position:absolute;top:-30px;left:-8px;width: 0;height: 0;	border-left: 8px solid transparent; border-right: 8px solid transparent;border-top: 12px solid #E42C2A;"></div>
  </div>
  <div class="money-slider"></div>
  <div style="float:left;margin:8px 0 0 0;">4 000 Kč</div>
  <div style="float:right;margin:8px 0 0 0;">80 000 Kč</div>


</div>
<div id="custom-dip-filter">
  <div id="custom-filters" style="float:none;">
    <div id="custom-filter-bar" class="clearfix">
      <div>
        <span class="label">Zvolte si formu své půjčky <div class="help"><p>Pro zobrazení výpočtu parametrů půjčky si zvolte způsob doručení a splácení peněz</p></div></span>
        <ul style="margin-bottom:20px">
          <li style="width: 233px;">
            <input checked="checked" type="radio" id="custom-filter-home-collect" name="filters" value="HomeCollect">
            <label for="custom-filter-home-collect" id="custom-filter-home-collect-label">Hotovostní
            </label>
            <div class="about"><ul class="bullets"><li>Hotovost do 48 hodin.</li><li>Peníze do vlastních rukou při podpisu smlouvy.</li><li>Maximální komfort, vše vyřešíte z domova.</li><li>Splátky osobně obchodnímu zástupce.</li></ul></div>
          </li>
          <li style="width: 233px;">
            <input type="radio" id="custom-filter-bank-transfer" name="filters" value="BankTransfer">
            <label for="custom-filter-bank-transfer" id="custom-filter-bank-transfer-label">Bezhotovostní
            </label>
            <div class="about"><ul class="bullets"><li>Peníze nejpozději do 13 dnů.</li><li>Peníze získáte na bankovní účet.</li><li>Maximální komfort a soukromí.</li><li>Bezhotovostní způsob splácení.</li>
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
        max: 61
      });
      #https://providentonline.cz/provident-remote-calc/
      jQuery('head').append('<link rel="stylesheet" href="style.css" type="text/css" />');
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
      jQuery(".money-slider").slider("value", 14)
      this.onslide(null, {value:jQuery(".money-slider").slider("value")})
    onslide: (event, ui) =>
      value = ui.value
      position = value * jQuery(".money-slider").width() / 61.0
      jQuery("#money-bubble-value").css("left", position)
      jQuery("#money-slider-fill").css("width", position)
      money_value = @table_counter[value]
      money_formatted_value = "#{NumberFormat.format(money_value)} Kč"
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
      diff_value = Math.round(diff / (jQuery(".money-slider").width() / 61.0))
      jQuery(".money-slider").slider("value", @original_value + diff_value)
      this.onslide(event, {value:jQuery(".money-slider").slider("value")})
      event.preventDefault()
    init_table: ->
      @table = []
      for loan_type in ["hc", "mt"]
        counter = 0
        @table[loan_type] = {}
        @table_counter = []
        for row in TableData::[loan_type].split("\n")
          columns = row.replace(/^\s+|\s+$/g, "").split("\t")
          if counter++ == 0
            @header = columns
          else
            for week in [45, 60, 100]
              issue_value = this.get_value(columns, "issue_value")
              @table_counter[61 - (counter-2)] = issue_value
              if not @table[loan_type][week]
                @table[loan_type][week] = {}
              if not @table[loan_type][week][issue_value]
                @table[loan_type][week][issue_value] = {}
              for column in ["apr", "fee", "interest", "fee_admin", "fee_cash", "total", "total_pay",
                "instalment", "instalment_last"]

                @table[loan_type][week][issue_value][column] = this.get_value(columns, column + "_" + week)

    get_value: (columns, name) ->
      value = columns[jQuery.inArray(name, @header)].replace(",", ".")
      if value != "-"
        return parseFloat(value)
      return value
    render_table: (issue_value) ->
      rows = []
      if jQuery('#custom-filter-bank-transfer').is(':checked')
        loan_type = '<div class="bankTransfer replacement">Bankovní převod</div>'
        loan_type_text = 'bezhotovostní'
        loan_type_code = "mt"
      else
        loan_type = '<div class="homeService replacement">Výběr v domácnosti</div>'
        loan_type_text = 'hotovostní'
        loan_type_code = "hc"
      for week in [45, 60, 100]
        total = @table[loan_type_code][week][issue_value]["total"]
        if total == "-"
          if week == 100 and @table[loan_type_code][week][issue_value]["total"] == "-"
            if not (@table[loan_type_code][week][issue_value+1000] and @table[loan_type_code][week][issue_value+1000]["total"] != "-")
              continue
            else
              issue_value += 1000 # nearest bigger
              total = @table[loan_type_code][week][issue_value]["total"]
          else
            continue

        row = @row_string
        fee_admin = @table[loan_type_code][week][issue_value]["fee_admin"]
        interest = @table[loan_type_code][week][issue_value]["interest"]
        interest_rate = if week == 45 then 20.11 else (if week == 60 then 19.98 else 19.00)
        detailed_fees = "Poplatek za zpracování<br>#{NumberFormat.format(fee_admin)} Kč<br>Úrok<br>#{NumberFormat.format(interest)} Kč<br>Roční fixní úroková sazba<br>#{NumberFormat.format(interest_rate, 2)} %"
        row = row.replace("_LOAN_TYPE", loan_type)
        row = row.replace("_DETAILED_FEES", detailed_fees)
        row = row.replace("_ISSUE_VALUE", "#{NumberFormat.format(issue_value)} Kč")
        row = row.replace("_WEEKS", week)
        instalment_last =  @table[loan_type_code][week][issue_value]["instalment_last"]
        row = row.replace("_INSTALMENT_LAST", "#{NumberFormat.format(instalment_last)} Kč")
        row = row.replace("_INSTALMENT", "#{NumberFormat.format(@table[loan_type_code][week][issue_value]["instalment"])} Kč")
        interest_plus_fee = @table[loan_type_code][week][issue_value]["interest"] + @table[loan_type_code][week][issue_value]["fee_admin"]
        row = row.replace("_INTEREST_PLUS_FEE", "#{NumberFormat.format(interest_plus_fee)} Kč")
        row = row.replace("_APR", "#{NumberFormat.format(@table[loan_type_code][week][issue_value]['apr'], 2)} %")
        fee_cash = @table[loan_type_code][week][issue_value]["fee_cash"]
        fee_cash = 0 if fee_cash == "-"
        row = row.replace("_FEE_CASH", "#{NumberFormat.format(fee_cash)} Kč")
        row = row.replace("_TOTAL", "#{NumberFormat.format(total)} Kč")
        a = issue_value/1000-2
        b = if week == 45 then 2 else 3
        c = if loan_type_code == "mt" then 0 else 1
        if week == 100
          row = row.replace("_CHOOSE", "<a class='button rosy medium' href='https://www.provident.cz/pages/online-zadost-o-pujcku'>zvolit</a> ")
        else
          row = row.replace("_CHOOSE", "<a class='button rosy medium' href='http://www.provident.cz/loan_applications/select/#{a}/#{b}/#{c}'>zvolit</a> ")

        rows.push(row)

      table = @table_string
      table = table.replace("_LOAN_TYPE_TEXT", loan_type_text)
      table = table.replace("_ISSUE_VALUE", "#{NumberFormat.format(issue_value)} Kč")
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
            when "type"
              this.update('<ul class="dip-results-help"><li class="home-collect">Hotovostní varianta</li><li class="bank-transfer">Bezhotovostní varianta</li></ul>');
            when "loan"
              this.update('Částka, kterou si přejete půjčit');
            when "weeks"
              this.update('Počet týdnů - období, ve kterém si přejete půjčku splácet.');
            when "week"
              this.update('Částka, kterou budete splácet každý týden.');
            when "apr"
              this.update('RPSN = Roční procentuální sazba nákladů.<br><br>Způsob výpočtu RPSN stanoví evropská direktiva. Na jejím základě přijala ČR Zákon o spotřebitelském úvěru č. 145/2010 Sb, který vstoupil v účinnost dne 1. 1. 2011. Tento nový zákon určuje, že veškeré náklady spojené s půjčkou, kromě nepovinných doplňkových služeb, musí být zahrnuty do RPSN. Služba obchodního zástupce je doplňková, není povinnou součástí půjčky a z tohoto důvodu není zahrnuta do RPSN. Službu obchodního zástupce není zákazník povinnen odebrat.');
            when "cash"
              this.update('Osobní služba Vašeho obchodního zástupce, který vám přinese hotovost až domů a pravidelně vás navštěvuje kvůli výběru splátek.<br><br>Poplatek za hotovostní inkasní službu není v RPSN započítán, protože tato služba je dle Zákona o spotřebitelském úvěru č. 145/2010 Sb službou doplňkovou, není tak povinnou součástí půjčky a z tohoto důvodu není zahrnuta do RPSN.');
            when "total"
              this.update('Celková splatná částka');
            when "weekinst"
              this.update('Zahrnuje i poměrnou část nákladů na volitelnou hotovostní inkasní službu.<br>Poslední splátka '+this.getParent().attr("data-values"));
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