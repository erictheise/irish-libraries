--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

DROP DATABASE irish_libraries;
--
-- Name: irish_libraries; Type: DATABASE; Schema: -; Owner: erictheise
--

CREATE DATABASE irish_libraries WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf-8' LC_CTYPE = 'en_US.utf-8';


ALTER DATABASE irish_libraries OWNER TO erictheise;

\connect irish_libraries

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: libraries; Type: TABLE; Schema: public; Owner: erictheise; Tablespace: 
--

CREATE TABLE libraries (
    index bigint,
    authority text,
    gis_x double precision,
    gis_y double precision,
    branch text,
    address1 text,
    address2 text,
    address3 text,
    tele text,
    email text,
    url text,
    lat double precision,
    lon double precision
);


ALTER TABLE public.libraries OWNER TO erictheise;

--
-- Data for Name: libraries; Type: TABLE DATA; Schema: public; Owner: erictheise
--

COPY libraries (index, authority, gis_x, gis_y, branch, address1, address2, address3, tele, email, url, lat, lon) FROM stdin;
111	Fingal County Libraries	\N	\N	Donabate Portrane Library	Portrane Road	Donabate	Co. Dublin	01-8905609	donabate.library@fingal.ie	http://www.fingalcoco.ie/community-and-leisure/libraries/	\N	\N
150	Kerry County Library	444522	601182	Dingle Library	Dingle	Co. Kerry	\N	066 9151499	dingle@kerrylibrary.ie	www.kerrycolib.ie	52.1405893563432059	-10.2715448775205349
242	Mayo County Library	\N	\N	Clare Island Library	Clare Island	Co. Mayo	\N	098 29838	cliaracdp@eircom.net 	www.mayolibrary.ie	\N	\N
0	Carlow County Library	673051	650289	Borris	Main Street	Borris	Co. Carlow	059-9771605	bbrennan@carlowcoco.ie	www.carlowlibraries.ie	52.5989513962521968	-6.92166771794272506
1	Carlow County Library	672224	676692	Carlow Central Library	Tullow Street	Carlow	\N	059 9170094	library@carlowcoco.ie 	www.carlowlibraries.ie	52.8363276040514336	-6.92807183079712718
2	Carlow County Library	670393	661754	Muinebheag Library	Barrack Street	Bagenalstown	Co. Carlow	059 9722208	bjohnson@carlowcoco.ie	www.carlowlibraries.ie	52.702332300937222	-6.95845074214698567
3	Carlow County Library	685135	673251	Tullow Library	Link Road	Tullow	Co. Carlow	059 9136299	jpatton@carlowcoco.ie   	www.carlowlibraries.ie	52.8035238416297688	-6.73739391444397118
4	Cavan County Library	627397	797274	Arva Library	Market House	Arva	Co. Cavan	049 4335905	library@cavancoco.ie	http://cavanlibrary.ie/Default.aspx?StructureID_str=1	53.9240975108039109	-7.58289057266703015
5	Cavan County Library	667769	796767	Bailieboro Library	Market House	Bailieboro	Co. Cavan	042 9665779	bailieboroughlibrary@cavancoco.ie	http://cavanlibrary.ie/Default.aspx?StructureID_str=1	53.9158352991352245	-6.96843090434588319
6	Cavan County Library	627095	818720	Ballyconnell Library	Church Street	Ballyconnell	Co. Cavan	049 9526844	library@cavancoco.ie	http://cavanlibrary.ie/Default.aspx?StructureID_str=1	54.1168201691955417	-7.58557719804864306
7	Cavan County Library	652116	790577	Ballyjamesduff Library	Health Centre	Percy French Park	Ballyjamesduff, Co. Cavan	049 8545184	library@cavancoco.ie	http://cavanlibrary.ie/Default.aspx?StructureID_str=1	53.8620268682176544	-7.2077220446024306
8	Cavan County Library	636226	816952	Belturbet Library	Town Hall	Belturbet	Co. Cavan	049 9522683	library@cavancoco.ie	http://cavanlibrary.ie/Default.aspx?StructureID_str=1	54.1003722182123141	-7.44613501530893362
9	Cavan County Library	641816	804977	Cavan Town Library	Farnham Street	Cavan	\N	049 4378500	library@cavancoco.ie	http://cavanlibrary.ie/Default.aspx?StructureID_str=1	53.9923494415295124	-7.36232354082965568
10	Cavan County Library	659968	814193	Cootehill Library	Bridge Street	Cootehill	Co. Cavan	049 5559873	cootehilllibrary@cavancoco.ie	http://cavanlibrary.ie/Default.aspx?StructureID_str=1	54.0733656849400361	-7.08372732334214916
11	Cavan County Library	630732	807225	Killeshandra Library	Community Centre, Railway Road,	Killeshandra	Co. Cavan	\N	library@cavancoco.ie	http://cavanlibrary.ie/Default.aspx?StructureID_str=1	54.0133270133106222	-7.53111555427561719
12	Cavan County Library	678439	795681	Kingscourt Library	St. Mary’s Hall	Kingscourt	Co. Cavan	\N	shough@cavancoco.ie	http://cavanlibrary.ie/Default.aspx?StructureID_str=1	53.9045737533337146	-6.8063283418618612
13	Cavan County Library	661370	787305	Virginia Library	Health Centre	Bailieboro Road	Co. Cavan	049 8548456	library@cavancoco.ie	http://cavanlibrary.ie/Default.aspx?StructureID_str=1	53.8316169677692145	-7.06771333455206019
14	Clare County Library	528518	688731	Corofin Library	Corofin	Co. Clare.	\N	065 6837219	mailbox@clarelibrary.ie	http://www.clarelibrary.ie/	52.944609846620736	-9.06356256638550839
15	Clare County Library	533728	677682	De Valera Library	Harmony Row	Ennis	Co. Clare	065 6846353	mailbox@clarelibrary.ie	http://www.clarelibrary.ie/	52.8459887768540497	-8.98380616418478084
16	Clare County Library	513006	688528	Ennistymon Library	The Square	Ennistymon	Co. Clare	065 7071245	mailbox@clarelibrary.ie	http://www.clarelibrary.ie/	52.9404967116400726	-9.29424868180909947
17	Clare County Library	525293	658547	Kildysart Public Library	St. John Bosco's Community College	Kildysart	Co. Clare	065 6832113	mailbox@clarelibrary.ie	http://www.clarelibrary.ie/	52.6729355320789807	-9.10463997518244739
18	Clare County Library	547726	665975	Kilfinaghty Public Library (Sixmilebridge)	Church Street	Sixmilebridge	Co. Clare	061 369678	mailbox@clarelibrary.ie	http://www.clarelibrary.ie/	52.742318538852679	-8.77415952034250246
19	Clare County Library	488848	659995	Kilkee - Sweeney Memorial Library	O'Connell Street	Kilkee	Co. Clare	065 9056034	mailbox@clarelibrary.ie	http://www.clarelibrary.ie/	52.679699172790464	-9.64381315585807286
20	Clare County Library	570319	673037	Killaloe Library	The Lock House	Killaloe	Co. Clare	061 376062	mailbox@clarelibrary.ie	http://www.clarelibrary.ie/	52.8075003330474786	-8.44021983367385609
21	Clare County Library	511132	663937	Kilmihill Library	St. Michael's Community Centre	Church Street	Kilmihill, Co. Clare	065 9050528	mailbox@clarelibrary.ie	http://www.clarelibrary.ie/	52.7192316442934512	-9.31542877110938861
22	Clare County Library	499236	655169	Kilrush Library	O Gorman Street	Kilrush	Co. Clare	065 9051504	mailbox@clarelibrary.ie	http://www.clarelibrary.ie/	52.6383684190040384	-9.48877153343920021
23	Clare County Library	513439	698377	Lisdoonvarna Library	Kincora Road	Lisdoonvarna	Co. Clare	065 7074029	mailbox@clarelibrary.ie	http://www.clarelibrary.ie/	53.0290619025718186	-9.29044335854895209
24	Clare County Library	533602	677746	Local Studies	The Manse, Harmony Row	Ennis	Co. Clare	065 6846271	mailbox@clarelibrary.ie	http://www.clarelibrary.ie/	52.8465483917454719	-8.98568935558314763
25	Clare County Library	506037	679313	Miltown Malbay - Dr. Patrick J. Hillery Public Library	Ballard Road	Miltown Malbay	Co. Clare	065 7084822	mailbox@clarelibrary.ie	http://www.clarelibrary.ie/	52.8565263842277133	-9.39523492691466444
26	Clare County Library	539395	668140	Newmarket-on-Fergus Library	Kilnasoolagh Park	Newmarket-on-Fergus	Co. Clare	061 368411	mailbox@clarelibrary.ie	http://www.clarelibrary.ie/	52.7609054294238859	-8.89792328889424766
27	Clare County Library	564355	684547	Scariff Library	Mountshannont Road	Scariff	Co. Clare	061 922893	mailbox@clarelibrary.ie	http://www.clarelibrary.ie/	52.9105829261955094	-8.52993097340913486
28	Clare County Library	540536	662352	Shannon - Sean Lemass Library	Town Centre	Shannon	Co. Clare	061 364266	mailbox@clarelibrary.ie	http://www.clarelibrary.ie/	52.7090166076974285	-8.87997231438652612
29	Clare County Library	549110	679866	Tulla Library	The Market House	Tulla	Co. Clare	065 6835919	mailbox@clarelibrary.ie	http://www.clarelibrary.ie/	52.8672885206996384	-8.75582661450313893
30	Cork City Libraries	564154	569187	Bishopstown Library	Wilton Shopping Centre	Cork	\N	021 4924950	bishopstown_library@corkcity.ie	www.corkcitylibraries.ie	51.8737139062025889	-8.52057493547398792
31	Cork City Libraries	567508	573543	Blackpool Library	Redforge Road	Cork	\N	021 4924933	blackpool_library@corkcity.ie	www.corkcitylibraries.ie	51.9130746921612811	-8.47227851559219225
32	Cork City Libraries	567252	571711	City Library	57-61 Grand Parade	Cork	\N	021 4924900	libraries@corkcity.ie 	www.corkcitylibraries.ie	51.8965921931201706	-8.47582536116368956
33	Cork City Libraries	569797	569565	Douglas Library	Douglas Shopping Centre	Douglas	Cork	\N	douglas_library@corkcity.ie	www.corkcitylibraries.ie	51.8774457280954593	-8.43866014518610363
34	Cork City Libraries	565205	572734	Hollyhill Library	Foyle Avenue	Knonknaheeny	Cork	021 4924928	Hollyhill_library@corkcity.ie 	www.corkcitylibraries.ie	51.9056637119285043	-8.50567009826759168
35	Cork City Libraries	569421	573277	Mayfield Community Library (Frank O'Connor Library)	Old Youghal Road	Mayfield	Cork	021 4924935	Mayfield_library@corkcity.ie 	www.corkcitylibraries.ie	51.910791938288078	-8.44444995790009401
36	Cork City Libraries	567473	570305	Tory Top Road Library	Tory Top Road	Ballyphehane	Cork	021 4924934	torytop_library@corkcity.ie 	www.corkcitylibraries.ie	51.883966818793894	-8.47248181849963089
37	Cork County Council  Library Service	559166	570759	Ballincollig Library	Village Shopping Centre	Ballincollig	Co. Cork	021 4873024	ballincollig.library@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.8875013527330822	-8.59319536973186615
144	Galway County Libraries	543354	751939	Tuam Library	High Street	Tuam	Co. Galway	093 792117	tuam@galwaylibrary.ie	www.galwaylibrary.ie	53.5143745589926496	-8.85408063777751408
38	Cork County Council  Library Service	521299	576620	Ballyvourney Library	Ballyvourney	Ballymakeera	Co. Cork	026 45767	leabharlannbhailebhuirne@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.9361180375518998	-9.14453772017249022
39	Cork County Council  Library Service	549043	554963	Bandon Library	South Main Stree	Bandon	Co. Cork	023 44830	bandonlibrary@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.7446856683301775	-8.73791735536170044
40	Cork County Council  Library Service	499777	548342	Bantry Library	Bridge Street	Bantry	Co. Cork	027 50460	bantrylibrary@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.6785428275537129	-9.44925794403393837
41	Cork County Council  Library Service	560930	575744	Blarney Library	The Square	Blarney	Co. Cork	021 4382115	blarneylibrary@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.9324362813944731	-8.56813628397687665
42	Cork County Council  Library Service	623327	803144	Carrigaline Library	Main Street	Carrigaline	Co. Cork	021 4371888	carrigaline.library@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	53.9770436052693441	-7.64440498763769671
43	Cork County Council  Library Service	467641	545947	Castletownbere Library	Bank Place	Castletownbere	Co. Cork	027 70233	castletownberelibrary@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.6503747911045323	-9.91280323375381656
44	Cork County Council  Library Service	553458	622703	Charleville Library	Main Street	Charleville	Co. Cork	063 89769	charlevillelibrary@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	52.3539352941609692	-8.68321144257644839
45	Cork County Council  Library Service	538398	541470	Clonakilty Library	The Old Mill	Kent Street	Clonakilty, Co. Cork	2334275	clonakiltylibrary@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.6223366576147527	-8.88967077644042547
46	Cork County Council  Library Service	579644	566537	Cobh Library	Arch Building	Casement Square	Cobh, Co. Cork	021 4811130	cobh.library@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.8506730507987541	-8.29546917061215083
47	Cork County Council  Library Service	564939	571308	County Library Headquarters	Carrigrohane Road	Cork	\N	214546499	corkcountylibrary@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.8928290415689517	-8.50939068287797618
48	Cork County Council  Library Service	523034	552739	Dunmanway Library	The Square	Dunmanway	Co. Cork	023 55411	dunmanwaylibrary@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.7217293076223044	-9.11400287675334653
49	Cork County Council  Library Service	581138	598415	Fermoy Library	Connolly Street	Fermoy	Co. Cork	025 31318	fermoylibrary@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	52.1372732250152993	-8.27553723143083353
50	Cork County Council  Library Service	572664	575499	Glanmire Library	Hazelwood Shopping Centre	Glanmire	Co. Cork	021 4821627	glanmirelibrary@eircom.net	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.9309337807669849	-8.39749229027869681
81	Dublin City Public Libraries	715542	734679	Central Library	ILAC Centre	Henry Street	Dublin 1	01 873 4333	centrallibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3496951860000053	-6.26457788757355427
51	Cork County Council  Library Service	538058	603223	Kanturk Library	Main Street	Kanturk	Co. Cork	029 51384	kanturk.library@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	52.1773367895011191	-8.90567365859478777
52	Cork County Council  Library Service	563837	550514	Kinsale Library	Methodist Hall	Market Quay	Kinsale, Co. Cork	021 4774266	kinsalelibrary@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.7058432235593841	-8.52323254906856143
53	Cork County Council  Library Service	495316	521492	Leabharlann Oilean Chléire	An Sciobairín	Cape Clear	Co. Cork	\N	cleirelibrary@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.4364408789815286	-9.50575126640516999
54	Cork County Council  Library Service	534054	572932	Macroom Library	Briery Gap Library & Theatre	Main Street	Macroom, Co. Cork	026 42483	macroomlibrary@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.9046279561113337	-8.9583681592621982
55	Cork County Council  Library Service	556080	598346	Mallow Library	Thomas Davis Street	Main Street	Mallow, Co. Cork	022 21841	mallow.library@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	52.1352298932037783	-8.64155933372268059
56	Cork County Council  Library Service	588111	573554	Midleton Library	Main Street	Midleton	Co. Cork	021 4613929	midletonlibrary@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.9139941750889307	-8.17281241064850938
57	Cork County Council  Library Service	526819	550291	Millstreet Library	Council Offices	Main Street	Millstreet, Co. Cork	029 21920	millstreet.library@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.7002334863405295	-9.05871543165172355
58	Cork County Council  Library Service	581272	612827	Mitchelstown Library	Council Offices	Georges Street	Mitchelstown, Co. Cork	\N	mitchelstownlibrary@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	52.2668210159151982	-8.27437641759260067
59	Cork County Council  Library Service	531698	607546	Newmarket Library	Scarteen Street	Newmarket	Co. Cork	029 61090	newmarketlibrary@eircom.net 	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	52.215438526321762	-8.99952180714530137
60	Cork County Council  Library Service	576836	568950	Passage West Library	Community Centre	Passage West	Co. Cork	021 4863727	passagewestlibrary@eircom.net 	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.872254174437785	-8.33638856528055427
61	Cork County Council  Library Service	492799	531603	Schull Library	21 Upper Main Street	Schull	Co. Cork	028 28290	schull.library@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.526833008533373	-9.54500919384397406
62	Cork County Council  Library Service	502272	525462	Sherkin Island Library	Community Centre	Sherkin Island	Co. Cork	\N	sherkinlibrary@eircom.net 	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.4733618952135927	-9.4068277531410871
63	Cork County Council  Library Service	512289	533992	Skibbereen Library	North Street	Skibbereen	Co. Cork	028 22400	skibbereen.library@corkcoco.ie 	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.5516666307467304	-9.26479103391517
64	Cork County Council  Library Service	610234	578209	Youghal Library	Rivergate Shopping Centre, North Main Street	Youghal	Co. Cork	024 93459	youghal.library@corkcoco.ie	http://www.corkcoco.ie/co/web/Cork%20County%20Council/Departments/Library%20&%20Arts%20Service	51.9558710606702476	-7.85110528950081488
65	Donegal County Library	614048	894492	Ballybofey Branch Library	Ballybofey	Lifford	Co. Donegal	\N	\N	http://www.donegallibrary.ie/	54.7981675289881878	-7.78153542336021697
66	Donegal County Library	587572	861650	Ballyshannon Library	Ballyshannon	Donegal	Co. Donegal	\N	ballyshannon@donegallibrary.ie	http://www.donegallibrary.ie/	54.5031277266497725	-8.1918765909548874
67	Donegal County Library	634751	931977	Buncrana Community Library	St. Mary's Road	Buncrana, Lifford	Co. Donegal	074 09361941	buncrana@donegallibrary.ie 	http://www.donegallibrary.ie/	55.133929655792592	-7.45504851886283948
68	Donegal County Library	581989	858939	Bundoran Community Library	Station Road	Bundoran, Donegal	Co. Donegal	071 9829665	bundoranlibrary@donegallibrary.ie 	http://www.donegallibrary.ie/	54.4786016354113798	-8.27790663391238546
69	Donegal County Library	646944	945273	Cardonagh Library	Public Services Centre	Carndonagh, Lifford	Co. Donegal	074 9373701	carndonagh@donegallibrary.ie 	http://www.donegallibrary.ie/	55.2523683190862371	-7.26165201108748448
70	Donegal County Library	616793	911223	Central Library and Arts Centre	Oliver Plunkett  Road	Letterkenny	Co. Donegal	074 9124950	central@donegallibrary.ie 	http://www.donegallibrary.ie/	54.9484035009181042	-7.73787401354942084
71	Donegal County Library	592682	878560	Donegal Town Branch Library	Donegal	Co. Donegal	\N	\N	donegaltown@donegallibrary.ie	http://www.donegallibrary.ie/	54.6551644325655275	-8.11340434322224802
72	Donegal County Library	581091	924503	Leabharlann Ghaoith Dobhair	Aislann Na doiri beaga	LeitirCeanainn	Co. Donegal	074 9560862	gaothdobhair@donegallibrary.ie 	http://www.donegallibrary.ie/	55.0676394851323536	-8.29603208374568091
73	Donegal County Library	576615	911535	Leabharlann Phobail na Rosann	Ionad Teampaill Chróine	An Chlochán Liath / Dungloe, Letterkenny	Co. Donegal	074 9522500	narosa@donegalcoco.ie 	http://www.donegallibrary.ie/	54.9509412659011929	-8.36504550685826942
74	Donegal County Library	633469	898527	Lifford Library	Lifford Community Courthouse	The Diamond, Lifford	Co. Donegal	074 9172726	lifford@donegallibrary.ie 	http://www.donegallibrary.ie/	54.8334999394892861	-7.47905730850185879
75	Donegal County Library	619215	926565	Milford Library	Public Services Centre	Milford, Letterkenny	Co. Donegal	074 9153927	milford@donegallibrary.ie 	http://www.donegallibrary.ie/	55.0861531782882068	-7.69903833754058109
76	Donegal County Library	661095	938381	Moville Library	Moville	Lifford	Co. Donegal	074 9385110	moville@donegallibrary.ie	http://www.donegallibrary.ie/	55.1889095211706504	-7.04060284665121916
77	Donegal County Library	626195	894884	Raphoe Branch Library	The Diamond	Raphoe, Letterkenny	Co. Donegal	074 9144115	raphoe@donegallibrary.ie	http://www.donegallibrary.ie/	54.8012024213961837	-7.59260251677971265
78	Dublin City Public Libraries	709740	733462	Ballyfermot Library	Ballyfermot Road	\N	Dublin 10	01 6269324/5	ballyfermotlibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3399977368773932	-6.35210411072568526
79	Dublin City Public Libraries	715400	739202	Ballymun Library	Main Street	Dublin 11	\N	01 8421980	ballymunlibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3903552476275181	-6.26505912830656175
80	Dublin City Public Libraries	713174	735954	Cabra Library	Navan Road	Dublin 7	\N	01 8691414	cabralibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3616602195481562	-6.29967161639640061
82	Dublin City Public Libraries	716746	735531	Charleville Mall Library	North Strand	Dublin 1	\N	01 874 9619	charlevillemalllibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3570841831756226	-6.24618902255864761
83	Dublin City Public Libraries	718899	739957	Coolock Library	Barryscourt Road	Dublin 5	\N	01 8477781	coolocklibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3963612409154962	-6.21219805105313228
84	Dublin City Public Libraries	713770	732593	Dolphins Barn Library	Parnell Road	Dublin 8	\N	01 4540681	dolphinsbarnlibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3313407390868619	-6.29192910804974215
85	Dublin City Public Libraries	723836	740107	Donaghmede Library	Donaghmede Shopping Centre	Dublin 13	\N	01 848 2833	donaghmedelibrary@dublincity.ie 	www.dublincitypubliclibraries.ie	53.3965743118696494	-6.13794710882944372
86	Dublin City Public Libraries	715969	736948	Drumcondra Library	Millmount Avenue	Dublin 9	\N	01 8377206	drumcondralibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3699836322074646	-6.25733609850079731
87	Dublin City Public Libraries	716839	733973	Dublin and Irish Local Studies/City Archives/Admin Centre	138-144 Pearse Street	Dublin 2	\N	01 674 4999	cityarchives@dublincity.ie	www.dublincitypubliclibraries.ie	53.3430686012250419	-6.24536758955566818
88	Dublin City Public Libraries	713160	739034	Finglas Library	Finglas Shopping Centre	Jamestown Road	Dublin 11	01 8344906.	finglaslibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.389330609688038	-6.29877936849295672
89	Dublin City Public Libraries	712539	733577	Inchicore Library	34 Emmet Road	Dublin 8	\N	01 4533793.	inchicorelibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3404431080379879	-6.31005224488222805
90	Dublin City Public Libraries	715370	733320	Kevin Street Library	18 Lower Kevin Street	Dublin 8	\N	01 4753794	kevinstreetlibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3375250645974717	-6.26765501003657732
91	Dublin City Public Libraries	717721	736367	Marino Library	14-20 Marino Mart	Dublin 3	\N	01 8336297.	marinolibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3643775856645703	-6.23123872391276379
92	Dublin City Public Libraries	716839	733973	Pearse Street Library	138-144 Pearse Street	Dublin 2	\N	01 6744888	pearsestreetlibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3430686012250419	-6.24536758955566818
93	Dublin City Public Libraries	717869	732332	Pembroke Library	Anglesea Road	Ballsbridge	Dublin 4	01 6689575.	pembrokelibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3280996937711507	-6.23051796658281276
94	Dublin City Public Libraries	715080	735942	Phibsboro Library	Blackquiere Bridge	Dublin 7	\N	01 8304341.	phibsborolibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3611411642720128	-6.27105437603907845
95	Dublin City Public Libraries	721541	738201	Raheny Library	Howth Road	Raheny	Dublin 5	01 8315521.	rahenylibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3799870880255369	-6.17316964947214597
96	Dublin City Public Libraries	715539	731837	Rathmines Library	157 Rathmines Road	Dublin 6	\N	01 4973539	rathmineslibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3241666726913692	-6.26565920491123851
97	Dublin City Public Libraries	718104	733830	Ringsend Library	Fitzwilliam Street	Dublin 4	\N	01 6680063.	ringsendlibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3415033257106828	-6.22643366281655464
98	Dublin City Public Libraries	714274	730110	Terenure Library	Templeogue Road	Dublin 6	\N	01 4907035.	terenurelibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3089275776896301	-6.28526064653830652
99	Dublin City Public Libraries	711810	731130	Walkinstown Library	Percy French Road	Walkinstown	Dublin 12	01 4558159.	walkinstownlibrary@dublincity.ie	www.dublincitypubliclibraries.ie	53.3186159717704129	-6.32185722427230345
100	Dun Laoghaire-Rathdown Public Library Service	721612	729387	Blackrock Library	Main Street	Blackrock	Co. Dublin	01 2888117	blackrocklib@dlrcoco.ie	www.dlrcoco.ie/library/br.htm	53.3008001740914423	-6.1754865199902067
101	Dun Laoghaire-Rathdown Public Library Service	723463	724875	Cabinteely Library	Old Bray Road	Cabinteely	Dublin 18	01 2855363	cabinteelylib@dlrcoco.ie	www.dlrcoco.ie/library/ca.htm	53.2598440183434292	-6.14948428871627684
102	Dun Laoghaire-Rathdown Public Library Service	726402	726883	Dalkey Library	Castle Street	Dalkey	Co. Dublin	12855277	dalkeylib@dlrcoco.ie	www.dlrcoco.ie/library/br.htm	53.2771885042464532	-6.10466166426464873
103	Dun Laoghaire-Rathdown Public Library Service	722399	726812	Deansgrange Library	Clonkeen Drive	Deansgrange	Co. Dublin	01 2850860	deansgrangelib@dlrcoco.ie	www.dlrcoco.ie/library/br.htm	53.2774893692350631	-6.16467780254698816
104	Dun Laoghaire-Rathdown Public Library Service	724466	728559	dlrLexicon	Haigh Terrace	Moran Park, Dún Laoghaire	Co. Dublin	01 2801147 	dlrlexiconlib@dlrcoco.ie	www.dlrcoco.ie/library/br.htm	53.2927004650422802	-6.13301777389935676
105	Dun Laoghaire-Rathdown Public Library Service	716880	728361	Dundrum Library	Upper Churchtown Road	Dundrum	Dublin 14	01 2985000 	dundrumlib@dlrcoco.ie	www.dlrcoco.ie/library/br.htm	53.2926483319593842	-6.24681988256163478
106	Dun Laoghaire-Rathdown Public Library Service	725037	721984	Shankill Library	Library Road	Shankill	Co. Dublin	01 2823081	shankilllib@dlrcoco.ie	www.dlrcoco.ie/library/br.htm	53.2335078948141032	-6.12704088489146859
107	Dun Laoghaire-Rathdown Public Library Service	720231	728129	Stillorgan Library	St. Laurence’s Park	Stillorgan	Co. Dublin	01 2889655 	stillorganlib@dlrcoco.ie	www.dlrcoco.ie/library/br.htm	53.2898151555709987	-6.19667013963424829
108	Fingal County Libraries	720293	763612	Balbriggan Library	George’s Square	Balbriggan	Co. Dublin	01 8411128	balbrigganlibrary@fingalcoco.ie	http://www.fingalcoco.ie/community-and-leisure/libraries/	53.6085192713582757	-6.18217923705190397
109	Fingal County Libraries	724647	740146	Baldoyle Library	Strand Road	Baldoyle 	Co. Dublin	01 8322549	baldoylelibrary@fingalcoco.ie 	http://www.fingalcoco.ie/community-and-leisure/libraries/	53.3967338734982988	-6.1257442904528725
110	Fingal County Libraries	707017	739053	Blanchardstown Library	Civic Centre	Blanchardstown Centre	Dublin 15	01 8905563	blanchlib@fingalcoco.ie 	http://www.fingalcoco.ie/community-and-leisure/libraries/	53.3907812076667412	-6.39108425831885629
112	Fingal County Libraries	707115	758573	Garristown Library 	Main Street	Garristown	Co. Dublin	01 8355020	garristownlibrary@fingalcoco.ie	http://www.fingalcoco.ie/community-and-leisure/libraries/	53.5661126206659617	-6.38295662466583646
113	Fingal County Libraries	728741	739005	Howth Library	Main Street	Howth	Co. Dublin	01 8322130	howthlibrary@hotmail.com 	http://www.fingalcoco.ie/community-and-leisure/libraries/	53.3855038672006117	-6.06468780727685886
114	Fingal County Libraries	722657	746093	Malahide Library	Main Street	Malahide	Co. Dublin	01 8452026	malahidelibrary@fingalcoco.ie 	http://www.fingalcoco.ie/community-and-leisure/libraries/	53.4506164946432065	-6.1533357715587842
115	Fingal County Libraries	717584	747266	Swords Library	Rathbeale Road	Swords	Co. Dublin	01 8905894	swordslibrary@fingalcoco.ie	http://www.fingalcoco.ie/community-and-leisure/libraries/	53.4623087619008075	-6.22923310386342433
116	Fingal County Libraries	725856	754107	Rush Library	Chapel Green	Rush	Co. Dublin	\N	rushlibrary@fingalcoco.ie	http://www.fingalcoco.ie/community-and-leisure/libraries/	53.5218426256327362	-6.10199019000318987
117	Fingal County Libraries	725383	760410	Skerries Library	Strand Street	Skerries	Co. Dublin	01 8491900	skerrieslibrary@fingalcoco.ie 	http://www.fingalcoco.ie/community-and-leisure/libraries/	53.5785673582750803	-6.10659302486041167
118	Galway County Libraries	550076	727745	Athenry Library	Main Street	Athenry	Co. Galway	0 91 845592	athenry@galwaylibrary.ie	www.galwaylibrary.ie	53.2976467608763045	-8.74891172903954129
119	Galway County Libraries	584920	731250	Balinasloe Library	Society Street	Balinasloe	Co. Galway	090 9643464	ballinasloe@galwaylibrary.ie	www.galwaylibrary.ie	53.3312823392979425	-8.22639185907444137
120	Galway County Libraries	533116	726260	Ballybane Library	Castlepark Road	Ballybane	Co. Galway	091 380590 	ballybane@galwaylibrary.ie	www.galwaylibrary.ie	53.2824346029749236	-9.00297939833144767
121	Galway County Libraries	578622	752639	Balygar Library	Main Street	Balygar	Co. Galway	090 6624919	ballygar@galwaylibrary.ie	www.galwaylibrary.ie	53.5232812198730343	-8.32239162842123292
122	Galway County Libraries	493134	724814	Carraroe Library	An Scailp Chulturtha	An Ceathrú	Co.na Gaillimh	091 595733	anceathrurua@galwaylibrary.ie	www.galwaylibrary.ie	53.2628967033480407	-9.60184711878074815
123	Galway County Libraries	465866	750541	Clifden Library	Main Street	Clifden	Co. Galway	095 21092	clifden@galwaylibrary.ie	www.galwaylibrary.ie	53.4877698367305996	-10.0212412755482934
124	Galway County Libraries	550747	763349	Dunmore Library	Main Street	Dunmore	Co. Galway	093 38923	dunmore@galwaylibrary.ie	www.galwaylibrary.ie	53.6176472346154824	-8.74442192160615761
125	Galway County Libraries	591260	716811	Eyrecourt Library	Main Street	Eyrecourt	Co. Galway	096 75056	eyrecourt@galwaylibrary.ie	www.galwaylibrary.ie	53.2016613201046979	-8.13081493044305681
126	Galway County Libraries	529850	725104	Galway City Library	St. Augustine Street	Galway	\N	091 561666	info@galwaylibrary.ie	www.galwaylibrary.ie	53.2716254506547244	-9.05169183957002055
127	Galway County Libraries	562944	762118	Glenamaddy Library	Main Street	Glenamaddy	Co. Galway	094 9659734	glenamaddy@galwaylibrary.ie	www.galwaylibrary.ie	53.6075898980472516	-8.55993837095790688
128	Galway County Libraries	545050	701931	Gort Library	Queen Street	Gort	Co. Galway	091 631224	gort@galwaylibrary.ie	www.galwaylibrary.ie	53.06517851304217	-8.81986318511240697
129	Galway County Libraries	526365	747188	Headford Library	Headford	Co. Galway	\N	\N	headford@galwaylibrary.ie	www.galwaylibrary.ie	53.4695827156140524	-9.10907138148071027
130	Galway County Libraries	453585	764981	Inisbofin Library	Inishbofin	Co. Galway	\N	095 45861	inishbofin@galwaylibrary.ie	www.galwaylibrary.ie	53.6141684725387222	-10.2129145306848468
131	Galway County Libraries	493268	724995	Inisheer Library	Inisheer	Aran Islands	Co. Galway	099 75008	inisoirr@galwaylibrary.ie	www.galwaylibrary.ie	53.2645496860012955	-9.59990011246425823
132	Galway County Libraries	493870	704982	Inishmaan Library	Inismaan	Aran Islands	Co. Galway	099 73126	inismeain@galwaylibrary.ie	www.galwaylibrary.ie	53.0848789298742432	-9.58424132957606112
133	Galway County Libraries	580550	712827	Killimor Public Library	Main Street	Killimor	Co. Galway	090 9676062	killimor@galwaylibrary.ie	www.galwaylibrary.ie	53.1655730959431736	-8.29087162065418681
134	Galway County Libraries	488348	709133	Kilronan Library	Kilronan	Co. Galway	\N	099 20018	inismor@galwaylibrary.ie	www.galwaylibrary.ie	53.1210438879415037	-9.66807541743396648
135	Galway County Libraries	488017	761808	Leenane Library	Leenane	Co. Galway	\N	\N	leenane@galwaylibrary.ie	www.galwaylibrary.ie	53.5941557690263295	-9.69165796110982924
136	Galway County Libraries	470930	757678	Letterfrack Library	Letterfrack Furniture College	Letterfrack	Co. Galway	095 41660	letterfrack@galwaylibrary.ie	www.galwaylibrary.ie	53.5531363502841131	-9.94792127764392831
137	Galway County Libraries	562121	716567	Loughrea Library	Church Street	Loughrea	Co. Galway	091 847220	loughrea@galwaylibrary.ie	www.galwaylibrary.ie	53.1981917241754516	-8.5669061982734469
138	Galway County Libraries	562454	748797	Moylough Library	Main Street	Moylough	Co. Galway	090 9679073	moylough@galwaylibrary.ie	www.galwaylibrary.ie	53.4878500977590505	-8.56574352335979228
139	Galway County Libraries	528009	724526	Oranmore Library	Main Street	Oranmore	Co. Galway	091 792117	oranmore@galwaylibrary.ie	www.galwaylibrary.ie	53.2661852780817782	-9.07915610050927313
140	Galway County Libraries	512037	742805	Oughterard Library	Main Street	Oughterard	Co. Galway	091 557002	oughterard@galwaylibrary.ie	www.galwaylibrary.ie	53.4280068341870873	-9.32359297309130675
141	Galway County Libraries	585216	704426	Portumna Library	Main Street	Portumna	Co. Galway	090 9741261	portumna@galwaylibrary.ie	www.galwaylibrary.ie	53.0902216553318311	-8.22070584742841248
142	Galway County Libraries	472381	740417	Roundstone Library	Seaview	Roundstone	Co. Galway	095 35518	roundstone@galwaylibrary.ie	www.galwaylibrary.ie	53.3984583262398047	-9.91902658298350559
143	Galway County Libraries	512979	722312	Spiddal Library	Main Street	Spiddal	Co. Galway	091 504028	anspideil@galwaylibrary.ie	www.galwaylibrary.ie	53.2440415627523009	-9.30379460998837438
145	Galway County Libraries	528339	725764	Westside Library	Seamus Quirke Road	Galway	\N	091 520616	westside@galwaylibrary.ie	www.galwaylibrary.ie	53.2773539368661346	-9.07448921665545605
146	Galway County Libraries	573180	700293	Woodford Library	Main Street	Woodford	Co. Galway	090 9749620	woodford@galwaylibrary.ie	www.galwaylibrary.ie	53.0526090841353408	-8.40003955557277848
147	Kerry County Library	486129	640989	Ballybunion Library	Sandhill Road	Ballybunion	Co. Kerry	068 27615	ballybunion@kerrylibrary.ie	www.kerrycolib.ie	52.5083811360811552	-9.67746982148243085
148	Kerry County Library	447184	579613	Cahirciveen Library	Cahirciveen	Co. Kerry	\N	066 947 2287	cahirciveen@kerrylibrary.ie	www.kerrycolib.ie	51.9475965897049647	-10.2230473986998032
149	Kerry County Library	499728	609744	Castleisland Library	Area Services Centre, Station Road	Castleisland	Co. Kerry	066 7141485	castleisland@kerrylibrary.ie	www.kerrycolib.ie	52.2303006670896863	-9.46787768621012482
151	Kerry County Library	491185	570838	Kenmare Library	Shelbourne Street	Kenmare	Co. Kerry	064 41416	kenmare@kerrylibrary.ie	www.kerrycolib.ie	51.8790917171849628	-9.58050097273365964
152	Kerry County Library	496367	591160	Killarney Library	Rock Road	Killarney	Co. Kerry	064 32655	killarney@kerrylibrary.ie	www.kerrycolib.ie	52.0626900248068338	-9.51139541683829393
153	Kerry County Library	477473	596544	Killorglin Library	Library Place	Killorglin	Co. Kerry	066 9761272	killorglin@kerrylibrary.ie	www.kerrycolib.ie	52.1072077497861414	-9.78874722443434386
154	Kerry County Library	499215	634092	Listowel Library	Civic Centre	Listowel	Co. Kerry	068 23044	listowel@kerrylibrary.ie	www.kerrycolib.ie	52.4489850915447988	-9.48268556582978839
155	Kerry County Library	484078	614152	Tralee Library & Admin HQ	Moyderwell	Tralee	Co. Kerry	066 7121200	tralee@kerrylibrary.ie	www.kerrycolib.ie	52.2668344236924085	-9.69838783961738571
156	Kildare Library and Arts Services	668231	693886	Athy Community Library	The Courthouse	Emily Square, Athy	Co. Kildare	50731144	athylib@kildarecoco.ie 	www.kildare.ie/library/	52.9913561049705066	-6.98371375082032753
157	Kildare Library and Arts Services	679472	696117	Ballitore Library	Mary Leadbetter House	Ballitore	Co. Kildare	0507-23344	ballitorelib@kildarecoco.ie 	www.kildare.ie/library/	53.0098541008013981	-6.81576925650171894
158	Kildare Library and Arts Services	678190	685092	Castledermot Library	Main Street	Castledermot	Co. Kildare	50344483	castledermotlib@kildarecoco.ie 	www.kildare.ie/library/	52.9109759032886444	-6.83752868546409331
159	Kildare Library and Arts Services	679214	733088	Celbridge Library	St. Patrick’s Park	Celbridge	Co. Kildare	01 6272207	celbridgelib@kildarecoco.ie 	www.kildare.ie/library/	53.3420864129884293	-6.81045802991964067
160	Kildare Library and Arts Services	687566	727807	Clane Library	The Woods	Clane	Co. Kildare	045-892716	clanelib@kildarecoco.ie 	www.kildare.ie/library/	53.2933228302264013	-6.68652981481422959
161	Kildare Library and Arts Services	665526	739074	Clocha Rince	Co. Kildare	\N	\N	046 9553428	colibrary@kildarecoco.ie	www.kildare.ie/library/	53.397745710704605	-7.01473101287057776
162	Kildare Library and Arts Services	688549	739699	Kilcock Library	Butler's Lane, Main Street	Kilcock	Co. Kildare	01-6284403	kilcocklib@kildarecoco.ie 	www.kildare.ie/library/	53.4000032874528543	-6.66846402866118204
163	Kildare Library and Arts Services	684039	709591	Kilcullen Library	New Abbey Road	Kilcullen	Co. Kildare	045-482193	kilcullenlib@kildarecoco.ie 	www.kildare.ie/library/	53.1302235473416999	-6.74421532221565201
164	Kildare Library and Arts Services	673019	712229	Kildare Library	Kildare Town Centre	Claregate st., Kildare	Co. Kildare	045-520235	kildarelib@kildarecoco.ie 	www.kildare.ie/library/	53.1555502049659268	-6.9082497520336279
165	Kildare Library and Arts Services	700717	736822	Leixlip Library 	New Town House	Leixlip	Co. Kildare	\N	leixliplib@kildarecoco.ie	www.kildare.ie/library/	53.3719770222081777	-6.48647341493863294
166	Kildare Library and Arts Services	693861	737776	Maynooth Library	Main Street	Maynooth	Co. Kildare	01-6285530	maynoothlib@kildarecoco.ie 	www.kildare.ie/library/	53.38180952676597	-6.58918330822299847
167	Kildare Library and Arts Services	662774	710181	Monasterevin Library	Water Mill Place	Monasterevin	Co. Kildare	045-529239	monasterevinlib@kildarecoco.ie 	www.kildare.ie/library/	53.1384523135012543	-7.06180568404599107
168	Kildare Library and Arts Services	688987	719337	Naas Library	Harbour View	Naas	Co. Kildare	045-879111	naaslib@kildarecoco.ie	www.kildare.ie/library/	53.2169864392886893	-6.66758859687946703
169	Kildare Library and Arts Services	680614	715284	Newbridge Library	Athgarvan Road	Newbridge	Co. Kildare	045-436453	newbridgelib@kildarecoco.ie 	www.kildare.ie/library/	53.181905118394198	-6.79394913217856633
170	Kildare Library and Arts Services	667239	719444	Rathangan Library	Rathangan	Co. Kildare	\N	045-528078	rathanganlib@kildarecoco.ie 	www.kildare.ie/library/	53.2211433299957051	-6.99313711533651006
171	Kilkenny County Library Service	641169	643426	Callan Library	Clonmel Road	Callan	Co. Kilkenny	056 7794183	callan@kilkennylibrary.ie	www.kilkennylibrary.ie	52.5406189662961296	-7.39310169972050168
172	Kilkenny County Library Service	653276	672687	Castlecomer Library	Kilkenny Street	Castlecomer	Co. Kilkenny	056 4440561	castlecomer@kilkennylibrary.ie 	www.kilkennylibrary.ie	52.8025411358437609	-7.20991135449101339
173	Kilkenny County Library Service	650733	656067	City Branch	John’s Quay	Kilkenny	\N	056 7794174	kilkenny@kilkennylibrary.ie	www.kilkennylibrary.ie	52.6534207014847553	-7.25018740223397984
174	Kilkenny County Library Service	670904	643937	Graiguenamanagh Library	Convent Lane	Graiguenamanagh	Co. Kilkenny	567794178	graiguenamanagh@kilkennylibrary.ie 	www.kilkennylibrary.ie	52.5421527271118833	-6.95471283400264806
175	Kilkenny County Library Service	661593	613321	Ferrybank Library	Ferrybank	Waterford	Co. Kilkenny	051 897200	Ferrybank@kilkennylibrary.ie	www.kilkennylibrary.ie	52.2681318742991152	-7.09759057543203742
176	Kilkenny County Library Service	651286	654749	Loughboy Library	Loughboy Shopping Centre	Waterford Road	Kilkenny	056 7794176	loughboy@kilkennylibrary.ie 	www.kilkennylibrary.ie	52.6415235787233868	-7.24221985470126306
177	Kilkenny County Library Service	658346	641868	Thomastown Library	Marsh’s Street	Thomastown	Co. Kilkenny	056 7724911	thomastown@kilkennylibrary.ie	www.kilkennylibrary.ie	52.5250481433326897	-7.14018465667148927
178	Kilkenny County Library Service	628391	663523	Urlingford Library	The Courthouse	Urlingford	Co. Kilkenny	056 7794182	urlingford@kilkennylibrary.ie	www.kilkennylibrary.ie	52.7220620334601477	-7.57973652967072375
179	Laois County Library	643801	685029	Abbeyleix Library	Abbeyleix	Co. Laois	\N	0502/30020	lbrett@laoiscoco.ie	http://www.laois.ie/LeisureandCulture/Libraries/	52.9143119843256784	-7.34875729728431537
180	Laois County Library	664401	685580	Ballylinan Library	Ballylinan	Co. Laois	\N	No Phone	nboyce@laoiscoco.ie	http://www.laois.ie/LeisureandCulture/Libraries/	52.9171900620320557	-7.04240205909560135
181	Laois County Library	624993	687647	Borris-In-Ossory Library	Gracefield Shopping Centre	Borris-In-Ossory	Co. Laois	0505 41443	pgardner@laoiscoco.ie	http://www.laois.ie/LeisureandCulture/Libraries/	52.9390445862081336	-7.62818831393342212
182	Laois County Library	640675	677257	Durrow Library	Durrow	Co. Laois	\N	057 8736090	chutchinson@laoiscoco.ie	http://www.laois.ie/LeisureandCulture/Libraries/	52.8447096240769625	-7.39620338594095639
183	Laois County Library	645002	707352	Mountmellick Library	Mountmellick	Co. Laois	\N	0502 24733	flynch@laoiscoco.ie	http://www.laois.ie/LeisureandCulture/Libraries/	53.114825419512151	-7.32779152235319309
184	Laois County Library	635598	694469	Mountrath Library	Mountrath	Co. Laois	\N	0502 56045	pnorton@laoiscoco.ie	http://www.laois.ie/LeisureandCulture/Libraries/	52.9997564028509984	-7.46967800252838199
185	Laois County Library	654410	712223	Portarlington Library	Main Street	Portarlington	Co. Laois	0502 43751	pnorton@laoiscoco.ie	http://www.laois.ie/LeisureandCulture/Libraries/	53.1577215499408311	-7.18644899715270213
186	Laois County Library	647092	698298	Portlaoise Library	Dunamaise House	Lyster Sq. , Portlaoise	Co. Laois	0502 22333	library@laoiscoco.ie	http://www.laois.ie/LeisureandCulture/Libraries/	53.0332798208447471	-7.29789985788877971
187	Laois County Library	617969	678287	Rathdowney Library	Rathdowney	Co. Laois	\N	0505 46852	cfitzpatrick@laoiscoco.ie	http://www.laois.ie/LeisureandCulture/Libraries/	52.8552024562331155	-7.7331974400123924
188	Laois County Library	657329	696088	Stradbally Library	Stradbally	Co. Laois	\N	0502 25005	jshead@laoiscoco.ie	http://www.laois.ie/LeisureandCulture/Libraries/	53.0124211903308833	-7.1456845799115607
189	Laois County Library	653515	6902272	Timahoe Library	Timahoe	Co. Laois	\N	0502 27231	mscully@laoiscoco.ie	http://www.laois.ie/LeisureandCulture/Libraries/	90	-8.00000000000000178
190	Leitrim County Library	612907	811489	Balinamore Branch & County Library HQ	Main Street	Ballinamore	Co. Leitrim	071-9645566	leitrimlibrary@leitrimcoco.ie	www.leitrimlibrary.ie	54.0523956679863389	-7.80289110571017464
191	Leitrim County Library	593886	799776	Carrick-on-Shannon Library	Park Lane House	Carrick-on-Shannon	Co. Leitrim	071-9620789	carrickonshannonlibrary@leitrimcoco.ie	www.leitrimlibrary.ie	53.9472687600637215	-8.09313478695020727
192	Leitrim County Library	623323	803141	Carrigallen Library	Main Street 	Carrigallen	Co. Leitrim	049-4339188	Carrgallenlibrary@Leitrimcoco.ie	www.leitrimlibrary.ie	53.9770168282716654	-7.64446619154905527
193	Leitrim County Library	580266	831496	Dromahair Library	Dromahair	Co. Leitrim	\N	071-9164364	Dromohairlibrary@leitrimcoco.ie	www.leitrimlibrary.ie	54.2319545545426038	-8.30267404283089228
194	Leitrim County Library	597313	810912	Drumshanbo Library	Market House	Drumshanbo	Co. Leitrim	071-9641258	Drumshanbolibrary@Leitrimcooco.ie	www.leitrimlibrary.ie	54.0473653306801651	-8.04102946643429561
195	Leitrim County Library	597537	845220	Kiltyclogher Library	\N	Kiltyclogher	Co. Leitrim	071-9854891	kiltyclogherlibrary@leitrimcoco.ie	www.leitrimlibrary.ie	54.3556456113228208	-8.0378900614036155
196	Leitrim County Library	584479	855613	Kinlough Library	Kinlough	Co. Leitrim	\N	071-9842554	Kinloughlibrary@Leitrimcoco.ie	www.leitrimlibrary.ie	54.4487991932684849	-8.23931233652857031
197	Leitrim County Library	588662	839445	Manorhamilton Library	Library Corner	Manorhamilton	Co. Leitrim	071-9856180	manorhamiltonlibrary@leitrimcoco.ie	www.leitrimlibrary.ie	54.3036348404506697	-8.17420057061094774
198	Limerick City and County Library Service	608877	797020	Mohill Library	Castle St.	Mohill	Co. Leitrim	071-9631360	ekelly@leitrimcoco.ie   molibtmp@leitrimcoco.ie	www.leitrimlibrary.ie	53.9224633075686341	-7.86485648685257033
199	Limerick City and County Library Service	555762	658494	Caherdavin Library	The Community Centre	Caherdavin	Limerick	061 325496	info@LimerickCity.ie 	http://www.limerick.ie/council-service-group/libraries	52.6758015135168804	-8.65415212243178544
200	Limerick City and County Library Service	557869	657387	The Granary Library	The Granary	Michael Street	Limerick	061 407510	citylibrary@limerickcity.ie 	http://www.limerick.ie/council-service-group/libraries	52.6660202762812588	-8.62285624339883938
201	Limerick City and County Library Service	558290	655535	Roxboro Library	Thomond Shopping Centre	Roxboro	Limerick	061 417906	mobrien@limerickcity.ie	http://www.limerick.ie/council-service-group/libraries	52.6494080565046474	-8.61639848519632423
202	Limerick City and County Library Service	556847	658824	Watch House Cross Community Library	Watch House Cross	Limerick	\N	061-457726	pcusack@limerickcity.ie 	http://www.limerick.ie/council-service-group/libraries	52.678854801805663	-8.63815242620001023
203	Limerick City and County Library Service	511381	626492	Abbeyfeale Library	Bridge Street	Abbeyfeale	Co. Limerick	068 32488	abbeyfealelibrary@tinet.ie 	http://www.limerick.ie/council-service-group/libraries	52.3827993025448393	-9.30174789746828168
204	Limerick City and County Library Service	546441	646227	Adare Library	Main Street	Adare	Co. Limerick	061 396822	adarelibrary@excite.com 	http://www.limerick.ie/council-service-group/libraries	52.5647151357934987	-8.78998241823931892
205	Limerick City and County Library Service	534079	560408	Askeaton Library	Askeaton	Co. Limerick	\N	\N	askeatonlibrary@gmail.com	http://www.limerick.ie/council-service-group/libraries	51.7920657215510545	-8.95561788287618654
206	Limerick City and County Library Service	541483	636013	Ballingarry Library	Ballingarry	Co. Limerick	\N	\N	eileenballingarry@hotmail.com	http://www.limerick.ie/council-service-group/libraries	52.4724097644373586	-8.86130602341905593
207	Limerick City and County Library Service	533470	622007	Broadford Library	Broadford	Co. Limerick	\N	\N	libinfo@limerickcoco.ie	http://www.limerick.ie/council-service-group/libraries	52.3456198496362148	-8.97644734584432058
208	Limerick City and County Library Service	512483	635635	Caherconlish Library	Caherconlish	Co. Limerick	\N	\N	caherconlishlib@excite.ie	http://www.limerick.ie/council-service-group/libraries	52.4651360012552317	-9.28795725584870624
209	Limerick City and County Library Service	577274	651725	Cappamore Library	Cappamore	Co. Limerick	\N	\N	cappamorelib@yahoo.ie	http://www.limerick.ie/council-service-group/libraries	52.6162914785166222	-8.33559457095061873
210	Limerick City and County Library Service	556253	654432	Dooradoyle Library	The Crescent Shopping Centre	Dooradoyle	Co. Limerick	061 496526	margaretoreilly@limerickcoco.ie	http://www.limerick.ie/council-service-group/libraries	52.6393345346940222	-8.64635346736226928
211	Limerick City and County Library Service	537984	621222	Dromcollogher Library	Dromcollogher	Co. Limerick	\N	063 83011	dromcolib@eircom.net 	http://www.limerick.ie/council-service-group/libraries	52.3390936553080479	-8.9100608128801202
212	Limerick City and County Library Service	540016	626850	Feenagh Library	Feenagh	Co. Limerick	\N	\N	libinfo@limerickcoco.ie	http://www.limerick.ie/council-service-group/libraries	52.3899003976884785	-8.88125178445275765
213	Limerick City and County Library Service	525229	651540	Foynes Library	Main Street	Foynes	Co. Limerick	069 65365	foyneslib@eircom.net 	http://www.limerick.ie/council-service-group/libraries	52.6099595234439121	-9.10399942047034116
214	Limerick City and County Library Service	579962	627693	Galbally Library	Galbally	Co. Limerick	\N	\N	galballylib@gmail.com	http://www.limerick.ie/council-service-group/libraries	52.4003956786256992	-8.29445444666175113
215	Limerick City and County Library Service	512902	647358	Glin Library 	Glin	Co. Limerick	\N	\N	glinlib@eircom.net	http://www.limerick.ie/council-service-group/libraries	52.5705450307549498	-9.28486243926808008
216	Limerick City and County Library Service	570693	635576	Hospital Library	Hospital	Co. Limerick	\N	\N	hospitallib@gmail.com	http://www.limerick.ie/council-service-group/libraries	52.4708308601087339	-8.43134831317481215
217	Limerick City and County Library Service	567974	623108	Killfinane Library	Kilfinane	Co. Limerick	\N	063 91002	kilfinanelib@hotmail.com	http://www.limerick.ie/council-service-group/libraries	52.3586152851678435	-8.47017257644570698
218	Limerick City and County Library Service	560664	628147	Kilmallock Library	Kilmallock	Co. Limerick	\N	063 20306	kilmallocklib@limerickcoco.ie 	http://www.limerick.ie/council-service-group/libraries	52.4034298439929032	-8.57807624261528723
219	Limerick City and County Library Service	556270	654439	Limerick Studies	Lissanalta House	Dooradoyle Road	Limerick	061 49 65 40	limerickstudies@limerickcoco.ie 	http://www.limerick.ie/council-service-group/libraries	52.6393988164501678	-8.64610323999811037
220	Limerick City and County Library Service	528223	634151	Newcastlewest Library	Gortboy	Newcastlewest	Co. Limerick	069 62273	newcastlewest@excite.com 	http://www.limerick.ie/council-service-group/libraries	52.4540946887538766	-9.05604543739602441
221	Limerick City and County Library Service	541312	655012	Pallaskenry Library	Pallaskenry	Co. Limerick	\N	\N	libinfo@limerickcoco.ie	http://www.limerick.ie/council-service-group/libraries	52.6431373231910271	-8.86718292532777319
222	Limerick City and County Library Service	536238	641615	Rathkeale Library 	Rathkeale	Co. Limerick	\N	\N	rathkealelibrary@limerickcoco.ie	http://www.limerick.ie/council-service-group/libraries	52.5221678072700371	-8.93956849304826484
223	Limerick City and County Library Service	525463	647400	Shanagolden Library	Shanagolden	Co. Limerick	\N	\N	libinfo@limerickcoco.ie	http://www.limerick.ie/council-service-group/libraries	52.5727879043636221	-9.09961329899811844
224	Longford County Library Service	612908	811498	Ballymahon Library	The Court House	Ballymahon	Co. Longford	0906 432546	library@longfordcoco.ie	http://www.longfordlibrary.ie/	54.0524765152270348	-7.80287545152470408
225	Longford County Library Service	615201	785674	Drumlish Library	Mary St.	Drumlish	Co. Longford	043 24760	drumlishlibrary@longfordcoco.ie                                                                                                                                   	http://www.longfordlibrary.ie/	53.8203605478904805	-7.76914268099197169
226	Longford County Library Service	625767	771964	Edgeworthstown Library	Pound Street	Edgeworthstown	Co. Longford	043 71927	edgeworthstownlibrary@longfordcoco.ie 	http://www.longfordlibrary.ie/	53.6967450801403388	-7.60982386499119556
227	Longford County Library Service	633172	781000	Granard Library	Market House	Granard	Co. Longford	043 86164	granardlibrary@longfordcoco.ie 	http://www.longfordlibrary.ie/	53.7775248172908107	-7.49672901094496691
228	Longford County Library Service	600866	769110	Lanesboro Library	The Green	Lanesboro	Co. Longford	043 21291	lanesborolibrary@longfordcoco.ie 	http://www.longfordlibrary.ie/	53.6717325222027242	-7.98689441545731871
229	Longford County Library Service	613888	775461	Longford Branch & Library HQ	Town Centre	Longford	\N	043 40727	library@longfordcoco.ie 	http://www.longfordlibrary.ie/	53.7286210147843946	-7.78954262875587755
230	Louth County Library	695968	790894	Ardee Library	Market Square	Ardee	Co. Louth	041 6856080	bettycoyle@hotmail.com 	http://www.louthcoco.ie/en/Services/Library/	53.8586236040437427	-6.54115972859899664
231	Louth County Library	718671	811869	Carlingford Library	Newry Street	Carlingford	Co. Louth	042 9383020	carlib@unison.com 	http://www.louthcoco.ie/en/Services/Library/	54.0423213660233159	-6.18806492932241525
232	Louth County Library	708692	775121	Drogheda Library	Stockwell Lane	Drogheda	Co. Louth	041 9836649	droghedalibrary@louthcoco.ie	http://www.louthcoco.ie/en/Services/Library/	53.7144355690132969	-6.35337979597937519
233	Louth County Library	705020	807287	Dundalk Library & Library HQ	Roden Place	Dundalk	Co. Louth	042 9353190 / 9335457	libraryhelpdesk@louthcoco.ie	http://www.louthcoco.ie/en/Services/Library/	54.0041232263640865	-6.39798290411010484
234	Louth County Library	705396	788041	Dunleer Library	Station House	Dunleer	Co. Louth	041 6861270	murielsheils@yahoo.com 	http://www.louthcoco.ie/en/Services/Library/	53.8311687451293182	-6.39887900468338344
235	Mayo County Library	473257	799612	Achill Library	Achill Sound	Co. Mayo	\N	098 20910	pbriody@mayococo.ie	www.mayolibrary.ie	53.9303236412280995	-9.93001007446058104
236	Mayo County Library	524523	818953	Ballina Library	Pearse Street	Ballina	Co. Mayo	096 22180	bvarley@mayococo.ie	www.mayolibrary.ie	54.1140915270028486	-9.15437943792606035
237	Mayo County Library	519223	764393	Ballinrobe Library	Main Street	Ballinrobe	Co. Mayo	094 9541896	mfarragher@mayococo.ie 	www.mayolibrary.ie	53.6231159420428156	-9.22105838164286773
238	Mayo County Library	549496	779440	Ballyhaunis Library	Clare Street	Ballyhaunis	Co. Mayo	094 9630161	efreyne@mayococo.ie 	www.mayolibrary.ie	53.7621155401165822	-8.76594781929704325
239	Mayo County Library	470303	832193	Belmullet Library	Civic Centre	Belmullet	Co. Mayo	097 82374	khealy@mayococo.ie	www.mayolibrary.ie	54.2221845220806316	-9.98890638895077032
240	Mayo County Library	514578	790072	Castlebar Library & HQ	John Moore Road	Castlebar	Co. Mayo	094 904755	plmccart@mayococo.ie	www.mayolibrary.ie	53.8530802980274572	-9.29834668143990939
241	Mayo County Library	548076	801894	Charlestown Library	Dublin Road	Charlestown	Co. Mayo	094 9255934	ngannon@mayococo.ie	www.mayolibrary.ie	53.9637317795462153	-8.79127945240456476
243	Mayo County Library	534200	775197	Claremorris Library	Dalton Street	Claremorris	Co. Mayo	094 9371666	claremorrislib@mayococo.ie 	www.mayolibrary.ie	53.7222859053464177	-8.99699116779076391
244	Mayo County Library	513802	817540	Crossmolina Library	Ballina Street	Crossmolina	Co. Mayo	096 31939	mgallagh@mayococo.ie 	www.mayolibrary.ie	54.0997139374267491	-9.31790366463308217
245	Mayo County Library	527014	804042	Foxford Library	Chapel Road	Foxford	Co. Mayo	094 9256040	kjoyce@mayococo.ie 	www.mayolibrary.ie	53.9804879388448313	-9.1127041234269317
246	Mayo County Library	461971	774984	Inishturk Library	Community Centre	Inishturk	Co. Mayo	098 45778	\N	www.mayolibrary.ie	53.7062758021221285	-10.0907065819082487
247	Mayo County Library	544083	791652	Kilkelly Library 	Kilkelly	Co. Mayo	\N	094 9367785	dpower@mayococo.ie	www.mayolibrary.ie	53.8712905749882935	-8.85025061027438653
248	Mayo County Library	534334	789506	Kiltimagh Library	Aidan Street	Kiltimagh	Co. Mayo	094 938178	bwimsey@mayococo.ie 	www.mayolibrary.ie	53.8508677258785866	-8.99800789835919623
249	Mayo County Library	480651	780936	Louisburgh Library	Church Road	Louisburgh	Co. Mayo	098 66658	mkeane@mayococo.ie 	www.mayolibrary.ie	53.7643381752322895	-9.81022665258350557
250	Mayo County Library	537650	799799	Swinford Library	Bridge Street	Swinford	Co. Mayo	094 925206	aobrien@mayococo.ie 	www.mayolibrary.ie	53.9437574184798763	-8.94971327502890013
251	Mayo County Library	499683	784600	Westport Library	The Crescent	Westport	Co. Mayo	098 25747	westportlibrary@mayococo.ie	www.mayolibrary.ie	53.8012628277401248	-9.52287303126118445
252	Meath County Library	706111	752492	Ashbourne Library	1-2 Killegland Square Upper	Ashbourne	Co. Meath	046 9021134	ashbournelib@meathcoco.ie	www.meath.ie/library	53.511690124256269	-6.40016802045233657
253	Meath County Library	671491	764110	Athboy Library	Main Street	Athboy	Co. Meath	046 9432539	athboylib@meathcoco.ie 	www.meath.ie/library	53.6219227116507966	-6.91934834267175614
254	Meath County Library	704750	768516	Duleek Library	Main Street	Duleek	Co. Meath	041 9880709	duleeklib@meathcoco.ie 	www.meath.ie/library	53.655908715020189	-6.41530279652634494
255	Meath County Library	701569	742035	Dunboyne Library	Castle View	Dunboyne	Co. Meath	01 8251248	dunboynelib@meathcoco.ie 	www.meath.ie/library	53.4186458411280469	-6.47199806257063237
256	Meath County Library	696884	751983	Dunshaughlin Library	Main Street	Dunshaughlin	Co. Meath	01 8250504	dunshlib@meathcoco.ie 	www.meath.ie/library	53.5088977688589225	-6.53938844554968224
257	Meath County Library	674136	775942	Kells Library	Maudlin Street	Kells	Co. Meath	046 9241592	kellslib@meathcoco.ie 	www.meath.ie/library	53.7278621477687111	-6.8765498726321912
258	Meath County Library	686907	767536	Navan Library & County Library HQ	Railway Street	Navan	Co. Meath	046 9021134	navanlib@meathcoco.ie	www.meath.ie/library	53.6503720487467177	-6.68542616255343081
259	Meath County Library	682195	786697	Nobber Library	Main Street	Nobber	Co. Meath	046 9052732	nobberlibrary@meathcoco.ie	www.meath.ie/library	53.8232797046599742	-6.75159036754313657
260	Meath County Library	655112	779713	Oldcastle Library	Millbrook Road	Oldcastle	Co. Meath	049 8542084	oldcastlelib@meathcoco.ie 	www.meath.ie/library	53.7641016977417721	-7.16412600118604903
261	Meath County Library	675030	763609	Rathcairn	Ráth Cairn	Baile átha Buí	Co. Meath	046-9430929	rathcairnlib@meathcoco.ie	www.meath.ie/library	53.6169264893424611	-6.86598504275257593
262	Meath County Library	695866	774406	Slane Library	Castle Hill	Slane	Co. Meath	041 9824955	slanelib@meathcoco.ie 	www.meath.ie/library	53.7105247101895884	-6.5478341800060571
263	Meath County Library	680130	757929	Trim Library	Main Street	Trim	Co. Meath	046 9436014	trimlib@meathcoco.ie 	www.meath.ie/library	53.5651392046469184	-6.79037965253859532
264	Monaghan County Library	671687	820507	Ballybay Library	Main Street	Ballybay	Co. Monaghan	042-9441256	ballybaylibrary@monaghancoco.ie 	www.monaghan.ie	54.1285947568803891	-6.90320588031004867
265	Monaghan County Library	683969	803970	Carrickmacross Library	Market Square	Carrickmacross	Co. Monaghan	042-9661148	carrickmacrosslibrary@monaghancoco.ie 	www.monaghan.ie	53.9781744189289512	-6.71991806663168489
266	Monaghan County Library	682796	819168	Castleblayney Library	Iontas Arts Resource Centre	Conabury, Castleblayney	Co. Monaghan	042-09740281	castleblayneylibrary@monaghancoco.ie	www.monaghan.ie	54.1148975106140497	-6.7336504526058345
267	Monaghan County Library	650060	826080	Clones Library & County Library HQ	98 Avenue	Clones	Co. Monaghan	047-74712	cloneslibrary@monaghancoco.ie	www.monaghan.ie	54.1812273910124489	-7.23312902006387226
268	Monaghan County Library	667044	833855	Monaghan Library	North Road	Monaghan	Co. Monaghan	047-62585	moncolib@monaghancoco.ie	www.monaghan.ie	54.2491421761745443	-6.97125624610981642
269	Offaly County Library	600879	715518	Banagher Library	Moore’s Corner	Banagher	Co. Offaly	0509 51471	banagherlibrary@offalycoco.ie	http://www.offaly.ie/eng/Services/Libraries	53.190112004916962	-7.98684720862484543
270	Offaly County Library	606112	704825	Birr Library	Wilmer Road	Birr	Co. Offaly	0509 20961	birrlibrary@offalycoco.ie	http://www.offaly.ie/eng/Services/Libraries	53.0939772349841093	-7.90874791519882425
271	Offaly County Library	625474	732488	Clara Library	Clara	Co. Offaly	\N	0506 31389	claralibrary@offalycoco.ie	http://www.offaly.ie/eng/Services/Libraries	53.3420098542269514	-7.61746939875204188
272	Offaly County Library	647269	727659	Daingean Library	Main Street	Daingean	Co. Offaly	0506 53005	daingeanlibrary@offalycoco.ie	http://www.offaly.ie/eng/Services/Libraries	53.2971173335422677	-7.29092538610700203
273	Offaly County Library	663406	732931	Edenderry Library	J.K.L. Street	Edenderry	Co. Offaly	046 9731028	edenderrylibrary@offalycoco.ie	http://www.offaly.ie/eng/Services/Libraries	53.3428056330343097	-7.04783485369049068
274	Offaly County Library	611451	724381	Ferbane Library	Gallen	Ferbane	Co. Offaly	090 6454259 	ferbanelibrary@offalycoco.ie	http://www.offaly.ie/eng/Services/Libraries	53.2696418678417771	-7.82833672171308503
275	Offaly County Library	618029	713970	Kilcormac Library	Main Street	Kilcormac	Co. Offaly	050 935086	kilcormaclibrary@offalycoco.ie	http://www.offaly.ie/eng/Services/Libraries	53.1758953383487025	-7.73031453863200557
276	Offaly County Library	633923	725006	Tullamore Library & County Library HQ	O’Connor Square	Tullamore	Co. Offaly	0506 46832	tullamorelibrary@offalycoco.ie	http://www.offaly.ie/eng/Services/Libraries	53.2742977790818983	-7.49139940983824726
277	Roscommon County Library	561966	794895	Ballaghaderreen Library	Main Street	Ballaghaderreen	Co. Roscommon	094 9877044	ballaghaderreenlibrary@roscommoncoco.ie	http://www.roscommoncoco.ie/en/Services/Library/	53.9020491647109594	-8.57875041990612885
278	Roscommon County Library	581952	746690	Ballyforan Library	Ballyforan	Co. Roscommon	\N	090 6622397	\N	http://www.roscommoncoco.ie/en/Services/Library/	53.4699448035803968	-8.27183199906206212
279	Roscommon County Library	580208	802652	Boyle Library	King House	Boyle	Co. Roscommon	071 9662800	boylelibrary@roscommoncoco.ie	http://www.roscommoncoco.ie/en/Services/Library/	53.9727699317892942	-8.30167670194033036
280	Roscommon County Library	567800	779882	Castlerea Library	Main Street	Castlerea	Co. Roscommon	094 9620745	castlerealibrary@roscommoncoco.ie	http://www.roscommoncoco.ie/en/Services/Library/	53.7675395062960888	-8.48840819763400667
281	Roscommon County Library	587171	788511	Elphin Library	Main Street	Elphin	Co. Roscommon	071 9635775	ebllib@eircom.net 	http://www.roscommoncoco.ie/en/Services/Library/	53.845918137823503	-8.1949523985731112
282	Roscommon County Library	587138	764072	Roscommon Library & County Library HQ	Abbey Street	Roscommon	\N	0906 637274/3	roslib@roscommoncoco.ie	http://www.roscommoncoco.ie/en/Services/Library/	53.6263014995462157	-8.19443768538404171
283	Roscommon County Library	593220	780823	Strokestown Library	Bawn Street	Strokestown	Co. Roscommon	071 9634027	strokestownlibrary@roscommoncoco.ie	http://www.roscommoncoco.ie/en/Services/Library/	53.7769462943778507	-8.10286138110845577
284	Sligo County Library	566238	815786	Ballymote Library	Teeling Street, 	Ballymote	Co. Sligo.	071 9111669	sligolib@sligococo.ie 	http://www.sligolibrary.ie/sligolibrarynew/index.html	54.0900626823633317	-8.51606419504722467
285	Sligo County Library	569214	836113	County Library HQ & Local Studies	Westward Town Centre	Bridge Street	Sligo	071 9155060   	\N	http://www.sligolibrary.ie/sligolibrarynew/index.html	54.2728946229206173	-8.47265510716673553
286	Sligo County Library	528445	829666	Enniscrone Library	Pier Street	Enniscrone	Co. Sligo.	071 9637199	enniscronebranchlibrary@sligococo.ie	http://www.sligolibrary.ie/sligolibrarynew/index.html	54.2108979569465959	-9.09694992195911034
287	Sligo County Library	569212	836102	Sligo Central Library	Stephen Street	Sligo	\N	719147190	sligocentrallibrary@sligococo.ie	http://www.sligolibrary.ie/sligolibrarynew/index.html	54.2727956651062158	-8.47268468081531445
288	Sligo County Library	552310	812008	Tubbercurry Community Library	Humbert Street	Tubbercurry	Co. Sligo.	071 9120405	tubberlibrary@sligococo.ie	http://www.sligolibrary.ie/sligolibrarynew/index.html	54.0550156565134259	-8.72834797927322192
289	South Dublin County Libraries	713385	728055	Ballyroan Library	Orchardstown Avenue	Rathfarnham	Dublin 14	01 4941900	ballyroan@sdublincoco.ie	www.southdublinlibraries.ie	53.2906584031240911	-6.29932779587181724
290	South Dublin County Libraries	710528	728546	Castletymon Library	Castletymon Shopping Centre	Castletymon	Tallaght, Dublin 24	01 4524888	castletymon@sdublincoco.ie	www.southdublinlibraries.ie	53.2956723720709675	-6.34198947156253467
291	South Dublin County Libraries	707365	731255	Clondalkin Library	Monastery Road	Clondalkin	Dublin 22	01 4593315	clondalkin@sdublincoco.ie	www.southdublinlibraries.ie	53.3206584506416092	-6.38849986303601014
292	South Dublin County Libraries	708436	727676	County Library	County Hall	Tallaght	Dublin 24	01 4620073	talib@sdublincoco.ie	www.southdublinlibraries.ie	53.288288827553238	-6.3736541298217011
293	South Dublin County Libraries	708597	735204	John Jennings Library	Stewarts Hospital	Palmerstown	Dublin 20	01-6264444 (extn. 1129)   	\N	www.southdublinlibraries.ie	53.3558823421325386	-6.3686627280431658
294	South Dublin County Libraries	703018	734191	Lucan Library	Superquinn Shopping Centre	Lucan	County Dublin	01 6216422	lucan@sdublincoco.ie	www.southdublinlibraries.ie	53.3478977712445754	-6.45276534471911667
295	South Dublin County Libraries	713814	727029	Whitechurch Library 	Taylor’s Lane	Rathfarnham	Dublin 16	 	whitechurch@sdublincoco.ie	www.southdublinlibraries.ie	53.2813499152251069	-6.29326371431864384
296	Tipperary Joint Libraries Committee	591313	693701	Borrisokane Library	Fair Green	Borrisokane	Co. Tipperary	067 27199	info@tipperarylibraries.ie 	http://www.tipperarylibraries.ie/	52.9939661350294955	-8.12939698800694011
297	Tipperary Joint Libraries Committee	605158	624809	Cahir Library	The Square	Cahir	Co. Tipperary	052 42075	info@tipperarylibraries.ie 	http://www.tipperarylibraries.ie/	52.3748155807124647	-7.92424808874072539
298	Tipperary Joint Libraries Committee	640217	622072	Carrick-on-Suir Library	Fair Green	Carrick-on-Suir	Co. Tipperary	051 640591	info@tipperarylibraries.ie 	http://www.tipperarylibraries.ie/	52.3487641840683793	-7.40970593250721965
299	Tipperary Joint Libraries Committee	607814	640595	Cashel Library	Friar Street	Cashel	Co. Tipperary	062 63856	cashel@tipperarylibraries.ie	http://www.tipperarylibraries.ie/	52.5166731220459226	-7.88487204769024608
300	Tipperary Joint Libraries Committee	620478	622653	Clonmel Library	Emmet Street	Clonmel	Co. Tipperary	052 24545	clonmel@tipperarylibraries.ie	http://www.tipperarylibraries.ie/	52.3550784805695102	-7.69938770854408006
301	Tipperary Joint Libraries Committee	597037	688092	Cloughjordan Library	Main Street	Cloughjordan	Co. Tipperary	0505 42425	info@tipperarylibraries.ie 	http://www.tipperarylibraries.ie/	52.9436174771385382	-8.04408402766524944
302	Tipperary Joint Libraries Committee	622172	646401	Killenaule Library	Slieveardagh Centre, River Street	Killenaule	Co. Tipperary	052 56028	info@tipperarylibraries.ie 	http://www.tipperarylibraries.ie/	52.5684626493011038	-7.67294267030136279
303	Tipperary Joint Libraries Committee	586522	679559	Nenagh Library	O’Rahilly Street	Nenagh	Co. Tipperary	067 34404	nenagh@tipperarylibraries.ie	http://www.tipperarylibraries.ie/	52.8667657944042588	-8.20017359808183954
304	Tipperary Joint Libraries Committee	613480	689724	Roscrea Library	Birr Road	Roscrea	Co. Tipperary	0505 22032	roscrea@tipperarylibraries.ie 	http://www.tipperarylibraries.ie/	52.9581239907863193	-7.79937500410624107
305	Tipperary Joint Libraries Committee	611040	671707	Templemore Library	Old Mill Court	Templemore	Co. Tipperary	0504 32555	templemore@tipperarylibraries.ie	http://www.tipperarylibraries.ie/	52.7962501061822849	-7.83630060127125727
306	Tipperary Joint Libraries Committee	612869	658669	Thurles Library	The Source	Cathedral Street	Thurles, Co. Tipperary	0504 29720                	thurles@tipperarylibraries.ie	http://www.tipperarylibraries.ie/	52.6790266368761166	-7.80969167920568452
307	Tipperary Joint Libraries Committee	588850	636063	Tipperary Town Library	Davis Street	Tipperary Town	Co. Tipperary	062 51761	tipperary@tipperarylibraries.ie	http://www.tipperarylibraries.ie/	52.4758806601133188	-8.1641271456878286
308	Waterford City and County Libraries	662540	610980	Ardkeen Library	Ardkeen Shopping Centre	Dunmore Road	Waterford	051 849755	library@waterfordcity.ie 	http://www.waterfordcity.ie/library/iguana/www.main.cls?surl=WL	52.2469854462375309	-7.08415133969840838
309	Waterford City and County Libraries	658867	611359	Brown's Road Branch Library	Paddy Brown’s Road	Waterford	\N	051 860845	scummins@waterfordcity.ie	http://www.waterfordcity.ie/library/iguana/www.main.cls?surl=WL	52.2507967285223671	-7.13786667363869753
310	Waterford City and County Libraries	660685	612360	City Branch Library & Library HQ	Lady Lane	Waterford	\N	051 309975	sohiggins@waterfordcity.ie	http://www.waterfordcity.ie/library/iguana/www.main.cls?surl=WL	52.2595958053082228	-7.11106483350499552
311	Waterford City and County Libraries	610381	599438	Cappoquin Library	Cappoquin	Co. Waterford	\N	058 52263	cappoquinlibrary@waterforodcoco.ie 	http://www.waterfordcity.ie/library/iguana/www.main.cls?surl=WL	52.146693060273769	-7.84832183028249109
312	Waterford City and County Libraries	626140	593152	Dungarvan Central Library	Davitt’s Quay	Dungarvan	Co. Waterford	058 41231	dungarvanlibrary@waterfordcoco.ie 	http://www.waterfordcity.ie/library/iguana/www.main.cls?surl=WL	52.0896698941326974	-7.61855146374995762
313	Waterford City and County Libraries	668816	600157	Dunmore East Library	Fisherman’s Hall	Dunmore East	Co. Waterford	051 383211	dunmorelibrary@waterfordcoco.ie 	http://www.waterfordcity.ie/library/iguana/www.main.cls?surl=WL	52.1489673344943014	-6.99445664441351322
314	Waterford City and County Libraries	639237	606149	Kilmacthomas Library	Kilmacthomas	Co. Waterford	\N	051 294270	kilmacthomaslibrary@waterfordcoco.ie 	http://www.waterfordcity.ie/library/iguana/www.main.cls?surl=WL	52.2057176107991907	-7.42594144807593448
315	Waterford City and County Libraries	604447	598308	Lismore Branch Library	Ballyanchor Road	Lismore	Co. Waterford	058 54128	lismorelibrary@waterfordcoco.ie 	http://www.waterfordcity.ie/library/iguana/www.main.cls?surl=WL	52.1366153917295918	-7.93503897131540548
316	Waterford City and County Libraries	646473	615341	Portlaw Library	The Square	Portlaw	Co. Waterford	051 387402	portlawlibrary@waterfordcoco.ie 	http://www.waterfordcity.ie/library/iguana/www.main.cls?surl=WL	52.2877725820139005	-7.3188182074673227
317	Waterford City and County Libraries	599573	593406	Tallow Library	Tallow	Co. Waterford	\N	058 56347	tallowlibrary@waterfordcoco.ie 	http://www.waterfordcity.ie/library/iguana/www.main.cls?surl=WL	52.0925699979894503	-8.00623139984066512
318	Waterford City and County Libraries	657977	601352	Tramore Library	Market Street	Tramore	Co. Waterford	051 381479	tramorelibrary@waterfordcoco.ie 	http://www.waterfordcity.ie/library/iguana/www.main.cls?surl=WL	52.1609514875809239	-7.15261230517962954
319	Westmeath County Library	604171	741562	Athlone Library	Civic Centre	Athlone	Co. Westmeath	090 6442158 	athlib@westmeathcoco.ie	http://www.westmeathcoco.ie/en/ourservices/tourismartsrecreation/libraryservice/	53.4241533079443371	-7.93724559876398494
320	Westmeath County Library	630571	759402	Ballynacarrigy Library	2 Kilmurray's Corner	Ballynacarrigy	Co. Westmeath	044 9373882	bnclib@westmeathcoco.ie	http://www.westmeathcoco.ie/en/ourservices/tourismartsrecreation/libraryservice/	53.5836015644255852	-7.53831615591213122
321	Westmeath County Library	646279	770042	Castlepollard Library	Civic Offices,	Castlepollard	Co. Westmeath	044 9332199	cpdlib@westmeathcoco.ie	http://www.westmeathcoco.ie/en/ourservices/tourismartsrecreation/libraryservice/	53.6780602956502619	-7.29952801801685158
322	Westmeath County Library	633420	735453	Kilbeggan Library	The Square	Kilbeggan	Co. Westmeath	0506 9332001	killib@westmeathcoco.ie	http://www.westmeathcoco.ie/en/ourservices/tourismartsrecreation/libraryservice/	53.3682129195995145	-7.49783953628515132
323	Westmeath County Library	656659	751254	Killucan Library	Rathwire Hall	Killucan	Co. Westmeath	044 9374260	klnlib@westmeathcoco.ie	http://www.westmeathcoco.ie/en/ourservices/tourismartsrecreation/libraryservice/	53.5082179698316835	-7.14584715964967288
324	Westmeath County Library	618496	738422	Moate Library	Main Street,	Moate	Co. Westmeath	090 6481888	moatelib@westmeathcoco.ie 	http://www.westmeathcoco.ie/en/ourservices/tourismartsrecreation/libraryservice/	53.3956273160022263	-7.72190592949251275
325	Westmeath County Library	644372	753174	Mullingar Library	County Buildings, Mount Street,	Mullingar	Co. Westmeath	044 9332161	mgarlib@westmeathcoco.ie	http://www.westmeathcoco.ie/en/ourservices/tourismartsrecreation/libraryservice/	53.5266510623229266	-7.33079007393709414
326	Wexford County Library	690874	656859	Bunclody Library	Millwood, Carrigduff	Bunclody	Co. Wexford	053 9375466	bunclodylib@wexfordcoco.ie	http://www.wexford.ie/wex/Departments/Library/	52.655299560720735	-6.65684027721650562
327	Wexford County Library	697059	639734	Enniscorthy Library	Lymington Road	Enniscorthy	Co. Wexford	053 9236055	enniscorthylib@wexfordcoco.ie 	http://www.wexford.ie/wex/Departments/Library/	52.5003553611179754	-6.57046795126685801
328	Wexford County Library	715184	659321	Gorey Library	Civic Square, The Avenue,	Gorey	Co. Wexford	053 9421481	goreylib@wexfordcoco.ie	http://www.wexford.ie/wex/Departments/Library/	52.6728022755870811	-6.29682186286427825
329	Wexford County Library	672005	627491	New Ross Library	Barrack Lane	New Ross	Co. Wexford	051 421877	newrosslib@wexfordcoco.ie 	http://www.wexford.ie/wex/Departments/Library/	52.3942126427172923	-6.94203453481866006
330	Wexford County Library	704689	621935	Wexford Town Library	Malin Street	Wexford	Co. Wexford	053 9121637	libraryhq@wexfordcoco.ie 	http://www.wexford.ie/wex/Departments/Library/	52.3390190370496597	-6.46370181946206745
331	Wicklow County Library	724402	673496	Arklow Library	Main Street	Arklow	Co. Wicklow	0402 39977	eobyrne@wicklowcoco.ie	http://www.wicklow.ie/library-services	52.7981028621484398	-6.15522336786385527
332	Wicklow County Library	712835	679670	Aughrim Library	Aughrim	County Wicklow	\N	0402 36036	mcarty@wicklowcoco.ie	http://www.wicklow.ie/library-services	52.856111196076661	-6.32453531272318603
333	Wicklow County Library	720338	679995	Avoca Library	Avoca	County Wicklow	\N	0402 35022	library@wicklowcoco.ie 	http://www.wicklow.ie/library-services	52.8574069162860098	-6.21306205252799248
334	Wicklow County Library	725369	717037	Ballywaltrim Library	Boghall Road	Bray	Co. Wicklow	01 2723205	cbrennan@wicklowcoco.ie 	http://www.wicklow.ie/library-services	53.1889942065804107	-6.12401332422818623
335	Wicklow County Library	686940	688591	Baltinglass Library	Baltinglass	Co. Wicklow	\N	059 6482300	cwalshe@wicklowcoco.ie	http://www.wicklow.ie/library-services	52.9410715275389734	-6.70653759326084487
336	Wicklow County Library	697793	714028	Blessington Library	Blessington	Co. Wicklow	\N	045 891701	gmisstear@wicklowcoco.ie	http://www.wicklow.ie/library-services	53.1677424340703624	-6.53740487368101864
337	Wicklow County Library	726521	718719	Bray Library	Eglington Road	Bray	Co. Wicklow	01 2862600	fscannell@wicklowcoco.ie	http://www.wicklow.ie/library-services	53.203829743417451	-6.1061193962605067
338	Wicklow County Library	701474	663140	Carnew Library	Carnew	Co. Wicklow	\N	055 26088	lelliot@wicklowcoco.ie	http://www.wicklow.ie/library-services	52.7098545261195923	-6.49828801975462422
339	Wicklow County Library	687074	701671	Dunlavin Library	Market House	Dunlavin	Co. Wicklow	045 40110	mgreene@wicklowcoco.ie	http://www.wicklow.ie/library-services	53.0585755402298318	-6.70102147426278716
340	Wicklow County Library	722025	717511	Enniskerry Library	Enniskerry	Co. Wicklow	\N	01 2864339	pegbyrne@wicklowcoco.ie	http://www.wicklow.ie/library-services	53.194029132125678	-6.17384285078931594
341	Wicklow County Library	703570	673115	Greystones Library	Church Road	Greystones	Co. Wicklow	01 2873548	greylib@wicklowcoco.ie	http://www.wicklow.ie/library-services	52.7990790919942725	-6.46413178756440754
342	Wicklow County Library	731776	693855	Rathdrum Library	10 Gilbert’s Row	Rathdrum	Co. Wicklow	0404 43232	mgtbyrne@wicklowcoco.ie	http://www.wicklow.ie/library-services	52.9792252461359396	-6.03769727783989563
343	Wicklow County Library	703565	673115	Tinahely Library	The Court House	Tinahely	Co. Wicklow	0402 38080	mbarton@wicklowcoco.ie	http://www.wicklow.ie/library-services	52.7990800513665093	-6.46420590490970515
344	Wicklow County Library	730898	694529	Wicklow Family History Centre	Wicklow County Archives,\nWicklow County Council,\nStation Road,\n	Wicklow	Co. Wicklow	0404 20126 	wfh@eircom.net	http://www.wicklow.ie/library-services	52.9854943157854521	-6.05049085365604622
345	Wicklow County Library	731776	693855	Wicklow Library	Kilmantin Hill	Wicklow	\N	0404 67025	amurdiff@wicklowcoco.ie	http://www.wicklow.ie/library-services	52.9792252461359396	-6.03769727783989563
\.


--
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: erictheise
--

COPY spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- Name: ix_libraries_index; Type: INDEX; Schema: public; Owner: erictheise; Tablespace: 
--

CREATE INDEX ix_libraries_index ON libraries USING btree (index);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

