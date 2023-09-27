-- INSERT EN LAS TABLAS MASTER
USE Hotel_Realta;
GO

--REGION
SET IDENTITY_INSERT Master.Regions ON;
INSERT INTO Master.Regions (region_code, region_name) VALUES
('1','Asia'),
('2','Europa'),
('3','Norte America'),
('4','Sud America'),
('5','Africa'),
('6','Oceania');
SET IDENTITY_INSERT Master.Regions OFF;
GO

--COUNTRIES
SET IDENTITY_INSERT Master.Country ON;
INSERT INTO Master.country (country_id, country_name, country_region_id) VALUES	
(	1 ,	'	Afganist�n	',	1	),
(	2 ,	'	Arabia Saudita	',	1	),
(	3 ,	'	Armenia	',	1	),
(	4 ,	'	Azerbaij�n	',	1	),
(	5 ,	'	Bahrein	',	1	),
(	6 ,	'	Bangladesh	',	1	),
(	7 ,	'	Brunei	',	1	),
(	8 ,	'	But�n	',	1	),
(	9 ,	'	Emiratos Arabes Unidos	',	1	),
(	10 ,'	Filipinas	',	1	),
(	11 ,'	Georgia	',	1	),
(	12 ,'	India	',	1	),
(	13 ,'	Indonesia	',	1	),
(	14 ,'	Ir�n	',	1	),
(	15 ,'	Iraq	',	1	),
(	16 ,'	Israel	',	1	),
(	17 ,'	Jap�n	',	1	),
(	18 ,'	Jordania	',	1	),
(	19 ,'	Kampuchea	',	1	),
(	20 ,'	Kazakst�n	',	1	),
(	21 ,'	Kirguizist�n	',	1	),
(	22 ,'	Kuwait	',	1	),
(	23 ,'	Laos	',	1	),
(	24 ,'	L�bano	',	1	),
(	25 ,'	Malasia	',	1	),
(	26 ,'	Maldivas	',	1	),
(	27 ,'	Mongolia	',	1	),
(	28 ,'	Myanmar	',	1	),
(	29 ,'	Nepal	',	1	),
(	30 ,'	Om�n	',	1	),
(	31 ,'	Pakist�n	',	1	),
(	32 ,'	Palestina	',	1	),
(	33 ,'	Qatar	',	1	),
(	34 ,'	Rep�blica de Corea	',	1	),
(	35 ,'	R.P.D. de Corea	',	1	),
(	36 ,'	Singapur	',	1	),
(	37 ,'	Sri Lanka	',	1	),
(	38 ,'	Siria	',	1	),
(	39 ,'	Tadjikist�n	',	1	),
(	40 ,'	Tailandia	',	1	),
(	41 ,'	Timor Oriental	',	1	),
(	42 ,'	Turkmenist�n	',	1	),
(	43 ,'	T�rkiye	',	1	),
(	44 ,'	Vietnam	',	1	),
(	45 ,'	Yemen	',	1	),
(	46 ,'	Albania	',	2	),
(	47 ,'	Alemania	',	2	),
(	48 ,'	Andorra	',	2	),
(	49 ,'	Austria	',	2	),
(	50 ,'	B�lgica	',	2	),
(	51 ,'	Bielorusia	',	2	),
(	52 ,'	Bosnia y Herzegovina	',	2	),
(	53 ,'	Bulgaria	',	2	),
(	54 ,'	Checo	',	2	),
(	55 ,'	Chipre	',	2	),
(	56 ,'	Croacia	',	2	),
(	57 ,'	Dinamarca	',	2	),
(	58 ,'	Eslovaquia	',	2	),
(	59 ,'	Eslovenia	',	2	),
(	60 ,'	Espa�a	',	2	),
(	61 ,'	Estonia	',	2	),
(	62 ,'	Finlandia	',	2	),
(	63 ,'	Francia	',	2	),
(	64 ,'	Gran Breta�a	',	2	),
(	65 ,'	Grecia	',	2	),
(	66 ,'	Holanda	',	2	),
(	67 ,'	Hungr�a	',	2	),
(	68 ,'	Italia	',	2	),
(	69 ,'	Irlanda	',	2	),
(	70 ,'	Islandia	',	2	),
(	71 ,'	Letonia	',	2	),
(	72 ,'	Liechtenstein	',	2	),
(	73 ,'	Lituania	',	2	),
(	74 ,'	Luxemburgo	',	2	),
(	75 ,'	Macedonia	',	2	),
(	76 ,'	Moldavia	',	2	),
(	77 ,'	Malta	',	2	),
(	78 ,'	M�naco	',	2	),
(	79 ,'	Noruega	',	2	),
(	80 ,'	Polonia	',	2	),
(	81 ,'	Portugal	',	2	),
(	82 ,'	Rumania	',	2	),
(	83 ,'	Rusia	',	2	),
(	84 ,'	San Marino	',	2	),
(	85 ,'	Serbia y Montenegro	',	2	),
(	86 ,'	Suecia	',	2	),
(	87 ,'	Suiza	',	2	),
(	88 ,'	Ucrania	',	2	),
(	89 ,'	Uzbekist�n	',	2	),
(	90 ,'	Antigua y Barbuda	',	3	),
(	91 ,'	Bahamas	',	3	),
(	92 ,'	Barbados	',	3	),
(	93 ,'	Canad�	',	3	),
(	94 ,'	Costa Rica	',	3	),
(	95 ,'	Cuba	',	3	),
(	96 ,'	Dominica	',	3	),
(	97 ,'	Granda	',	3	),
(	98 ,'	Jamaica	',	3	),
(	99 ,'	Estados Unidos	',	3	),
(	100 ,'	M�xico	',	3	),
(	101 ,'	Panam�	',	3	),
(	102 ,'	Rep�blica Dominicana	',	3	),
(	103 ,'	Trinidad y Tobago	',	3	),
(	104 ,'	Argentina	',	4	),
(	105 ,'	Bolivia	',	4	),
(	106 ,'	Brasil	',	4	),
(	107 ,'	Chile	',	4	),
(	108 ,'	Colombia	',	4	),
(	109 ,'	Ecuador	',	4	),
(	110 ,'	Guyana	',	4	),
(	111 ,'	Per�	',	4	),
(	112 ,'	Surinam	',	4	),
(	113 ,'	Uruguay	',	4	),
(	114 ,'	Venezuela	',	4	),
(	115 ,'	Africa del Sur	',	5	),
(	116 ,'	Angola	',	5	),
(	117 ,'	Argelia	',	5	),
(	118 ,'	Benin	',	5	),
(	119 ,'	Botswana	',	5	),
(	120 ,'	Burundi	',	5	),
(	121 ,'	Cabo Verde	',	5	),
(	122 ,'	Camer�n	',	5	),
(	123 ,'	Comores	',	5	),
(	124 ,'	Congo(Kinshasa)	',	5	),
(	125 ,'	Costa de Marfil	',	5	),
(	126 ,'	Egipto	',	5	),
(	127 ,'	Eritrea	',	5	),
(	128 ,'	Etiop�a	',	5	),
(	129 ,'	Gab�n	',	5	),
(	130 ,'	Gambia	',	5	),
(	131 ,'	Ghana	',	5	),
(	132 ,'	Guinea--Bissau	',	5	),
(	133 ,'	Guinea Ecuatorial	',	5	),
(	134 ,'	Jibuti	',	5	),
(	135 ,'	Kenia	',	5	),
(	136 ,'	Lesotho	',	5	),
(	137 ,'	Libia	',	5	),
(	138 ,'	Liberia	',	5	),
(	139 ,'	Madagascar	',	5	),
(	140 ,'	Mal�	',	5	),
(	141 ,'	Mauricio	',	5	),
(	142 ,'	Mauritania	',	5	),
(	143 ,'	Marruecos	',	5	),
(	144 ,'	Mozambique	',	5	),
(	145 ,'	Namibia	',	5	),
(	146 ,'	Niger	',	5	),
(	147 ,'	Nigeria	',	5	),
(	148 ,'	Rep�blica de Africa Central	',	5	),
(	149 ,'	Rep�blica del Congo	',	5	),
(	150 ,'	Ruanda	',	5	),
(	151 ,'	Sao Tom� y Pr�ncipe	',	5	),
(	152 ,'	Senegal	',	5	),
(	153 ,'	Seychelles	',	5	),
(	154 ,'	Sierra Leona	',	5	),
(	155 ,'	Somalia	',	5	),
(	156 ,'	Sud�n	',	5	),
(	157 ,'	Tanzania	',	5	),
(	158 ,'	Togo	',	5	),
(	159 ,'	T�nez	',	5	),
(	160 ,'	Uganda	',	5	),
(	161 ,'	Zambia	',	5	),
(	162 ,'	Zimbabwe	',	5	),
(	163 ,'	Australia	',	6	),
(	164 ,'	Fiji	',	6	),
(	165 ,'	Islas de Cook	',	6	),
(	166 ,'	Kiribati	',	6	),
(	167 ,'	Micronesie	',	6	),
(	168 ,'	Nueva Zelanda	',	6	),
(	169 ,'	Pap�a Nueva Guinea	',	6	),
(	170 ,'	Samoa	',	6	),
(	171 ,'	Tonga	',	6	),
(	172 ,'	Vanuatu	',	6	);
SET IDENTITY_INSERT Master.Country OFF;
GO

--PROVINCIAS
SET IDENTITY_INSERT Master.Provinces ON;
INSERT INTO Master.provinces (prov_id, prov_name, prov_country_id) VALUES	
(	1 ,	'	Andaluc�a	 ',	60	),
(	2 ,	'	Arag�n	 ',	60	),
(	3 ,	'	Asturias	 ',	60	),
(	4 ,	'	Islas Baleares	 ',	60	),
(	5 ,	'	Canarias	 ',	60	),
(	6 ,	'	Cantabria	 ',	60	),
(	7 ,	'	Castilla-La Mancha	 ',	60	),
(	8 ,	'	Castilla y Le�n	 ',	60	),
(	9 ,	'	Catalu�a	 ',	60	),
(	10 ,	'	Extremadura	 ',	60	),
(	11 ,	'	Galicia	 ',	60	),
(	12 ,	'	Madrid (Comunidad de Madrid)	 ',	60	),
(	13 ,	'	Murcia (Regi�n de Murcia)	 ',	60	),
(	14 ,	'	Navarra (Comunidad Foral de Navarra)	 ',	60	),
(	15 ,	'	La Rioja	 ',	60	),
(	16 ,	'	Comunidad Valenciana	 ',	60	),
(	17 ,	'	Pa�s Vasco (Euskadi) Ciudades Aut�nomas:	 ',	60	),
(	18 ,	'	Ceuta	 ',	60	),
(	19 ,	'	Melilla	 ',	60	),
(	20 ,	'	Auvernia-R�dano-Alpes	 ',	63	),
(	21 ,	'	Borgo�a-Franco Condado	 ',	63	),
(	22 ,	'	Breta�a	 ',	63	),
(	23 ,	'	Centro-Valle del Loira	 ',	63	),
(	24 ,	'	C�rcega	 ',	63	),
(	25 ,	'	Gran Este	 ',	63	),
(	26 ,	'	Isla de Francia	 ',	63	),
(	27 ,	'	Altos de Francia	 ',	63	),
(	28 ,	'	Normand�a	 ',	63	),
(	29 ,	'	Nueva Aquitania	 ',	63	),
(	30 ,	'	Occitania	 ',	63	),
(	31 ,	'	Pa�ses del Loira	 ',	63	),
(	32 ,	'	Provenza-Alpes-Costa Azul	 ',	63	),
(	33 ,	'	Guayana Francesa	 ',	63	),
(	34 ,	'	Guadalupe	 ',	63	),
(	35 ,	'	Martinica	 ',	63	),
(	36 ,	'	Mayotte	 ',	63	),
(	37 ,	'	Reuni�n	 ',	63	),
(	38 ,	'	Aveiro	 ',	81	),
(	39 ,	'	Beja	 ',	81	),
(	40 ,	'	Braga	 ',	81	),
(	41 ,	'	Braganza	 ',	81	),
(	42 ,	'	Castelo Branco	 ',	81	),
(	43 ,	'	Coimbra	 ',	81	),
(	44 ,	'	�vora	 ',	81	),
(	45 ,	'	Faro	 ',	81	),
(	46 ,	'	Guarda	 ',	81	),
(	47 ,	'	Leiria	 ',	81	),
(	48 ,	'	Lisboa	 ',	81	),
(	49 ,	'	Portalegre	 ',	81	),
(	50 ,	'	Oporto	 ',	81	),
(	51 ,	'	Santar�m	 ',	81	),
(	52 ,	'	Set�bal	 ',	81	),
(	53 ,	'	Viana do Castelo	 ',	81	),
(	54 ,	'	Vila Real	 ',	81	),
(	55 ,	'	Viseu Regiones Aut�nomas:	 ',	81	),
(	56 ,	'	Azores (Regi�n Aut�noma de las Azores)	 ',	81	),
(	57 ,	'	Madeira (Regi�n Aut�noma de Madeira)	 ',	81	),
(	58 ,	'	Alberta	 ',	93	),
(	59 ,	'	Columbia Brit�nica	 ',	93	),
(	60 ,	'	Manitoba	 ',	93	),
(	61 ,	'	Nuevo Brunswick	 ',	93	),
(	62 ,	'	Terranova y Labrador	 ',	93	),
(	63 ,	'	Nueva Escocia	 ',	93	),
(	64 ,	'	Ontario	 ',	93	),
(	65 ,	'	Isla del Pr�ncipe Eduardo	 ',	93	),
(	66 ,	'	Quebec	 ',	93	),
(	67 ,	'	Saskatchewan Territorios:	 ',	93	),
(	68 ,	'	Territorios del Noroeste	 ',	93	),
(	69 ,	'	Nunavut	 ',	93	),
(	70 ,	'	Yuk�n	 ',	93	),
(	71 ,	'	Regi�n de la Capital Nacional (NCR) - Manila (Ciudad Aut�noma de Manila)	 ',	10	),
(	72 ,	'	Regi�n I - Ilocos	 ',	10	),
(	73 ,	'	Regi�n II - Cagay�n Valley	 ',	10	),
(	74 ,	'	Regi�n III - Regi�n de Luz�n Central	 ',	10	),
(	75 ,	'	Regi�n IV-A - CALABARZON	 ',	10	),
(	76 ,	'	Regi�n IV-B - MIMAROPA	 ',	10	),
(	77 ,	'	Regi�n V - Bicol	 ',	10	),
(	78 ,	'	Regi�n VI - Visayas Occidental	 ',	10	),
(	79 ,	'	Regi�n VII - Central Visayas	 ',	10	),
(	80 ,	'	Regi�n VIII - Visayas Orientales	 ',	10	),
(	81 ,	'	Regi�n IX - Pen�nsula de Zamboanga	 ',	10	),
(	82 ,	'	Regi�n X - Mindanao del Norte	 ',	10	),
(	83 ,	'	Regi�n XI - Davao	 ',	10	),
(	84 ,	'	Regi�n XII - Soccsksargen	 ',	10	),
(	85 ,	'	Regi�n XIII - Caraga	 ',	10	),
(	86 ,	'	Regi�n de la Cordillera Administrativa (CAR)	 ',	10	),
(	87 ,	'	Regi�n de Bangsamoro en la Regi�n Musulmana de Mindanao (BARMM)	 ',	10	),
(	88 ,	'	Matera	 ',	68	),
(	89 ,	'	Potenza	 ',	68	),
(	90 ,	'	Catanzaro	 ',	68	),
(	91 ,	'	Cosenza	 ',	68	),
(	92 ,	'	Crotone	 ',	68	),
(	93 ,	'	Reggio Calabria	 ',	68	),
(	94 ,	'	Vibbo Valentia	 ',	68	),
(	95 ,	'	Avellino	 ',	68	),
(	96 ,	'	Benevento	 ',	68	),
(	97 ,	'	Caserta	 ',	68	),
(	98 ,	'	N�poles	 ',	68	),
(	99 ,	'	Salerno	 ',	68	),
(	100 ,	'	Cagliari	 ',	68	),
(	101 ,	'	Nuoro	 ',	68	),
(	102 ,	'	Oristano	 ',	68	),
(	103 ,	'	Sassari	 ',	68	),
(	104 ,	'	Sud Sardegna	 ',	68	),
(	105 ,	'	Campobasso	 ',	68	),
(	106 ,	'	Isernia	 ',	68	),
(	107 ,	'	Bari	 ',	68	),
(	108 ,	'	Barletta-Andria-Trani	 ',	68	),
(	109 ,	'	Brindisi	 ',	68	),
(	110 ,	'	Lecce	 ',	68	),
(	111 ,	'	Foggia	 ',	68	),
(	112 ,	'	Tarento	 ',	68	),
(	113 ,	'	Agrigento	 ',	68	),
(	114 ,	'	Caltanissetta	 ',	68	),
(	115 ,	'	Catania	 ',	68	),
(	116 ,	'	Enna	 ',	68	),
(	117 ,	'	Messina	 ',	68	),
(	118 ,	'	Palermo	 ',	68	),
(	119 ,	'	Ragusa	 ',	68	),
(	120 ,	'	Siracusa	 ',	68	),
(	121 ,	'	Trapani	 ',	68	),
(	122 ,	'	San Jos�	 ',	94	),
(	123 ,	'	Alajuela	 ',	94	),
(	124 ,	'	Cartago	 ',	94	),
(	125 ,	'	Heredia	 ',	94	),
(	126 ,	'	Guanacaste	 ',	94	),
(	127 ,	'	Puntarenas	 ',	94	),
(	128 ,	'	Lim�n	 ',	94	),
(	129 ,	'	Pinar del R�o	 ',	95	),
(	130 ,	'	Artemisa	 ',	95	),
(	131 ,	'	La Habana (Municipio Especial)	 ',	95	),
(	132 ,	'	Mayabeque	 ',	95	),
(	133 ,	'	Matanzas	 ',	95	),
(	134 ,	'	Cienfuegos	 ',	95	),
(	135 ,	'	Villa Clara	 ',	95	),
(	136 ,	'	Sancti Sp�ritus	 ',	95	),
(	137 ,	'	Ciego de �vila	 ',	95	),
(	138 ,	'	Camag�ey	 ',	95	),
(	139 ,	'	Las Tunas	 ',	95	),
(	140 ,	'	Holgu�n	 ',	95	),
(	141 ,	'	Granma	 ',	95	),
(	142 ,	'	Santiago de Cuba	 ',	95	),
(	143 ,	'	Guant�namo	 ',	95	),
(	144 ,	'	Isla de la Juventud (Municipio Especial)	 ',	95	),
(	145 ,	'	Bocas del Toro	 ',	101	),
(	146 ,	'	Cocl�	 ',	101	),
(	147 ,	'	Col�n	 ',	101	),
(	148 ,	'	Chiriqu�	 ',	101	),
(	149 ,	'	Dari�n	 ',	101	),
(	150 ,	'	Herrera	 ',	101	),
(	151 ,	'	Los Santos	 ',	101	),
(	152 ,	'	Panam�	 ',	101	),
(	153 ,	'	Veraguas	 ',	101	),
(	154 ,	'	Panam� Oeste	 ',	101	),
(	155 ,	'	Buenos Aires	 ',	104	),
(	156 ,	'	Catamarca	 ',	104	),
(	157 ,	'	Chaco	 ',	104	),
(	158 ,	'	Chubut	 ',	104	),
(	159 ,	'	C�rdoba	 ',	104	),
(	160 ,	'	Corrientes	 ',	104	),
(	161 ,	'	Entre R�os	 ',	104	),
(	162 ,	'	Formosa	 ',	104	),
(	163 ,	'	Jujuy	 ',	104	),
(	164 ,	'	La Pampa	 ',	104	),
(	165 ,	'	La Rioja	 ',	104	),
(	166 ,	'	Mendoza	 ',	104	),
(	167 ,	'	Misiones	 ',	104	),
(	168 ,	'	Neuqu�n	 ',	104	),
(	169 ,	'	R�o Negro	 ',	104	),
(	170 ,	'	Salta	 ',	104	),
(	171 ,	'	San Juan	 ',	104	),
(	172 ,	'	San Luis	 ',	104	),
(	173 ,	'	Santa Cruz	 ',	104	),
(	174 ,	'	Santa Fe	 ',	104	),
(	175 ,	'	Santiago del Estero	 ',	104	),
(	176 ,	'	Tierra del Fuego, Ant�rtida e Islas del Atl�ntico Sur	 ',	104	),
(	177 ,	'	Tucum�n	 ',	104	),
(	178 ,	'	Azuay	 ',	109	),
(	179 ,	'	Bol�var	 ',	109	),
(	180 ,	'	Ca�ar	 ',	109	),
(	181 ,	'	Carchi	 ',	109	),
(	182 ,	'	Chimborazo	 ',	109	),
(	183 ,	'	Cotopaxi	 ',	109	),
(	184 ,	'	El Oro	 ',	109	),
(	185 ,	'	Esmeraldas	 ',	109	),
(	186 ,	'	Gal�pagos	 ',	109	),
(	187 ,	'	Guayas	 ',	109	),
(	188 ,	'	Imbabura	 ',	109	),
(	189 ,	'	Loja	 ',	109	),
(	190 ,	'	Los R�os	 ',	109	),
(	191 ,	'	Manab�	 ',	109	),
(	192 ,	'	Morona Santiago	 ',	109	),
(	193 ,	'	Napo	 ',	109	),
(	194 ,	'	Orellana	 ',	109	),
(	195 ,	'	Pastaza	 ',	109	),
(	196 ,	'	Pichincha	 ',	109	),
(	197 ,	'	Santa Elena	 ',	109	),
(	198 ,	'	Santo Domingo de los Ts�chilas	 ',	109	),
(	199 ,	'	Sucumb�os	 ',	109	),
(	200 ,	'	Tungurahua	 ',	109	),
(	201 ,	'	Zamora Chinchipe	 ',	109	),
(	202 ,	'	Amazonas	 ',	111	),
(	203 ,	'	�ncash	 ',	111	),
(	204 ,	'	Apur�mac	 ',	111	),
(	205 ,	'	Arequipa	 ',	111	),
(	206 ,	'	Ayacucho	 ',	111	),
(	207 ,	'	Cajamarca	 ',	111	),
(	208 ,	'	Callao (Provincia Constitucional)	 ',	111	),
(	209 ,	'	Cusco	 ',	111	),
(	210 ,	'	Huancavelica	 ',	111	),
(	211 ,	'	Hu�nuco	 ',	111	),
(	212 ,	'	Ica	 ',	111	),
(	213 ,	'	Jun�n	 ',	111	),
(	214 ,	'	La Libertad	 ',	111	),
(	215 ,	'	Lambayeque	 ',	111	),
(	216 ,	'	Lima	 ',	111	),
(	217 ,	'	Loreto	 ',	111	),
(	218 ,	'	Madre de Dios	 ',	111	),
(	219 ,	'	Moquegua	 ',	111	),
(	220 ,	'	Pasco	 ',	111	),
(	221 ,	'	Piura	 ',	111	),
(	222 ,	'	Puno	 ',	111	),
(	223 ,	'	San Mart�n	 ',	111	),
(	224 ,	'	Tacna	 ',	111	),
(	225 ,	'	Tumbes	 ',	111	),
(	226 ,	'	Ucayali	 ',	111	),
(	227 ,	'	OROPEZA	 ',	105	),
(	228 ,	'	J.A. DE PADILLA	 ',	105	),
(	229 ,	'	J. ZUDA�EZ	 ',	105	),
(	230 ,	'	TOMINA	 ',	105	),
(	231 ,	'	H. SILES	 ',	105	),
(	232 ,	'	YAMPAR�EZ	 ',	105	),
(	233 ,	'	NOR CINTI	 ',	105	),
(	234 ,	'	B. BOETO	 ',	105	),
(	235 ,	'	S. CINTI	 ',	105	),
(	236 ,	'	L. CALVO	 ',	105	),
(	237 ,	'	P.D. MURILLO	 ',	105	),
(	238 ,	'	OMASUYOS	 ',	105	),
(	239 ,	'	PACAJES	 ',	105	),
(	240 ,	'	E. CAMACHO	 ',	105	),
(	241 ,	'	MU�ECAS	 ',	105	),
(	242 ,	'	LARECAJA	 ',	105	),
(	243 ,	'	F. TAMAYO	 ',	105	),
(	244 ,	'	INGAVI	 ',	105	),
(	245 ,	'	LOAYZA	 ',	105	),
(	246 ,	'	INQUISIVI	 ',	105	),
(	247 ,	'	S. YUNGAS	 ',	105	),
(	248 ,	'	LOS ANDES	 ',	105	),
(	249 ,	'	AROMA	 ',	105	),
(	250 ,	'	N. YUNGAS	 ',	105	),
(	251 ,	'	A. ITURRALDE	 ',	105	),
(	252 ,	'	B. SAAVEDRA	 ',	105	),
(	253 ,	'	M. KAPAC	 ',	105	),
(	254 ,	'	G. VILLARROEL	 ',	105	),
(	255 ,	'	J.M. PANDO	 ',	105	),
(	256 ,	'	CARANAVI	 ',	105	),
(	257 ,	'	Alejandr�a	 ',	126	),
(	258 ,	'	Asu�n	 ',	126	),
(	259 ,	'	Asyut	 ',	126	),
(	260 ,	'	Beheira	 ',	126	),
(	261 ,	'	Beni Suef	 ',	126	),
(	262 ,	'	Cairo	 ',	126	),
(	263 ,	'	Dakahlia	 ',	126	),
(	264 ,	'	Damietta	 ',	126	),
(	265 ,	'	Fayoum	 ',	126	),
(	266 ,	'	Gharbia	 ',	126	),
(	267 ,	'	Giza	 ',	126	),
(	268 ,	'	Ismailia	 ',	126	),
(	269 ,	'	Kafr El Sheikh	 ',	126	),
(	270 ,	'	Luxor	 ',	126	),
(	271 ,	'	Matruh	 ',	126	),
(	272 ,	'	Menoufia	 ',	126	),
(	273 ,	'	Minya	 ',	126	),
(	274 ,	'	Nortd Sinai	 ',	126	),
(	275 ,	'	Nueva Vallee	 ',	126	),
(	276 ,	'	Port Said	 ',	126	),
(	277 ,	'	Qalyubia	 ',	126	),
(	278 ,	'	Qena	 ',	126	),
(	279 ,	'	Red Sea	 ',	126	),
(	280 ,	'	Sharqia	 ',	126	),
(	281 ,	'	Sohag	 ',	126	),
(	282 ,	'	South Sinai	 ',	126	),
(	283 ,	'	Suez	 ',	126	),
(	284 ,	'	Alaotra-Mangoro	 ',	1	),
(	285 ,	'	Amoroni Mania	 ',	1	),
(	286 ,	'	Analamanga	 ',	1	),
(	287 ,	'	Analanjirofo	 ',	1	),
(	288 ,	'	Androy	 ',	1	),
(	289 ,	'	Anosy	 ',	1	),
(	290 ,	'	Atsimo-Andrefana	 ',	1	),
(	291 ,	'	Atsimo-Atsinanana	 ',	1	),
(	292 ,	'	Atsinanana	 ',	1	),
(	293 ,	'	Betsiboka	 ',	1	),
(	294 ,	'	Boeny	 ',	1	),
(	295 ,	'	Bongolava	 ',	1	),
(	296 ,	'	Diana	 ',	1	),
(	297 ,	'	Haute Matsiatra	 ',	1	),
(	298 ,	'	Ihorombe	 ',	1	),
(	299 ,	'	Itasy	 ',	1	),
(	300 ,	'	Melaky	 ',	1	),
(	301 ,	'	Menabe	 ',	1	),
(	302 ,	'	Sava	 ',	1	),
(	303 ,	'	Sofia	 ',	1	),
(	304 ,	'	Vakinankaratra	 ',	1	),
(	305 ,	'	Vatovavy-Fitovinany	 ',	1	),
(	306 ,	'	Riyadh	 ',	2	),
(	307 ,	'	Makkah	 ',	2	),
(	308 ,	'	Al-Madinah	 ',	2	),
(	309 ,	'	Al-Qassim	 ',	2	),
(	310 ,	'	Oriental	 ',	2	),
(	311 ,	'	Asir	 ',	2	),
(	312 ,	'	Hail	 ',	2	),
(	313 ,	'	Tabuk	 ',	2	),
(	314 ,	'	Al-Jawf	 ',	2	),
(	315 ,	'	Al-Bahah	 ',	2	),
(	316 ,	'	Northern Border	 ',	2	),
(	317 ,	'	Jizan	 ',	2	),
(	318 ,	'	Najran	 ',	2	),
(	319 ,	'	Aragatsotn	 ',	3	),
(	320 ,	'	Ararat	 ',	3	),
(	321 ,	'	Armavir	 ',	3	),
(	322 ,	'	Gegharkunik	 ',	3	),
(	323 ,	'	Kotayk	 ',	3	),
(	324 ,	'	Lorri	 ',	3	),
(	325 ,	'	Shirak	 ',	3	),
(	326 ,	'	Syunik	 ',	3	),
(	327 ,	'	Tavush	 ',	3	),
(	328 ,	'	Vayots Dzor	 ',	3	),
(	329 ,	'	Yerevan	 ',	3	),
(	330 ,	'	Aceh	 ',	13	),
(	331 ,	'	Bali	 ',	13	),
(	332 ,	'	Banten	 ',	13	),
(	333 ,	'	Bengkulu	 ',	13	),
(	334 ,	'	Gorontalo	 ',	13	),
(	335 ,	'	Jakarta	 ',	13	),
(	336 ,	'	Jambi	 ',	13	),
(	337 ,	'	Java Central	 ',	13	),
(	338 ,	'	Java Occidental	 ',	13	),
(	339 ,	'	Java Oriental	 ',	13	),
(	340 ,	'	Kalimantan Central	 ',	13	),
(	341 ,	'	Kalimantan del Este	 ',	13	),
(	342 ,	'	Kalimantan Occidental	 ',	13	),
(	343 ,	'	Kalimantan Sur	 ',	13	),
(	344 ,	'	Kepulauan Bangka Belitung	 ',	13	),
(	345 ,	'	Lampung	 ',	13	),
(	346 ,	'	Maluku	 ',	13	),
(	347 ,	'	Maluku del Norte	 ',	13	),
(	348 ,	'	Nusa Tenggara Occidental	 ',	13	),
(	349 ,	'	Nusa Tenggara Oriental	 ',	13	),
(	350 ,	'	Pap�a	 ',	13	),
(	351 ,	'	Pap�a Occidental	 ',	13	),
(	352 ,	'	Riau	 ',	13	),
(	353 ,	'	Riau Islands	 ',	13	),
(	354 ,	'	Sulawesi Central	 ',	13	),
(	355 ,	'	Sulawesi del Norte	 ',	13	),
(	356 ,	'	Sulawesi del Sur	 ',	13	),
(	357 ,	'	Sulawesi Sudeste	 ',	13	),
(	358 ,	'	Sulawesi Tenggara	 ',	13	),
(	359 ,	'	Sumatra Central	 ',	13	),
(	360 ,	'	Sumatra del Norte	 ',	13	),
(	361 ,	'	Sumatra Occidental	 ',	13	),
(	362 ,	'	Sumatra Sur	 ',	13	),
(	363 ,	'	Yakarta Occidental	 ',	13	),
(	364 ,	'	Alborz	 ',	14	),
(	365 ,	'	Azerbaiy�n Este	 ',	14	),
(	366 ,	'	Azerbaiy�n Occidental	 ',	14	),
(	367 ,	'	Bushehr	 ',	14	),
(	368 ,	'	Charmahal y Bajtiar	 ',	14	),
(	369 ,	'	Fars	 ',	14	),
(	370 ,	'	Golest�n	 ',	14	),
(	371 ,	'	Guil�n	 ',	14	),
(	372 ,	'	Hamad�n	 ',	14	),
(	373 ,	'	Hormozg�n	 ',	14	),
(	374 ,	'	Ilam	 ',	14	),
(	375 ,	'	Isfah�n	 ',	14	),
(	376 ,	'	Kerm�n	 ',	14	),
(	377 ,	'	Joras�n del Norte	 ',	14	),
(	378 ,	'	Joras�n del Razavi	 ',	14	),
(	379 ,	'	Joras�n del Sur	 ',	14	),
(	380 ,	'	Juzest�n	 ',	14	),
(	381 ,	'	Kermanshah	 ',	14	),
(	382 ,	'	Kohkiluyeh y Buyer Ahmad	 ',	14	),
(	383 ,	'	Kurdistan	 ',	14	),
(	384 ,	'	Lorestan	 ',	14	),
(	385 ,	'	Markaz�	 ',	14	),
(	386 ,	'	Mazandar�n	 ',	14	),
(	387 ,	'	Qazv�n	 ',	14	),
(	388 ,	'	Qom	 ',	14	),
(	389 ,	'	Semn�n	 ',	14	),
(	390 ,	'	Sist�n y Baluchist�n	 ',	14	),
(	391 ,	'	Teher�n	 ',	14	),
(	392 ,	'	Yazd	 ',	14	),
(	393 ,	'	Zanjan	 ',	14	),
(	394 ,	'	Joras�n del Sur	 ',	14	),
(	395 ,	'	Banteay Meanchey	 ',	19	),
(	396 ,	'	Battambang	 ',	19	),
(	397 ,	'	Kampong Cham	 ',	19	),
(	398 ,	'	Kampong Chhnang	 ',	19	),
(	399 ,	'	Kampong Speu	 ',	19	),
(	400 ,	'	Kampong Thom	 ',	19	),
(	401 ,	'	Kampong Trach (Kep)	 ',	19	),
(	402 ,	'	Kampot	 ',	19	),
(	403 ,	'	Kandal	 ',	19	),
(	404 ,	'	Koh Kong	 ',	19	),
(	405 ,	'	Kratie	 ',	19	),
(	406 ,	'	Mondulkiri	 ',	19	),
(	407 ,	'	Oddar Meanchey	 ',	19	),
(	408 ,	'	Pailin	 ',	19	),
(	409 ,	'	Phnom Penh (Municipalidad)	 ',	19	),
(	410 ,	'	Preah Sihanouk	 ',	19	),
(	411 ,	'	Preah Vihear	 ',	19	),
(	412 ,	'	Prey Veng	 ',	19	),
(	413 ,	'	Pursat	 ',	19	),
(	414 ,	'	Ratanakiri	 ',	19	),
(	415 ,	'	Siem Reap	 ',	19	),
(	416 ,	'	Stung Treng	 ',	19	),
(	417 ,	'	Svay Rieng	 ',	19	),
(	418 ,	'	Tbong Khmum	 ',	19	),
(	419 ,	'	Takeo	 ',	19	),
(	420 ,	'	Akmolinskaya	 ',	20	),
(	421 ,	'	Aktobinskaya	 ',	20	),
(	422 ,	'	Almatinskaya	 ',	20	),
(	423 ,	'	Atyrauskaya	 ',	20	),
(	424 ,	'	East Kazakhstan	 ',	20	),
(	425 ,	'	Jambyl	 ',	20	),
(	426 ,	'	Karaganda	 ',	20	),
(	427 ,	'	Kostanay	 ',	20	),
(	428 ,	'	Kyzylorda	 ',	20	),
(	429 ,	'	Mangystau	 ',	20	),
(	430 ,	'	Pavlodar	 ',	20	),
(	431 ,	'	North Kazakhstan	 ',	20	),
(	432 ,	'	Turkestan	 ',	20	),
(	433 ,	'	West Kazakhstan	 ',	20	),
(	434 ,	'	Batken	 ',	21	),
(	435 ,	'	Chuy	 ',	21	),
(	436 ,	'	Jalal-Abad	 ',	21	),
(	437 ,	'	Naryn	 ',	21	),
(	438 ,	'	Osh	 ',	21	),
(	439 ,	'	Talas	 ',	21	),
(	440 ,	'	Ysyk-K�l	 ',	21	),
(	441 ,	'	Attapeu	 ',	23	),
(	442 ,	'	Bokeo	 ',	23	),
(	443 ,	'	Bolikhamxai	 ',	23	),
(	444 ,	'	Champasak	 ',	23	),
(	445 ,	'	Houaphanh	 ',	23	),
(	446 ,	'	Khammouane	 ',	23	),
(	447 ,	'	Luang Namtha	 ',	23	),
(	448 ,	'	Luang Prabang	 ',	23	),
(	449 ,	'	Oudomxay	 ',	23	),
(	450 ,	'	Phongsaly	 ',	23	),
(	451 ,	'	Salavan	 ',	23	),
(	452 ,	'	Savannakhet	 ',	23	),
(	453 ,	'	Sekong	 ',	23	),
(	454 ,	'	Vientiane (Vienti�n)	 ',	23	),
(	455 ,	'	Xaisomboun	 ',	23	),
(	456 ,	'	Xekong	 ',	23	),
(	457 ,	'	Xiangkhouang	 ',	23	),
(	458 ,	'	Xiengkhuang	 ',	23	),
(	459 ,	'	Arhangay	 ',	27	),
(	460 ,	'	Bayan-�lgiy	 ',	27	),
(	461 ,	'	Bayanhongor	 ',	27	),
(	462 ,	'	Bulgan	 ',	27	),
(	463 ,	'	Darhan-Uul	 ',	27	),
(	464 ,	'	Dornod	 ',	27	),
(	465 ,	'	Dornogovi	 ',	27	),
(	466 ,	'	Dundgovi	 ',	27	),
(	467 ,	'	Govi-Altai	 ',	27	),
(	468 ,	'	Govis�mber	 ',	27	),
(	469 ,	'	Hentiy	 ',	27	),
(	470 ,	'	H�vsg�l	 ',	27	),
(	471 ,	'	Omnogovi	 ',	27	),
(	472 ,	'	Orhon	 ',	27	),
(	473 ,	'	�v�rhangay	 ',	27	),
(	474 ,	'	Selenge	 ',	27	),
(	475 ,	'	S�khbaatar	 ',	27	),
(	476 ,	'	T�v	 ',	27	),
(	477 ,	'	Ulaanbaatar	 ',	27	),
(	478 ,	'	Uvs	 ',	27	),
(	479 ,	'	Zavkhan	 ',	27	),
(	480 ,	'	Bagmati	 ',	29	),
(	481 ,	'	Gandaki	 ',	29	),
(	482 ,	'	Karnali	 ',	29	),
(	483 ,	'	Lumbini	 ',	29	),
(	484 ,	'	Sudurpashchim	 ',	29	),
(	485 ,	'	Koshi	 ',	29	),
(	486 ,	'	Sagarmatha	 ',	29	),
(	487 ,	'	Punyab	 ',	31	),
(	488 ,	'	Sindh	 ',	31	),
(	489 ,	'	Khyber Pakhtunkhwa	 ',	31	),
(	490 ,	'	Baluchist�n	 ',	31	),
(	491 ,	'	Ad Dawhah	 ',	33	),
(	492 ,	'	Al Daayen	 ',	33	),
(	493 ,	'	Al Khor	 ',	33	),
(	494 ,	'	Al Rayyan	 ',	33	),
(	495 ,	'	Al Shamal	 ',	33	),
(	496 ,	'	Al Wakrah	 ',	33	),
(	497 ,	'	Al-Shahaniya	 ',	33	),
(	498 ,	'	Umm Salal	 ',	33	),
(	499 ,	'	Gyeonggi	 ',	34	),
(	500 ,	'	Gangwon	 ',	34	),
(	501 ,	'	Chungcheong del Norte	 ',	34	),
(	502 ,	'	Chungcheong del Sur	 ',	34	),
(	503 ,	'	Jeolla del Norte	 ',	34	),
(	504 ,	'	Jeolla del Sur	 ',	34	),
(	505 ,	'	Gyeongsang del Norte	 ',	34	),
(	506 ,	'	Gyeongsang del Sur	 ',	34	),
(	507 ,	'	Jeju	 ',	34	),
(	508 ,	'	Central	 ',	37	),
(	509 ,	'	Este	 ',	37	),
(	510 ,	'	Norte	 ',	37	),
(	511 ,	'	Noroeste	 ',	37	),
(	512 ,	'	Sabaragamuwa	 ',	37	),
(	513 ,	'	Sur	 ',	37	),
(	514 ,	'	Uva	 ',	37	),
(	515 ,	'	Oeste	 ',	37	),
(	516 ,	'	Occidental Norte	 ',	37	),
(	517 ,	'	Alepo (Aleppo)	 ',	38	),
(	518 ,	'	Rif Dimashq (Regi�n de Damasco)	 ',	38	),
(	519 ,	'	Daraa (Dara)	 ',	38	),
(	520 ,	'	Deir ez-Zor	 ',	38	),
(	521 ,	'	Hama	 ',	38	),
(	522 ,	'	Homs	 ',	38	),
(	523 ,	'	Idlib	 ',	38	),
(	524 ,	'	Latakia	 ',	38	),
(	525 ,	'	Quneitra	 ',	38	),
(	526 ,	'	Raqqa	 ',	38	),
(	527 ,	'	Suwayda (As-Suwayda)	 ',	38	),
(	528 ,	'	Tartus	 ',	38	),
(	529 ,	'	Al-Hasakah	 ',	38	),
(	530 ,	'	Al-Qamishli	 ',	38	),
(	531 ,	'	Amnat Charoen	 ',	40	),
(	532 ,	'	Ang Thong	 ',	40	),
(	533 ,	'	Bangkok	 ',	40	),
(	534 ,	'	Bueng Kan	 ',	40	),
(	535 ,	'	Buri Ram	 ',	40	),
(	536 ,	'	Chachoengsao	 ',	40	),
(	537 ,	'	Chai Nat	 ',	40	),
(	538 ,	'	Chaiyaphum	 ',	40	),
(	539 ,	'	Chanthaburi	 ',	40	),
(	540 ,	'	Chiang Mai	 ',	40	),
(	541 ,	'	Chiang Rai	 ',	40	),
(	542 ,	'	Chonburi	 ',	40	),
(	543 ,	'	Chumphon	 ',	40	),
(	544 ,	'	Kalasin	 ',	40	),
(	545 ,	'	Kamphaeng Phet	 ',	40	),
(	546 ,	'	Kanchanaburi	 ',	40	),
(	547 ,	'	Khon Kaen	 ',	40	),
(	548 ,	'	Krabi	 ',	40	),
(	549 ,	'	Lampang	 ',	40	),
(	550 ,	'	Lamphun	 ',	40	),
(	551 ,	'	Loei	 ',	40	),
(	552 ,	'	Lop Buri	 ',	40	),
(	553 ,	'	Mae Hong Son	 ',	40	),
(	554 ,	'	Maha Sarakham	 ',	40	),
(	555 ,	'	Mukdahan	 ',	40	),
(	556 ,	'	Nakhon Nayok	 ',	40	),
(	557 ,	'	Nakhon Pathom	 ',	40	),
(	558 ,	'	Nakhon Phanom	 ',	40	),
(	559 ,	'	Nakhon Ratchasima	 ',	40	),
(	560 ,	'	Nakhon Sawan	 ',	40	),
(	561 ,	'	Nakhon Si Thammarat	 ',	40	),
(	562 ,	'	Nan	 ',	40	),
(	563 ,	'	Narathiwat	 ',	40	),
(	564 ,	'	Nong Bua Lamphu	 ',	40	),
(	565 ,	'	Nong Khai	 ',	40	),
(	566 ,	'	Nonthaburi	 ',	40	),
(	567 ,	'	Pathum Thani	 ',	40	),
(	568 ,	'	Pattani	 ',	40	),
(	569 ,	'	Phang Nga	 ',	40	),
(	570 ,	'	Phatthalung	 ',	40	),
(	571 ,	'	Phayao	 ',	40	),
(	572 ,	'	Phetchabun	 ',	40	),
(	573 ,	'	Phetchaburi	 ',	40	),
(	574 ,	'	Phichit	 ',	40	),
(	575 ,	'	Phitsanulok	 ',	40	),
(	576 ,	'	Phra Nakhon Si Ayutthaya	 ',	40	),
(	577 ,	'	Phrae	 ',	40	),
(	578 ,	'	Phuket	 ',	40	),
(	579 ,	'	Prachinburi	 ',	40	),
(	580 ,	'	Prachuap Khiri Khan	 ',	40	),
(	581 ,	'	Ranong	 ',	40	),
(	582 ,	'	Ratchaburi	 ',	40	),
(	583 ,	'	Rayong	 ',	40	),
(	584 ,	'	Roi Et	 ',	40	),
(	585 ,	'	Sa Kaeo	 ',	40	),
(	586 ,	'	Sakon Nakhon	 ',	40	),
(	587 ,	'	Samut Prakan	 ',	40	),
(	588 ,	'	Samut Sakhon	 ',	40	),
(	589 ,	'	Samut Songkhram	 ',	40	),
(	590 ,	'	Saraburi	 ',	40	),
(	591 ,	'	Satun	 ',	40	),
(	592 ,	'	Sing Buri	 ',	40	),
(	593 ,	'	Sisaket	 ',	40	),
(	594 ,	'	Songkhla	 ',	40	),
(	595 ,	'	Sukhothai	 ',	40	),
(	596 ,	'	Suphan Buri	 ',	40	),
(	597 ,	'	Surat Thani	 ',	40	),
(	598 ,	'	Surin	 ',	40	),
(	599 ,	'	Tak	 ',	40	),
(	600 ,	'	Trang	 ',	40	),
(	601 ,	'	Trat	 ',	40	),
(	602 ,	'	Ubon Ratchathani	 ',	40	),
(	603 ,	'	Udon Thani	 ',	40	),
(	604 ,	'	Uthai Thani	 ',	40	),
(	605 ,	'	Uttaradit	 ',	40	),
(	606 ,	'	Yala	 ',	40	);
SET IDENTITY_INSERT Master.Provinces OFF;
GO

--ADDRESS
SET IDENTITY_INSERT Master.address ON;
INSERT INTO Master.address (addr_id, addr_line1, addr_line2, addr_city, addr_postal_code, addr_spatial_location, addr_prov_id) VALUES
(1, 'Calle de la Alhambra 123', 'Urbanizaci�n Sierra Nevada', 'Granada', '18001', 'POINT(37.1773 -3.5976)', 1),
(2, 'Paseo de la Independencia 45', NULL, 'Zaragoza', '50001', 'POINT(41.6560 -0.8773)', 2),
(3, 'Calle de la Playa 10', NULL, 'Gij�n', '33201', 'POINT(43.5453 -5.6614)', 3),
(4, 'Calle del Albaic�n 20', NULL, 'Granada', '18010', 'POINT(37.1891 -3.5898)', 1),
(5, 'Avenida de la Palmera 15', NULL, 'Sevilla', '41013', 'POINT(37.3583 -5.9683)', 1),
(6, 'Calle de la Playa 30', NULL, 'M�laga', '29016', 'POINT(36.7172 -4.4216)', 1),
(7, 'Paseo de la Independencia 75', NULL, 'Zaragoza', '50008', 'POINT(41.6500 -0.8877)', 2),
(8, 'Calle Mayor 40', NULL, 'Huesca', '22002', 'POINT(42.1401 -0.4087)', 2),
(9, 'Plaza de la Catedral 5', NULL, 'Teruel', '44001', 'POINT(40.3421 -1.1072)', 2),
(10, 'Calle de la Playa 5', NULL, 'Gij�n', '33202', 'POINT(43.5437 -5.6626)', 3),
(11, 'Avenida de Oviedo 30', NULL, 'Oviedo', '33005', 'POINT(43.3614 -5.8565)', 3),
(12, 'Calle del Puerto 8', NULL, 'Avil�s', '33401', 'POINT(43.5567 -5.9257)', 3),
(13, 'Carrer de la Mar 10', NULL, 'Palma de Mallorca', '07001', 'POINT(39.5696 2.6502)', 4),
(14, 'Carrer de Sant Miquel 20', NULL, 'Ibiza', '07800', 'POINT(38.9125 1.4351)', 4),
(15, 'Carrer de Sant Jaume 15', NULL, 'Menorca', '07701', 'POINT(40.0022 3.8387)', 4),
(16, 'Calle de las Palmas 1', NULL, 'Las Palmas de Gran Canari', '35001', 'POINT(28.1006 -15.4147)', 5),
(17, 'Calle de Tenerife 5', NULL, 'Santa Cruz de Tenerife', '38001', 'POINT(28.4636 -16.2518)', 5),
(18, 'Calle de Lanzarote 8', NULL, 'Arrecife', '35500', 'POINT(28.9631 -13.5475)', 5),
(19, 'Calle del Sardinero 15', NULL, 'Santander', '39004', 'POINT(43.4641 -3.8006)', 6),
(20, 'Avenida de Bilbao 30', NULL, 'Torrelavega', '39300', 'POINT(43.3471 -4.0466)', 6),
(21, 'Calle de los Picos de Europa 5', NULL, 'Laredo', '39770', 'POINT(43.4125 -3.4151)', 6),
(22, 'Avenida de la Mancha 25', NULL, 'Toledo', '45001', 'POINT(39.8650 -4.0249)', 7),
(23, 'Calle de Don Quijote 10', NULL, 'Ciudad Real', '13001', 'POINT(38.9897 -3.9272)', 7),
(24, 'Plaza del Greco 8', NULL, 'Albacete', '02001', 'POINT(38.9923 -1.8560)', 7),
(25, 'Calle del Cid 35', NULL, 'Valladolid', '47001', 'POINT(41.6528 -4.7243)', 8),
(26, 'Calle de la Plater�a 12', NULL, 'Le�n', '24001', 'POINT(42.5987 -5.5668)', 8),
(27, 'Plaza Mayor 20', NULL, 'Salamanca', '37002', 'POINT(40.9634 -5.6684)', 8),
(28, 'Rambla de Catalunya 50', NULL, 'Barcelona', '08007', 'POINT(41.3902 2.1649)', 9),
(29, 'Carrer de Girona 15', NULL, 'Girona', '17002', 'POINT(41.9834 2.8235)', 9),
(30, 'Pla�a de la Vila 8', NULL, 'Tarragona', '43003', 'POINT(41.1167 1.2540)', 9),
(31, 'Calle del Conquistador 12', NULL, 'C�ceres', '10001', 'POINT(39.4750 -6.3756)', 10),
(32, 'Calle del Puente Real 30', NULL, 'Badajoz', '06001', 'POINT(38.8784 -6.9699)', 10),
(33, 'Plaza Mayor 5', NULL, 'M�rida', '06800', 'POINT(38.9189 -6.3433)', 10),
(34, 'R�a de la Orz�n 25', NULL, 'A Coru�a', '15003', 'POINT(43.3678 -8.4014)', 11),
(35, 'R�a do Franco 40', NULL, 'Santiago de Compostela', '15702', 'POINT(42.8805 -8.5440)', 11),
(36, 'R�a da Ra��a 8', NULL, 'Lugo', '27001', 'POINT(43.0109 -7.5525)', 11),
(37, 'Paseo de la Castellana 100', NULL, 'Madrid', '28046', 'POINT(40.4476 -3.6860)', 12),
(38, 'Calle Mayor 50', NULL, 'Alcal� de Henares', '28801', 'POINT(40.4811 -3.3640)', 12),
(39, 'Avenida de Espa�a 15', NULL, 'Fuenlabrada', '28941', 'POINT(40.2870 -3.7994)', 12),
(40, 'Calle Traper�a 20', NULL, 'Murcia', '30001', 'POINT(37.9874 -1.1296)', 13),
(41, 'Avenida Libertad 35', NULL, 'Cartagena', '30203', 'POINT(37.6000 -0.9810)', 13),
(42, 'Calle Mayor 10', NULL, 'Lorca', '30800', 'POINT(37.6777 -1.6981)', 13),
(43, 'Avenida de Carlos III 30', NULL, 'Pamplona', '31003', 'POINT(42.8171 -1.6418)', 14),
(44, 'Calle de San Nicol�s 12', NULL, 'Tudela', '31500', 'POINT(42.0619 -1.6079)', 14),
(45, 'Plaza del Castillo 5', NULL, 'Estella-Lizarra', '31200', 'POINT(42.6704 -1.8140)', 14),
(46, 'Calle Laurel 25', NULL, 'Logro�o', '26001', 'POINT(42.4657 -2.4475)', 15),
(47, 'Avenida de la Paz 8', NULL, 'Calahorra', '26500', 'POINT(42.3113 -1.9645)', 15),
(48, 'Calle del Ebro 12', NULL, 'Haro', '26200', 'POINT(42.5802 -2.8044)', 15),
(49, 'Carrer de Col�n 50', NULL, 'Valencia', '46004', 'POINT(39.4666 -0.3734)', 16),
(50, 'Avinguda del Mar 15', NULL, 'Alicante', '03002', 'POINT(38.3452 -0.4866)', 16),
(51, 'Carrer de les Barques 8', NULL, 'Castell�n de la Plana', '12001', 'POINT(39.9876 -0.0389)', 16),
(52, 'Paseo de la Concha 10', NULL, 'San Sebasti�n', '20007', 'POINT(43.3183 -1.9845)', 17),
(53, 'Calle de la Alameda 25', NULL, 'Bilbao', '48001', 'POINT(43.2630 -2.9249)', 17),
(54, 'Plaza Mayor 8', NULL, 'Vitoria-Gasteiz', '01001', 'POINT(42.8467 -2.6716)', 17),
(55, 'Calle Real 15', NULL, 'Ceuta', '51001', 'POINT(35.8884 -5.3099)', 18),
(56, 'Avenida de �frica 20', NULL, 'Ceuta', '51002', 'POINT(35.8907 -5.3195)', 18),
(57, 'Calle Real 30', NULL, 'Ceuta', '51003', 'POINT(35.8917 -5.3246)', 18),
(58, 'Paseo de las Rosas 5', NULL, 'Melilla', '52001', 'POINT(35.2817 -2.9442)', 19),
(59, 'Calle de la Pur�sima 15', NULL, 'Melilla', '52002', 'POINT(35.2893 -2.9384)', 19),
(60, 'Avenida Juan Carlos I 25', NULL, 'Melilla', '52003', 'POINT(35.2810 -2.9440)', 19),
(61, 'Via Roma 10', NULL, 'Matera', '75100', 'POINT(40.6667 16.6115)', 88),
(62, 'Corso Vittorio Emanuele 45', NULL, 'Matera', '75100', 'POINT(40.6672 16.6096)', 88),
(63, 'Viale della Libert� 22', NULL, 'Matera', '75100', 'POINT(40.6675 16.6104)', 88),
(64, 'Via Nazionale 5', NULL, 'Matera', '75100', 'POINT(40.6678 16.6137)', 88),
(65, 'Via Marconi 30', NULL, 'Matera', '75100', 'POINT(40.6679 16.6135)', 88),
(66, 'Via Garibaldi 18', NULL, 'Potenza', '85100', 'POINT(40.6444 15.8089)', 89),
(67, 'Corso Vittorio Veneto 25', NULL, 'Potenza', '85100', 'POINT(40.6431 15.8054)', 89),
(68, 'Viale dei Pini 7', NULL, 'Potenza', '85100', 'POINT(40.6455 15.8051)', 89),
(69, 'Via Napoli 12', NULL, 'Potenza', '85100', 'POINT(40.6459 15.8038)', 89),
(70, 'Via Mazzini 3', NULL, 'Potenza', '85100', 'POINT(40.6462 15.8056)', 89),
(71, 'Via Roma 5', NULL, 'Catanzaro', '88100', 'POINT(38.9019 16.5827)', 90),
(72, 'Corso Mazzini 12', NULL, 'Catanzaro', '88100', 'POINT(38.9014 16.5889)', 90),
(73, 'Viale dei Pini 20', NULL, 'Catanzaro', '88100', 'POINT(38.9007 16.5912)', 90),
(74, 'Via Nazionale 8', NULL, 'Catanzaro', '88100', 'POINT(38.9021 16.5851)', 90),
(75, 'Via Marconi 15', NULL, 'Catanzaro', '88100', 'POINT(38.9004 16.5837)', 90),
(76, 'Via Roma 30', NULL, 'Cosenza', '87100', 'POINT(39.2971 16.2550)', 91),
(77, 'Corso Mazzini 5', NULL, 'Cosenza', '87100', 'POINT(39.2992 16.2568)', 91),
(78, 'Viale dei Pini 14', NULL, 'Cosenza', '87100', 'POINT(39.2985 16.2531)', 91),
(79, 'Via Napoli 22', NULL, 'Cosenza', '87100', 'POINT(39.2998 16.2536)', 91),
(80, 'Via Marconi 8', NULL, 'Cosenza', '87100', 'POINT(39.2975 16.2559)', 91),
(81, 'Via Roma 12', NULL, 'Crotone', '88900', 'POINT(39.0855 17.1227)', 92),
(82, 'Corso Mazzini 3', NULL, 'Crotone', '88900', 'POINT(39.0852 17.1210)', 92),
(83, 'Viale dei Pini 8', NULL, 'Crotone', '88900', 'POINT(39.0848 17.1239)', 92),
(84, 'Via Napoli 19', NULL, 'Crotone', '88900', 'POINT(39.0861 17.1245)', 92),
(85, 'Via Marconi 6', NULL, 'Crotone', '88900', 'POINT(39.0849 17.1224)', 92),
(86, 'Via Roma 25', NULL, 'Reggio Calabria', '89100', 'POINT(38.1115 15.6470)', 93),
(87, 'Corso Mazzini 7', NULL, 'Reggio Calabria', '89100', 'POINT(38.1098 15.6515)', 93),
(88, 'Viale dei Pini 16', NULL, 'Reggio Calabria', '89100', 'POINT(38.1137 15.6532)', 93),
(89, 'Via Napoli 28', NULL, 'Reggio Calabria', '89100', 'POINT(38.1106 15.6461)', 93),
(90, 'Via Marconi 10', NULL, 'Reggio Calabria', '89100', 'POINT(38.1118 15.6495)', 93),
(91, 'Via Roma 8', NULL, 'Vibo Valentia', '89900', 'POINT(38.6717 16.1015)', 94),
(92, 'Corso Mazzini 1', NULL, 'Vibo Valentia', '89900', 'POINT(38.6725 16.1052)', 94),
(93, 'Viale dei Pini 10', NULL, 'Vibo Valentia', '89900', 'POINT(38.6710 16.1030)', 94),
(94, 'Via Napoli 15', NULL, 'Vibo Valentia', '89900', 'POINT(38.6728 16.1004)', 94),
(95, 'Via Marconi 4', NULL, 'Vibo Valentia', '89900', 'POINT(38.6714 16.1055)', 94),
(96, 'Via Roma 14', NULL, 'Avellino', '83100', 'POINT(40.9147 14.7941)', 95),
(97, 'Corso Mazzini 4', NULL, 'Avellino', '83100', 'POINT(40.9152 14.7928)', 95),
(98, 'Viale dei Pini 12', NULL, 'Avellino', '83100', 'POINT(40.9158 14.7947)', 95),
(99, 'Via Napoli 23', NULL, 'Avellino', '83100', 'POINT(40.9142 14.7916)', 95),
(100, 'Via Marconi 8', NULL, 'Avellino', '83100', 'POINT(40.9157 14.7910)', 95),
(101, 'Via Roma 20', NULL, 'Benevento', '82100', 'POINT(41.1299 14.7852)', 96),
(102, 'Corso Mazzini 9', NULL, 'Benevento', '82100', 'POINT(41.1291 14.7821)', 96),
(103, 'Viale dei Pini 18', NULL, 'Benevento', '82100', 'POINT(41.1285 14.7868)', 96),
(104, 'Via Napoli 32', NULL, 'Benevento', '82100', 'POINT(41.1306 14.7836)', 96),
(105, 'Via Marconi 12', NULL, 'Benevento', '82100', 'POINT(41.1300 14.7855)', 96),
(106, 'Via Roma 19', NULL, 'Caserta', '81100', 'POINT(41.0839 14.3320)', 97),
(107, 'Corso Mazzini 8', NULL, 'Caserta', '81100', 'POINT(41.0831 14.3331)', 97),
(108, 'Viale dei Pini 20', NULL, 'Caserta', '81100', 'POINT(41.0825 14.3312)', 97),
(109, 'Via Napoli 31', NULL, 'Caserta', '81100', 'POINT(41.0845 14.3316)', 97),
(110, 'Via Marconi 14', NULL, 'Caserta', '81100', 'POINT(41.0836 14.3319)', 97),
(111, 'Via Roma 25', NULL, 'N�poles', '80100', 'POINT(40.8522 14.2681)', 98),
(112, 'Corso Mazzini 11', NULL, 'N�poles', '80100', 'POINT(40.8529 14.2690)', 98),
(113, 'Viale dei Pini 22', NULL, 'N�poles', '80100', 'POINT(40.8525 14.2665)', 98),
(114, 'Via Napoli 39', NULL, 'N�poles', '80100', 'POINT(40.8536 14.2673)', 98),
(115, 'Via Marconi 16', NULL, 'N�poles', '80100', 'POINT(40.8531 14.2668)', 98),
(116, 'Via Roma 28', NULL, 'Salerno', '84100', 'POINT(40.6821 14.7699)', 99),
(117, 'Corso Mazzini 15', NULL, 'Salerno', '84100', 'POINT(40.6818 14.7708)', 99),
(118, 'Viale dei Pini 24', NULL, 'Salerno', '84100', 'POINT(40.6825 14.7715)', 99),
(119, 'Via Napoli 45', NULL, 'Salerno', '84100', 'POINT(40.6829 14.7702)', 99),
(120, 'Via Marconi 20', NULL, 'Salerno', '84100', 'POINT(40.6824 14.7701)', 99),
(121, 'Via Cavour 10', NULL, 'Cagliari', '09100', 'POINT(39.2224 9.1152)', 100),
(122, 'Viale Diaz 15', NULL, 'Cagliari', '09100', 'POINT(39.2205 9.1167)', 100),
(123, 'Via Garibaldi 22', NULL, 'Cagliari', '09100', 'POINT(39.2241 9.1195)', 100),
(124, 'Piazza Roma 31', NULL, 'Cagliari', '09100', 'POINT(39.2217 9.1134)', 100),
(125, 'Via Mameli 8', NULL, 'Cagliari', '09100', 'POINT(39.2233 9.1161)', 100),
(126, 'Via Roma 12', NULL, 'Nuoro', '08100', 'POINT(40.3183 9.3290)', 101),
(127, 'Viale Diaz 25', NULL, 'Nuoro', '08100', 'POINT(40.3172 9.3306)', 101),
(128, 'Via Garibaldi 33', NULL, 'Nuoro', '08100', 'POINT(40.3189 9.3277)', 101),
(129, 'Piazza Roma 42', NULL, 'Nuoro', '08100', 'POINT(40.3167 9.3284)', 101),
(130, 'Via Mameli 15', NULL, 'Nuoro', '08100', 'POINT(40.3181 9.3315)', 101),
(131, 'Via Roma 8', NULL, 'Oristano', '09170', 'POINT(39.9039 8.5861)', 102),
(132, 'Viale Diaz 17', NULL, 'Oristano', '09170', 'POINT(39.9032 8.5850)', 102),
(133, 'Via Garibaldi 25', NULL, 'Oristano', '09170', 'POINT(39.9027 8.5873)', 102),
(134, 'Piazza Roma 36', NULL, 'Oristano', '09170', 'POINT(39.9021 8.5844)', 102),
(135, 'Via Mameli 11', NULL, 'Oristano', '09170', 'POINT(39.9036 8.5877)', 102),
(136, 'Via Roma 14', NULL, 'Sassari', '07100', 'POINT(40.7259 8.5540)', 103),
(137, 'Viale Diaz 21', NULL, 'Sassari', '07100', 'POINT(40.7265 8.5528)', 103),
(138, 'Via Garibaldi 30', NULL, 'Sassari', '07100', 'POINT(40.7243 8.5539)', 103),
(139, 'Piazza Roma 47', NULL, 'Sassari', '07100', 'POINT(40.7271 8.5522)', 103),
(140, 'Via Mameli 18', NULL, 'Sassari', '07100', 'POINT(40.7250 8.5561)', 103),
(141, 'Via Roma 20', NULL, 'Cagliari', '09010', 'POINT(39.0903 8.7064)', 104),
(142, 'Viale Diaz 33', NULL, 'Carbonia', '09013', 'POINT(39.1707 8.5221)', 104),
(143, 'Via Garibaldi 40', NULL, 'Villacidro', '09039', 'POINT(39.5321 8.6577)', 104),
(144, 'Piazza Roma 55', NULL, 'Iglesias', '09016', 'POINT(39.3111 8.5369)', 104),
(145, 'Via Mameli 21', NULL, 'Samassi', '09018', 'POINT(39.3712 8.6503)', 104),
(146, 'Via Roma 26', NULL, 'Campobasso', '86100', 'POINT(41.5612 14.6649)', 105),
(147, 'Viale Diaz 37', NULL, 'Termoli', '86039', 'POINT(41.9981 14.9895)', 105),
(148, 'Via Garibaldi 45', NULL, 'Larino', '86035', 'POINT(41.9211 14.8636)', 105),
(149, 'Piazza Roma 61', NULL, 'Trivento', '86028', 'POINT(41.7024 14.7413)', 105),
(150, 'Via Mameli 24', NULL, 'Guglionesi', '86034', 'POINT(41.8968 14.8472)', 105),
(151, 'Via Roma 32', NULL, 'Isernia', '86100', 'POINT(41.5893 14.2252)', 106),
(152, 'Viale Diaz 42', NULL, 'Agnone', '86081', 'POINT(41.8758 14.2230)', 106),
(153, 'Via Garibaldi 50', NULL, 'Venafro', '86079', 'POINT(41.4545 14.1111)', 106),
(154, 'Piazza Roma 73', NULL, 'Castelnuovo del Volturno', '86084', 'POINT(41.7541 14.1776)', 106),
(155, 'Via Mameli 27', NULL, 'Pesche', '86090', 'POINT(41.5899 14.3304)', 106),
(156, 'Via Roma 38', NULL, 'Bari', '70100', 'POINT(41.1171 16.8719)', 107),
(157, 'Viale Diaz 49', NULL, 'Barletta', '70051', 'POINT(41.3110 16.2863)', 107),
(158, 'Via Garibaldi 55', NULL, 'Andria', '76123', 'POINT(41.2269 16.2963)', 107),
(159, 'Piazza Roma 88', NULL, 'Trani', '76125', 'POINT(41.2744 16.4167)', 107),
(160, 'Via Mameli 30', NULL, 'Bitonto', '70032', 'POINT(41.1066 16.6942)', 107),
(161, 'Calle Juan Jaramillo 123', NULL, 'Cuenca', '10101', 'POINT(-2.9006 -79.0059)', 26),
(162, 'Av. de las Am�ricas 456', 'Edificio Los P�jaros', 'Cuenca', '10102', 'POINT(-2.9041 -79.0039)', 26),
(163, 'Av. Remigio Crespo 789', 'Suite 202', 'Cuenca', '10103', 'POINT(-2.8999 -79.0142)', 26),
(164, 'Av. Juan Montalvo 321', NULL, 'Guaranda', '20201', 'POINT(-1.6098 -79.0052)', 27),
(165, 'Calle 9 de Octubre 456', NULL, 'San Miguel', '20202', 'POINT(-1.7456 -78.8789)', 27),
(166, 'Av. Bol�var 789', 'Edificio Los P�jaros', 'Caluma', '20203', 'POINT(-1.7542 -78.7891)', 27),
(167, 'Av. Eloy Alfaro 123', NULL, 'Azogues', '30301', 'POINT(-2.7386 -78.8506)', 28),
(168, 'Calle Sucre 456', 'Piso 2', 'Bibli�n', '30302', 'POINT(-2.8647 -78.6752)', 28),
(169, 'Av. 24 de Mayo 789', NULL, 'Ca�ar', '30303', 'POINT(-2.5606 -78.9067)', 28),


(170, 'Av. 10 de Agosto 123', NULL, 'Tulc�n', '40401', 'POINT(0.8150 -77.7179)', 29),
(171, 'Calle Bol�var 456', NULL, 'Espejo', '40402', 'POINT(0.9515 -77.8022)', 29),
(172, 'Av. Quito 789', NULL, 'Mont�far', '40403', 'POINT(0.3912 -77.5243)', 29),


(173, 'Av. 5 de Junio 123', NULL, 'Riobamba', '50501', 'POINT(-1.6629 -78.6505)', 30),
(174, 'Calle Maldonado 456', NULL, 'Guano', '50502', 'POINT(-1.5960 -78.6339)', 30),
(175, 'Av. La Libertad 789', NULL, 'Colta', '50503', 'POINT(-1.9421 -78.6401)', 30),


(176, 'Av. Amazonas 123', NULL, 'Latacunga', '60601', 'POINT(-0.9334 -78.6145)', 31),
(177, 'Calle Sucre 456', 'Piso 3', 'La Man�', '60602', 'POINT(-1.2639 -79.2207)', 31),
(178, 'Av. 24 de Mayo 789', NULL, 'Saquisil�', '60603', 'POINT(-0.8256 -78.7086)', 31),


(179, 'Av. Machala 123', NULL, 'Machala', '70701', 'POINT(-3.2584 -79.9553)', 32),
(180, 'Calle Olmedo 456', NULL, 'Santa Rosa', '70702', 'POINT(-3.4504 -79.9593)', 32),
(181, 'Av. Zaruma 789', NULL, 'Pasaje', '70703', 'POINT(-3.3310 -79.8045)', 32),


(182, 'Av. 15 de Abril 123', NULL, 'Esmeraldas', '80801', 'POINT(0.9592 -79.6539)', 33),
(183, 'Calle Sucre 456', 'Local 1', 'Atacames', '80802', 'POINT(0.8604 -79.8475)', 33),
(184, 'Av. Los Almendros 789', NULL, 'San Lorenzo', '80803', 'POINT(1.1452 -78.6315)', 33),


(185, 'Av. Charles Darwin 123', NULL, 'Puerto Baquerizo Moreno', '90901', 'POINT(-0.8989 -89.6095)', 34),
(186, 'Calle Baltra 456', NULL, 'Santa Cruz', '90902', 'POINT(-0.7425 -90.3122)', 34),
(187, 'Av. Seymour 789', NULL, 'Isabela', '90903', 'POINT(0.9519 -91.0244)', 34),


(188, 'Av. 9 de Octubre 123', NULL, 'Guayaquil', '90101', 'POINT(-2.2018 -79.8978)', 35),
(189, 'Calle Numa Pompilio Llona 456', NULL, 'Daule', '90102', 'POINT(-1.8702 -79.9641)', 35),
(190, 'Av. Francisco de Orellana 789', 'Oficina 2', 'Samborond�n', '90103', 'POINT(-2.1960 -79.8806)', 35),


(191, 'Av. 17 de Julio 123', NULL, 'Ibarra', '10101', 'POINT(0.3540 -78.1185)', 36),
(192, 'Calle Juan Montalvo 456', NULL, 'Otavalo', '10102', 'POINT(0.2167 -78.2622)', 36),
(193, 'Av. Mariano Acosta 789', NULL, 'Cotacachi', '10103', 'POINT(0.3077 -78.2636)', 36),


(194, 'Av. Universitaria 123', NULL, 'Loja', '11101', 'POINT(-4.0057 -79.2096)', 37),
(195, 'Calle 18 de Noviembre 456', NULL, 'Catamayo', '11102', 'POINT(-3.9782 -79.3541)', 37),
(196, 'Av. Lauro Guerrero 789', NULL, 'Zamora', '11003', 'POINT(-4.0712 -78.9474)', 37),


(197, 'Av. 15 de Noviembre 123', NULL, 'Babahoyo', '10101', 'POINT(-1.8011 -79.5386)', 38),
(198, 'Calle 9 de Octubre 456', NULL, 'Quevedo', '12102', 'POINT(-1.0278 -79.4619)', 38),
(199, 'Av. 7 de Octubre 789', NULL, 'Vinces', '12103', 'POINT(-1.5523 -79.7362)', 38),


(200, 'Av. Manab� 123', NULL, 'Portoviejo', '13001', 'POINT(-1.0506 -80.4572)', 39),
(201, 'Calle Eloy Alfaro 456', NULL, 'Manta', '13102', 'POINT(-0.9621 -80.7128)', 39),
(202, 'Av. 15 de Noviembre 789', NULL, 'Jipijapa', '13103', 'POINT(-1.3409 -80.5729)', 39),


(203, 'Av. Amazonas 123', NULL, 'Macas', '14101', 'POINT(-2.3113 -78.1185)', 40),
(204, 'Calle 5 de Junio 456', NULL, 'Gualaquiza', '14102', 'POINT(-3.3946 -78.5477)', 40),
(205, 'Av. Los Puentes 789', NULL, 'Taisha', '14103', 'POINT(-2.1087 -77.5156)', 40),


(206, 'Av. Amazonas 123', NULL, 'Tena', '15101', 'POINT(-0.9922 -77.8167)', 41),
(207, 'Calle Juan Montalvo 456', NULL, 'Archidona', '15102', 'POINT(-1.0807 -77.6109)', 41),
(208, 'Av. 12 de Febrero 789', NULL, 'Nueva Loja', '15103', 'POINT(0.0882 -76.8793)', 41),


(209, 'Av. Francisco de Orellana 123', NULL, 'Coca', '16101', 'POINT(-0.9934 -77.2589)', 42),
(210, 'Calle 9 de Octubre 456', NULL, 'La Joya de los Sachas', '16102', 'POINT(-0.1092 -76.8653)', 42),
(211, 'Av. Amazonas 789', NULL, 'Shushufindi', '16103', 'POINT(-0.0988 -76.3379)', 42),


(212, 'Av. 12 de Febrero 123', NULL, 'Puyo', '17001', 'POINT(-1.5027 -78.0037)', 43),
(213, 'Calle Amazonas 456', NULL, 'Santa Clara', '17102', 'POINT(-2.0087 -77.6687)', 43),
(214, 'Av. El Triunfo 789', NULL, 'Mera', '17103', 'POINT(-1.8234 -77.9355)', 43),


(215, 'Av. Naciones Unidas 123', NULL, 'Quito', '17101', 'POINT(-0.2202 -78.5111)', 44),
(216, 'Calle 10 de Agosto 456', NULL, 'Cayambe', '17002', 'POINT(0.0484 -78.1423)', 44),
(217, 'Av. Amazonas 789', NULL, 'Sangolqu�', '17013', 'POINT(-0.3141 -78.4439)', 44),


(218, 'Av. 7 de Agosto 123', NULL, 'Salinas', '18101', 'POINT(-2.2175 -80.9761)', 45),
(219, 'Calle Malec�n 456', NULL, 'La Libertad', '10102', 'POINT(-2.2258 -80.8568)', 45),
(220, 'Av. Eloy Alfaro 789', NULL, 'Santa Elena', '10103', 'POINT(-2.2268 -80.8481)', 45),


(221, 'Av. Quito 123', NULL, 'Santo Domingo', '19101', 'POINT(-0.2496 -79.1843)', 46),
(222, 'Calle 5 de Junio 456', NULL, 'La Concordia', '19102', 'POINT(0.3034 -79.1939)', 46),
(223, 'Av. Amazonas 789', NULL, 'Santo Domingo', '19103', 'POINT(-0.2478 -79.1842)', 46),


(224, 'Av. Nueva Loja 123', NULL, 'Nueva Loja', '20101', 'POINT(0.0859 -76.8813)', 47),
(225, 'Calle Amazonas 456', NULL, 'Shushufindi', '20102', 'POINT(0.1209 -76.8528)', 47),
(226, 'Av. Petroamazonas 789', NULL, 'Cuyabeno', '20103', 'POINT(0.3565 -76.8847)', 47),


(227, 'Av. Ambato 123', NULL, 'Ambato', '21101', 'POINT(-1.2445 -78.6283)', 48),
(228, 'Calle Bol�var 456', NULL, 'Pelileo', '21102', 'POINT(-1.3112 -78.5206)', 48),
(229, 'Av. Ba�os 789', NULL, 'Ba�os', '21013', 'POINT(-1.3953 -78.4254)', 48),


(230, 'Av. Zamora 123', NULL, 'Zamora', '22101', 'POINT(-4.0656 -78.9606)', 49),
(231, 'Calle 9 de Octubre 456', NULL, 'Yantzaza', '22102', 'POINT(-3.8382 -78.7502)', 49),
(232, 'Av. Chinchipe 789', NULL, 'Zumbi', '22103', 'POINT(-3.9821 -78.6093)', 49),


(233, 'Rua Aveiro 123', NULL, 'Aveiro', '38023', 'POINT(40.6438 -8.6455)', 50),
(234, 'Avenida Costa Nova 456', NULL, '�lhavo', '38356', 'POINT(40.6049 -8.7421)', 50),
(235, 'Pra�a Ovar 789', NULL, 'Ovar', '38889', 'POINT(40.8626 -8.6282)', 50),


(236, 'Rua Beja 123', NULL, 'Beja', '78123', 'POINT(38.0142 -7.8649)', 51),
(237, 'Avenida Serpa 456', NULL, 'Serpa', '78456', 'POINT(37.9451 -7.5919)', 51),
(238, 'Pra�a Moura 789', NULL, 'Moura', '78789', 'POINT(38.1433 -7.4512)', 51),


(239, 'Rua Braga 123', NULL, 'Braga', '47023', 'POINT(41.5499 -8.4254)', 52),
(240, 'Avenida Guimar�es 456', NULL, 'Guimar�es', '48156', 'POINT(41.4432 -8.2923)', 52),
(241, 'Pra�a Barcelos 789', NULL, 'Barcelos', '47589', 'POINT(41.5362 -8.6166)', 52),


(242, 'Rua Braganza 123', NULL, 'Braganza', '53023', 'POINT(41.8046 -6.7552)', 53),
(243, 'Avenida Mirandela 456', NULL, 'Mirandela', '53756', 'POINT(41.4843 -7.1846)', 53),
(244, 'Pra�a Vimioso 789', NULL, 'Vimioso', '52789', 'POINT(41.5826 -6.5128)', 53),


(245, 'Rua Castelo Branco 123', NULL, 'Castelo Branco', '60123', 'POINT(39.8193 -7.4925)', 54),
(246, 'Avenida Covilh� 456', NULL, 'Covilh�', '62456', 'POINT(40.2746 -7.5041)', 54),
(247, 'Pra�a Idanha-a-Nova 789', NULL, 'Idanha-a-Nova', '60789', 'POINT(39.9229 -7.2424)', 54),


(248, 'Rua Coimbra 123', NULL, 'Coimbra', '30123', 'POINT(40.2115 -8.4292)', 55),
(249, 'Avenida Figueira da Foz 456', NULL, 'Figueira da Foz', '30456', 'POINT(40.1515 -8.8600)', 55),
(250, 'Pra�a Leiria 789', NULL, 'Leiria', '24789', 'POINT(39.7473 -8.8049)', 55),


(251, 'Rua �vora 123', NULL, '�vora', '70123', 'POINT(38.5730 -7.9075)', 56),
(252, 'Avenida Beja 456', NULL, 'Beja', '78456', 'POINT(38.0142 -7.8649)', 56),
(253, 'Pra�a Montemor-o-Novo 789', NULL, 'Montemor-o-Novo', '70789', 'POINT(38.6481 -8.2131)', 56),


(254, 'Rua Faro 123', NULL, 'Faro', '80123', 'POINT(37.0176 -7.9422)', 57),
(255, 'Avenida Albufeira 456', NULL, 'Albufeira', '82456', 'POINT(37.0894 -8.2437)', 57),
(256, 'Pra�a Tavira 789', NULL, 'Tavira', '88789', 'POINT(37.1319 -7.6492)', 57),

-- Guarda

(257, 'Rua Guarda 123', NULL, 'Guarda', '63123', 'POINT(40.5376 -7.2673)', 58),
(258, 'Avenida Gouveia 456', NULL, 'Gouveia', '62456', 'POINT(40.5022 -7.5905)', 58),
(259, 'Pra�a Sabugal 789', NULL, 'Sabugal', '63789', 'POINT(40.3516 -7.0924)', 58),


(260, 'Rua Leiria 123', NULL, 'Leiria', '24123', 'POINT(39.7473 -8.8049)', 59),
(261, 'Avenida Marinha Grande 456', NULL, 'Marinha Grande', '24456', 'POINT(39.7486 -8.9167)', 59),
(262, 'Pra�a Pombal 789', NULL, 'Pombal', '31789', 'POINT(39.9160 -8.6397)', 59),


(263, 'Rua Lisboa 123', NULL, 'Lisboa', '10123', 'POINT(38.7258 -9.1506)', 60),
(264, 'Avenida Amadora 456', NULL, 'Amadora', '27456', 'POINT(38.7533 -9.2374)', 60),
(265, 'Pra�a Sintra 789', NULL, 'Sintra', '27789', 'POINT(38.8005 -9.3812)', 60),


(266, 'Rua Portalegre 123', NULL, 'Portalegre', '73123', 'POINT(39.2938 -7.4318)', 61),
(267, 'Avenida Elvas 456', NULL, 'Elvas', '73456', 'POINT(38.8800 -7.1614)', 61),
(268, 'Pra�a Campo Maior 789', NULL, 'Campo Maior', '73789', 'POINT(39.0169 -7.0652)', 61),


(269, 'Rua Oporto 123', NULL, 'Oporto', '40123', 'POINT(41.1496 -8.6100)', 62),
(270, 'Avenida Vila Nova de Gaia 456', NULL, 'Vila Nova de Gaia', '44456', 'POINT(41.1263 -8.6100)', 62),
(271, 'Pra�a Maia 789', NULL, 'Maia', '44789', 'POINT(41.2310 -8.6194)', 62),


(272, 'Rua Santar�m 123', NULL, 'Santar�m', '20123', 'POINT(39.2357 -8.6704)', 63),
(273, 'Avenida Tomar 456', NULL, 'Tomar', '23456', 'POINT(39.6013 -8.4121)', 63),
(274, 'Pra�a Our�m 789', NULL, 'Our�m', '24789', 'POINT(39.6455 -8.5964)', 63),


(275, 'Rua Set�bal 123', NULL, 'Set�bal', '29123', 'POINT(38.5243 -8.8933)', 64),
(276, 'Avenida Sesimbra 456', NULL, 'Sesimbra', '29456', 'POINT(38.4439 -9.1012)', 64),
(277, 'Pra�a Palmela 789', NULL, 'Palmela', '29789', 'POINT(38.5684 -8.9013)', 64),


(278, 'Rua Viana do Castelo 123', NULL, 'Viana do Castelo', '49123', 'POINT(41.6931 -8.8286)', 65),
(279, 'Avenida Caminha 456', NULL, 'Caminha', '49456', 'POINT(41.8779 -8.8346)', 65),
(280, 'Pra�a Vila Nova de Cerveira 789', NULL, 'Vila Nova de Cerveira', '49789', 'POINT(41.9396 -8.7465)', 65),


(281, 'Rua Vila Real 123', NULL, 'Vila Real', '50123', 'POINT(41.3061 -7.7440)', 66),
(282, 'Avenida Chaves 456', NULL, 'Chaves', '54456', 'POINT(41.7437 -7.4686)', 66),
(283, 'Pra�a Montalegre 789', NULL, 'Montalegre', '54789', 'POINT(41.8255 -7.7870)', 66),


(284, 'Rua Viseu 123', NULL, 'Viseu', '35123', 'POINT(40.6566 -7.9145)', 67),
(285, 'Avenida Lamego 456', NULL, 'Lamego', '51456', 'POINT(41.0949 -7.8121)', 67),
(286, 'Pra�a S�o Jo�o da Pesqueira 789', NULL, 'S�o Jo�o da Pesqueira', '51389', 'POINT(41.1405 -7.3914)', 67),


(287, 'Rua Ponta Delgada 123', NULL, 'Ponta Delgada', '95123', 'POINT(37.7412 -25.6760)', 68),
(288, 'Avenida Horta 456', NULL, 'Horta', '99456', 'POINT(38.5281 -28.6265)', 68),
(289, 'Pra�a Angra do Hero�smo 789', NULL, 'Angra do Hero�smo', '97789', 'POINT(38.6546 -27.2182)', 68),


(290, 'Rua Funchal 123', NULL, 'Funchal', '90123', 'POINT(32.6669 -16.9241)', 69),
(291, 'Avenida Machico 456', NULL, 'Machico', '92456', 'POINT(32.7194 -16.7682)', 69),
(292, 'Pra�a Santa Cruz 789', NULL, 'Santa Cruz', '91789', 'POINT(32.6950 -16.7783)', 69),


(293, 'Jir�n Amazonas 123', NULL, 'Chachapoyas', '01001', 'POINT(-6.2302 -77.8748)', 70),
(294, 'Avenida Bagua Grande 456', NULL, 'Bagua Grande', '01051', 'POINT(-5.7484 -78.4405)', 70),
(295, 'Paseo Pedro Ruiz Gallo 789', NULL, 'Pedro Ruiz Gallo', '01061', 'POINT(-6.4432 -77.8666)', 70),


(296, 'Jir�n Huaraz 123', NULL, 'Huaraz', '02001', 'POINT(-9.5283 -77.5277)', 71),
(297, 'Avenida Chimbote 456', NULL, 'Chimbote', '02151', 'POINT(-9.0852 -78.5781)', 71),
(298, 'Paseo Carhuaz 789', NULL, 'Carhuaz', '02161', 'POINT(-9.2783 -77.6489)', 71),


(299, 'Jir�n Abancay 123', NULL, 'Abancay', '03001', 'POINT(-13.6316 -72.8786)', 72),
(300, 'Avenida Andahuaylas 456', NULL, 'Andahuaylas', '03201', 'POINT(-13.6613 -73.3862)', 72),
(301, 'Paseo Chalhuanca 789', NULL, 'Chalhuanca', '03211', 'POINT(-14.2357 -72.8262)', 72),


(302, 'Jir�n Arequipa 123', NULL, 'Arequipa', '04001', 'POINT(-16.4090 -71.5375)', 73),
(303, 'Avenida Caman� 456', NULL, 'Caman�', '04151', 'POINT(-16.6187 -72.7102)', 73),
(304, 'Paseo Mollendo 789', NULL, 'Mollendo', '04261', 'POINT(-17.0235 -72.0090)', 73),


(305, 'Jir�n Ayacucho 123', NULL, 'Ayacucho', '05001', 'POINT(-13.1582 -74.2276)', 74),
(306, 'Avenida Huanta 456', NULL, 'Huanta', '05201', 'POINT(-12.9347 -74.2531)', 74),
(307, 'Paseo San Miguel 789', NULL, 'San Miguel', '05211', 'POINT(-12.1194 -74.3350)', 74),


(308, 'Jir�n Cajamarca 123', NULL, 'Cajamarca', '06001', 'POINT(-7.1620 -78.5127)', 75),
(309, 'Avenida Ja�n 456', NULL, 'Ja�n', '06101', 'POINT(-5.7103 -78.8043)', 75),
(310, 'Paseo San Ignacio 789', NULL, 'San Ignacio', '06111', 'POINT(-5.1244 -78.1258)', 75),


(311, 'Jir�n Callao 123', NULL, 'Callao', '07001', 'POINT(-12.0464 -77.0860)', 76),
(312, 'Avenida Ventanilla 456', NULL, 'Ventanilla', '07101', 'POINT(-11.8561 -77.1379)', 76),
(313, 'Paseo Carmen de la Legua 789', NULL, 'Carmen de la Legua', '07111', 'POINT(-12.0710 -77.0991)', 76),


(314, 'Jir�n Cusco 123', NULL, 'Cusco', '08001', 'POINT(-13.5183 -71.9781)', 77),
(315, 'Avenida Urubamba 456', NULL, 'Urubamba', '08101', 'POINT(-13.3067 -72.1178)', 77),
(316, 'Paseo Quillabamba 789', NULL, 'Quillabamba', '08201', 'POINT(-12.8859 -72.7223)', 77),


(317, 'Jir�n Huancavelica 123', NULL, 'Huancavelica', '09001', 'POINT(-12.7847 -74.9761)', 78),
(318, 'Avenida Tayacaja 456', NULL, 'Tayacaja', '09101', 'POINT(-12.4882 -75.1946)', 78),
(319, 'Paseo Castrovirreyna 789', NULL, 'Castrovirreyna', '09111', 'POINT(-13.2353 -75.6985)', 78),


(320, 'Jir�n Hu�nuco 123', NULL, 'Hu�nuco', '10001', 'POINT(-9.9276 -76.2412)', 79),
(321, 'Avenida Tingo Mar�a 456', NULL, 'Tingo Mar�a', '10101', 'POINT(-9.2966 -75.9949)', 79),
(322, 'Paseo La Uni�n 789', NULL, 'La Uni�n', '10111', 'POINT(-8.1076 -76.6476)', 79),


(323, 'Jir�n Ica 123', NULL, 'Ica', '11001', 'POINT(-14.0640 -75.7299)', 80),
(324, 'Avenida Chincha Alta 456', NULL, 'Chincha Alta', '11101', 'POINT(-13.4131 -76.1326)', 80),
(325, 'Paseo Pisco 789', NULL, 'Pisco', '11201', 'POINT(-13.7102 -76.1994)', 80),


(326, 'Jir�n Huancayo 123', NULL, 'Huancayo', '12001', 'POINT(-12.0716 -75.2049)', 81),
(327, 'Avenida Tarma 456', NULL, 'Tarma', '12101', 'POINT(-11.4194 -75.6948)', 81),
(328, 'Paseo La Oroya 789', NULL, 'La Oroya', '12111', 'POINT(-11.5284 -75.9009)', 81),


(329, 'Jir�n Trujillo 123', NULL, 'Trujillo', '13001', 'POINT(-8.1150 -79.0299)', 82),
(330, 'Avenida Chep�n 456', NULL, 'Chep�n', '13101', 'POINT(-7.2311 -79.4272)', 82),
(331, 'Paseo Vir� 789', NULL, 'Vir�', '13111', 'POINT(-8.4043 -78.7716)', 82),


(332, 'Jir�n Chiclayo 123', NULL, 'Chiclayo', '14001', 'POINT(-6.7724 -79.8444)', 83),
(333, 'Avenida Ferre�afe 456', NULL, 'Ferre�afe', '14101', 'POINT(-6.6375 -79.7881)', 83),
(334, 'Paseo Lambayeque 789', NULL, 'Lambayeque', '14111', 'POINT(-6.7012 -79.9064)', 83),


(335, 'Jir�n Lima 123', NULL, 'Lima', '15001', 'POINT(-12.0464 -77.0428)', 84),
(336, 'Avenida Callao 456', NULL, 'Callao', '15011', 'POINT(-12.0641 -77.1350)', 84),
(337, 'Paseo Canta 789', NULL, 'Canta', '15101', 'POINT(-11.5136 -76.6649)', 84),


(338, 'Jir�n Iquitos 123', NULL, 'Iquitos', '16001', 'POINT(-3.7481 -73.2472)', 85),
(339, 'Avenida Yurimaguas 456', NULL, 'Yurimaguas', '16101', 'POINT(-5.8984 -76.1135)', 85),
(340, 'Paseo Nauta 789', NULL, 'Nauta', '16201', 'POINT(-4.5721 -73.5812)', 85),


(341, 'Jir�n Puerto Maldonado 123', NULL, 'Puerto Maldonado', '17001', 'POINT(-12.6030 -69.1819)', 86),
(342, 'Avenida Tambopata 456', NULL, 'Tambopata', '17101', 'POINT(-12.9509 -69.9115)', 86),
(343, 'Paseo Manu 789', NULL, 'Manu', '17201', 'POINT(-11.4327 -71.8760)', 86),


(344, 'Jir�n Moquegua 123', NULL, 'Moquegua', '18001', 'POINT(-17.1950 -70.9359)', 87),
(345, 'Avenida Ilo 456', NULL, 'Ilo', '18101', 'POINT(-17.6427 -71.3397)', 87),
(346, 'Paseo Mariscal Nieto 789', NULL, 'Mariscal Nieto', '18111', 'POINT(-17.1975 -70.9321)', 87),


(347, 'Jir�n Cerro de Pasco 123', NULL, 'Cerro de Pasco', '19001', 'POINT(-10.6792 -76.2586)', 88),
(348, 'Avenida Oxapampa 456', NULL, 'Oxapampa', '19101', 'POINT(-10.5756 -75.4023)', 88),
(349, 'Paseo Daniel Alcides Carri�n 789', NULL, 'Daniel Alcides Carri�n', '19111', 'POINT(-10.0679 -76.0655)', 88),


(350, 'Jir�n Piura 123', NULL, 'Piura', '20001', 'POINT(-5.1949 -80.6323)', 89),
(351, 'Avenida Sullana 456', NULL, 'Sullana', '20101', 'POINT(-4.9039 -80.6858)', 89),
(352, 'Paseo Talara 789', NULL, 'Talara', '20111', 'POINT(-4.5770 -81.2731)', 89),


(353, 'Jir�n Puno 123', NULL, 'Puno', '21001', 'POINT(-15.8420 -70.0193)', 90),
(354, 'Avenida Juliaca 456', NULL, 'Juliaca', '21101', 'POINT(-15.4902 -70.1369)', 90),
(355, 'Paseo Az�ngaro 789', NULL, 'Az�ngaro', '21111', 'POINT(-14.8918 -70.5746)', 90),


(356, 'Jir�n Moyobamba 123', NULL, 'Moyobamba', '22001', 'POINT(-6.0382 -76.9729)', 91),
(357, 'Avenida Tarapoto 456', NULL, 'Tarapoto', '22101', 'POINT(-6.4840 -76.3522)', 91),
(358, 'Paseo Rioja 789', NULL, 'Rioja', '22111', 'POINT(-6.0621 -77.1646)', 91),


(359, 'Jir�n Tacna 123', NULL, 'Tacna', '23001', 'POINT(-18.0056 -70.2486)', 92),
(360, 'Avenida Jorge Basadre 456', NULL, 'Jorge Basadre', '23101', 'POINT(-17.9993 -70.2500)', 92),
(361, 'Paseo Candarave 789', NULL, 'Candarave', '23111', 'POINT(-17.4292 -70.3104)', 92),


(362, 'Jir�n Tumbes 123', NULL, 'Tumbes', '24001', 'POINT(-3.5663 -80.4512)', 93),
(363, 'Avenida Zarumilla 456', NULL, 'Zarumilla', '24101', 'POINT(-3.4961 -80.2714)', 93),
(364, 'Paseo Contralmirante Villar 789', NULL, 'Contralmirante Villar', '24111', 'POINT(-3.7433 -80.2280)', 93),


(365, 'Jir�n Pucallpa 123', NULL, 'Pucallpa', '25001', 'POINT(-8.3814 -74.5539)', 94),
(366, 'Avenida Atalaya 456', NULL, 'Atalaya', '25101', 'POINT(-8.1132 -75.1693)', 94),
(367, 'Paseo Coronel Portillo 789', NULL, 'Coronel Portillo', '25111', 'POINT(-8.4095 -74.5525)', 94),


(368, 'Av. Oropesa 123', NULL, 'Oropesa', '3501', 'POINT(-17.7402 -66.0163)', 95),
(369, 'Calle Oropesa 456', NULL, 'Sucre', '3500', 'POINT(-19.0330 -65.2627)', 95),
(370, 'Jir�n Oropesa 789', NULL, 'Yotala', '3503', 'POINT(-19.1814 -65.1682)', 95),


(371, 'Av. Padilla 123', NULL, 'Padilla', '3601', 'POINT(-19.3975 -64.2803)', 96),
(372, 'Calle Padilla 456', NULL, 'Monteagudo', '3600', 'POINT(-19.8128 -63.9833)', 96),
(373, 'Jir�n Padilla 789', NULL, 'Tarabuco', '3602', 'POINT(-19.1956 -64.3020)', 96),


(374, 'Av. Zuda�ez 123', NULL, 'Zuda�ez', '3701', 'POINT(-19.0383 -64.9047)', 97),
(375, 'Calle Zuda�ez 456', NULL, 'Villa Zuda�ez', '3700', 'POINT(-19.2227 -64.8103)', 97),
(376, 'Jir�n Zuda�ez 789', NULL, 'Sopachuy', '3702', 'POINT(-19.2580 -64.9195)', 97),


(377, 'Av. Tomina 123', NULL, 'Tomina', '3801', 'POINT(-19.1722 -63.9814)', 98),
(378, 'Calle Tomina 456', NULL, 'Padilla', '3800', 'POINT(-19.3975 -64.2803)', 98),
(379, 'Jir�n Tomina 789', NULL, 'Monteagudo', '3802', 'POINT(-19.8128 -63.9833)', 98),


(380, 'Av. Siles 123', NULL, 'Camargo', '3901', 'POINT(-20.0278 -65.4553)', 99),
(381, 'Calle Siles 456', NULL, 'Villa Abecia', '3900', 'POINT(-20.3700 -65.1733)', 99),
(382, 'Jir�n Siles 789', NULL, 'Hueacar', '3902', 'POINT(-19.8306 -65.2131)', 99),


(383, 'Av. Yampar�ez 123', NULL, 'Sucre', '4001', 'POINT(-19.0330 -65.2627)', 100),
(384, 'Calle Yampar�ez 456', NULL, 'Presto', '4000', 'POINT(-20.0383 -64.9875)', 100),
(385, 'Jir�n Yampar�ez 789', NULL, 'Incahuasi', '4002', 'POINT(-19.7222 -64.6131)', 100),


(386, 'Av. Nor Cinti 123', NULL, 'Camargo', '4101', 'POINT(-20.0278 -65.4553)', 101),
(387, 'Calle Nor Cinti 456', NULL, 'Villa Abecia', '4100', 'POINT(-20.3700 -65.1733)', 101),
(388, 'Jir�n Nor Cinti 789', NULL, 'Hueacar', '4102', 'POINT(-19.8306 -65.2131)', 101),


(389, 'Av. Boeto 123', NULL, 'Camargo', '4201', 'POINT(-20.0278 -65.4553)', 102),
(390, 'Calle Boeto 456', NULL, 'Villa Abecia', '4200', 'POINT(-20.3700 -65.1733)', 102),
(391, 'Jir�n Boeto 789', NULL, 'Hueacar', '4202', 'POINT(-19.8306 -65.2131)', 102),


(392, 'Av. S. Cinti 123', NULL, 'Camargo', '4301', 'POINT(-20.0278 -65.4553)', 103),
(393, 'Calle S. Cinti 456', NULL, 'Villa Abecia', '4300', 'POINT(-20.3700 -65.1733)', 103),
(394, 'Jir�n S. Cinti 789', NULL, 'Hueacar', '4302', 'POINT(-19.8306 -65.2131)', 103),


(395, 'Av. L. Calvo 123', NULL, 'Lajasi', '4401', 'POINT(-20.0572 -63.5167)', 104),
(396, 'Calle L. Calvo 456', NULL, 'Lajasi', '4400', 'POINT(-20.0572 -63.5167)', 104),
(397, 'Jir�n L. Calvo 789', NULL, 'Lajasi', '4402', 'POINT(-20.0572 -63.5167)', 104),


(398, 'Av. P.D. Murillo 123', NULL, 'Villa Serrano', '4501', 'POINT(-19.4131 -63.5814)', 105),
(399, 'Calle P.D. Murillo 456', NULL, 'Serrano', '4500', 'POINT(-19.4192 -63.5486)', 105),
(400, 'Jir�n P.D. Murillo 789', NULL, 'Serrano', '4502', 'POINT(-19.4192 -63.5486)', 105),


(403, 'Av. Omasuyos 123', NULL, 'Achacachi', '4601', 'POINT(-15.7197 -68.9783)', 106),
(404, 'Calle Omasuyos 456', NULL, 'Huarina', '4600', 'POINT(-15.3322 -68.2403)', 106),
(405, 'Jir�n Omasuyos 789', NULL, 'Desaguadero', '4602', 'POINT(-15.9264 -69.3350)', 106),


(406, 'Av. Pacajes 123', NULL, 'Chara�a', '4701', 'POINT(-17.4978 -69.5828)', 107),
(407, 'Calle Pacajes 456', NULL, 'Colquencha', '4700', 'POINT(-17.4672 -69.4828)', 107),
(408, 'Jir�n Pacajes 789', NULL, 'Pacajes', '4702', 'POINT(-17.6833 -69.4333)', 107),


(409, 'Av. E. Camacho 123', NULL, 'Santiago de Huata', '4801', 'POINT(-16.8725 -68.2789)', 108),
(410, 'Calle E. Camacho 456', NULL, 'San Andr�s de Machaca', '4800', 'POINT(-16.6150 -68.1219)', 108),
(411, 'Jir�n E. Camacho 789', NULL, 'Aucapata', '4802', 'POINT(-16.7914 -68.2847)', 108),


(412, 'Av. Mu�ecas 123', NULL, 'Chuma', '4901', 'POINT(-16.9092 -68.1161)', 109),
(413, 'Calle Mu�ecas 456', NULL, 'Ayata', '4900', 'POINT(-16.8889 -68.0922)', 109),
(414, 'Jir�n Mu�ecas 789', NULL, 'Chuma', '4902', 'POINT(-16.9092 -68.1161)', 109),


(415, 'Av. Larecaja 123', NULL, 'Sorata', '5001', 'POINT(-15.7758 -68.6394)', 110),
(416, 'Calle Larecaja 456', NULL, 'Warisata', '5000', 'POINT(-15.8575 -68.6122)', 110),
(417, 'Jir�n Larecaja 789', NULL, 'Achacachi', '5002', 'POINT(-15.7197 -68.9783)', 110),


(418, 'Av. F. Tamayo 123', NULL, 'Irupana', '5101', 'POINT(-15.1594 -67.6075)', 111),
(419, 'Calle F. Tamayo 456', NULL, 'Quime', '5100', 'POINT(-16.9847 -67.1533)', 111),
(420, 'Jir�n F. Tamayo 789', NULL, 'Irupana', '5102', 'POINT(-15.1594 -67.6075)', 111),


(421, 'Av. Ingavi 123', NULL, 'Guayaramer�n', '5201', 'POINT(-10.8067 -65.3764)', 112),
(422, 'Calle Ingavi 456', NULL, 'Riberalta', '5200', 'POINT(-10.9839 -66.0925)', 112),
(423, 'Jir�n Ingavi 789', NULL, 'Guayaramer�n', '5202', 'POINT(-10.8067 -65.3764)', 112),


(424, 'Av. Loayza 123', NULL, 'Apolo', '5301', 'POINT(-14.7136 -68.4178)', 113),
(425, 'Calle Loayza 456', NULL, 'Viacha', '5300', 'POINT(-16.6286 -68.2192)', 113),
(426, 'Jir�n Loayza 789', NULL, 'Apolo', '5302', 'POINT(-14.7136 -68.4178)', 113),


(427, 'Av. Inquisivi 123', NULL, 'Inquisivi', '5401', 'POINT(-16.3225 -67.6167)', 114),
(428, 'Calle Inquisivi 456', NULL, 'Quime', '5400', 'POINT(-16.9847 -67.1533)', 114),
(429, 'Jir�n Inquisivi 789', NULL, 'Inquisivi', '5402', 'POINT(-16.3225 -67.6167)', 114),


(430, 'Av. S. Yungas 123', NULL, 'Coroico', '5501', 'POINT(-16.1900 -67.7250)', 115),
(431, 'Calle S. Yungas 456', NULL, 'Coripata', '5500', 'POINT(-16.2592 -67.6044)', 115),
(432, 'Jir�n S. Yungas 789', NULL, 'La Asunta', '5502', 'POINT(-15.7097 -67.5225)', 115),


(433, 'Av. Los Andes 123', NULL, 'Sorata', '5601', 'POINT(-15.7758 -68.6394)', 116),
(434, 'Calle Los Andes 456', NULL, 'Warisata', '5600', 'POINT(-15.8575 -68.6122)', 116),
(435, 'Jir�n Los Andes 789', NULL, 'Sorata', '5602', 'POINT(-15.7758 -68.6394)', 116),


(436, 'Av. Aroma 123', NULL, 'Aroma', '5701', 'POINT(-17.5239 -67.4294)', 117),
(437, 'Calle Aroma 456', NULL, 'Sica Sica', '5700', 'POINT(-17.3394 -67.3158)', 117),
(438, 'Jir�n Aroma 789', NULL, 'Aroma', '5702', 'POINT(-17.5239 -67.4294)', 117),


(439, 'Av. N. Yungas 123', NULL, 'La Paz', '5801', 'POINT(-16.5000 -68.1500)', 118),
(440, 'Calle N. Yungas 456', NULL, 'Yanacachi', '5800', 'POINT(-16.3333 -67.7000)', 118),
(441, 'Jir�n N. Yungas 789', NULL, 'Yolosa', '5802', 'POINT(-16.1900 -67.8000)', 118),


(442, 'Av. A. Iturralde 123', NULL, 'San Borja', '5901', 'POINT(-14.8194 -66.8472)', 119),
(443, 'Calle A. Iturralde 456', NULL, 'Santa Ana del Yacuma', '5900', 'POINT(-13.7419 -65.4433)', 119),
(444, 'Jir�n A. Iturralde 789', NULL, 'San Borja', '5902', 'POINT(-14.8194 -66.8472)', 119),


(445, 'Av. B. Saavedra 123', NULL, 'San Ignacio de Moxos', '6001', 'POINT(-14.9667 -65.6333)', 120),
(446, 'Calle B. Saavedra 456', NULL, 'San Borja', '6000', 'POINT(-14.8194 -66.8472)', 120),
(447, 'Jir�n B. Saavedra 789', NULL, 'San Ignacio de Moxos', '6002', 'POINT(-14.9667 -65.6333)', 120),


(448, 'Av. M. Kapac 123', NULL, 'Rurrenabaque', '6101', 'POINT(-14.4372 -67.5278)', 121),
(449, 'Calle M. Kapac 456', NULL, 'Santa Rosa', '6100', 'POINT(-14.3183 -68.3342)', 121),
(450, 'Jir�n M. Kapac 789', NULL, 'Rurrenabaque', '6102', 'POINT(-14.4372 -67.5278)', 121),


(451, 'Av. G. Villarroel 123', NULL, 'San Pedro', '6201', 'POINT(-13.3014 -64.1875)', 122),
(452, 'Calle G. Villarroel 456', NULL, 'San Mat�as', '6200', 'POINT(-16.3667 -58.4000)', 122),
(453, 'Jir�n G. Villarroel 789', NULL, 'Santa Ana', '6202', 'POINT(-13.9389 -64.7125)', 122),


(454, 'Av. J.M. Pando 123', NULL, 'Cobija', '6301', 'POINT(-11.0189 -68.7694)', 123),
(455, 'Calle J.M. Pando 456', NULL, 'Porvenir', '6300', 'POINT(-10.9250 -68.7461)', 123),
(456, 'Jir�n J.M. Pando 789', NULL, 'Porvenir', '6302', 'POINT(-10.9250 -68.7461)', 123),


(457, 'Av. Caranavi 123', NULL, 'Caranavi', '6401', 'POINT(-15.7192 -67.6878)', 124),
(458, 'Calle Caranavi 456', NULL, 'Caranavi', '6400', 'POINT(-15.7192 -67.6878)', 124),
(459, 'Jir�n Caranavi 789', NULL, 'Caranavi', '6402', 'POINT(-15.7192 -67.6878)', 124),


(460, 'Corniche Road', NULL, 'Alejandr�a', '21599', 'POINT(31.2013 29.9187)', 125),
(461, 'Shalalat', NULL, 'Alejandr�a', '21599', 'POINT(31.2156 29.9444)', 125),
(462, 'Roushdy', NULL, 'Alejandr�a', '21599', 'POINT(31.2850 30.0411)', 125),


(463, 'Elephantine Island', NULL, 'Asu�n', '81111', 'POINT(32.8730 24.0857)', 126),
(464, 'High Dam', NULL, 'Asu�n', '81112', 'POINT(32.8806 24.1370)', 126),
(465, 'Philae Temple', NULL, 'Asu�n', '81113', 'POINT(32.8785 24.0327)', 126),


(466, 'Corniche El Nile', NULL, 'Asyut', '71111', 'POINT(31.1820 27.1812)', 127),
(467, 'University Street', NULL, 'Asyut', '71112', 'POINT(31.1875 27.1810)', 127),
(468, 'El Gharb Street', NULL, 'Asyut', '71113', 'POINT(31.1740 27.1797)', 127),


(469, 'El-Qotour', NULL, 'Damanhour', '22511', 'POINT(30.9797 30.4248)', 128),
(470, 'Al-Dekheila Road', NULL, 'Kafr El-Dawar', '22711', 'POINT(30.0781 31.1832)', 128),
(471, 'Edko, Edko', NULL, 'Edko', '22811', 'POINT(30.8349 30.9537)', 128),


(472, 'Abd El-Qader Street', NULL, 'Beni Suef', '62511', 'POINT(31.0914 29.7411)', 129),
(473, 'El-Hawamdya', NULL, 'Beni Suef', '62512', 'POINT(31.0901 29.7463)', 129),
(474, 'Beni Suef University', NULL, 'Beni Suef', '62513', 'POINT(31.0903 29.7513)', 129),


(475, 'Tahrir Square', NULL, 'Cairo', '11511', 'POINT(31.2357 30.0444)', 130),
(476, 'Nasr City', NULL, 'Cairo', '11371', 'POINT(31.3410 30.0708)', 130),
(477, 'Heliopolis', NULL, 'Cairo', '11757', 'POINT(31.3207 30.0976)', 130),


(478, 'Mansoura University', NULL, 'Mansoura', '35516', 'POINT(31.3614 31.0344)', 131),
(479, 'Nile Street, Talkha', NULL, 'Talkha', '35661', 'POINT(31.1508 31.0452)', 131),
(480, 'Mansoura Damietta Road', NULL, 'Sherbin', '35732', 'POINT(31.6175 31.8232)', 131),


(481, 'Port Said Street', NULL, 'Damietta', '34511', 'POINT(31.8115 31.4260)', 132),
(482, 'New Damietta City', NULL, 'New Damietta City', '34512', 'POINT(31.6975 31.7478)', 132),
(483, 'Kafr Saad', NULL, 'Kafr Saad', '34513', 'POINT(31.8275 31.5123)', 132),


(484, 'Fayoum University', NULL, 'Fayoum', '63511', 'POINT(30.8493 30.9293)', 133),
(485, 'Ibsheway', NULL, 'Ibsheway', '63512', 'POINT(29.4172 30.8261)', 133),
(486, 'Sinurus', NULL, 'Sinurus', '63513', 'POINT(29.3897 30.8192)', 133),


(487, 'Tanta University', NULL, 'Tanta', '31527', 'POINT(30.9775 30.9791)', 134),
(488, 'Mahala Kobra', NULL, 'Mahala Kobra', '31951', 'POINT(31.1535 30.9365)', 134),
(489, 'Kafr El Zayat', NULL, 'Kafr El Zayat', '31611', 'POINT(30.7851 31.1136)', 134),


(490, 'Giza Pyramids, Giza', NULL, 'Giza', '12613', 'POINT(31.1325 29.9761)', 135),
(491, 'Mohandessin, Giza', NULL, 'Giza', '12411', 'POINT(31.2091 30.0579)', 135),
(492, 'Haram, Giza', NULL, 'Giza', '12111', 'POINT(31.2036 30.0012)', 135),


(493, 'Suez Canal University', NULL, 'Ismailia', '41522', 'POINT(32.2981 30.9991)', 136),
(494, 'Qasr El Nile', NULL, 'Ismailia', '41511', 'POINT(32.2744 30.5958)', 136),
(495, 'Port Fouad, Port Fouad', NULL, 'Port Fouad', '41612', 'POINT(32.2517 31.2581)', 136),


(496, 'Nile Delta University', NULL, 'Kafr El Sheikh', '33511', 'POINT(31.3686 30.8120)', 137),
(497, 'Kafr El Sheikh Stadium', NULL, 'Kafr El Sheikh', '33512', 'POINT(31.6175 30.9763)', 137),
(498, 'Desouk, Desouk', NULL, 'Desouk', '33714', 'POINT(31.1575 30.6482)', 137),


(499, 'Luxor Temple', NULL, 'Luxor', '85511', 'POINT(32.6394 25.7152)', 138),
(500, 'Karnak Temple', NULL, 'Luxor', '85512', 'POINT(32.6550 25.7184)', 138),
(501, 'West Bank', NULL, 'Luxor', '85513', 'POINT(32.5922 25.7420)', 138),


(502, 'Marsa Matruh', NULL, 'Marsa Matruh', '51712', 'POINT(27.2372 31.8670)', 139),
(503, 'El Alamein', NULL, 'El Alamein', '51711', 'POINT(28.9643 29.4284)', 139),
(504, 'Sidi Abdel Rahman', NULL, 'Sidi Abdel Rahman', '51713', 'POINT(28.7562 29.4304)', 139),


(505, 'Menouf', NULL, 'Menouf', '32716', 'POINT(30.4623 30.9610)', 140),
(506, 'Shebin El Koum', NULL, 'Shebin El Koum', '32111', 'POINT(30.5991 30.9945)', 140),
(507, 'Sadat City', NULL, 'Sadat City', '32811', 'POINT(30.5939 31.0056)', 140),


(508, 'Minya University', NULL, 'Minya', '61111', 'POINT(30.7530 28.2448)', 141),
(509, 'Maghagha', NULL, 'Maghagha', '61011', 'POINT(30.8056 28.9064)', 141),
(510, 'El-Adwa', NULL, 'El-Adwa', '61211', 'POINT(30.5946 28.6969)', 141),


(511, 'Arish', NULL, 'Arish', '41111', 'POINT(34.4070 31.2712)', 142),
(512, 'Rafah', NULL, 'Rafah', '42111', 'POINT(34.2556 31.2937)', 142),
(513, 'Bir al-Abd', NULL, 'Bir al-Abd', '41511', 'POINT(34.7384 29.7047)', 142),


(514, 'Al-Wadi al-Jadid University', NULL, 'Kharga', '72311', 'POINT(25.5114 30.5793)', 143),
(515, 'Baris', NULL, 'Baris', '72411', 'POINT(27.2293 30.8754)', 143),
(516, 'Farafra', NULL, 'Farafra', '72511', 'POINT(27.0653 27.9715)', 143),


(517, 'Suez Canal Authority', NULL, 'Port Said', '42511', 'POINT(32.2689 31.2520)', 144),
(518, 'Port Said Stadium', NULL, 'Port Said', '42512', 'POINT(32.2764 31.2573)', 144),
(519, 'Al Manakh', NULL, 'Al Manakh', '42513', 'POINT(32.2796 31.2565)', 144),


(520, 'Benha University', NULL, 'Benha', '13511', 'POINT(31.2083 30.4612)', 145),
(521, 'Qalyub', NULL, 'Qalyub', '13512', 'POINT(31.2675 30.1749)', 145),
(522, 'Banha University', NULL, 'Banha', '13513', 'POINT(31.3178 30.4669)', 145),


(523, 'Luxor-Aswan Road', NULL, 'Qena', '83511', 'POINT(32.7123 26.1297)', 146),
(524, 'Al-Wadi al-Jadid University', NULL, 'Qena', '83512', 'POINT(32.7189 25.8858)', 146),
(525, 'Dendera Temple Complex', NULL, 'Dendera', '83513', 'POINT(32.7104 26.1353)', 146),


(526, 'Hurghada Beach', NULL, 'Hurghada', '84511', 'POINT(33.8116 27.2579)', 147),
(527, 'Makadi Bay', NULL, 'Makadi Bay', '84512', 'POINT(33.9142 27.0232)', 147),
(528, 'El Gouna', NULL, 'El Gouna', '84513', 'POINT(33.6959 27.9475)', 147),


(529, 'Zagazig University', NULL, 'Zagazig', '44519', 'POINT(31.5074 30.5852)', 148),
(530, 'Ibrahimia', NULL, 'Zagazig', '44513', 'POINT(31.5277 30.5277)', 148),
(531, 'Al Qanayat', NULL, 'Al Qanayat', '44515', 'POINT(31.7453 30.5842)', 148),


(532, 'Sohag University', NULL, 'Sohag', '82511', 'POINT(31.5563 26.5427)', 149),
(533, 'El Maragha', NULL, 'El Maragha', '82512', 'POINT(31.7251 26.1317)', 149),
(534, 'Tama', NULL, 'Tama', '82513', 'POINT(31.7990 26.0496)', 149),


(535, 'Sharm El Sheikh', NULL, 'Sharm El Sheikh', '46619', 'POINT(34.2783 27.9475)', 150),
(536, 'Dahab', NULL, 'Dahab', '46617', 'POINT(34.5140 28.4962)', 150),
(537, 'Nuweiba', NULL, 'Nuweiba', '46613', 'POINT(34.5903 29.0341)', 150),


(538, 'Suez Canal University', NULL, 'Suez', '43519', 'POINT(32.2836 30.5606)', 151),
(539, 'Port Tawfiq', NULL, 'Port Tawfiq', '43511', 'POINT(32.2915 29.9721)', 151),
(540, 'Ataqah', NULL, 'Ataqah', '43512', 'POINT(32.2889 30.5931)', 151);
SET IDENTITY_INSERT Master.address OFF;
GO

--CATEGORY_GROUP
SET IDENTITY_INSERT Master.category_group ON;
INSERT INTO Master.category_group (cagro_id, cagro_name, cagro_description, cagro_type, cagro_icon, cagro_icon_url) VALUES
(1, 'HABITACI�N', 'Habitaciones para que los hu�spedes se alojen', 'category', 'habitacion.png', 'https://ejemplo.com/habitacion.png'),
(2, 'RESTAURANTE', 'Restaurante en el lugar para que los hu�spedes cenen', 'service', 'restaurante.png', 'https://ejemplo.com/restaurante.png'),
(3, 'SALA DE REUNIONES', 'Salas para reuniones y eventos', 'facility', 'sala_de_reuniones.png', 'https://ejemplo.com/sala_de_reuniones.png'),
(4, 'GIMNASIO', 'Centro de fitness para que los hu�spedes lo utilicen', 'facility', 'gimnasio.png', 'https://ejemplo.com/gimnasio.png'),
(5, 'SALON DE EVENTOS', 'Sala multiprop�sito para eventos', 'facility', 'aula.png', 'https://ejemplo.com/aula.png'),
(6, 'PISCINA', 'Piscina al aire libre para que los hu�spedes la utilicen', 'facility', 'piscina.png', 'https://ejemplo.com/piscina.png'),
(7, 'SAL�N DE BAILE', 'Sal�n de baile para eventos y fiestas', 'facility', 'salon_de_baile.png', 'https://ejemplo.com/salon_de_baile.png'),
(8, 'BAR', 'Sal�n de consumo de bebidas', 'facility', 'bar.png', 'https://ejemplo.com/salon_de_baile.png'),
(9, 'SPA', 'Sal�n de SPA', 'facility', 'sala_spa.png', 'https://ejemplo.com/salon_de_spa.png'),
(10, 'CASINO', 'Sal�n de casino', 'facility', 'salon_de_baile.png', 'https://ejemplo.com/salon_de_casino.png'),
(11, 'GUARDERIA', 'Sal�n de guarderia', 'facility', 'salon_de_baile.png', 'https://ejemplo.com/salon_de_guarderia.png');
SET IDENTITY_INSERT Master.category_group OFF;
GO

-- POLICY
SET IDENTITY_INSERT Master.policy ON;
INSERT INTO Master.policy (poli_id, poli_name, poli_description) VALUES
(1, 'Pol�tica de Cancelaci�n ', 'Pol�tica de cancelaci�n de reservas'),
(2, 'Pol�tica de No Fumar', 'Prohibido fumar en las habitaciones'),
(3, 'Pol�tica de Mascotas', 'Se permiten mascotas en ciertas �reas'),
(4, 'Pol�tica de Check-in/Check-out', 'Horarios de check-in y check-out'),
(5, 'Pol�tica de Dep�sito', 'Requisitos de dep�sito para reservas '),
(6, 'Pol�tica de Cargos Adicionales ', 'Cargos por servicios adicionales '),
(7, 'Pol�tica de Ni�os', 'Pol�tica de alojamiento para ni�os '),
(8, 'Pol�tica de Cancelaci�n de Eventos ', 'Pol�tica de cancelaci�n de eventos especiales '),
(9, 'Pol�tica de Accesibilidad ', 'Accesibilidad para personas con discapacidad '),
(10, 'Pol�tica de Privacidad', 'Pol�tica de privacidad y protecci�n de datos '),
(11, 'Pol�tica de Uso de Instalaciones Comunes', 'Los hu�spedes tienen acceso a las instalaciones comunes del hotel.'),
(12, 'Pol�tica de Tarifas de Temporada Baja', 'Durante la temporada baja, ofrecemos tarifas especiales.'),
(13, 'Pol�tica de Seguridad en el Estacionamiento', 'Mantenemos un alto nivel de seguridad en nuestro estacionamiento.'),
(14, 'Pol�tica de Comida para Llevar', 'Ofrecemos opciones de comida para llevar para nuestros hu�spedes.'),
(15, 'Pol�tica de Concierge las 24 Horas', 'Nuestro personal de concierge est� disponible las 24 horas para ayudar a los hu�spedes.'),
(16, 'Pol�tica de Habitaciones con Jacuzzi', 'Tenemos habitaciones con jacuzzi disponibles para una estancia relajante.'),
(17, 'Pol�tica de Entretenimiento en Vivo', 'Ofrecemos entretenimiento en vivo en el lobby del hotel.'),
(18, 'Pol�tica de Habitaciones Adaptadas', 'Tenemos habitaciones adaptadas para personas con movilidad reducida.'),
(19, 'Pol�tica de Habitaciones para No Fumadores', 'Todas nuestras habitaciones son para no fumadores.'),
(20, 'Pol�tica de Transporte a Lugares de Inter�s', 'Ofrecemos transporte a lugares de inter�s cercanos al hotel.'),
(21, 'Pol�tica de Tarjetas de Regalo', 'Aceptamos tarjetas de regalo como forma de pago.'),
(22, 'Pol�tica de Programa de Lealtad', 'Tenemos un programa de lealtad para recompensar a nuestros hu�spedes frecuentes.'),
(23, 'Pol�tica de Reservas de �ltima Hora', 'Ofrecemos descuentos especiales para reservas de �ltima hora.'),
(24, 'Pol�tica de Almohadas Personalizadas', 'Los hu�spedes pueden elegir almohadas personalizadas para su comodidad.'),
(25, 'Pol�tica de Servicio de Traslado', 'Ofrecemos servicio de traslado desde y hacia el aeropuerto.'),
(26, 'Pol�tica de Cenas Rom�nticas', 'Organizamos cenas rom�nticas en el restaurante del hotel.'),
(27, 'Pol�tica de Camas King Size', 'Todas nuestras habitaciones tienen camas king size para mayor comodidad.'),
(28, 'Pol�tica de Amenidades de Ba�o', 'Ofrecemos amenidades de ba�o de alta calidad para nuestros hu�spedes.'),
(29, 'Pol�tica de Desayuno a la Carta', 'Los hu�spedes pueden elegir su desayuno a la carta.'),
(30, 'Pol�tica de Recepci�n de Bodas', 'Ofrecemos servicios de recepci�n para bodas en nuestras instalaciones.'),
(31, 'Pol�tica de Tarjetas de Cr�dito', 'Aceptamos tarjetas de cr�dito principales como forma de pago.'),
(32, 'Pol�tica de Camas Dobles', 'Ofrecemos habitaciones con camas dobles para grupos y familias.'),
(33, 'Pol�tica de Spa y Bienestar', 'Ofrecemos servicios de spa y bienestar para nuestros hu�spedes.'),
(34, 'Pol�tica de Golf', 'Colaboramos con campos de golf cercanos para ofrecer descuentos a nuestros hu�spedes.'),
(35, 'Pol�tica de Transporte a Parques Tem�ticos', 'Ofrecemos transporte a parques tem�ticos locales.'),
(36, 'Pol�tica de Check-in R�pido', 'Ofrecemos un proceso de check-in r�pido para reducir las esperas.'),
(37, 'Pol�tica de Recepci�n de Eventos', 'Ofrecemos instalaciones para eventos especiales y celebraciones.'),
(38, 'Pol�tica de Habitaciones con Sof� Cama', 'Tenemos habitaciones con sof� cama disponibles.'),
(39, 'Pol�tica de Organizaci�n de Excursiones', 'Ayudamos a organizar excursiones y actividades para nuestros hu�spedes.'),
(40, 'Pol�tica de Habitaciones con Balc�n', 'Ofrecemos habitaciones con balc�n privado.'),
(41, 'Pol�tica de Reservas para Bodas', 'Ofrecemos servicios de reservas para bodas y eventos especiales.'),
(42, 'Pol�tica de Servicio de Traslado al Centro Comercial', 'Ofrecemos transporte gratuito al centro comercial local.'),
(43, 'Pol�tica de Clases de Cocina', 'Ofrecemos clases de cocina para los amantes de la gastronom�a.'),
(44, 'Pol�tica de Descuentos para Ancianos', 'Ofrecemos descuentos especiales para hu�spedes mayores de 65 a�os.'),
(45, 'Pol�tica de Reservas para Grupos Grandes', 'Pol�tica de reservas para grupos de m�s de 20 personas.'),
(46, 'Pol�tica de Programa de Recompensas', 'Participa en nuestro programa de recompensas para obtener beneficios exclusivos.'),
(47, 'Pol�tica de Camas Supletorias', 'Ofrecemos camas supletorias para hu�spedes adicionales.'),
(48, 'Pol�tica de Cenas Tem�ticas', 'Organizamos cenas tem�ticas especiales para nuestros hu�spedes.'),
(49, 'Pol�tica de Tarifas para Empresas', 'Ofrecemos tarifas especiales para empresas y viajes de negocios.'),
(50, 'Pol�tica de Reservas de Larga Estancia', 'Ofrecemos tarifas especiales para estancias de larga duraci�n.'),
(51, 'Pol�tica de Amenidades para Celebraciones', 'Ofrecemos amenidades especiales para celebraciones y aniversarios.'),
(52, 'Pol�tica de Reservas para Viajes en Grupo', 'Pol�tica de reservas para grupos de viajeros.'),
(53, 'Pol�tica de Traslado a Estaciones de Tren','Politica de transporte en tren hacia el hotel'),
(54, 'Pol�tica de Tarifas para Estudiantes', 'Ofrecemos tarifas especiales para estudiantes universitarios.'),
(55, 'Pol�tica de Reservas para Grupos Deportivos', 'Pol�tica de reservas para equipos y grupos deportivos.'),
(56, 'Pol�tica de Comida Sin Gluten', 'Ofrecemos opciones de comida sin gluten para hu�spedes con necesidades diet�ticas especiales.'),
(57, 'Pol�tica de Lavander�a de Autoservicio', 'Ofrecemos una lavander�a de autoservicio para los hu�spedes.'),
(58, 'Pol�tica de Alquiler de Bicicletas', 'Los hu�spedes pueden alquilar bicicletas para explorar la zona.'),
(59, 'Pol�tica de Habitaciones con Escritorio', 'Tenemos habitaciones con escritorio para hu�spedes que trabajan durante su estancia.'),
(60, 'Pol�tica de Cenas de Negocios', 'Ofrecemos cenas de negocios en nuestro restaurante.'),
(61, 'Pol�tica de Servicio de Despertador', 'Ofrecemos servicio de despertador a pedido.'),
(62, 'Pol�tica de Check-out Express', 'Ofrecemos un proceso de check-out express para ahorrar tiempo.'),
(63, 'Pol�tica de Organizaci�n de Excursiones en Barco', 'Ayudamos a organizar excursiones en barco para nuestros hu�spedes.'),
(64, 'Pol�tica de Habitaciones con Cama Supletoria', 'Ofrecemos camas supletorias en habitaciones familiares.'),
(65, 'Pol�tica de Reservas para Reuniones de Negocios', 'Pol�tica de reservas para reuniones y eventos de negocios.'),
(66, 'Pol�tica de Descuentos para Miembros de Clubes', 'Ofrecemos descuentos exclusivos para miembros de clubes afiliados.'),
(67, 'Pol�tica de Organizaci�n de Excursiones a Parques', 'Ayudamos a organizar excursiones a parques nacionales.'),
(68, 'Pol�tica de Comida Local', 'Ofrecemos platos locales en nuestro men� de restaurante.'),
(69, 'Pol�tica de Tarifas para Grupos de Amigos', 'Tarifas especiales para grupos de amigos que viajan juntos.'),
(70, 'Pol�tica de Servicio de Limpieza a Diario', 'Se ofrece servicio de limpieza a diario en todas las habitaciones.'),
(71, 'Pol�tica de Servicio de Cambio de Moneda', 'Se ofrecen cambio de moneda (Dolar y euro)'),
(72, 'Pol�tica de Tarifas para Estancias Largas', 'Tarifas especiales para estancias de m�s de 7 noches.'),
(73, 'Pol�tica de Transporte a Museos', 'Ofrecemos transporte gratuito a museos locales.'),
(74, 'Pol�tica de Desayuno en la Habitaci�n', 'Los hu�spedes pueden solicitar el desayuno en la habitaci�n.'),
(75, 'Pol�tica de Servicio de Ni�era', 'Ofrecemos servicio de ni�era para familias con ni�os peque�os.'),
(76, 'Pol�tica de Habitaciones con Cama King Size', 'Todas nuestras habitaciones tienen camas king size.'),
(77, 'Pol�tica de Servicio de Concierge Personal', 'Ofrecemos servicio de concierge personalizado.'),
(78, 'Pol�tica de Reservas de �ltima Hora', 'Aprovecha nuestras tarifas especiales para reservas de �ltima hora.'),
(79, 'Pol�tica de Cenas Tem�ticas', 'Disfruta de cenas tem�ticas especiales en nuestro restaurante.'),
(80, 'Pol�tica de Tarifas para Estudiantes', 'Descuentos especiales para estudiantes universitarios.'),
(81, 'Pol�tica de Reservas para Grupos Deportivos', 'Pol�tica de reservas para equipos y grupos deportivos.'),
(82, 'Pol�tica de Comida Sin Gluten', 'Opciones de comida sin gluten disponibles para hu�spedes con dietas especiales.'),
(83, 'Pol�tica de Lavander�a de Autoservicio', 'Lavander�a de autoservicio disponible para los hu�spedes.'),
(84, 'Pol�tica de Alquiler de Bicicletas', 'Alquila bicicletas para explorar la zona local.'),
(85, 'Pol�tica de Habitaciones con Escritorio', 'Habitaciones con escritorio disponibles para viajeros de negocios.'),
(86, 'Pol�tica de Cenas de Negocios', 'Organizamos cenas de negocios para nuestros hu�spedes corporativos.'),
(87, 'Pol�tica de Servicio de Despertador', 'Solicita servicio de despertador a la hora que prefieras.'),
(88, 'Pol�tica de Check-out Express', 'Proceso de check-out express para mayor comodidad.'),
(89, 'Pol�tica de Organizaci�n de Excursiones en Barco', 'Ayudamos a organizar emocionantes excursiones en barco.'),
(90, 'Pol�tica de Habitaciones con Cama Supletoria', 'Camas supletorias disponibles para hu�spedes adicionales.'),
(91, 'Pol�tica de Reservas para Reuniones de Negocios', 'Reserva espacios para tus reuniones de negocios en nuestro hotel.'),
(92, 'Pol�tica de Descuentos','Descuentos especiales que se encuentran disponibles dentro del hotel'),
(93, 'Pol�tica de Check-In Temprano', 'Pol�tica relacionada con las solicitudes de check-in temprano'),
(94, 'Pol�tica de Check-Out Tard�o', 'Pol�tica relacionada con las solicitudes de check-out tard�o'),
(95, 'Pol�tica de Persona Adicional', 'Pol�tica relacionada con hu�spedes adicionales en la habitaci�n'),
(96, 'Pol�tica de Estacionamiento', 'Pol�tica relacionada con las instalaciones de estacionamiento'),
(97, 'Pol�tica de Servicio de Habitaci�n', 'Pol�tica relacionada con las solicitudes de servicio a la habitaci�n'),
(98, 'Pol�tica de Servicio de limpieza', 'Pol�tica relacionada con la limpieza'),
(99, 'Pol�tica de seguridad', 'Pol�tica relacionada con la seguridad'),
(100, 'Pol�tica de mozos', 'Pol�tica relacionada con los mozos');
SET IDENTITY_INSERT Master.policy OFF;
GO

--Price Items
SET IDENTITY_INSERT Master.price_items ON;
INSERT INTO Master.price_items (prit_id, prit_name, prit_price, prit_description, prit_type, prit_icon_url) VALUES 
(1, 'Papas Fritas', 20, 'Deliciosas papas fritas crujientes', 'SNACK', 'https://example.com/papas.png'),
(2, 'Alquiler de Sala de Conferencias', 500, 'Alquile nuestra sala de conferencias para sus eventos', 'FACILITY', 'https://example.com/sala.png'),
(3, 'Coca-Cola 500 ML', 10, 'Refresco de Coca-Cola en lata', 'SOFTDRINK', 'https://example.com/cocacola.png'),
(4, 'Hamburguesa con Papas', 35, 'Hamburguesa deliciosa con papas fritas', 'FOOD', 'https://example.com/hamburguesa.png'),
(5, 'Servicio de Habitaci�n', 50, 'Servicio de habitaci�n para mayor comodidad', 'SERVICE', 'https://example.com/servicio.png'),
(6, 'Gaseosa La caba�a', 11, 'Bebida refrescante de soda en lata', 'SOFTDRINK', 'https://example.com/soda.png'),
(7, 'Caf� Expreso', 12, 'Caf� expreso reci�n preparado', 'SOFTDRINK', 'https://example.com/cafe.png'),
(8, 'Internet de Alta Velocidad', 30, 'Acceso a Internet de alta velocidad', 'SERVICE', 'https://example.com/internet.png'),
(9, 'Masaje Relajante', 80, 'Masaje de cuerpo completo para relajaci�n', 'SERVICE', 'https://example.com/masaje.png'),
(10, 'Alquiler de Bicicletas', 40, 'Alquiler de bicicletas para explorar la ciudad', 'FACILITY', 'https://example.com/bicicleta.png'),
(11, 'Entrada al Spa', 60, 'Entrada al spa con acceso a sauna y jacuzzi', 'FACILITY', 'https://example.com/spa.png'),
(12, 'Botella de Vino Tinto', 75, 'Botella de vino tinto de la casa', 'SOFTDRINK', 'https://example.com/vino.png'),
(13, 'Hamburguesa Vegetariana', 30, 'Hamburguesa vegetariana con papas', 'FOOD', 'https://example.com/hamburguesaveg.png'),
(14, 'Pizza de Pepperoni', 45, 'Pizza con pepperoni y queso', 'FOOD', 'https://example.com/pizza.png'),
(15, 'Helado de Chocolate', 15, 'Helado de chocolate con chispas', 'SNACK', 'https://example.com/helado.png'),
(16, 'Cerveza Huari', 35, 'Botella de cerveza nacional', 'SOFTDRINK', 'https://example.com/cerveza.png'),
(17, 'Lavander�a', 15, 'Servicio de lavander�a por carga', 'SERVICE', 'https://example.com/lavanderia.png'),
(18, 'Traslado al Aeropuerto', 50, 'Traslado desde/hacia el aeropuerto', 'SERVICE', 'https://example.com/traslado.png'),
(19, 'Tour de la Ciudad', 65, 'Tour guiado por los lugares de inter�s de la ciudad', 'SERVICE', 'https://example.com/tour.png'),
(20, 'Desayuno Buffet', 25, 'Desayuno buffet con variedad de opciones', 'FOOD', 'https://example.com/desayuno.png'),
(21, 'Almuerzo Ejecutivo', 40, 'Men� ejecutivo para el almuerzo', 'FOOD', 'https://example.com/almuerzo.png'),
(22, 'Botella de Agua Mineral', 5, 'Botella de agua mineral', 'SOFTDRINK', 'https://example.com/agua.png'),
(23, 'Sala de Juegos', 20, 'Acceso a sala de juegos con billar y ping pong', 'FACILITY', 'https://example.com/juegos.png'),
(24, 'Sal�n de Conferencias', 250, 'Alquiler de sal�n de conferencias para eventos', 'FACILITY', 'https://example.com/salonconferencias.png'),
(25, 'Reparaci�n de Computadoras', 45, 'Servicio de reparaci�n de computadoras', 'SERVICE', 'https://example.com/reparacion.png'),
(26, 'Membres�a de Gimnasio', 60, 'Membres�a mensual de gimnasio', 'FACILITY', 'https://example.com/gimnasio.png');
SET IDENTITY_INSERT Master.price_items OFF;
GO

--Policy_Category_Group
INSERT INTO Master.policy_category_group (poca_poli_id, poca_cagro_id) VALUES
(	96	,	3	),
(	34	,	7	),
(	20	,	10	),
(	8	,	4	),
(	50	,	8	),
(	74	,	8	),
(	28	,	4	),
(	47	,	8	),
(	5	,	10	),
(	90	,	10	),
(	22	,	4	),
(	5	,	5	),
(	88	,	3	),
(	92	,	10	),
(	45	,	4	),
(	48	,	3	),
(	2	,	8	),
(	41	,	9	),
(	46	,	5	),
(	91	,	3	),
(	72	,	2	),
(	52	,	8	),
(	47	,	6	),
(	38	,	9	),
(	20	,	1	),
(	91	,	2	),
(	72	,	10	),
(	57	,	2	),
(	29	,	4	),
(	25	,	5	),
(	62	,	9	),
(	71	,	4	),
(	42	,	8	),
(	84	,	3	),
(	45	,	4	),
(	20	,	9	),
(	95	,	5	),
(	86	,	8	),
(	22	,	10	),
(	30	,	1	),
(	49	,	5	),
(	93	,	5	),
(	80	,	7	),
(	74	,	6	),
(	2	,	2	),
(	57	,	5	),
(	72	,	3	),
(	45	,	3	),
(	27	,	9	),
(	4	,	3	),
(	61	,	3	),
(	47	,	5	),
(	4	,	7	),
(	9	,	2	),
(	36	,	4	),
(	85	,	1	),
(	81	,	1	),
(	84	,	1	),
(	73	,	8	),
(	86	,	11	),
(	71	,	10	),
(	74	,	3	),
(	23	,	4	),
(	15	,	1	),
(	48	,	7	),
(	92	,	9	),
(	36	,	9	),
(	78	,	2	),
(	96	,	11	),
(	82	,	1	),
(	6	,	7	),
(	19	,	4	),
(	70	,	5	),
(	37	,	2	),
(	7	,	8	),
(	52	,	2	),
(	16	,	1	),
(	92	,	1	),
(	27	,	10	),
(	90	,	10	),
(	15	,	1	),
(	87	,	4	),
(	68	,	4	),
(	85	,	2	),
(	25	,	8	),
(	20	,	2	),
(	69	,	8	),
(	18	,	5	),
(	34	,	8	),
(	90	,	8	),
(	54	,	4	),
(	75	,	4	),
(	36	,	8	),
(	70	,	10	),
(	30	,	9	),
(	58	,	1	),
(	91	,	9	),
(	15	,	3	),
(	8	,	1	),
(	86	,	11	),
(	57	,	11	),
(	39	,	1	),
(	72	,	7	),
(	89	,	10	),
(	23	,	3	),
(	84	,	7	),
(	52	,	4	),
(	11	,	5	),
(	15	,	6	),
(	12	,	1	),
(	60	,	5	),
(	2	,	8	),
(	59	,	4	),
(	31	,	11	),
(	88	,	10	),
(	18	,	2	),
(	59	,	9	),
(	84	,	11	),
(	68	,	4	),
(	59	,	1	),
(	3	,	5	),
(	58	,	3	),
(	22	,	6	),
(	57	,	9	),
(	27	,	11	),
(	31	,	10	),
(	50	,	10	),
(	30	,	2	),
(	71	,	9	),
(	84	,	11	),
(	16	,	3	),
(	48	,	1	),
(	27	,	4	),
(	5	,	11	),
(	5	,	3	),
(	66	,	7	),
(	81	,	11	),
(	7	,	3	),
(	35	,	4	),
(	61	,	1	),
(	86	,	3	),
(	20	,	1	),
(	50	,	5	),
(	35	,	8	),
(	31	,	8	),
(	25	,	9	),
(	84	,	11	),
(	97	,	11	),
(	92	,	9	),
(	47	,	2	),
(	38	,	5	),
(	35	,	4	),
(	77	,	9	),
(	24	,	3	),
(	85	,	2	),
(	9	,	7	),
(	69	,	8	),
(	56	,	7	),
(	13	,	3	),
(	21	,	11	),
(	83	,	7	),
(	26	,	8	),
(	46	,	2	),
(	91	,	7	),
(	26	,	8	),
(	63	,	8	),
(	39	,	5	),
(	43	,	2	),
(	13	,	7	),
(	81	,	2	),
(	92	,	11	),
(	3	,	4	),
(	41	,	6	),
(	28	,	1	),
(	59	,	2	),
(	72	,	5	),
(	11	,	3	),
(	88	,	8	),
(	19	,	4	),
(	17	,	11	),
(	67	,	8	),
(	9	,	2	),
(	10	,	5	),
(	54	,	4	),
(	43	,	9	),
(	8	,	2	),
(	96	,	3	),
(	61	,	10	),
(	80	,	7	),
(	91	,	11	),
(	33	,	1	),
(	18	,	8	),
(	39	,	7	),
(	52	,	2	),
(	31	,	7	),
(	15	,	1	),
(	91	,	8	),
(	31	,	9	),
(	90	,	1	),
(	51	,	9	),
(	49	,	1	),
(	75	,	4	),
(	2	,	6	),
(	85	,	7	),
(	22	,	10	),
(	58	,	5	),
(	25	,	3	),
(	96	,	9	),
(	64	,	10	),
(	53	,	2	),
(	28	,	6	),
(	89	,	1	),
(	87	,	3	),
(	89	,	7	),
(	11	,	4	),
(	36	,	2	),
(	22	,	4	),
(	30	,	9	),
(	3	,	8	),
(	43	,	7	),
(	55	,	2	),
(	4	,	4	),
(	72	,	5	),
(	52	,	5	),
(	87	,	3	),
(	29	,	6	),
(	89	,	7	),
(	43	,	10	),
(	58	,	6	),
(	52	,	10	),
(	80	,	9	),
(	34	,	8	),
(	24	,	11	),
(	2	,	8	),
(	71	,	5	),
(	27	,	5	),
(	77	,	8	),
(	94	,	8	),
(	67	,	11	),
(	12	,	2	),
(	47	,	4	),
(	59	,	8	),
(	32	,	8	),
(	7	,	8	),
(	60	,	2	),
(	4	,	5	),
(	62	,	11	),
(	52	,	9	),
(	56	,	4	),
(	49	,	6	),
(	25	,	8	),
(	32	,	4	),
(	88	,	1	),
(	78	,	3	),
(	5	,	2	),
(	81	,	6	),
(	85	,	5	),
(	38	,	8	),
(	1	,	2	),
(	31	,	4	),
(	47	,	6	),
(	49	,	2	),
(	82	,	1	),
(	58	,	3	),
(	91	,	11	),
(	26	,	1	),
(	23	,	11	),
(	14	,	2	),
(	37	,	9	),
(	47	,	2	),
(	39	,	5	),
(	70	,	11	),
(	11	,	9	),
(	4	,	8	),
(	57	,	1	),
(	63	,	4	),
(	55	,	3	),
(	42	,	3	),
(	95	,	7	),
(	2	,	1	),
(	13	,	10	),
(	28	,	6	),
(	84	,	2	),
(	43	,	1	),
(	19	,	9	),
(	72	,	7	),
(	16	,	2	),
(	81	,	1	),
(	72	,	3	),
(	77	,	10	),
(	75	,	7	),
(	70	,	11	),
(	95	,	11	),
(	76	,	3	),
(	19	,	2	),
(	50	,	4	),
(	10	,	2	),
(	3	,	7	),
(	35	,	6	),
(	64	,	7	),
(	13	,	6	),
(	45	,	9	),
(	74	,	4	),
(	55	,	2	),
(	56	,	4	),
(	87	,	1	),
(	93	,	8	),
(	60	,	11	),
(	90	,	3	),
(	22	,	8	),
(	93	,	11	),
(	94	,	11	),
(	4	,	7	),
(	22	,	1	),
(	31	,	9	),
(	42	,	6	),
(	85	,	3	),
(	49	,	3	),
(	39	,	5	),
(	80	,	1	);
GO

--MEMBER
INSERT INTO master.members (memb_name, memb_description) VALUES 
('BRONCE', 'La membresia BRONCE ofrece un descuento del 5% en todos los servicios del hotel'),
('PLATA', 'La membresia PLATA ofrece un descuento del 10% en todos los servicios del hotel'),
('ORO', 'La membresia ORO ofrece un descuento del 20% en todos los servicios del hotel'),
('PLATINO', 'La membresia PLATINO ofrece un descuento del 30% en todos los servicios del hotel'),
('VIP', 'La membresia VIP ofrece un descuento del 50% en todos los servicios del hotel');
GO

--SERVICE_TASK
SET IDENTITY_INSERT Master.service_task ON;
insert into master.service_task (seta_id, seta_name, seta_seq) VALUES
(	1 ,	'	Gerente General del Hotel	',	1	),
(	2 ,	'	Director de Operaciones	',	2	),
(	3 ,	'	Gerente de Recepci�n	',	3	),
(	4 ,	'	Gerente de Alimentos y Bebidas	',	4	),
(	5 ,	'	Chef Ejecutivo	',	5	),
(	6 ,	'	Chef Pastelero	',	6	),
(	7 ,	'	Chef de Sushi	',	7	),
(	8 ,	'	Sous Chef	',	8	),
(	9 ,	'	Jefe de Cocina	',	9	),
(	10 ,'	Cocinero	',	10	),
(	11 ,'	Ayudante de Cocina	',	11	),
(	12 ,'	Sommelier	',	12	),
(	13 ,'	Ma�tre	',	13	),
(	14 ,'	Mesero	',	14	),
(	15 ,'	Bartender	',	15	),
(	16 ,'	Camarero de Pisos	',	16	),
(	17 ,'	Supervisor de Limpieza	',	17	),
(	18 ,'	Concierge	',	18	),
(	19 ,'	Portero	',	19	),
(	20 ,'	Jefe de Seguridad	',	20	),
(	21 ,'	Botones	',	21	),
(	22 ,'	Personal de Spa	',	22	),
(	23 ,'	Terapeuta de Masajes	',	23	),
(	24 ,'	Esteticista	',	24	),
(	25 ,'	Entrenador Personal	',	25	),
(	26 ,'	Jefe de Mantenimiento	',	26	),
(	27 ,'	T�cnico de Mantenimiento	',	27	),
(	28 ,'	Jefe de Jardiner�a	',	28	),
(	29 ,'	Recepcionista	',	29	),
(	30 ,'	Coordinador de Eventos	',	30	),
(	31 ,'	Personal de Reservas	',	31	),
(	32 ,'	Contador del Hotel	',	32	),
(	33 ,'	Analista de Marketing	',	33	),
(	34 ,'	Director de Ventas y Marketing	',	34	),
(	35 ,'	Ejecutivo de Ventas	',	35	),
(	36 ,'	Gerente de Relaciones P�blicas	',	36	),
(	37 ,'	Gu�a Tur�stico	',	37	),
(	38 ,'	Asistente Administrativo	',	38	),
(	39 ,'	Personal de Seguridad	',	39	),
(	40 ,'	Personal de Limpieza de Habitaciones	',	40	),
(	41 ,'	Director de Spa	',	41	),
(	42 ,'	Terapeuta de Spa	',	42	),
(	43 ,'	Personal de Conserjer�a VIP	',	43	),
(	44 ,'	Especialista en Eventos	',	44	),
(	45 ,'	Coordinador de Bodas	',	45	),
(	46 ,'	Capit�n de Puerta	',	46	),
(	47 ,'	Asistente de Relaciones P�blicas	',	47	),
(	48 ,'	Jefe de Compras	',	48	),
(	49 ,'	Encargado de Almac�n	',	49	),
(	50 ,'	Personal de Entretenimiento	',	50	),
(	51 ,'	Gu�a de Senderismo	',	51	),
(	52 ,'	Croupier de Casino	',	52	),
(	53 ,'	Gerente de Sostenibilidad Ambiental	',	53	),
(	54 ,'	Coordinador de Actividades Recreativas	',	54	),
(	55 ,'	T�cnico de Sonido y Iluminaci�n	',	55	),
(	56 ,'	Chef de Banquetes	',	56	),
(	57 ,'	Coordinador de Transporte y Log�stica	',	57	),
(	58 ,'	Director de Recursos Humanos	',	58	),
(	59 ,'	Analista de Datos de Hu�spedes	',	59	),
(	60 ,'	Fot�grafo del Hotel	',	60	),
(	61 ,'	T�cnico de Audiovisuales	',	61	),
(	62 ,'	Gerente de Spa M�dico	',	62	),
(	63 ,'	Jefe de Conserjer�a	',	63	),
(	64 ,'	Responsable de Redes Sociales	',	64	),
(	65 ,'	Coordinador de Programas para Ni�os	',	65	),
(	66 ,'	Guardaespaldas	',	66	),
(	67 ,'	Entrenador de Golf	',	67	),
(	68 ,'	Piloto de Helic�ptero	',	68	),
(	69 ,'	Chef de Reposter�a	',	69	),
(	70 ,'	Chef de Cocina Internacional	',	70	);
SET IDENTITY_INSERT Master.service_task OFF;
GO

--USERS
exec PA_users_create;
GO
set dateformat ymd

INSERT INTO users.user_members (usme_user_id, usme_memb_name, usme_promote_date, usme_points, usme_type)VALUES 
(	1  ,	'PLATA', '2022-01-01', 100, 'Active'),
(	2  ,	'ORO', '2022-02-01', 200, 'Active'),
(	3  ,	'VIP', '2022-03-01', 300, 'Active'),
(	4  ,	'PLATINO', '2022-04-01', 400, 'Active'),
(	5  ,	 'PLATA', '2022-05-01', 500, 'Active'),
(	6  ,	'ORO', '2022-06-01', 600, 'Active'),
(	7  ,	'VIP', '2022-07-01', 700, 'Active'),
(	8  , 'PLATINO', '2022-08-01', 800, 'Active'),
(	9  , 'PLATA', '2022-09-01', 900, 'Active'),
(	10  , 'ORO', '2022-10-01', 1000, 'Active'),
(	11  , 'PLATA', '2022-11-01', 1000, 'Expired'),
(	12  , 'ORO', '2022-12-01', 1000, 'Expired'),
(	13  , 'VIP', '2022-01-01', 1000, 'Expired'),
(	14  , 'PLATINO', '2022-02-01', 1000, 'Expired'),
(	15  , 'ORO', '2022-03-01', 1000, 'Expired'),
(	16	,	 'PLATA',	 '2022-03-01',	100	,'Active'	),
(	17	,	 'ORO',	 '2022-03-02',	200	,'Active'	),
(	18	,	 'VIP',	 '2022-03-03',	300	,'Active'	),
(	19	,	 'PLATINO',	 '2022-03-04',	400	,'Active'	),
(	20	,	 'PLATA',	 '2022-03-05',	500	,'Active'	),
(	21	,	 'ORO',	 '2022-03-06',	600	,'Active'	),
(	22	,	 'VIP',	 '2022-03-07',	700	,'Active'	),
(	23	,	 'PLATINO',	 '2022-03-08',	800	,'Active'	),
(	24	,	 'PLATA',	 '2022-03-09',	900	,'Active'	),
(	25	,	 'ORO',	 '2022-03-10',	1000	,'Active'	),
(	26	,	 'VIP',	 '2022-03-11',	1100	,'Active'	),
(	27	,	 'PLATA',	 '2022-03-12',	1200	,'Active'	),
(	28	,	 'PLATA',	 '2022-03-13',	1300	,'Active'	),
(	29	,	 'ORO',	 '2022-03-14',	1400	,'Active'	),
(	30	,	 'PLATA',	 '2022-03-15',	1500	,'Active'	),
(	31	,	 'ORO',	 '2022-03-16',	1600	,'Active'	),
(	32	,	 'VIP',	 '2022-03-17',	1700	,'Active'	),
(	33	,	 'PLATINO',	 '2022-03-18',	1800	,'Active'	),
(	34	,	 'PLATA',	 '2022-03-19',	1900	,'Active'	),
(	35	,	 'ORO',	 '2022-03-20',	2000	,'Active'	),
(	36	,	 'VIP',	 '2022-03-21',	2100	,'Active'	),
(	37	,	 'PLATINO',	 '2022-03-22',	2200	,'Active'	),
(	38	,	 'PLATA',	 '2022-03-23',	2300	,'Active'	),
(	39	,	 'ORO',	 '2022-03-24',	2400	,'Active'	),
(	40	,	 'VIP',	 '2022-03-25',	2500	,'Active'	),
(	41	,	 'PLATA',	 '2022-03-26',	2600	,'Active'	),
(	42	,	 'PLATA',	 '2022-03-27',	2700	,'Active'	),
(	43	,	 'ORO',	 '2022-03-28',	2800	,'Active'	),
(	44	,	 'PLATA',	 '2022-03-29',	2900	,'Active'	),
(	45	,	 'ORO',	 '2022-03-30',	3000	,'Active'	),
(	46	,	 'VIP',	 '2022-03-31',	3100	,'Active'	),
(	47	,	 'PLATA',	 '2022-04-01',	3200	,'Active'	),
(	48	,	 'ORO',	 '2022-04-02',	3300	,'Active'	),
(	49	,	 'VIP',	 '2022-04-03',	3400	,'Active'	),
(	50	,	 'PLATINO',	 '2022-04-04',	3500	,'Active'	),
(	51	,	 'PLATA',	 '2022-04-05',	3600	,'Active'	),
(	52	,	 'ORO',	 '2022-04-06',	3700	,'Active'	),
(	53	,	 'VIP',	 '2022-04-07',	3800	,'Active'	),
(	54	,	 'PLATINO',	 '2022-04-08',	3900	,'Active'	),
(	55	,	 'PLATA',	 '2022-04-09',	4000	,'Active'	),
(	56	,	 'ORO',	 '2022-04-10',	4100	,'Active'	),
(	57	,	 'VIP',	 '2022-04-11',	500	,'Active'	),
(	58	,	 'PLATA',	 '2022-04-12',	500	,'Active'	),
(	59	,	 'PLATA',	 '2022-04-13',	500	,'Active'	),
(	60	,	 'ORO',	 '2022-04-14',	500	,'Active'	),
(	61	,	 'PLATA',	 '2022-04-15',	500	,'Active'	),
(	62	,	 'ORO',	 '2022-04-16',	500	,'Active'	),
(	63	,	 'VIP',	 '2022-04-17',	500	,'Active'	),
(	64	,	 'PLATINO',	 '2022-04-18',	500	,'Active'	),
(	65	,	 'PLATA',	 '2023-02-10',	500	,'Active'	),
(	66	,	 'ORO',	 '2023-02-11',	500	,'Active'	),
(	67	,	 'VIP',	 '2023-02-12',	1000	,'Active'	),
(	68	,	 'PLATINO',	 '2023-02-13',	1000	,'Active'	),
(	69	,	 'PLATA',	 '2023-02-14',	1000	,'Active'	),
(	70	,	 'ORO',	 '2023-02-15',	1000	,'Active'	),
(	71	,	 'VIP',	 '2023-02-16',	1000	,'Active'	),
(	72	,	 'PLATA',	 '2023-02-17',	1000	,'Active'	),
(	73	,	 'PLATA',	 '2023-02-18',	1000	,'Active'	),
(	74	,	 'ORO',	 '2023-02-19',	1000	,'Active'	),
(	75	,	 'PLATA',	 '2023-02-20',	1000	,'Active'	),
(	76	,	 'ORO',	 '2023-02-21',	2000	,'Active'	),
(	77	,	 'VIP',	 '2023-02-22',	2000	,'Active'	),
(	78	,	 'PLATA',	 '2023-02-23',	2000	,'Active'	),
(	79	,	 'ORO',	 '2023-02-24',	2000	,'Active'	),
(	80	,	'VIP',	'2023-02-25',	2000	,'Active'	),
(	81	,	'PLATINO',	'2023-02-26',	600	,'Active'	),
(	82	,	'PLATA',	'2023-02-27',	600	,'Active'	),
(	83	,	'ORO',	'2023-02-28',	600	,'Active'	),
(	84	,	'VIP',	'2023-03-01',	600	,'Active'	),
(	85	,	'PLATINO',	'2023-03-02',	100	,'Expired'	),
(	86	,	'PLATA',	'2023-03-03',	200	,'Expired'	),
(	87	,	'ORO',	'2023-03-04',	300	,'Expired'	),
(	88	,	'VIP',	'2023-03-05',	400	,'Expired'	),
(	89	,	'PLATA',	'2023-03-06',	500	,'Expired'	),
(	90	,	'PLATA',	'2023-03-07',	600	,'Expired'	),
(	91	,	'ORO',	'2023-03-08',	700	,'Expired'	),
(	92	,	 'PLATA',	 '2023-03-09',	800	,'Expired'	),
(	93	,	 'ORO',	 '2023-03-10',	900	,'Expired'	),
(	94	,	 'VIP',	 '2023-03-11',	1000	,'Expired'	),
(	95	,	 'PLATINO',	 '2023-03-12',	1100	,'Expired'	),
(	96	,	 'PLATA',	 '2023-03-13',	1200	,'Expired'	),
(	97	,	 'ORO',	 '2023-03-14',	1600	,'Expired'	),
(	98	,	 'VIP',	 '2023-03-15',	1600	,'Expired'	),
(	99	,	 'PLATINO',	 '2023-03-16',	1600	,'Expired'	),
(	100	,	 'PLATA',	 '2023-03-17',	1600	,'Expired'	),
(	101	,	 'ORO',	 '2023-03-18',	100	,'Expired'	),
(	102	,	 'VIP',	 '2023-03-19',	200	,'Expired'	),
(	103	,	 'PLATA',	 '2023-03-20',	300	,'Expired'	),
(	104	,	 'PLATA',	 '2023-03-21',	400	,'Expired'	),
(	105	,	 'ORO',	 '2023-03-22',	500	,'Expired'	),
(	106	,	 'PLATA',	 '2023-03-23',	600	,'Expired'	),
(	107	,	 'ORO',	 '2023-05-14',	700	,'Expired'	),
(	108	,	 'VIP',	 '2023-05-15',	800	,'Expired'	),
(	109	,	 'PLATA',	'2023-05-16',	900	,'Expired'	),
(	110	,	 'ORO',	 '2023-05-17',	1000	,'Expired'	),
(	111	,	 'VIP',	 '2023-05-18',	1100	,'Expired'	),
(	112	,	 'PLATINO',	 '2023-05-19',	1200	,'Expired'	),
(	113	,	 'PLATA',	 '2023-05-20',	1300	,'Expired'	),
(	114	,	 'ORO',	 '2023-05-21',	1400	,'Expired'	),
(	115	,	 'VIP',	 '2023-05-22',	1500	,'Expired'	),
(	116	,	 'PLATINO',	 '2023-05-23',	1600	,'Expired'	),
(	117	,	 'PLATA',	 '2023-05-24',	1700	,'Expired'	),
(	118	,	 'ORO',	 '2023-05-25',	1800	,'Expired'	),
(	119	,	 'VIP',	 '2023-05-26',	1900	,'Expired'	),
(	120	,	 'PLATINO',	 '2023-05-27',	2000	,'Expired'	),
(	121	,	 'PLATA',	 '2023-05-28',	2100	,'Expired'	),
(	122	,	 'ORO',	 '2023-05-29',	2200	,'Expired'	),
(	123	,	 'VIP',	 '2023-05-30',	2300	,'Expired'	),
(	124	,	 'PLATA',	 '2023-05-31',	2400	,'Expired'	),
(	125	,	 'PLATA',	 '2023-06-01',	2500	,'Expired'	),
(	126	,	 'ORO',	 '2023-06-02',	2600	,'Expired'	),
(	127	,	 'PLATA',	 '2023-06-03',	2700	,'Expired'	),
(	128	,	 'ORO',	 '2023-06-04',	2800	,'Expired'	),
(	129	,	 'VIP',	 '2023-06-05',	2900	,'Expired'	),
(	130	,	 'PLATINO',	 '2023-06-06',	3000	,'Expired'	),
(	131	,	 'PLATA',	 '2023-06-07',	3100	,'Expired'	),
(	132	,	 'ORO',	 '2023-06-08',	3200	,'Expired'	),
(	133	,	 'VIP',	 '2023-06-09',	3300	,'Expired'	),
(	134	,	 'PLATINO',	 '2023-06-10',	3400	,'Expired'	),
(	135	,	 'PLATA',	 '2023-06-11',	3500	,'Expired'	),
(	136	,	 'ORO',	 '2023-06-12',	3600	,'Expired'	),
(	137	,	 'VIP',	 '2023-06-13',	500	,'Expired'	),
(	138	,	 'PLATA',	 '2023-06-14',	500	,'Expired'	),
(	139	,	 'PLATA',	 '2023-06-15',	500	,'Expired'	),
(	140	,	 'ORO',	 '2023-06-16',	500	,'Expired'	),
(	141	,	 'PLATA',	 '2023-06-17',	500	,'Expired'	),
(	142	,	 'ORO',	 '2023-06-18',	500	,'Expired'	),
(	143	,	 'VIP',	 '2023-06-19',	500	,'Active'	),
(	144	,	 'PLATA',	 '2023-06-20',	500	,'Active'	),
(	145	,	 'ORO',	 '2023-06-21',	500	,'Active'	),
(	146	,	 'VIP',	 '2023-06-22',	500	,'Active'	),
(	147	,	 'PLATINO',	 '2023-06-23',	500	,'Active'	),
(	148	,	 'PLATA',	 '2023-06-24',	500	,'Active'	),
(	149	,	 'ORO',	 '2023-06-25',	500	,'Active'	),
(	150	,	 'VIP',	 '2023-06-26',	500	,'Active'	),
(	151	,	 'PLATINO',	 '2023-06-27',	500	,'Active'	),
(	152	,	 'PLATA',	 '2023-06-28',	500	,'Active'	),
(	153	,	 'ORO',	 '2023-06-29',	500	,'Active'	),
(	154	,	 'VIP',	 '2023-06-30',	500	,'Active'	),
(	155	,	 'PLATA',	 '2023-07-01',	500	,'Active'	),
(	156	,	 'PLATA',	 '2023-07-02',	500	,'Active'	),
(	157	,	 'ORO',	 '2023-07-03',	500	,'Active'	),
(	158	,	 'PLATA',	 '2023-07-04',	500	,'Active'	),
(	159	,	 'ORO',	 '2023-07-05',	500	,'Active'	),
(	160	,	 'VIP',	 '2023-07-06',	800	,'Active'	),
(	161	,	 'PLATINO',	 '2023-07-07',	800	,'Active'	),
(	162	,	 'PLATA',	 '2023-09-19',	800	,'Active'	),
(	163	,	 'ORO',	 '2023-09-20',	800	,'Active'	),
(	164	,	 'VIP',	 '2023-09-21',	800	,'Active'	),
(	165	,	 'PLATINO',	 '2023-09-22',	800	,'Active'	),
(	166	,	 'PLATA',	 '2023-09-23',	800	,'Active'	),
(	167	,	 'ORO',	 '2023-09-24',	800	,'Active'	),
(	168	,	 'VIP',	 '2023-09-25',	800	,'Active'	),
(	169	,	 'PLATA',	 '2023-09-26',	800	,'Active'	),
(	170	,	 'PLATA',	 '2023-09-27',	800	,'Active'	),
(	171	,	 'ORO',	 '2023-09-28',	800	,'Active'	),
(	172	,	 'PLATA',	 '2023-09-29',	800	,'Active'	),
(	173	,	 'ORO',	 '2023-09-30',	800	,'Active'	),
(	174	,	 'VIP',	 '2023-10-01',	800	,'Active'	),
(	175	,	 'PLATA',	 '2023-10-02',	300	,'Active'	),
(	176	,	 'ORO',	 '2023-10-03',	300	,'Active'	),
(	177	,	 'VIP',	 '2023-10-04',	300	,'Active'	),
(	178	,	 'PLATINO',	 '2023-10-05',	300	,'Active'	),
(	179	,	 'PLATA',	 '2023-10-06',	300	,'Active'	),
(	180	,	 'ORO',	 '2023-10-07',	300	,'Active'	),
(	181	,	 'VIP',	 '2023-10-08',	300	,'Active'	),
(	182	,	 'PLATINO',	 '2023-10-09',	300	,'Active'	),
(	183	,	 'PLATA',	 '2023-10-10',	300	,'Active'	),
(	184	,	 'ORO',	 '2023-10-11',	300	,'Active'	),
(	185	,	 'VIP',	 '2023-10-12',	300	,'Active'	),
(	186	,	 'PLATA',	 '2023-10-13',	300	,'Active'	),
(	187	,	 'PLATA',	 '2023-10-14',	300	,'Expired'	),
(	188	,	 'ORO',	 '2023-10-15',	300	,'Expired'	),
(	189	,	 'PLATA',	 '2023-10-16',	300	,'Expired'	),
(	190	,	 'ORO',	 '2023-10-17',	300	,'Expired'	),
(	191	,	 'VIP',	 '2023-10-18',	300	,'Expired'	),
(	192	,	 'PLATINO',	 '2023-10-19',	300	,'Expired'	),
(	193	,	 'PLATA',	 '2023-10-20',	300	,'Expired'	),
(	194	,	 'ORO',	 '2023-10-21',	300	,'Expired'	),
(	195	,	 'VIP',	 '2023-10-22',	300	,'Expired'	),
(	196	,	 'PLATINO',	 '2023-10-23',	300	,'Expired'	),
(	197	,	 'PLATA',	 '2023-10-24',	300	,'Expired'	),
(	198	,	 'ORO',	 '2023-10-25',	300	,'Expired'	),
(	199	,	 'VIP',	 '2023-10-26',	300	,'Active'	),
(	200	,	 'PLATA',	 '2023-10-27',	300	,'Active'	),
(	201	,	 'PLATA',	 '2023-10-28',	300	,'Active'	),
(	202	,	 'ORO',	 '2023-10-29',	300	,'Active'	),
(	203	,	 'PLATA',	 '2023-10-30',	300	,'Active'	),
(	204	,	 'ORO',	 '2023-10-31',	2000	,'Active'	),
(	205	,	 'VIP',	 '2023-11-01',	2000	,'Active'	),
(	206	,	 'PLATA',	 '2023-11-02',	2000	,'Active'	),
(	207	,	 'ORO',	 '2023-11-03',	2000	,'Active'	),
(	208	,	 'VIP',	 '2023-11-04',	2000	,'Active'	),
(	209	,	 'PLATINO',	 '2023-11-05',	2000	,'Active'	),
(	210	,	 'PLATA',	 '2023-11-06',	2000	,'Active'	),
(	211	,	 'ORO',	 '2023-11-07',	2000	,'Active'	),
(	212	,	 'VIP',	 '2023-11-08',	4000	,'Active'	),
(	213	,	 'PLATA',	 '2023-11-09',	4000	,'Active'	),
(	214	,	 'ORO',	 '2023-11-10',	4000	,'Active'	),
(	215	,	 'BRONCE',	 '2023-11-13',	4000	,'Active'	),
(	216	,	 'BRONCE',	 '2023-11-14',	100	,'Active'	),
(	217	,	 'BRONCE',	 '2023-11-15',	100	,'Active'	),
(	218	,	 'BRONCE',	 '2023-11-16',	100	,'Active'	),
(	219	,	 'BRONCE',	 '2023-11-17',	100	,'Active'	);
GO

---- INSERT USERS.ROLES
SET IDENTITY_INSERT users.roles ON;
INSERT INTO users.roles (role_id, role_name) VALUES
(1, 'Admin'),
(2, 'Gerente'),
(3, 'Oficinista'),
(4, 'Invitado'),
(5, 'Usuario'),
(6, 'Recepcionista'),
(7, 'Limpieza'),
(8, 'Mantenimiento'),
(9, 'Personal de Cocina'),
(10, 'Seguridad');
SET IDENTITY_INSERT users.roles OFF;
GO

---- INSERT USERS.USER_ROLES
INSERT INTO users.user_roles (usro_user_id, usro_role_id) VALUES
(	1	,	1	),
(	2	,	1	),
(	3	,	1	),
(	4	,	1	),
(	5	,	1	),
(	6	,	1	),
(	7	,	1	),
(	8	,	1	),
(	9	,	1	),
(	10	,	1	),
(	11	,	2	),
(	12	,	2	),
(	13	,	2	),
(	14	,	2	),
(	15	,	2	),
(	16	,	2	),
(	17	,	2	),
(	18	,	2	),
(	19	,	2	),
(	20	,	2	),
(	21	,	3	),
(	22	,	3	),
(	23	,	3	),
(	24	,	3	),
(	25	,	3	),
(	26	,	3	),
(	27	,	3	),
(	28	,	3	),
(	29	,	3	),
(	30	,	3	),
(	31	,	6	),
(	32	,	6	),
(	33	,	6	),
(	34	,	6	),
(	35	,	6	),
(	36	,	7	),
(	37	,	7	),
(	38	,	7	),
(	39	,	7	),
(	40	,	7	),
(	41	,	7	),
(	42	,	7	),
(	43	,	7	),
(	44	,	7	),
(	45	,	7	),
(	46	,	7	),
(	47	,	7	),
(	48	,	7	),
(	49	,	7	),
(	50	,	7	),
(	51	,	7	),
(	52	,	7	),
(	53	,	7	),
(	54	,	7	),
(	55	,	7	),
(	56	,	7	),
(	57	,	7	),
(	58	,	7	),
(	59	,	7	),
(	60	,	7	),
(	61	,	7	),
(	62	,	7	),
(	63	,	7	),
(	64	,	7	),
(	65	,	7	),
(	66	,	7	),
(	67	,	7	),
(	68	,	7	),
(	69	,	7	),
(	70	,	7	),
(	71	,	7	),
(	72	,	7	),
(	73	,	7	),
(	74	,	7	),
(	75	,	7	),
(	76	,	7	),
(	77	,	7	),
(	78	,	7	),
(	79	,	7	),
(	80	,	7	),
(	81	,	7	),
(	82	,	7	),
(	83	,	7	),
(	84	,	7	),
(	85	,	7	),
(	86	,	8	),
(	87	,	8	),
(	88	,	8	),
(	89	,	8	),
(	90	,	8	),
(	91	,	8	),
(	92	,	8	),
(	93	,	8	),
(	94	,	8	),
(	95	,	8	),
(	96	,	8	),
(	97	,	8	),
(	98	,	8	),
(	99	,	8	),
(	100	,	9	),
(	101	,	9	),
(	102	,	9	),
(	103	,	9	),
(	104	,	9	),
(	105	,	9	),
(	106	,	9	),
(	107	,	9	),
(	108	,	9	),
(	109	,	9	),
(	110	,	9	),
(	111	,	9	),
(	112	,	9	),
(	113	,	9	),
(	114	,	9	),
(	115	,	9	),
(	116	,	9	),
(	117	,	9	),
(	118	,	9	),
(	119	,	9	),
(	120	,	9	),
(	121	,	10	),
(	122	,	10	),
(	123	,	10	),
(	124	,	10	),
(	125	,	10	),
(	126	,	10	),
(	127	,	10	),
(	128	,	10	),
(	129	,	10	),
(	130	,	10	),
(	131	,	10	),
(	132	,	10	),
(	133	,	10	),
(	134	,	10	),
(	135	,	10	),
(	136	,	10	),
(	137	,	10	),
(	138	,	10	),
(	139	,	10	),
(	140	,	10	),
(	141	,	10	),
(	142	,	10	),
(	143	,	10	),
(	144	,	10	),
(	145	,	10	),
(	146	,	10	),
(	147	,	10	),
(	148	,	10	),
(	149	,	10	),
(	150	,	10	),
(	151	,	4	),
(	152	,	4	),
(	153	,	4	),
(	154	,	4	),
(	155	,	4	),
(	156	,	4	),
(	157	,	4	),
(	158	,	4	),
(	159	,	4	),
(	160	,	4	),
(	161	,	4	),
(	162	,	4	),
(	163	,	4	),
(	164	,	4	),
(	165	,	4	),
(	166	,	4	),
(	167	,	4	),
(	168	,	4	),
(	169	,	4	),
(	170	,	4	),
(	171	,	4	),
(	172	,	4	),
(	173	,	4	),
(	174	,	4	),
(	175	,	4	),
(	176	,	4	),
(	177	,	4	),
(	178	,	4	),
(	179	,	4	),
(	180	,	4	),
(	181	,	4	),
(	182	,	4	),
(	183	,	4	),
(	184	,	4	),
(	185	,	4	),
(	186	,	4	),
(	187	,	4	),
(	188	,	4	),
(	189	,	4	),
(	190	,	4	),
(	191	,	4	),
(	192	,	4	),
(	193	,	4	),
(	194	,	4	),
(	195	,	4	),
(	196	,	4	),
(	197	,	4	),
(	198	,	4	),
(	199	,	4	),
(	200	,	4	),
(	201	,	4	),
(	202	,	4	),
(	203	,	4	),
(	204	,	4	),
(	205	,	4	),
(	206	,	4	),
(	207	,	4	),
(	208	,	4	),
(	209	,	4	),
(	210	,	4	),
(	211	,	4	),
(	212	,	4	),
(	213	,	4	),
(	214	,	4	),
(	215	,	4	),
(	216	,	4	),
(	217	,	4	),
(	218	,	4	),
(	219	,	4	),
(	220	,	4	),
(	221	,	4	),
(	222	,	4	),
(	223	,	4	),
(	224	,	4	),
(	225	,	4	),
(	226	,	4	),
(	227	,	4	),
(	228	,	4	),
(	229	,	4	),
(	230	,	4	),
(	231	,	4	),
(	232	,	4	),
(	233	,	4	),
(	234	,	4	),
(	235	,	4	),
(	236	,	4	),
(	237	,	4	),
(	238	,	4	),
(	239	,	4	),
(	240	,	4	),
(	241	,	4	),
(	242	,	4	),
(	243	,	4	),
(	244	,	4	),
(	245	,	4	),
(	246	,	4	),
(	247	,	4	),
(	248	,	4	),
(	249	,	4	),
(	250	,	4	),
(	251	,	4	),
(	252	,	4	),
(	253	,	4	),
(	254	,	4	),
(	255	,	4	),
(	256	,	4	),
(	257	,	4	),
(	258	,	4	),
(	259	,	4	),
(	260	,	4	),
(	261	,	4	),
(	262	,	4	),
(	263	,	4	),
(	264	,	4	),
(	265	,	4	),
(	266	,	4	),
(	267	,	4	),
(	268	,	4	),
(	269	,	4	),
(	270	,	4	),
(	271	,	4	),
(	272	,	4	),
(	273	,	4	),
(	274	,	4	),
(	275	,	4	),
(	276	,	4	),
(	277	,	4	),
(	278	,	4	),
(	279	,	4	),
(	280	,	4	),
(	281	,	4	),
(	282	,	4	),
(	283	,	4	),
(	284	,	4	),
(	285	,	4	),
(	286	,	4	),
(	287	,	4	),
(	288	,	4	),
(	289	,	4	),
(	290	,	4	),
(	291	,	4	),
(	292	,	4	),
(	293	,	4	),
(	294	,	4	),
(	295	,	4	),
(	296	,	4	),
(	297	,	4	),
(	298	,	4	),
(	299	,	4	),
(	300	,	4	),
(	301	,	5	),
(	302	,	5	),
(	303	,	5	),
(	304	,	5	),
(	305	,	5	),
(	306	,	5	),
(	307	,	5	),
(	308	,	5	),
(	309	,	5	),
(	310	,	5	),
(	311	,	5	),
(	312	,	5	),
(	313	,	5	),
(	314	,	5	),
(	315	,	5	),
(	316	,	5	),
(	317	,	5	),
(	318	,	5	),
(	319	,	5	),
(	320	,	5	),
(	321	,	5	),
(	322	,	5	),
(	323	,	5	),
(	324	,	5	),
(	325	,	5	),
(	326	,	5	),
(	327	,	5	),
(	328	,	5	),
(	329	,	5	),
(	330	,	5	),
(	331	,	5	),
(	332	,	5	),
(	333	,	5	),
(	334	,	5	),
(	335	,	5	),
(	336	,	5	),
(	337	,	5	),
(	338	,	5	),
(	339	,	5	),
(	340	,	5	),
(	341	,	5	),
(	342	,	5	),
(	343	,	5	),
(	344	,	5	),
(	345	,	5	),
(	346	,	5	),
(	347	,	5	),
(	348	,	5	),
(	349	,	5	),
(	350	,	5	),
(	351	,	5	),
(	352	,	5	),
(	353	,	5	),
(	354	,	5	),
(	355	,	5	),
(	356	,	5	),
(	357	,	5	),
(	358	,	5	),
(	359	,	5	),
(	360	,	5	),
(	361	,	5	),
(	362	,	5	),
(	363	,	5	),
(	364	,	5	),
(	365	,	5	),
(	366	,	5	),
(	367	,	5	),
(	368	,	5	),
(	369	,	5	),
(	370	,	5	),
(	371	,	5	),
(	372	,	5	),
(	373	,	5	),
(	374	,	5	),
(	375	,	5	),
(	376	,	5	),
(	377	,	5	),
(	378	,	5	),
(	379	,	5	),
(	380	,	5	),
(	381	,	5	),
(	382	,	5	),
(	383	,	5	),
(	384	,	5	),
(	385	,	5	),
(	386	,	5	),
(	387	,	5	),
(	388	,	5	),
(	389	,	5	),
(	390	,	5	),
(	391	,	5	),
(	392	,	5	),
(	393	,	5	),
(	394	,	5	),
(	395	,	5	),
(	396	,	5	),
(	397	,	5	),
(	398	,	5	),
(	399	,	5	),
(	400	,	5	),
(	401	,	5	),
(	402	,	5	),
(	403	,	5	),
(	404	,	5	),
(	405	,	5	),
(	406	,	5	),
(	407	,	5	),
(	408	,	5	),
(	409	,	5	),
(	410	,	5	),
(	411	,	5	),
(	412	,	5	),
(	413	,	5	),
(	414	,	5	),
(	415	,	5	),
(	416	,	5	),
(	417	,	5	),
(	418	,	5	),
(	419	,	5	),
(	420	,	5	),
(	421	,	5	),
(	422	,	5	),
(	423	,	5	),
(	424	,	5	),
(	425	,	5	),
(	426	,	5	),
(	427	,	5	),
(	428	,	5	),
(	429	,	5	),
(	430	,	5	),
(	431	,	5	),
(	432	,	5	),
(	433	,	5	),
(	434	,	5	),
(	435	,	5	),
(	436	,	5	),
(	437	,	5	),
(	438	,	5	),
(	439	,	5	),
(	440	,	5	),
(	441	,	5	),
(	442	,	5	),
(	443	,	5	),
(	444	,	5	),
(	445	,	5	),
(	446	,	5	),
(	447	,	5	),
(	448	,	5	),
(	449	,	5	),
(	450	,	5	),
(	451	,	5	),
(	452	,	5	),
(	453	,	5	),
(	454	,	5	),
(	455	,	5	),
(	456	,	5	),
(	457	,	5	),
(	458	,	5	),
(	459	,	5	),
(	460	,	5	),
(	461	,	5	),
(	462	,	5	),
(	463	,	5	),
(	464	,	5	),
(	465	,	5	),
(	466	,	5	),
(	467	,	5	),
(	468	,	5	),
(	469	,	5	),
(	470	,	5	),
(	471	,	5	),
(	472	,	5	),
(	473	,	5	),
(	474	,	5	),
(	475	,	5	),
(	476	,	5	),
(	477	,	5	),
(	478	,	5	),
(	479	,	5	),
(	480	,	5	),
(	481	,	5	),
(	482	,	5	),
(	483	,	5	),
(	484	,	5	),
(	485	,	5	),
(	486	,	5	),
(	487	,	5	),
(	488	,	5	),
(	489	,	5	),
(	490	,	5	),
(	491	,	5	),
(	492	,	5	),
(	493	,	5	),
(	494	,	5	),
(	495	,	5	),
(	496	,	5	),
(	497	,	5	),
(	498	,	5	),
(	499	,	5	),
(	500	,	5	),
(	501	,	5	),
(	502	,	5	),
(	503	,	5	),
(	504	,	5	),
(	505	,	5	),
(	506	,	5	),
(	507	,	5	),
(	508	,	5	),
(	509	,	5	),
(	510	,	5	),
(	511	,	5	),
(	512	,	5	),
(	513	,	5	),
(	514	,	5	),
(	515	,	5	),
(	516	,	5	),
(	517	,	5	),
(	518	,	5	),
(	519	,	5	),
(	520	,	5	),
(	521	,	5	),
(	522	,	5	),
(	523	,	5	),
(	524	,	5	),
(	525	,	5	),
(	526	,	5	),
(	527	,	5	),
(	528	,	5	),
(	529	,	5	),
(	530	,	5	),
(	531	,	5	),
(	532	,	5	),
(	533	,	5	),
(	534	,	5	),
(	535	,	5	),
(	536	,	5	),
(	537	,	5	),
(	538	,	5	),
(	539	,	5	),
(	540	,	5	),
(	541	,	5	),
(	542	,	5	),
(	543	,	5	),
(	544	,	5	),
(	545	,	5	),
(	546	,	5	),
(	547	,	5	),
(	548	,	5	),
(	549	,	5	),
(	550	,	5	),
(	551	,	5	),
(	552	,	5	),
(	553	,	5	),
(	554	,	5	),
(	555	,	5	),
(	556	,	5	),
(	557	,	5	),
(	558	,	5	),
(	559	,	5	),
(	560	,	5	),
(	561	,	5	),
(	562	,	5	),
(	563	,	5	),
(	564	,	5	),
(	565	,	5	),
(	566	,	5	),
(	567	,	5	),
(	568	,	5	),
(	569	,	5	),
(	570	,	5	),
(	571	,	5	),
(	572	,	5	),
(	573	,	5	),
(	574	,	5	),
(	575	,	5	),
(	576	,	5	),
(	577	,	5	),
(	578	,	5	),
(	579	,	5	),
(	580	,	5	),
(	581	,	5	),
(	582	,	5	),
(	583	,	5	),
(	584	,	5	),
(	585	,	5	),
(	586	,	5	),
(	587	,	5	),
(	588	,	5	),
(	589	,	5	),
(	590	,	5	),
(	591	,	5	),
(	592	,	5	),
(	593	,	5	),
(	594	,	5	),
(	595	,	5	),
(	596	,	5	),
(	597	,	5	),
(	598	,	5	),
(	599	,	5	),
(	600	,	5	),
(	601	,	5	),
(	602	,	5	),
(	603	,	5	),
(	604	,	5	),
(	605	,	5	),
(	606	,	5	),
(	607	,	5	),
(	608	,	5	),
(	609	,	5	),
(	610	,	5	),
(	611	,	5	),
(	612	,	5	),
(	613	,	5	),
(	614	,	5	),
(	615	,	5	),
(	616	,	5	),
(	617	,	5	),
(	618	,	5	),
(	619	,	5	),
(	620	,	5	),
(	621	,	5	),
(	622	,	5	),
(	623	,	5	),
(	624	,	5	),
(	625	,	5	),
(	626	,	5	),
(	627	,	5	),
(	628	,	5	),
(	629	,	5	),
(	630	,	5	),
(	631	,	5	),
(	632	,	5	),
(	633	,	5	),
(	634	,	5	),
(	635	,	5	),
(	636	,	5	),
(	637	,	5	),
(	638	,	5	),
(	639	,	5	),
(	640	,	5	),
(	641	,	5	),
(	642	,	5	),
(	643	,	5	),
(	644	,	5	),
(	645	,	5	),
(	646	,	5	),
(	647	,	5	),
(	648	,	5	),
(	649	,	5	),
(	650	,	5	),
(	651	,	5	),
(	652	,	5	),
(	653	,	5	),
(	654	,	5	),
(	655	,	5	),
(	656	,	5	),
(	657	,	5	),
(	658	,	5	),
(	659	,	5	),
(	660	,	5	),
(	661	,	5	),
(	662	,	5	),
(	663	,	5	),
(	664	,	5	),
(	665	,	5	),
(	666	,	5	),
(	667	,	5	),
(	668	,	5	),
(	669	,	5	),
(	670	,	5	),
(	671	,	5	),
(	672	,	5	),
(	673	,	5	),
(	674	,	5	),
(	675	,	5	),
(	676	,	5	),
(	677	,	5	),
(	678	,	5	),
(	679	,	5	),
(	680	,	5	),
(	681	,	5	),
(	682	,	5	),
(	683	,	5	),
(	684	,	5	),
(	685	,	5	),
(	686	,	5	),
(	687	,	5	),
(	688	,	5	),
(	689	,	5	),
(	690	,	5	),
(	691	,	5	),
(	692	,	5	),
(	693	,	5	),
(	694	,	5	),
(	695	,	5	),
(	696	,	5	),
(	697	,	5	),
(	698	,	5	),
(	699	,	5	),
(	700	,	5	),
(	701	,	5	),
(	702	,	5	),
(	703	,	5	),
(	704	,	5	),
(	705	,	5	),
(	706	,	5	),
(	707	,	5	),
(	708	,	5	),
(	709	,	5	),
(	710	,	5	),
(	711	,	5	),
(	712	,	5	),
(	713	,	5	),
(	714	,	5	),
(	715	,	5	),
(	716	,	5	),
(	717	,	5	),
(	718	,	5	),
(	719	,	5	),
(	720	,	5	),
(	721	,	5	),
(	722	,	5	),
(	723	,	5	),
(	724	,	5	),
(	725	,	5	),
(	726	,	5	),
(	727	,	5	),
(	728	,	5	),
(	729	,	5	),
(	730	,	5	),
(	731	,	5	),
(	732	,	5	),
(	733	,	5	),
(	734	,	5	),
(	735	,	5	),
(	736	,	5	),
(	737	,	5	),
(	738	,	5	),
(	739	,	5	),
(	740	,	5	),
(	741	,	5	),
(	742	,	5	),
(	743	,	5	),
(	744	,	5	),
(	745	,	5	),
(	746	,	5	),
(	747	,	5	),
(	748	,	5	),
(	749	,	5	),
(	750	,	5	),
(	751	,	5	),
(	752	,	5	),
(	753	,	5	),
(	754	,	5	),
(	755	,	5	),
(	756	,	5	),
(	757	,	5	),
(	758	,	5	),
(	759	,	5	),
(	760	,	5	),
(	761	,	5	),
(	762	,	5	),
(	763	,	5	),
(	764	,	5	),
(	765	,	5	),
(	766	,	5	),
(	767	,	5	),
(	768	,	5	),
(	769	,	5	),
(	770	,	5	),
(	771	,	5	),
(	772	,	5	),
(	773	,	5	),
(	774	,	5	),
(	775	,	5	),
(	776	,	5	),
(	777	,	5	),
(	778	,	5	),
(	779	,	5	),
(	780	,	5	),
(	781	,	5	),
(	782	,	5	),
(	783	,	5	),
(	784	,	5	),
(	785	,	5	),
(	786	,	5	),
(	787	,	5	),
(	788	,	5	),
(	789	,	5	),
(	790	,	5	),
(	791	,	5	),
(	792	,	5	),
(	793	,	5	),
(	794	,	5	),
(	795	,	5	),
(	796	,	5	),
(	797	,	5	),
(	798	,	5	),
(	799	,	5	),
(	800	,	5	),
(	801	,	5	),
(	802	,	5	),
(	803	,	5	),
(	804	,	5	),
(	805	,	5	),
(	806	,	5	),
(	807	,	5	),
(	808	,	5	),
(	809	,	5	),
(	810	,	5	),
(	811	,	5	),
(	812	,	5	),
(	813	,	5	),
(	814	,	5	),
(	815	,	5	),
(	816	,	5	),
(	817	,	5	),
(	818	,	5	),
(	819	,	5	),
(	820	,	5	),
(	821	,	5	),
(	822	,	5	),
(	823	,	5	),
(	824	,	5	),
(	825	,	5	),
(	826	,	5	),
(	827	,	5	),
(	828	,	5	),
(	829	,	5	),
(	830	,	5	),
(	831	,	5	),
(	832	,	5	),
(	833	,	5	),
(	834	,	5	),
(	835	,	5	),
(	836	,	5	),
(	837	,	5	),
(	838	,	5	),
(	839	,	5	),
(	840	,	5	),
(	841	,	5	),
(	842	,	5	),
(	843	,	5	),
(	844	,	5	),
(	845	,	5	),
(	846	,	5	),
(	847	,	5	),
(	848	,	5	),
(	849	,	5	),
(	850	,	5	),
(	851	,	5	),
(	852	,	5	),
(	853	,	5	),
(	854	,	5	),
(	855	,	5	),
(	856	,	5	),
(	857	,	5	),
(	858	,	5	),
(	859	,	5	),
(	860	,	5	),
(	861	,	5	),
(	862	,	5	),
(	863	,	5	),
(	864	,	5	),
(	865	,	5	),
(	866	,	5	),
(	867	,	5	),
(	868	,	5	),
(	869	,	5	),
(	870	,	5	),
(	871	,	5	),
(	872	,	5	),
(	873	,	5	),
(	874	,	5	),
(	875	,	5	),
(	876	,	5	),
(	877	,	5	),
(	878	,	5	),
(	879	,	5	),
(	880	,	5	),
(	881	,	5	),
(	882	,	5	),
(	883	,	5	),
(	884	,	5	),
(	885	,	5	),
(	886	,	5	),
(	887	,	5	),
(	888	,	5	),
(	889	,	5	),
(	890	,	5	),
(	891	,	5	),
(	892	,	5	),
(	893	,	5	),
(	894	,	5	),
(	895	,	5	),
(	896	,	5	),
(	897	,	5	),
(	898	,	5	),
(	899	,	5	),
(	900	,	5	),
(	901	,	5	),
(	902	,	5	),
(	903	,	5	),
(	904	,	5	),
(	905	,	5	),
(	906	,	5	),
(	907	,	5	),
(	908	,	5	),
(	909	,	5	),
(	910	,	5	),
(	911	,	5	),
(	912	,	5	),
(	913	,	5	),
(	914	,	5	),
(	915	,	5	),
(	916	,	5	),
(	917	,	5	),
(	918	,	5	),
(	919	,	5	),
(	920	,	5	),
(	921	,	5	),
(	922	,	5	),
(	923	,	5	),
(	924	,	5	),
(	925	,	5	),
(	926	,	5	),
(	927	,	5	),
(	928	,	5	),
(	929	,	5	),
(	930	,	5	),
(	931	,	5	),
(	932	,	5	),
(	933	,	5	),
(	934	,	5	),
(	935	,	5	),
(	936	,	5	),
(	937	,	5	),
(	938	,	5	),
(	939	,	5	),
(	940	,	5	),
(	941	,	5	),
(	942	,	5	),
(	943	,	5	),
(	944	,	5	),
(	945	,	5	),
(	946	,	5	),
(	947	,	5	),
(	948	,	5	),
(	949	,	5	),
(	950	,	5	),
(	951	,	5	),
(	952	,	5	),
(	953	,	5	),
(	954	,	5	),
(	955	,	5	),
(	956	,	5	),
(	957	,	5	),
(	958	,	5	),
(	959	,	5	),
(	960	,	5	),
(	961	,	5	),
(	962	,	5	),
(	963	,	5	),
(	964	,	5	),
(	965	,	5	),
(	966	,	5	),
(	967	,	5	),
(	968	,	5	),
(	969	,	5	),
(	970	,	5	),
(	971	,	5	),
(	972	,	5	),
(	973	,	5	),
(	974	,	5	),
(	975	,	5	),
(	976	,	5	),
(	977	,	5	),
(	978	,	5	),
(	979	,	5	),
(	980	,	5	),
(	981	,	5	),
(	982	,	5	),
(	983	,	5	),
(	984	,	5	),
(	985	,	5	),
(	986	,	5	),
(	987	,	5	),
(	988	,	5	),
(	989	,	5	),
(	990	,	5	),
(	991	,	5	),
(	992	,	5	),
(	993	,	5	),
(	994	,	5	),
(	995	,	5	),
(	996	,	5	),
(	997	,	5	),
(	998	,	5	),
(	999	,	5	),
(	1000	,5	);
GO

exec PA_user_profiles ;
GO

SET IDENTITY_INSERT users.user_password ON;
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (1, 'dZ2Irf)KzV@L9Gt#', '2e8h5cXfXT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (2, 'pW2ZD}zmN', '1b158xG6MQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (3, 'cO8,t*B@P68jJ4lJ', '7c2z9jJvWV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (4, 'jP7KH{wK&w', '7b545cG0NR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (5, 'hK8HFaL3n2Fe', '2c8Y5dSISB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (6, 'jX7?9)8oF3', '4t3U3rdiPS');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (7, 'uU5y$Xu<Av*y', '1x522aoNMA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (8, 'sS96b(&6b5', '7a4f0tnk6R');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (9, 'bW1PWE<Cm{jyr', '3k5A1t7FKN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (10, 'vR9OT%<*?S', '5c9J9t1qCW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (11, 'yK0_*"ul4y"K%', '4g9n3ti4PY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (12, 'lU8z''17Tjy', '5a0j8iDMAJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (13, 'zR1s*a`q2%d\lg<', '1z9l9hSKYP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (14, 'nA1qCEA.3Ad8', '4p1S2c4iKJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (15, 'cB26++P6%%Bd?d5C', '3i6O7atW92');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (16, 'vR0lP5j7`o', '4p0z3gkPGY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (17, 'dK40,rcQ$pt|P', '6h7w5kVkS0');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (18, 'yA2eO!"#b*)', '2h3S8vYnVX');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (19, 'oV9w~=r1=w9j&,', '5c4m9tZfFA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (20, 'gS5L1QJN&~=(.zn', '9b9a7bM619');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (21, 'jE5VQ+j(6o@', '2b1Z8xj2VD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (22, 'xQ7ma|Gpv{', '5v2A9xY0OM');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (23, 'rS0&#YvwN=', '0e2Z7xaBCY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (24, 'lN54b*fwxB7', '7d5y9iwIHQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (25, 'eG2R\cpI?P0R~', '7c3q8kOHTL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (26, 'uB4bT/0cA@gF>', '9q4H6vd5DW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (27, 'zH1*C&A'',C8eF', '8l0U5ukPV2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (28, 'hO0Kz1@qn,2(', '7g9x7nCw63');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (29, 'pL97/t#p@"<M6{2$', '1n1u8lzdV9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (30, 'yN2tH?6Xf', '8i2f9mLzA4');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (31, 'nA1R(w\dDz<', '5w4S3sWBOT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (32, 'nI9h8jlA|', '9o9c9sSe2H');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (33, 'eF3552yOOIrA', '8s0o3rL6G2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (34, 'lX6gr+}H/', '3p1T0spnNW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (35, 'cO6HL@vzKaaq>{', '4h323fO3QT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (36, 'oT7AAZ+oV\~.X6t', '5l4T3eOgBL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (37, 'jI4N72t#`EAk', '8g246yccBU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (38, 'gD1WIY<#1hy\Q?&o', '8l5O9y0V5J');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (39, 'eS4%*yJu!dYH', '3q2D0rHJAB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (40, 'sM9$|vf(T/W}|', '8p7O0eFwEE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (41, 'rF4CPa0Ud85wXg)8', '8j6K2e88JG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (42, 'pK5#6}N)B"W!', '8c2C2dxzYP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (43, 'yQ8|PZLgR|}jxQ(X', '4q897ayrRA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (44, 'mY7S6lO\=t~{pQm', '9p640mRXR5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (45, 'lR0\u0\=', '3s0J7iOmKK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (46, 'wR0*E+''DK', '8m684gRPAL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (47, 'iA3K@p_''*|bP', '1i3P5z5mYD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (48, 'kW6fjG|9RV', '5u684yK0VU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (49, 'aQ5F#tK=9GbH2', '3y644tmUUM');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (50, 'gD2y/z+|fdj(3', '4s6F6sA2PZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (51, 'gM42c*@3h', '6g9B3aMjW5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (52, 'qT6>!F~fmG*', '1r6n5aYYYI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (53, 'oF7I%''!3mf?', '2p4S2bUqMD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (54, 'tE0*iPf8Xne)', '0i8X2afRK3');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (55, 'cU7JrXa2', '3m3W7elGVH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (56, 'oB3TD|!bwf|lQ', '6o624ubjIQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (57, 'pL0,s,`!OWZ~', '4o446fk880');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (58, 'hI6Q){S0&IA', '9z3A0ywr3A');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (59, 'eH8Oy>{CZKI', '9v1d0ybRNG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (60, 'xM7ZekBU5k}Z\P,', '2p8I7ro39E');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (61, 'qT4f*N*fjA', '6w3J7xMKBE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (62, 'fS4g{xof&', '6x0i5polH2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (63, 'lY7*7ah_~9yE4PM', '5h3p3fsQJ6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (64, 'dX2MSvMKIlTvWP', '3t3n6tAG3Y');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (65, 'iB05poTE\2o#eI', '6w2I7jzKV7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (66, 'cD1EN0#''#KB_AL,G', '2f0B0j8GWX');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (67, 'cJ8d''{b1RAbtu%', '6m3y0e6GYG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (68, 'dB8.|Cq>rs', '3d1j5j67FR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (69, 'rL6qJKDv&6>&*', '6g6X1zWJZ0');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (70, 'yC1@WD_R?RJfy>tL', '3u8f8kPb8F');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (71, 'hA01PuP5j?M`@J9d', '3l9E9yF4RT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (72, 'hV3RV`59vGSU&1', '8w2V7ufoMU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (73, 'nS04mYM.a=emGtL', '6b348nYS5H');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (74, 'jU10CzWcN9RdT<R', '5x8v8wjE8D');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (75, 'aY3@@wrwp@SN2lUT', '0g8Z4lJZY5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (76, 'vG2CI%L_Y', '0y7c0vdAZK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (77, 'hM9\_/I|q4G,`', '5q6C7jsNI5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (78, 'mN7Y\S"04Q31s', '8u402r9qCR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (79, 'vP2ze/~0zHt>+q98', '5b1r2oeqNB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (80, 'kY6sy\Q!`mODA<>', '1u169btb2P');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (81, 'mZ2d/l&''QFx5oY%L', '8f7r6j1FFE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (82, 'zI0z#IENw/2N', '7t1W5gWL20');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (83, 'vS5.BJ4{', '8o7C2tpD5Z');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (84, 'pJ9.%tSmWUc', '8x7R1vL8RM');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (85, 'hQ7JGw4|_s!,_y.', '7h1c3nQw8L');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (86, 'kS50h1yYboc', '1c7j7d1NWO');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (87, 'aI7yp&0evPfc~#', '8v3l9hj61P');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (88, 'kR3_sD9$3}wMD', '5s0h2y1VPS');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (89, 'yS5Z\<)0yL', '8h9y8dqm3H');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (90, 'vQ7/@IUnM{6X6&', '6a3Y9gsP92');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (91, 'uE6TM8"{+gpzB<M', '5k9B2vpGKH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (92, 'tJ0,52~2(', '3r7g1sroW5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (93, 'nQ2Wd7$&wIk', '1o5G6y7rFD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (94, 'tX2/aUTo*', '9a5c7ht7IC');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (95, 'tS38Yc9Md', '0l7u1gBoDD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (96, 'hE4?M,Pnft@', '4k4Z8q1M3L');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (97, 'kZ0A~rY}P3?\l)', '9h957d24R8');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (98, 'lA6_FKEG', '1c9S3kWN73');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (99, 'cF9??ot}&5vNm<&', '3y888vYXSN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (100, 'mL4Yt.WK1|t5', '6h6x9hNWS2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (101, 'eZ4(9$w0nxl`4', '7n411aZHPF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (102, 'mP1"K7@UL@', '9v2c3mRoEZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (103, 'aU2+Z=h=S', '8x2V9d6nZ7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (104, 'dF5X%U+M!', '6r650w8XA6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (105, 'cT9"lFh|', '7n9t2rNf0T');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (106, 'sB2,Lp4M+w', '9h6k8agnL7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (107, 'iV0FwVu#', '2v8Z2kdJCG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (108, 'sG9n8Tmy&q}w*j', '9j7R4h3N0F');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (109, 'rD7$Z"nqLscmP', '7k4M1aFk9P');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (110, 'sR40P3E!R\*dM@C', '7s0d7xyB7C');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (111, 'xL5l\#Ld''y3I?"', '0f5W2lzBN5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (112, 'eK3Us*Y`!wb4rm90', '3r4h4mFh4X');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (113, 'jI7RSs0de&Ze(_e', '1b5d3mcWE6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (114, 'gN78Ct*6dmx', '2m8M8w0rF2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (115, 'dB32<=s*tP|A', '6c5G7xoD8A');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (116, 'iE1t""!!', '3h5e8xDT00');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (117, 'dA1~EO5J{>', '1z7a7vMB0G');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (118, 'gT8G''r>2', '9z7I8tEaTT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (119, 'zC2)z<mKq', '3g9C0i2OPR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (120, 'wI28WyV4_{', '9f7P4lcWUH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (121, 'mA7KFD?3`+qMZ?', '8m5R3zpuIJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (122, 'sN0\NVzTLJcr1''bI', '6r383l4dNE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (123, 'dC2IB@D6fc(v))5', '2w667oUj7L');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (124, 'lW4=eYE~(87', '9v0x6w8TUA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (125, 'mS39m`j=C0,DS', '4n9T7ohuSR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (126, 'yD4H=V3qZCtN7X', '1s138l0EMI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (127, 'hU2ql(!CXmQw%h', '8t3Z8k1vMQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (128, 'uN79wNB5k', '6r680vh9RY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (129, 'oW8|ea4,J@,', '7r7h9i5kK0');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (130, 'yI6Dvq42Zv', '9u9U8iOFQT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (131, 'tC0T{ouH', '4x4m1uF6JZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (132, 'cK13Kdu\GP', '3q8v9gzqS4');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (133, 'hH4U\''L>', '1h1s5kkG8E');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (134, 'rD4OcM@B@8uyDr', '6q8s4aNFL7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (135, 'hX3+Cho`E#+J}w', '6m2v5jvsTW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (136, 'fE9Q,MjilB$', '4p1z0qDyIY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (137, 'cN9|iyN6u', '8h0V5l2hYZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (138, 'zG6|Lfj__I', '1k2v3i8YUE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (139, 'aK8,=lt>7m', '4u8e0elKMO');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (140, 'hN3~zhEt', '8b1d5bMBWL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (141, 'nX6T&}"cL', '9c490meB34');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (142, 'dV4ALmIqs6}IoJc5', '0c2m4jR93P');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (143, 'rP08sq0j', '4b8E8ltCG3');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (144, 'kL7P|fg@`"', '9a6n0lTO7Q');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (145, 'tA4?o&>0#zu', '1g5A5aE7AC');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (146, 'bI7aRj#mC%q', '7l650ufbKG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (147, 'gL7KyFdKTsOHL@', '6g7O5tHwLK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (148, 'tL3ApJ+<P#', '6o3Q4q6f4I');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (149, 'kC1k''}wUV2', '0s778vPKZI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (150, 'sL7TtZ~#H|c', '1k331wrDHQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (151, 'hG5gD!?Qcyu7ZqN', '6n4P6dOACB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (152, 'eR7(w!e~I?.5', '7o0A3t2M7K');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (153, 'qH42<F`?', '8x0O0wVi6O');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (154, 'rZ5VY@5~!Ne)u(O''', '7j9F6tnp4V');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (155, 'nS2ZXEjStZTs', '4m205gN934');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (156, 'rF5m"<8wy', '5r3M9xSZCD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (157, 'nT6T*I|Oxnez}', '0o8l4bxjRN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (158, 'eO8#D`=J~zcd', '9p5V5am114');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (159, 'pS2S7.wd,%k', '5y8z7tU56U');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (160, 'qC9prE"Rg', '6k1j4unFST');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (161, 'xF97Cl3MHR"', '6q219p5G7L');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (162, 'dT61|g9AZl/Qm', '6a7k1mxmWP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (163, 'fQ0$|pltXrI', '3z5m8omBA3');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (164, 'wX01s0VBD', '7o1I3cMpQB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (165, 'uE3OW4N/A', '1w7a5fj1M0');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (166, 'vW8?JA)T!eXLrw)A', '9s8f5y62QC');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (167, 'iN68=l{cz"Vps', '5z2o3s46FF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (168, 'vB6|~CxbP8!AFGa', '9s5b7u4uHH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (169, 'mL4c~#sIFdpLqgf', '4r0k9x9J5B');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (170, 'aP4OsKz`', '2i8w3k2vSE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (171, 'pO6UrT<LHD|L', '7m4S2gez1D');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (172, 'dN7d(_IHd{_m', '7j0g1j1qRA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (173, 'uT9gmU<0\=', '4t3d2yCfV1');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (174, 'sU2DlBSbpGp@/>w,', '0d4J3gCg4L');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (175, 'pI5CvhyI"}', '6h9R1t6rVJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (176, 'nI0|79_4p?PTE', '7i0k3iUXQ3');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (177, 'hI8B"QxSHNR&b', '1c769mRnDG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (178, 'nA5"I{`2', '4d1z4il0UV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (179, 'fR2GFN@dfFmkx', '7u7o5jjX2A');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (180, 'kM0b2$Y0t~p2%m', '4j7M6mxY5B');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (181, 'uN5RR0?G%rx', '4j7k4jNyEB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (182, 'gB9J28U$.lk%#.`', '9r9L7lXv23');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (183, 'gC2(|JkHzM"+p''_v', '7m6f4vvDT9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (184, 'wP667*O)Fh', '3m868usLFP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (185, 'rZ8%nt_iQ}K', '7w272m8MA0');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (186, 'qE6KIF%qu0', '3f9A5hixEL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (187, 'wH2C6z3N"{hX%&0g', '7z676j4E3P');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (188, 'rL9$pm0l|)f/K', '6t6Z2o1CPU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (189, 'vE7&n4Ee}0', '3u1U4h9TEK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (190, 'sB1c,S+2=oRq}', '6w8s4qlwZG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (191, 'eI9)Z+4qKQk+{cUL', '5f2F7eyONA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (192, 'qN6BeMquji8!IAb', '2r8D2eyt67');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (193, 'wJ3(pgp(z`IgH\B', '1o3i8oZm42');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (194, 'tW9qB<|LdPwuVvJ`', '0j1Y2hydAT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (195, 'mT8P&/u<%XN', '5y2G0iWe7G');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (196, 'qS2v/OO7q`q#R+.', '1m4J7aLoGB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (197, 'pP65`&?v', '5r6J2f7zD2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (198, 'yN8yNz8ke#e<_', '6m3N2vam72');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (199, 'oU5y6${$umQY,+', '1u7F0wcAB9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (200, 'bT2,iQuj4Pqc', '0f0a9nuTBT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (201, 'lG3LAvjrVT.WfR', '3o6P1gWxEG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (202, 'sB0iMz$n', '2a2T5awxDG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (203, 'bC9q+i8LX', '5a4C7omCRP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (204, 'dY0W*h)ZIRSz', '1g4e1qcO8J');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (205, 'cE1Sf3sSwEDVw', '5v5Z5hTaE6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (206, 'nQ3|Tsu9xT9F022', '3t8t3eW9P9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (207, 'mR5H3JDWP', '2l3Y4qND4P');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (208, 'vA0dN9%B7i', '7g8J0oLCO2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (209, 'pZ17sd!Pq=68', '8r0G3nwXF2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (210, 'vP0@?#GGqCz', '9y4G7eciFG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (211, 'hQ9$(33|tH', '3g6z2b6WW2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (212, 'dS1x3%U1@~h*', '3k3r3icq0N');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (213, 'pA58z,s(D+MqT#', '8m5C5nUSR9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (214, 'qU9Qn~Piyv', '3n4X9z5r0L');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (215, 'rG9U.#nNX''k"H', '0r7X7aWoT4');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (216, 'aG6>O<ZeIF)5Pa2', '1f0c5giZ5E');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (217, 'jB1GJ?*,(X', '3h9L5kzLOY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (218, 'wT18zPG6', '5x928zMeK7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (219, 'qW7uLLv}5ekZ', '6a7G8yzQ3I');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (220, 'cG5.|4r8', '4q9L3xgRJV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (221, 'hR1}Wq&V\L~', '9d0R8wkzGZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (222, 'qB8(j2<&##', '1l6W8re23X');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (223, 'wV2Y*/v#`#xG', '6v6e9r2A1E');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (224, 'kA7a|c%Tuts', '9n2n9umuVW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (225, 'jE1skP+F_>U#EX', '9e2I5uG4Y6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (226, 'kM5`KbTGQG2<', '3o054xcn3L');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (227, 'sF0QV=4v9C&', '6j4o3sOUFF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (228, 'cH7''.ek|yvKvh)M', '8a2X0k5AKZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (229, 'zR3n>yU\X"i<', '2d0o0q6K7I');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (230, 'jT9}@JP''', '4n9q6jbI2Q');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (231, 'fO1$&Q8{S$9I09=', '9s659lmn8X');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (232, 'qX5@JY>~B3\U)', '3q2f2tx5PA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (233, 'gO6#fC_%y''`u', '5i9M9fRxH7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (234, 'aP4GOCGe%UkhH$''', '2s4r0u2JAP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (235, 'eC7J.l7pb', '2r9D8gB8SJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (236, 'jM5rBC"t0', '2l9v1bLnVJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (237, 'gA6E"7uV+', '1g4J7zoS7B');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (238, 'zC0S/e3q', '4q3q4qaIT0');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (239, 'lC52Jp"Ep_', '8d2r0nlaDQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (240, 'nJ8d2yqy', '1n8J5iNZQH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (241, 'jN6TaD*E', '7c696pmLCA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (242, 'oE1SZGn=J&D', '9p314l3z56');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (243, 'eW2F2YTcE', '8l2E4dWuXB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (244, 'oJ3\YrMPI\k''`*0', '5x5i8nqkC2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (245, 'lQ8bJ!%y6V(,n', '3r6m3grkIJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (246, 'aQ7+QfNtt}', '1k8L0gv3O5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (247, 'bP0''3Z5n_4Ql<iYR', '5i1n1mHyAV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (248, 'oU5g3FgYd=Xu~e7', '4w6u1gSm3M');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (249, 'mH0q.bmaao2', '7b9x9tSNFH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (250, 'eA7Hz(ZGwfyh<&=9', '1e6z5fagUC');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (251, 'vS2e$v|jj', '0f5f0vpZMV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (252, 'gL6B(''AJR@!!`g', '3i7G2y7DCR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (253, 'mU7}XXg`xH/iS\', '9o0k0zpeRK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (254, 'aN7)&XxF@Y(ow', '0v3m4mi03E');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (255, 'mZ9/&KH}>6wJ>', '4q3V0ew8Y7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (256, 'oQ0pz?RI<Y9TuG4)', '5n5d3hteIB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (257, 'oQ3#xM12Wt+', '2x3F1saOC3');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (258, 'mC1X%m''+Udy', '4s7j5m0yAG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (259, 'dG0p~LLt', '3k588tx1QK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (260, 'pZ3*wnGmYgUux2u', '1a2S1kyWRJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (261, 'gY6~xHQGyRi.w', '4l1d6ooK46');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (262, 'dE7Z9i@R21P', '9n8i4tQ10I');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (263, 'kY7X(|9ss!7CS', '8l9e9o1bE3');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (264, 'dE0y)HGo@(F<', '2v9N4jbg9Y');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (265, 'cU0>''**r', '4x755benSN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (266, 'lD7OUnHda', '4u2A9p2iHL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (267, 'lU8v7AxFqzo9S', '4i8J2nybVI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (268, 'eL0"B~OK<{"s)~', '5f208oY9HO');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (269, 'cJ3Q0nDhv', '6q5M3aRaSF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (270, 'vR4Ls<pDP+=M2', '1g6A8fSaTD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (271, 'bL7Q<*~Fnz5', '8o6U8iSlKJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (272, 'fZ2lR!fs3PSw8Sg', '5t3N8jQJAU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (273, 'nQ0%`jQ5H..Gaj#', '0z7s1wAOV7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (274, 'qK8tB!y=U(&4Qh', '0q890mKASU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (275, 'iT7G@JL5L', '4w9d5wus4A');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (276, 'mN0qub"7+OVn/', '8q1l1kbK7T');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (277, 'hS7roRWJ', '3b501t3r9P');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (278, 'xM9a5?R6J%g+.yZ', '1i3H9ukbMP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (279, 'mX9Mww2YSX*{5Dg', '8b538pX17F');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (280, 'bJ0tn)n2|>`Of', '7j6p9gRtGV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (281, 'uJ1Vm.4A<', '6p4J0xFzDO');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (282, 'mS2TN0MC7#mYF,', '4n4n8sToQF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (283, 'kR81H*{}v', '4k0c0iE78I');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (284, 'iJ8y1W{xDIV,|.j', '3q2v2mpt5C');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (285, 'mU6dDe1H0', '0b6M3uj2NZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (286, 'qL6!V{>MB', '9v2A4iWc1O');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (287, 'vB7Wt&`KF>OKeV', '5c2H4knBLV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (288, 'oF2`\qt)uhPxas!y', '5n5O7zVxYL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (289, 'gG7Yd9/oqyiC', '9f0j3fBuN7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (290, 'wB5a.(b#Z', '9k1I1hKAFL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (291, 'sA8&msIn_1', '7q5B0y6V35');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (292, 'gM0qywIxWc', '6t4Y4yy8TU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (293, 'bB6@iaD<TS@', '6w442vLwMK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (294, 'mR1k@hH)', '2g864iLcPR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (295, 'iR5?q_&/b', '1k9T8kCX94');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (296, 'yM6GGRVgzujPI}', '3b3O4qZRCN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (297, 'vL70bB<n/VT.<pBz', '9p1A7qfY8T');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (298, 'dV7@LAT!*Ao2h"/_', '5a5p4aLX0B');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (299, 'aI7jB2c4L}GI7e', '8y8A8icF6C');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (300, 'zF7m7uY''w$/Y5', '5j5u1nTBTV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (301, 'hD8454''{B', '7z6C4opNQ6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (302, 'oO6s\0Sp(', '9o6E7iAhIW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (303, 'lO0.Tf"z~cp}h@"D', '1n3k6wPA1R');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (304, 'nH2tryySzVt300vd', '4n4T5mfiCW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (305, 'aA3OVCPfvt', '7v2W9s2F7I');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (306, 'cG2W9&gC&', '1e8W8vvy2N');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (307, 'tZ6)WD!Bj', '9c2K1cRR3W');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (308, 'aQ7ATD<B{M`.\', '3j9f4m12HN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (309, 'tF3e2OChl78)', '6l1T3kwpGI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (310, 'vO3!eh7`#Q', '2q9x1uOlF5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (311, 'jK5iK.O@PrcDQ', '5a9S5dBYAY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (312, 'tZ8L{7TI2q', '2s0b5fUZXN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (313, 'mH8~*q3''', '5d3c1eKMRI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (314, 'bH450Owmn.iDW''k', '4z1V1fANQ3');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (315, 'xJ6({ZElvbq', '8x815qPUAG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (316, 'hF3RIH#{t#vWB', '1z287cZaSH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (317, 'nP9#pC''K%Y', '6f659ylh09');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (318, 'aA5#Sx)v~e_rc', '2k5t6eeMN7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (319, 'fS1/p(o4T', '6b2b7pTsEB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (320, 'rN1Cb5S`', '0r1Z4yGv2M');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (321, 'kM4mm|y1,IZ''', '5i5p3ilK16');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (322, 'nE3Ol&b`J)(v', '7q1R5fIE88');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (323, 'sE3Jt(9n7<$C', '8i1W7smH90');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (324, 'mP9|PVeL4&', '7l5A0n7FFW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (325, 'wO1R3Pxn', '6h4T5vcvAI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (326, 'nE6Dxp?l$@?yp1', '4s7k3dKaZL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (327, 'dE5},YiS_=', '2f7S9m9dE1');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (328, 'cE6''H)BGm"qA', '4o432wEb6Z');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (329, 'jZ4''qg>2U?1_jyl!', '2p7p0gZWM1');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (330, 'hX8JO,RK_7q', '3s8s4jTVF9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (331, 'dS3Ygv7,IhT`d', '0v8C5s8HTQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (332, 'tO7/W+=5''e,_"BI%', '1s7A2xfsDK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (333, 'xP2>d)&SulVtf2o4', '8f1Q9oFUPX');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (334, 'wY4S''*7''JqaHwr2', '1u9e0ilkFW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (335, 'mW2&(Z#9<|2', '0n0i5kohP4');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (336, 'bJ8yuLm.r', '0b9F4tv0XQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (337, 'fM3P_bHVry', '6b8e3gUbWJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (338, 'qJ9i|S2eHSP_', '8r2R2m0p2P');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (339, 'cG4*vwCV_75', '1g6R7l1B7I');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (340, 'yQ9`ovuz%,e', '1l9N8oxw1U');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (341, 'lC9s}/$nV6s"', '5k3v7dnCY4');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (342, 'pF4y+RsAOH4P>9+A', '2a3b7rXrU9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (343, 'xG9eM`H\', '8m9u6gnxXV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (344, 'aN9nP2P5R7f', '8k419zkw6J');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (345, 'kK8f5y@*8Kk7j3O', '8i2t3bEw79');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (346, 'wN4(>CTJ4`G?', '8d5d8j9TYB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (347, 'dV2\e<zM', '0j4m5lFzSJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (348, 'tV120bmxeyst''', '6h6u9wtZ0N');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (349, 'mJ3N@K"cp"', '8h9M5zdGHL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (350, 'wJ4(YYU~', '8q6U6m8M09');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (351, 'rD4+HhYiPO''Z', '2j5V7pj1L9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (352, 'aX57vzRv>o', '3s194zHJ3H');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (353, 'aY3!u|\pp<E', '4p5z1atHPZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (354, 'vJ8X`"?>GJ', '1x7Z1fr4DX');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (355, 'gW9{{!@V<If{LOX', '7w0x6goOXP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (356, 'vR0`=m`)_t\qxJ/', '5u572mZD5U');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (357, 'kF9{eG|,5', '6t2k1lWlAS');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (358, 'uJ0&>c3o', '7b0w1ms4UB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (359, 'aO8i,/iVJ<Mt/Hh', '7y2f7rQg5R');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (360, 'eZ96E#&ioZ`.&', '6u7l2oG89J');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (361, 'vZ9w%uj,R\u', '0n2T2qRcZB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (362, 'aM8HXkFMB>lY', '8q3J1he9IY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (363, 'xE406vt''V~K', '7c4i5x0V3D');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (364, 'rS6<ybNPc{B~`s76', '5p9R4vdyUU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (365, 'oL85P@aZhP5(xtg/', '8y0i5buZT4');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (366, 'wZ7W5aAd)i', '0m9A1u70T5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (367, 'xK8|Wnw<PTYt', '0b7U3lMDOV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (368, 'vL8Vq#O{%', '0z038vwrC1');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (369, 'gQ1820Mf,$PpJn2', '9m2I8nXWBC');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (370, 'nM4(tn%/y', '9s842dMRJI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (371, 'eH9VFVG%*14W', '1q7w8ltd1T');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (372, 'aS0qY4Ci|Z', '1q8C2g5eAD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (373, 'pF7d(c$pI5X+e', '7p2A5c1tQJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (374, 'rT2BY9So{D', '6n0h3zLNLE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (375, 'oD8njq8{wr{Lo$', '5s5A8cpPZN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (376, 'sT36m=kSANO%t', '9u120doOL3');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (377, 'mR1r??|A', '1u455iNVI2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (378, 'yD2q6n/!W3LAC3Nn', '8e9x2eKUEM');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (379, 'mK5Ehq_76dZ<', '6g0U6cjqNB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (380, 'sO9Y(a)2C', '2i1B4aIT5G');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (381, 'xD4jL\sSN2d"=QS&', '2l4C8l0HEQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (382, 'eE1c)z,3', '8g4G8j0cMW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (383, 'wB0=zdb(Kg5Pg|', '4m125o0w8J');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (384, 'rQ0HUas/=znP`3VF', '8h7G1ei4CM');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (385, 'tJ8?JY8>2bM@I', '9t779p9VY1');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (386, 'mH3Ay_7.5@.F"', '9a6j4kf5YN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (387, 'uE4K_"O92fq5&XOE', '8d7g0zhrCH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (388, 'aE7Rmvmm9', '9l7B5dijJ2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (389, 'cF3RDNQ8$@jrB|yE', '0r6t9uliHV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (390, 'fI6rz=CZuoX`', '6q8y4hF3AX');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (391, 'eU3JV72|!aWc@qo8', '0t877s3sIP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (392, 'gG4+0&pl?SzYR', '0c437gnNOP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (393, 'kC8a4&s\iHk%uZ0', '2f7C0eq6NS');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (394, 'yX8RB*#10', '1k3u7bJPVG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (395, 'rS4X#xW.,W2!n(\Z', '9z0R9zhs11');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (396, 'kV0%.SA=`z~@U', '9b8P3ara45');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (397, 'sS6Dz,Dqwi', '1x2M1e2p42');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (398, 'bH8am)qONRxLTA=d', '1u1c6gjySD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (399, 'vN4cb4$HYmz*uTL', '5q8a4eB1CL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (400, 'eL7N3eOGb<C$\Wz', '0b6p2bTYQE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (401, 'jO4GC+M*M_K', '3k248ebXYS');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (402, 'qB9m0W9T', '3a8O6slg94');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (403, 'zT5|8P"CY1#<TP', '6q9H4e08H6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (404, 'rV1awCFMQ=SpoA', '5f5G3tuMWL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (405, 'qW9T&iK''', '5w3G0pstDQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (406, 'vA4y4BbATpn#', '6l9z7al1WD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (407, 'iD7h7yID08xwJ6%', '4h0l3sMN9N');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (408, 'yW2d@kr8!>vbe', '3j4O3fOuT7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (409, 'mG1h#.&)', '3d8n5q5hL0');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (410, 'jK0NMI6}3XbZW=', '9s2F8zMv62');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (411, 'eP389Gv_F.rJFj', '4n5Q7qTmL0');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (412, 'eW3ul8IGeU\_', '1a760gDXLB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (413, 'dU4s`6+&f3$56Z', '9f0F7lJ0YW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (414, 'bF3yWonLk8y/m2Ud', '0v345fYz2U');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (415, 'nQ0>7|}&4BG+?&QA', '7j4T1j1yMK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (416, 'gS8AsZaqNB$y_B', '5n883lqp7T');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (417, 'uQ0D4It%4zp', '5g7q8wInNZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (418, 'uO3OI{|OTJ', '5u1q8h2oKM');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (419, 'bN3LB/#%_)', '3c6r3zQdGE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (420, 'eN1Fc9iug6SQIB', '3z8Q9grG6X');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (421, 'eU9+=.9_eKWkt<Z(', '9t8n0wdmP2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (422, 'pU0InFgd', '7y2j6xh1N7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (423, 'dA3qoV+n(C_JY', '0t0b3c2ECJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (424, 'xD9HkVqQ', '4q8z4uVR12');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (425, 'fD1)WhS<wiX', '2e4K2auJKW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (426, 'pK7s>+$x$ka<}q', '2u1f5gsG35');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (427, 'jC0''''?{aYy}Pzu', '6r0S0qVF8X');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (428, 'dL3O<$?)i7xNy{Ko', '4l5s8xWEO9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (429, 'wT7vN"*@WK', '9g5p7zcfFV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (430, 'iH0LsN>V|HS$?', '4o984waS8V');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (431, 'iY1fNAxd', '7z874sbXC5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (432, 'eH1fio!Vd!laL''LI', '0q0h3et7DN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (433, 'xI4Z$8nqJ', '9z733dKjDH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (434, 'oF9gvD_>Nxs&Je', '8r6J7pVL6L');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (435, 'pR44,$aD?`?', '6p1Z6gJD56');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (436, 'hH4mn`_%//n}xjzZ', '2u011sT0P5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (437, 'pD2CX|nRQS_wtB"u', '2m3t6vna0N');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (438, 'hA8#UTXp2F$$', '0d8w3gle3O');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (439, 'wJ89QbUL', '0b9I9egMC5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (440, 'fX6++3!Uz?', '4h6t2ju5NV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (441, 'pK8\xDt(SHGZ', '5g6V8oDoNN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (442, 'iG7lT2s4_=5OQa', '3w5W2aKt4T');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (443, 'aC38JS01', '6d381pE595');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (444, 'aO6YA%41', '7r8H3lZS6I');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (445, 'jV1cp4Y.H+', '4v228uybUT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (446, 'uO3Km+a`3RdyG|C<', '9d9C2tJWOG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (447, 'fC6Y!lel!lOd#3', '4y8Y0aQ03K');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (448, 'rY1(ySMW`cj', '1r6A6xBnG6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (449, 'rY5Jo{y<(!CM_', '8g0G3va0Q2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (450, 'vD2z5~v/#', '3p2a4sGZ94');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (451, 'oT8_B)BN{fiq_!S3', '9q6Y3xCAK1');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (452, 'bL3&#x%"H', '1d3a1tiGJZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (453, 'iX7gl!PCLO', '8z4R5dA3FQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (454, 'dN6/uCy0xUH$~,bC', '8e7J9tK0TR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (455, 'rU2!>`at$t0Nwct1', '2b0Q6pXhRG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (456, 'tA5?MEItpSC', '1w938f5FKK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (457, 'hH6BN8yg', '3z3z4sYJGN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (458, 'bD2JL7vDu', '8f7p9x6F41');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (459, 'gW2{Wv''/E', '5b4j4jK95E');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (460, 'xK7*U<kifZ8', '3p1c1tnrQH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (461, 'aK7&gs#2*e', '6o688rwQNP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (462, 'eQ9Oh&`\_A#V$B', '8q6I9cbPOZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (463, 'zH7=UOI4&.a71Pk', '3t2i2pmqPR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (464, 'eU0g+h.nc!.K#', '7r479w9ISC');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (465, 'yG2K&<c&$', '6v7O5hq504');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (466, 'bR7(Zhfh', '9p0X9qumIW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (467, 'eN2/1eR4Yib', '4e8r4ngEJA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (468, 'iR1oQ>vd8cFl)u', '2t981db0S6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (469, 'yJ2QRX0S#%!', '1n4Y7jGTAA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (470, 'wK6lvC0J', '1n3D6sjvQZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (471, 'oN8tl34t7HY#=', '8k270nU6U5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (472, 'vO8O7=bc\|K?', '3z7Q4qZEON');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (473, 'rE95+v9/DK~', '6o4q6zo1CI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (474, 'bS1)#.sx.}', '3a0o5o2Y48');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (475, 'dU9s*K(IFG', '5k0H1m9GF0');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (476, 'iQ1VmhID#UMyWu84', '6y1Z7dXwII');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (477, 'hK5|BI*jVARWXmI', '4i214kWXSD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (478, 'bB3lDl6yhJ', '4c7j1g3jA5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (479, 'lM2Jeb|/xJ+_.bwe', '2k7N5tMBXR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (480, 'uU1%r7?T', '5s3p8wXf28');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (481, 'eE2rT>_gaY', '8f786rIBHO');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (482, 'vL4iYM45nl', '3y9w1ioT0G');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (483, 'iN5NHsvNiD~\?+@', '5b6R6sRvGD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (484, 'nE6?_''8JG', '7q159a6h86');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (485, 'sH9*UmT#G(', '1s2H6pdtME');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (486, 'uZ6<68E9E', '7a3b1tu94S');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (487, 'tX3z4(|?="''kz', '5p4m0fkcV4');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (488, 'pY8Ar5B#?um&U0By', '5t8V1ksaMK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (489, 'hO3n687DB', '7g2S0cWxQU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (490, 'cN3@x2hvykZ"m', '7o4J2iEjXH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (491, 'hD792{Sg=mz26', '3w1i0zNJFM');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (492, 'jG8"=M\%8''ZFZcAr', '7s7a4wBfLU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (493, 'sD9mEW(Kk0C', '8v5H7ti9GB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (494, 'jR4)V3TU', '0n9F5fpeTQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (495, 'vK4OQ5Q1', '5p2d3ftgIY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (496, 'gF3#_>*O.HGH', '4j5E5ayM3S');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (497, 'uU1yDmi9l', '5o3r7pQZRG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (498, 'kW8Iw**w*?fAb', '3c9P5lbxE7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (499, 'iM0Gl(0BC7YS`.R', '2k201agG4P');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (500, 'pJ6">qN)DaA)', '0y6b7lO88B');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (501, 'kG0/vE$N4Aad>ikb', '9r4Z0fDPN7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (502, 'fB7Lxt(&reJ|~?63', '7u7Z3icUDA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (503, 'wI91Th(B,U*~=Ar>', '5d1w8eZDAU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (504, 'wU7sF)c?GW0MKm.7', '0n3R6do5S3');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (505, 'sK5e2osd', '9p3c0tKP83');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (506, 'lE2R%Nj|I', '2j006kqD9K');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (507, 'nD6.i|xm<p2$', '2f103uNKOL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (508, 'yD7mqR"262b19F5a', '9a4c1inoTQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (509, 'aJ7Ow+!#o!G+y=!', '9z8r4a6mWV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (510, 'eF7.UHWVUlH~y', '8e2k5hJtDR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (511, 'eS2Ns4Ptk$B', '8x5Y2c018F');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (512, 'dJ2Ni3)uCG>4p', '8p7i0d2s1Z');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (513, 'eJ4\R}QR1=', '1r5G9g3aLH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (514, 'xI8v?K2Q,', '3r765z66TS');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (515, 'zD1j#LW#D', '9o232yo7T8');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (516, 'nM5i$rS)AY6%', '1c0a9gE6HF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (517, 'qU7NgBHQ0', '2q0G5seAQR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (518, 'dW9cRZg="R)!', '9f8s0mdXK4');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (519, 'zQ7NuMY/V4X$@,', '5g5G5hivBJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (520, 'lD7rA*qs8pDv.', '7f8X0erRF7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (521, 'vL5P<n9a*{>j7as', '1g817gS2O5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (522, 'oU3JsjmFrM!q#L8', '8f5V2iDxEV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (523, 'bZ5k?rFQ', '9k3L6emjGB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (524, 'iY488gPBFe+Qj', '0g7t5dhEWL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (525, 'jO1E+b!_1''x`j?a<', '8i8p4hPiLE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (526, 'qN8N/lhCbZZQs?f', '0c190uVEJS');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (527, 'wX27v}%b9L,hC', '6u633g1ZLY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (528, 'sS1dadhA&2lr', '7k1n3tRV1K');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (529, 'bM3D=&7PJlO\w}\', '4q424s41EN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (530, 'sA5J`eL+j', '1j8s2kT47J');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (531, 'yM3pL0W((H>gbI', '6h7X1deSL6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (532, 'vI7c_Y}9r",uSdJU', '0g0q2cWONB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (533, 'wK2cFzL_"ts', '6q5m0rMrIQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (534, 'yP7|<hEob*wzz', '2y5J9sP1XC');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (535, 'fW7kXcgyx&|/n', '3a8f5h0aVV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (536, 'aN2x0&\t', '6p5U1l4X1S');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (537, 'iL4$?!b%Q~+}`*1m', '4k3D8x3ZON');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (538, 'bI9K(L}szY|h<n', '3c8b2opTIF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (539, 'eW0hz=|gr}iG', '2v3I7q2R3X');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (540, 'cV2z23gxBsr"', '1q778d1TMQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (541, 'qQ5Dc_{o,1Xt#j', '6r2Z1hKWWW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (542, 'aZ6NXuRpP', '9c119gjKDK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (543, 'nB0_oF@WE"`7', '9v928jsrPG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (544, 'yF57K%xL~`ao', '5j145e905J');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (545, 'mX37j23+1YiQ', '4p376pqj0U');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (546, 'bP43*Wa3>{n', '6p157aidQ6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (547, 'tA7JLhJJ@S9eG', '8h4k4hySPK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (548, 'kG1oN{lSOc7AtoXe', '4k2l7zksDT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (549, 'eN8H&XRB?yd4V', '2g9x9wCBYV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (550, 'dA1|5_zpYQ%\T2y', '8h9a7bbcXU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (551, 'fF9>dubsG),}.LK', '0a2X1rzQDP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (552, 'cJ5+(Q_1uy', '1i7I3mLS6W');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (553, 'wG9`h+Uoa', '1r8E8tz62U');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (554, 'fI5Y\tH,JoY1)c>', '1r2I1ssOWP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (555, 'qU8XcO!b)/F+(', '2q6N6pZGXH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (556, 'cK3Bw+PD!', '1j1D1eOKBC');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (557, 'fO6hV*dW', '7o8x1gxsNI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (558, 'wK5C4ZgC', '5q5e7l4H2Y');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (559, 'lT0GhBexIt(uW"M', '1g2p1g4SXQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (560, 'zE7wrF&Ok', '5s4Q1rdrMU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (561, 'eE06pO''({=D', '3s8k5te4I4');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (562, 'fK92#@D"', '1c5H1jioHR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (563, 'hS4o~Ug_JR?!+cv+', '5l5H7fNVEU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (564, 'qE4gVW#CD', '3a334gFM6R');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (565, 'nE5wh)\7n', '6a6f6yDEOP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (566, 'vX0YGl>_', '2f6j3pQUI6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (567, 'dJ6r+8*SG', '3f6s2f9d5Y');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (568, 'sV3(Z&Jas6', '3b9A8aruQU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (569, 'qC6?S=1f|nNP#', '1y5f1xrSM2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (570, 'eT1{Lu$i<wcuc@<r', '3p106wQu10');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (571, 'kD6WYyjwiF2', '2p0L4b0g10');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (572, 'qF0TDzlgU#', '7f7O7bq20U');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (573, 'hI2Q8$&*M1|#a', '2n1A5igcWH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (574, 'uF1)n,@C&rmH.', '1z5m6sPJ52');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (575, 'oL7(83!FWu/a>o8', '8d7y5kPfKV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (576, 'zB4/SI~9', '0g7k8laHEF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (577, 'dI9F6L9/I5OT', '2c6i3cdKY7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (578, 'uL8~P77"', '0z9L3r4W5N');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (579, 'pL1Wc''QcO983ehGF', '0c997b4uG8');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (580, 'eU7}qiP*MU|(', '8d5F5iKP1Y');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (581, 'jW7+4V+<R5z#', '5p7D8utM6F');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (582, 'yK9r(Qp4l!RNxrA', '3m0x2bzh2A');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (583, 'oP8~xV+vfE5#', '9v7x8tCK4G');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (584, 'mR6<~xZnPg<k', '9n726vH6Q9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (585, 'fO7#pYPk_#xWu#VY', '2m2p3zh1ZQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (586, 'jJ3(`9xW+', '8a4g0kH053');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (587, 'pG1Nl>MAprWi+?<t', '3u7I2tRWWO');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (588, 'vQ4fC(42q', '3x1m8npKCL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (589, 'pP9n"6y`,(m''P', '1j2l3tGaLH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (590, 'wE6iDoOzS?(', '9r2a6iQrYA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (591, 'nB4I}@68sk', '2x8W7wKPQ2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (592, 'dE4oyjRR\n<', '1z4v8xhg1C');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (593, 'aC2#''hJY&O{ZYjU/', '3i2k1dL16I');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (594, 'fP9+}*mD|lq0E=tp', '4d8n5mz1IC');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (595, 'kF6,l~PE_', '5c5n7cJMG9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (596, 'aD3{XA44<(', '5t0J7dceNW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (597, 'oA7pt/M8jDL\RC4', '9s5l3piOTH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (598, 'jU5XRQ}./5D', '5t2d7rmuRZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (599, 'rS7fN_zv=Z`_`', '3z6j9hZV6K');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (600, 'dJ9N"IOKV$Bt3u|', '1f9w3kMoUQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (601, 'dZ54WBQEh', '1n5p7xhKM1');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (602, 'nT41KEzsg.8F8X', '4r9n9azR6Q');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (603, 'fP627_W>1#1Z', '9x6j7jXq81');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (604, 'uG9etb06&*#\MT5', '0f4G9vHMYI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (605, 'lJ06w6~%o5IS2J', '6z2p1omL81');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (606, 'iW05_!e>Nyy$zU', '5l7p3rmt8G');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (607, 'vT50Bq$qZ1{wZ?*', '1x6p3xXM88');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (608, 'gQ6i&n*`vi=_', '4n2V3dExM9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (609, 'eZ5eUoyDDy', '7b6B2q4sKR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (610, 'oG68g~smnJC%*NG2', '7b8J2eKqZL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (611, 'gY3,aVOBU', '8z9j2d1uXG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (612, 'rH7|zMW9GLjgBe', '1u722zRqXG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (613, 'cF4$bC{?wA*\.', '4i4e7z50D9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (614, 'zJ3e%{f<0G', '6j186dinQ4');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (615, 'qA8Bs0o6', '4g0m8rjvM3');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (616, 'sV5''_0=%', '2b2O2hkTZQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (617, 'sP4"9s/h(9A87q|i', '9w1Y8yUQKU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (618, 'eM69nFutP4', '8n5y8qcbYY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (619, 'fE5o(6/)', '1s4w5gOOXB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (620, 'iD63XZgGVSp$', '4m577pA7WY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (621, 'pP089EHH{b0yw', '5g3W1f3aL1');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (622, 'hS2I&"?i?~@iCX5=', '0z0E8bmNY0');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (623, 'uM8DS66Un"`', '0m9k7k9D7G');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (624, 'aU28XehB6x7NhX', '2v0H3pWEL5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (625, 'bT1,W"Q#w)oK', '7y383fnfYN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (626, 'fD8=PTJ17', '2e2b8y8r32');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (627, 'rN2k#XVK9F1Kp@', '6f0j4ylP15');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (628, 'fY6h{qgJ38h2', '1g9Z1z6dW6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (629, 'aM5%pg?%z(I', '9v9U3d1GAM');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (630, 'cR4w\KRT.', '7z3t6lTZRN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (631, 'bO5k{jJb', '3h8q0fDfWE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (632, 'pR36x`''Jje#6', '4o9j8vOMSS');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (633, 'qH2@$*QGy5C3p~$Z', '8d7s6k3cDG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (634, 'lU8}iYweR?(bnqh1', '6c8q0ujd4H');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (635, 'uD9"wlHh!m$', '3d741si9RF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (636, 'mO40B)nEz924g', '1t3d3xJjK0');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (637, 'nK16x!R!</|VaS', '2a290rYpQA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (638, 'vJ12X,iBn(&2Dt', '4v4A0mFQHP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (639, 'gM7cJX9awQW<r', '4x9b3ajfV9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (640, 'cT9<}eTniO6!U', '0b5j9gXO8A');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (641, 'wP4%18@pz=Hu93', '8k8U6vUVAR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (642, 'cL8KUHL20M=F', '0i4g1s3UNU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (643, 'bY2Dt,I9oxn''', '4u0a9sDdGI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (644, 'bE7iJMWe1', '0w6f6wQHA0');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (645, 'nO2K}W(j@+NgGw', '6k1r0wq4E7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (646, 'iS6%5Y)=Y`3Uw', '7i1c3eHcVH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (647, 'aK8K}"RKh|D|j9B', '6v5M1ygs8G');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (648, 'zX4WpAFIw>B', '9j339kQY1F');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (649, 'zL4Q_tE3@BGq,BH5', '8j4d8rOa1E');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (650, 'aU3VnS!u<', '2t5E4a5YOU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (651, 'eS57n3+y7O=', '7i7g4bAiKF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (652, 'pD3l`{v$8=', '4d239sWkCR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (653, 'fW4f1aiz0e`u1gF', '6l2g8y2nHU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (654, 'dC92J)+Y@z<3V', '3w0B0aAn4Y');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (655, 'qQ52XJ`5_', '0u338d7yEN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (656, 'cT4&X31#uaT`<', '4y315tqxL2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (657, 'xJ0JM''B=@yGr*V', '7z6J2dGV3A');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (658, 'gL7f~NT~u~', '5u839e91N6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (659, 'xA4Z3kNSp|)kD', '0m4O0ilJHA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (660, 'aP4Yvc/ms', '1q8X4zHQXH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (661, 'jW4}dKQNkjIN', '8t2i4yAV2E');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (662, 'yA85\u$fKb!X,|', '2y3g0xHq54');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (663, 'aN3BZ|k"''3', '0l9v8zv76R');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (664, 'zR8zMw{''mcRyE.$', '5j2c7fAtCO');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (665, 'tZ1.H7Xw', '5b9s9xsnYM');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (666, 'mC5MLw%x@$', '9l496y4rZK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (667, 'uY8CJ\T!<7h&', '1q2C8h1PZ9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (668, 'tJ6Tme+(0cn0y', '6v2k3p7j57');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (669, 'fU7%vI4$', '1o3c1uw2YI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (670, 'tV8<&`4%p\lADo', '4c3l2lcNKY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (671, 'kI6V(*)kE/', '4b8X8tJZVY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (672, 'rW8*}S*z', '0n211hHYK0');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (673, 'rI15Fp#)7~#!Ge9', '1q3Z1rB6DD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (674, 'dI1D#6Kolm,Dfi(', '1m1h1oQuYI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (675, 'oP4dfgF!mx.J<.5+', '3z1H0xB3J9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (676, 'mP1oG.6rtT2>y', '4e6F3gBUE3');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (677, 'vL6U{LN(vpO', '0u7m6dtO1E');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (678, 'fL0$xh@O`{egxFHI', '6t399dVv5F');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (679, 'eO2@L=>$g+WcbMGG', '8a501yppGZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (680, 'tG8=4I.6?q`/d.Fq', '1h2g4bc2HO');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (681, 'vU3QKVwz3rK', '5l243aq95H');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (682, 'nZ7.zj4=', '1y9Q9qoe5Y');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (683, 'vR02nQWn0', '6n8I7zkY6N');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (684, 'mB8ObK%''vZg', '7d608wnP6N');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (685, 'mH4@GNeZLN?HL', '9o5P3l26LZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (686, 'rD8_bW3Z', '9m8J7gPY1O');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (687, 'lX30{L_''T', '1o9W1tvENQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (688, 'qD43<L3f7bbKu', '7t3S1yFa0Y');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (689, 'bO4B(Wk1f', '9k3y1kU4OT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (690, 'yW9.$sG7_&l', '8r738oC3FC');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (691, 'aP3{b3BRa|Z9nOIN', '2s7M7fRVSE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (692, 'lO1"#X~nZ''*/,FW', '3j6P7adBDR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (693, 'qF3w+jiRl{', '2r9F2oDQZF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (694, 'gM0,|8g%)''XhSkE', '5w686jhgQT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (695, 'sE5UHf#/{', '8o5b2eFAXJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (696, 'jX2zUsja', '3d0e4dvP78');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (697, 'vY7*E5/\0''nK', '2f1V1mwXPF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (698, 'eJ6UTdR4N''uky>''}', '1l7X7rPrA7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (699, 'xF9s''V}''j`1#', '4q8T9t8aT2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (700, 'uY3''_ITCD*Iltxk|', '0b3s0q2KFQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (701, 'mX2zrZI)Q}G', '5m1Z0ejkQQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (702, 'gY1ZsxdJFGSv2%', '2i0z5zqr35');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (703, 'eM2_\D$X5*+?', '5n6o0i2R4X');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (704, 'pQ0)Nus&Q}', '8r2W3mUv6D');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (705, 'yP5JiPtuVxI1P', '4l4Q0m8d54');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (706, 'mG9&&C2g{ub', '4h0x4sNO1W');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (707, 'cG9W@3uw,5HsS4', '7q3I0vvQQV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (708, 'cB9,T|}Y*Hz', '1u3f7oeg3D');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (709, 'uS8%r)<Hqg&il{''', '9j4u1cyJNC');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (710, 'yN8enVJ5UEz/$', '3q8m2o3eQL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (711, 'yK4!P$jIF{4bZc.', '9z4m6r47MF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (712, 'eG5G4wvC{QKQ4x', '2w9H6u01H3');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (713, 'yT364X=roV', '2d531nvr5F');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (714, 'aF9A"#@.6Silgi{z', '9y1j8ujC7A');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (715, 'dC4Ivh{6R', '6p9S5bxHF1');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (716, 'nX3!QpP5+0B1f', '0r8Z2pu2IR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (717, 'oN9z17ZPON3frd3,', '1d8J4z42VS');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (718, 'jJ3@mvZulQSe"', '9g3q5sjoOF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (719, 'yG1P@,(+8', '5d0g4wkeR1');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (720, 'cY30cc{zc(k9$Xw', '1o5O5gBjYZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (721, 'zR7@2@x%Bs.H', '1f6A7oYYZZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (722, 'fY9AX.lVq\TN&yzO', '8v5W6vlK2B');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (723, 'oU2BaOr!JL_XiOJY', '6t715b50MF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (724, 'nW023&mhc', '2s7t1eqp1J');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (725, 'kN7.jBDTW+fM', '8k6v5fatAI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (726, 'iY2KOo@c6zvftPT', '9u1o7fqqWV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (727, 'yJ2Nsj}$_,2}w', '4o7R8tsrU8');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (728, 'mA4.@Lf_<Q?', '1d3d4hzoR2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (729, 'oX4z?Sh`>GV=(o3', '7k450zxyJQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (730, 'bB6dX=OnXw`', '8a2N9uH9JN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (731, 'lN8xQjmtk\zkC3', '2x496szYCO');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (732, 'qC4}k,{)P&rW}}', '1f3u7akfWE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (733, 'jS10U~+a751E6', '8d950dZSKY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (734, 'vB3?g5/qLw_', '0d172d3c1A');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (735, 'oS7!UIylVH', '6c3g8nIVVV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (736, 'uR6>0CSAb+q<!', '6b2X8ldDJE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (737, 'qN8?Q36lg\Sb<{Dv', '3j169aQJJW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (738, 'dR8*WZ%HrA`1(m4r', '9w9a8sybHD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (739, 'dG9$PLZE&Bt', '9j5e8dYDDO');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (740, 'nO4`0_@m{LC', '2f8u5yykQL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (741, 'rQ5//P%W5<LSvXO', '4q7E5pjSPD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (742, 'pB7I>GBS*}(&#', '9q2U9uZ8TW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (743, 'jA8SsWM"`jD', '5v2d3i5i3K');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (744, 'rF0?!cl%CbsmQk<h', '7p3d3m1PKX');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (745, 'gL0_`aXfy4%7YIN(', '7g2Q0y5MPK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (746, 'iT9d"zXTZHN!', '7q2P9cIF6I');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (747, 'cP1''jqObDH$y6K', '7b5f4mHf1M');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (748, 'gW1fnE}_5', '4u134hHR2W');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (749, 'cK3kvmib', '6h7T4vRp1W');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (750, 'gK87l/C}K$F}eO', '7v8b8b5IM7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (751, 'gL9r>vb`=c6', '9i3K6vWA4T');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (752, 'cU0TGHP2<h)1', '6y1h1xKrZ5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (753, 'nT8lQ%SC', '7h8X0zPaEA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (754, 'wD5M!RjpkNm', '3e8A2uwDGP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (755, 'dQ9Y+aWNzjw~h', '6y4M2jkS2D');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (756, 'bO9hXKK=@RnB1', '2e0J0wakH9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (757, 'gN7''QSzpCyeycfeW', '1l3s5qMH7B');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (758, 'iP9V,QYH', '1s6E6hQF0Q');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (759, 'qF8`F@kWuCL7', '5e4h5kjKGD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (760, 'sJ3,3t1R1', '8x3Y9gIyLL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (761, 'jL2ry4@.s~W)', '3n6G7tyb1L');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (762, 'wU4q''9R$!K8?g+~`', '4v8q1o1aS7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (763, 'wY4|''4>?|{LtB', '4a6J7s4k4W');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (764, 'eQ0w9EY~6HQ8R', '4f729xstI4');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (765, 'vD0}O4l.gDfH', '7y0L1rPe2F');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (766, 'xI3e)x{IgmGy$', '4h737l4zB8');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (767, 'pB7TtkVAn2c|', '0b8Y6c7WFI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (768, 'zD55sB/*p}S1', '2i6s9iPLHI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (769, 'fV1WwO}|94b91}g', '3j6k6tlmUN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (770, 'pR1qc*S17QnuOGx', '5l9x6qCGEH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (771, 'lR6T9T|4Y_orUW', '1t4w5eWZYV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (772, 'iT7rpI"?qje3Z`', '0d089uORGA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (773, 'xM27vdbfs)|yw', '9n3f7sod2E');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (774, 'nP3l7pQ&6#K`WbY', '4i3j3qLsYR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (775, 'rY9d!+66(2L', '9g5k2cuxWO');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (776, 'xL8q}CL)Qo\.', '6e3M0yfZIK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (777, 'tX6UC$)}\&(O0sEE', '2f4i7tah7O');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (778, 'uQ3K"vL@U#EqeV', '4h0u1oYhXB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (779, 'oM8~remB{29N.A', '9i5P1zo0V5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (780, 'uP9wxt".`)d1C', '0o2Z8kZmC9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (781, 'zD4=+Te#U1x4F4X', '2z500h6zHI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (782, 'dM9i$=eswp{D', '0d9W6aqbY5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (783, 'rW2b%pCqL', '7z4M1mLaMC');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (784, 'pD07.TGLq6', '4t6a7ewMD5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (785, 'oJ9x*|r6I', '5s0T8oB9US');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (786, 'tH4_famP', '1f7X4vnRFK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (787, 'rL2&3|Ni''', '3u666tcdNU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (788, 'jX18*wxd&~1k"p~', '8k7Y1rcvSL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (789, 'bL9%2$ip,Td', '0x008g8TYR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (790, 'yT5Xf_,>hCVcq', '2g2c6lWXLJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (791, 'fB4M"19&s7Ti', '5y743va2A5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (792, 'iC1WaN,"O', '7d1R2eNtXW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (793, 'wW6"gHHVC&"', '1v8c6pNsCC');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (794, 'mU3GDcwVw_}}tf', '3u7f5ykpDN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (795, 'dN56Fkkn/|MOl?T', '9z661eDQBV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (796, 'fK2e6~Vr,', '3b725rVO74');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (797, 'tG10sPV|#Z@<Jav~', '8f487h3579');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (798, 'pU6LLGvqt''"u54\', '8g217pIX2F');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (799, 'kG4G?9$<<I28sio', '3b1f7iKp1B');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (800, 'tD8t,qf/|j+Bveg', '2i6Y6dyy67');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (801, 'lI4Rvs?A0JO', '1o3g9e8mKB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (802, 'nA4xa0T!', '4v599wgD1E');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (803, 'wR5P7}9gM%KCZe+', '8g1x8t1UPT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (804, 'uD8pL4{?"ykOV|4', '5p368yPOYY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (805, 'tF8Bi6Yo6IjA=.JR', '6w9Y7ctOLB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (806, 'yB9a>GX%KTU6j`{%', '9y8e0soaF2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (807, 'mB5MZj5?ofC9', '3r0O1v3yHW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (808, 'gU54Ye3j"LEpDq', '2u906nkCKF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (809, 'gX5d''F8XVagR>', '3l085mYPIY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (810, 'gW6KJ8*_', '3z5p8i4j3Z');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (811, 'oI9\\\)?ec5', '9a2J1tfkAH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (812, 'dF11x?tBwbms/C', '7a3k2iOL4G');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (813, 'iE1GIw!PU`', '4o1O1dLGLJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (814, 'aL8inJ,SLcK', '8l0n5vFR8Z');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (815, 'iC5o55blw.+w', '6c9g6k17UU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (816, 'iH3=>GiteOD><N', '5p6b1lidNB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (817, 'hT39`Jr)k0{$s/{', '0j1U3gNhP9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (818, 'hJ0tGjUM', '0z2W6h366U');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (819, 'sX1Q!/36u', '9g5c1gOZG2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (820, 'jD5D4)Q+2e*,3D', '8r4J7m5YGH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (821, 'kO0jmT/olu=|"xF6', '4h8e2w2v0W');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (822, 'kM2wSp2@', '4k2a2qRkG4');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (823, 'xO6W2J,f1', '3o8U7vwBS2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (824, 'lX86~x/o+', '3z2G8jGTBM');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (825, 'zH5)rhl5cP%', '7t8x0vaf4S');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (826, 'wF5V#$*8%h6T', '7c4X0aYmM3');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (827, 'tG9)Be''R>dI,$!X', '7g1s7n3IMM');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (828, 'iM59DBfOUz9Cg6', '3x3Q3go4U7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (829, 'fQ4/''R3<pA_', '1n186gXxQV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (830, 'uF28r+N!~#Ci', '4t2Z9rsb8B');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (831, 'fM29%fMUX.c', '1c770hADZY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (832, 'lK0*F6qY!''A5', '4b394yJ25Q');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (833, 'nJ8,F"Nw`''', '9d0x5jQ46M');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (834, 'lZ4?(dxW,eX', '2e8r4eOT0F');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (835, 'nJ4G=)Y(T', '9a7T8qmkWF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (836, 'aK5gSeLe$', '7e0b7eLu3K');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (837, 'mZ1M9Yg&B1L', '8s3f4lIQK4');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (838, 'bS7xKPeyA"!/QNT', '3e5y0pbvTQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (839, 'yG108E{"?VW537r~', '9h573tCFC7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (840, 'vV508''=|2k', '9e3J6l6HOW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (841, 'cX0aN>{D7Sx>', '5p0U2b694U');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (842, 'eZ1PG2o@#yjA', '3w0h6vnzZZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (843, 'bV3&Et*{iwNj>Ue', '3t152tQGCN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (844, 'gM1BVS\ibSUk&PW"', '5k6A9qTf1Z');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (845, 'uS2Xx4kXg!<', '1t0g7pWmQ8');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (846, 'vW5kBH!Cb.Jp', '6g1A5fiYRD');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (847, 'lY81pygH', '8b6D7zvU7P');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (848, 'zZ90N18''T|,qC+I', '2p9S7nPf87');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (849, 'vH26|4scL~Z', '7n5w0h4yVW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (850, 'uZ5QW!P4cuM(h1L+', '8i5e4koY2Q');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (851, 'hG4.,Eu$ez9Fk<', '8x3f4cOTQT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (852, 'wT4_eu!81Ihab6?', '4y4r0kwH4U');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (853, 'eZ40pHD?Gk3n', '3l4h8os4KG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (854, 'oL1t|*ZZvxvN7AL9', '3v6W3yqU5X');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (855, 'cA77Gfo|y', '3g0y7b6lPK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (856, 'kQ2oVVMt(C*', '0w8r6rLGOO');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (857, 'iV28,4w*H', '7c2y9w33S6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (858, 'yS8\3J0nC', '2p4i1yJnDW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (859, 'vB7|>tyH$YH', '7z2s2zyqHA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (860, 'nI8.~TPM', '1i9R7mC4JP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (861, 'lN5u$!du9', '3x0F5aAG59');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (862, 'pS5?o{Z{VuY', '9u3f4lThLG');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (863, 'hQ6M}(q,8p', '0x1v2g3GAO');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (864, 'vR2SYlX6I', '1a5Q4oGuD3');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (865, 'mT80Ev.l&', '3q3q5a9kVY');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (866, 'tG4wKBLyr_Z', '1b0l7uHbPE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (867, 'wU3`nLuT}', '3w7m4lIJAF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (868, 'gX4>va<SJs`', '0d9n9a3dN6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (869, 'iP91Bs>!n', '3o4c8vC150');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (870, 'dJ7<dXF<_XFN', '4t055azeVX');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (871, 'bQ8~=*m'',L0/}@q3', '8g6R5preAT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (872, 'uH8McE4W5@6vhU"W', '2h9l0zWLA9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (873, 'pD0~O''1Z=t+', '4p0k3afdO2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (874, 'iG1tyb0O<', '1w3b7c9f6S');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (875, 'jP3rmAu2Kg=dDjE', '7z0M4ojo7C');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (876, 'uN1S=PQn6ya/', '9d380cgtM3');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (877, 'lY8v2,"qGP+.V4''', '7s1t1ipWBV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (878, 'kS8W\K*S)F3r', '9t7o0ks7RH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (879, 'dK0nO8ru', '1n6K2vyiQX');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (880, 'oP7}ERN!C"ZH}Sj', '1s2X2uLe8Y');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (881, 'tS8}''1S={_N', '9g6Z2gOfUZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (882, 'sZ70%X7%''vh{#', '3q1U7xa5ET');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (883, 'oL4s''6g7,zd3xQ', '1r0X8n1tPP');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (884, 'qD8c|Tbc<', '2q3s8krHAX');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (885, 'qU5Q{VslV\k`+ZyU', '0o6c7k5bYN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (886, 'lV4V0_n''Go!T', '1d416eYOOQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (887, 'rG9$cvrl<<@~3*vX', '3w3M9qWWS0');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (888, 'cH1p8LoZbE.}_', '4v0q1h0WG8');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (889, 'eG7Rl#T*<', '4x9V8lOdJF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (890, 'mE8tho2Hk4&e~k', '2m2F0nrMAV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (891, 'hW84*%#?', '4i8a9wgyA2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (892, 'gZ4>n){jUi<{BM', '9y2O6rIcPX');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (893, 'vM4zR%9kf0z+5#', '7a6Y9uWZTZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (894, 'lG1>~N1U}F', '6z1K6jprCH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (895, 'vZ7"9gUy}', '9z8C2fDWT0');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (896, 'kT0B''gE0/w', '3h6L2m9TK5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (897, 'oL7}''1(Y', '3o9B2pn9AW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (898, 'uE7T?iW3mI', '0t484o2o7R');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (899, 'sL7@X2h5>j', '5f6z7ggi8T');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (900, 'gJ6w82k(mm$', '1b4K9vkZOO');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (901, 'aM1t6ou~*k', '6e8w5fElIL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (902, 'iE6*,{Hs>ST', '6w6o4dqa8E');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (903, 'lD01>D"Tt*RS7JD5', '3f7o7leQM4');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (904, 'eQ1~nr)Xl~e\0y', '6c5h5rYU57');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (905, 'aX6O$2vJ`zlvO@', '9u0O1dzeI8');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (906, 'nS8=5goP', '4y511urvY4');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (907, 'eC0qG8?md', '2s167nWcNE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (908, 'hJ40{x0G*', '1c0d8r9n3I');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (909, 'rH8%QzXZtya~G7,w', '8b556cKKW2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (910, 'tA688G.fJ0N<xRk`', '9f4g6z6mUL');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (911, 'tY9lQ2\p''C+O', '4t8L1sWO3W');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (912, 'oB78yxHkkbt)&', '5j5V6hvy35');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (913, 'sT7j7_rBT!vd4KUr', '5m1A6g0M8A');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (914, 'wI2n$3}hdV', '5a0X4j5aMU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (915, 'iF0mP*PR29@"v_', '4x3S9xyQSI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (916, 'zY5H!{Fc', '7c4i3x19PA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (917, 'fL7F#oyG%H>@l''*Y', '0t5g5eIE5T');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (918, 'nL1DT0|Fw', '9a4V0eF1NA');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (919, 'nZ56g"\a''VD{N=T%', '4y0g7posE8');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (920, 'tX1eCG~HLC', '4o8J8eOGNW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (921, 'aY8>nIfuun', '2c396sAf0G');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (922, 'rN4jk4+(!Ul}ZP8', '1k9u7qUJZW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (923, 'xH5OZ&REQ#/pq21', '1n1R6ylNYS');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (924, 'pZ3z5#A$SoC', '8m4M1tXOAX');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (925, 'pT7OSwX3MZ8<EQY>', '5e6N7k073O');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (926, 'nK0%?Ghh', '5i9L3dUoD7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (927, 'kF79''4}6T49>?yRo', '2p9l0w9JW9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (928, 'kE2RD5FO5rcl@+gz', '5w5M3kBeBE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (929, 'fD5$>Y)~&U', '1x299nZvT2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (930, 'vY9q1Y|s{8+TTT', '4z1V2qkrLW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (931, 'uV1kcT$v', '4p0x0g3bWC');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (932, 'vO7>xPST5w%', '6c3B6vmPKE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (933, 'zH9\bShN!h<Uz', '7p9H3jtgM7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (934, 'rY6=T&F#|X%g', '9j1W2geY4W');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (935, 'bK5zCt2(kungboM', '2x3M9rpGLC');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (936, 'pH8}G1nUg=LmL\', '6g7Z7dCy2Y');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (937, 'fB4#B*cy"25a$KF', '6q713yil2O');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (938, 'xU3''/)VJ', '2u0X4lMhZJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (939, 'bH7Ki<''n', '3l3j0tlA9F');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (940, 'hX8T1cV.8fysI', '0g8h0saZJM');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (941, 'vR2b6k3jV5T3Q\', '7r273uJj7Q');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (942, 'iN58oAZ(', '6p964zebLS');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (943, 'hW06Xqx`Alk', '8o0m7wPTYO');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (944, 'mH646xZTGQ>', '9p9v0ahG2O');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (945, 'nA84BQN?,xngyOa$', '7y8b7e6gCJ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (946, 'nY2kWtjk', '3f7v6o1rZU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (947, 'xQ4|xNNg`HC', '0x1N0pPzTV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (948, 'nI8)B\@W*', '5q0W6dJe2Y');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (949, 'mD302"=ZJC', '6s2x0wacIM');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (950, 'yS4I"bfhV|1=+A', '4n575iRhR4');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (951, 'tJ7Ei3*>=kQWp*$,', '0v8S9p24Z8');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (952, 'oE4N,REhl\Z+', '1a849c8z2K');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (953, 'jO2~<q?F', '7w7d3qjvY7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (954, 'eT6kZPlVuG5D|', '4v8y1zFIZQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (955, 'lV9EGHM+|/F|@', '2y1y0s9c3B');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (956, 'rN6A~D=H7DlT)#', '9w0A6kF4VW');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (957, 'cX5/VDGgGz#DJ', '6y374f7q8W');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (958, 'nO9>UXu1</h=uyF}', '3d3b5xMYPR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (959, 'oB0R,/z6{{9h', '9b2I8wVvF2');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (960, 'xU5E"b4i~e2C', '1v430biUW0');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (961, 'yH7"%_dZsHrexvV{', '0b1n6lXjGK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (962, 'eE3p2_!g3FI', '2f7n0tfAAN');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (963, 'cV3K{P\"RZ', '4c3o4mu4YI');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (964, 'pO9QqKh7=CNZ+qI', '7d8P7tgmW5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (965, 'eL7"BNW~+Qb!b', '1t1Y6uQx50');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (966, 'gR3<@gg\9LW=C', '1z4S9raJZV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (967, 'vQ0D"wQ9HFSoE%', '7x993aOkIZ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (968, 'qK7eT"oA1j1DIC', '8r8c2rGbRQ');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (969, 'mE5(G$R~>Hmq8', '2r5D4sK2JX');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (970, 'bD9#Nu}k@~I<3Sd(', '5e2z4a9iF9');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (971, 'mA3''%U7G=aDX"vg', '2v0W4kSk1Y');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (972, 'kK1stD@1Q&''F58', '1v4Y4nM3ND');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (973, 'mS3HZN&IN.F', '7n3w1g9z57');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (974, 'bH0DS\Ep(Po', '3c8F3xx3AC');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (975, 'aP3?MlVKRxRPge\F', '3a9z8rmS52');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (976, 'cP1X%FefJ_H', '4t2r8zNfX7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (977, 'tJ2utERC<L@kjP0J', '3g080h3c6X');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (978, 'fG1a)\@3"v', '8l5N5iegCF');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (979, 'mK6N|~J\Q76', '5s0p4fgNFE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (980, 'vO8PXXcXa_(cGHy', '8o6p7lNhF7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (981, 'jJ1%au{Oe`', '3i4T9txUF6');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (982, 'cH2wedWiI''a$', '9o385rrwAT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (983, 'xR8M14kbleV(3!Nm', '1b1J2cb5LT');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (984, 'tD6di5d8w''', '4y0R6xKUX5');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (985, 'rT56''u$aJGd%ct', '2w0m5yE8XU');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (986, 'yQ123sR%', '0z9O2tNiHV');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (987, 'qJ0gKMq1', '2n9A8uYeML');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (988, 'uF0h(6"@mF', '1g2r2wivRH');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (989, 'vY0qS|`vH}JsZ0', '0z8o9iuiZX');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (990, 'wU9*TwT$jd96', '0h6o3q9Z0T');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (991, 'yM6El(F9*DYT', '7p9M7h22TE');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (992, 'iO7$)y6@M4mL', '3v6P5sKRPB');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (993, 'qJ8GH83j''.$`?VM', '9a8B6n7V8H');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (994, 'oZ6}1Uxp{mT', '7w7Z5eilV3');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (995, 'jO1TW1!W', '7e1a1pIRC7');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (996, 'qI2=}Q~6<o_Q\T', '1q4N1xFuVR');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (997, 'aY1K~Vka5', '4d5c4yXjU8');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (998, 'xQ5Tu{(yx', '6y1G7aq4AK');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (999, 'oT4{@}/y|B9', '3a4I3z1C5Y');
insert into Users.user_password (uspa_user_id, uspa_passwordHash, uspa_passwordSalt) values (1000, 'dX7W~CZA6x5YVY', '1d617lFW7Z');
SET IDENTITY_INSERT users.user_password OFF;







GO

SET IDENTITY_INSERT users.bonus_points ON;
insert into users.bonus_points 
(ubpo_id, ubpo_user_id, ubpo_total_points, ubpo_bonus_type, ubpo_created_on) 
values 
(1, 1, 4787, 'R', '2023-01-09'),
(2, 2, 7899, 'R', '2022-10-18'),
(3, 3, 1096, 'R', '2023-09-08'),
(4, 4, 1436, 'P', '2023-06-29'),
(5, 5, 4779, 'P', '2021-12-18'),
(6, 6, 8695, 'P', '2021-09-21'),
(7, 7, 1401, 'P', '2023-04-24'),
(8, 8, 3068, 'R', '2022-10-22'),
(9, 9, 5540, 'P', '2022-09-10'),
(10, 10, 9897, 'R', '2022-03-24'),
(11, 11, 7585, 'R', '2022-09-24'),
(12, 12, 8753, 'R', '2022-06-29'),
(13, 13, 4383, 'R', '2023-01-23'),
(14, 14, 8234, 'R', '2023-09-05'),
(15, 15, 9398, 'R', '2022-10-10'),
(16, 16, 1701, 'P', '2021-11-09'),
(17, 17, 6574, 'R', '2022-02-19'),
(18, 18, 8997, 'R', '2021-12-01'),
(19, 19, 8418, 'R', '2022-01-26'),
(20, 20, 2412, 'P', '2021-11-19'),
(21, 21, 5690, 'P', '2022-10-29'),
(22, 22, 1039, 'P', '2022-04-27'),
(23, 23, 4759, 'P', '2023-02-11'),
(24, 24, 7905, 'P', '2023-03-08'),
(25, 25, 4183, 'R', '2022-12-12'),
(26, 26, 2253, 'R', '2023-01-04'),
(27, 27, 7028, 'R', '2022-11-10'),
(28, 28, 3552, 'R', '2023-07-11'),
(29, 29, 7602, 'R', '2023-02-26'),
(30, 30, 9125, 'P', '2022-06-25'),
(31, 31, 2885, 'P', '2023-09-11'),
(32, 32, 6987, 'R', '2022-03-24'),
(33, 33, 8205, 'P', '2022-09-22'),
(34, 34, 7866, 'R', '2023-02-08'),
(35, 35, 5726, 'R', '2022-06-30'),
(36, 36, 7858, 'P', '2021-12-19'),
(37, 37, 5900, 'R', '2022-10-05'),
(38, 38, 9456, 'R', '2022-08-02'),
(39, 39, 4664, 'P', '2022-10-03'),
(40, 40, 1869, 'P', '2022-09-25'),
(41, 41, 8274, 'R', '2022-08-20'),
(42, 42, 6018, 'R', '2023-04-02'),
(43, 43, 8075, 'P', '2023-07-06'),
(44, 44, 9192, 'R', '2022-02-14'),
(45, 45, 8014, 'P', '2023-02-23'),
(46, 46, 7208, 'P', '2022-08-19'),
(47, 47, 1707, 'R', '2022-04-22'),
(48, 48, 5702, 'R', '2022-07-24'),
(49, 49, 7743, 'R', '2023-08-09'),
(50, 50, 6410, 'R', '2021-12-04'),
(51, 51, 8012, 'R', '2023-05-03'),
(52, 52, 5919, 'P', '2022-02-05'),
(53, 53, 1262, 'P', '2023-08-01'),
(54, 54, 9937, 'P', '2022-05-06'),
(55, 55, 8027, 'P', '2022-04-08'),
(56, 56, 6040, 'P', '2023-09-16'),
(57, 57, 2525, 'P', '2021-09-17'),
(58, 58, 2853, 'R', '2023-03-30'),
(59, 59, 3594, 'P', '2022-09-14'),
(60, 60, 7944, 'P', '2023-06-25'),
(61, 61, 9664, 'R', '2022-05-20'),
(62, 62, 3004, 'R', '2022-12-13'),
(63, 63, 9911, 'R', '2021-12-05'),
(64, 64, 8227, 'R', '2023-07-14'),
(65, 65, 5433, 'R', '2021-12-22'),
(66, 66, 5724, 'P', '2022-08-14'),
(67, 67, 4372, 'R', '2022-08-10'),
(68, 68, 2198, 'P', '2022-04-18'),
(69, 69, 1790, 'P', '2023-05-06'),
(70, 70, 3359, 'R', '2021-12-18'),
(71, 71, 8836, 'R', '2023-01-29'),
(72, 72, 5844, 'P', '2022-11-20'),
(73, 73, 1137, 'P', '2022-04-18'),
(74, 74, 3743, 'R', '2022-06-12'),
(75, 75, 9814, 'R', '2022-03-02'),
(76, 76, 4634, 'R', '2023-05-15'),
(77, 77, 4875, 'R', '2023-04-18'),
(78, 78, 4404, 'P', '2022-11-23'),
(79, 79, 8475, 'R', '2023-01-11'),
(80, 80, 5283, 'P', '2021-12-09'),
(81, 81, 8740, 'R', '2022-08-08'),
(82, 82, 8638, 'P', '2023-02-03'),
(83, 83, 6543, 'P', '2023-04-15'),
(84, 84, 6492, 'P', '2023-08-05'),
(85, 85, 1036, 'P', '2022-10-28'),
(86, 86, 1539, 'P', '2023-08-11'),
(87, 87, 9710, 'R', '2022-01-15'),
(88, 88, 8965, 'R', '2021-12-28'),
(89, 89, 7474, 'P', '2023-04-03'),
(90, 90, 3095, 'R', '2023-09-04'),
(91, 91, 6641, 'R', '2023-03-18'),
(92, 92, 3747, 'R', '2021-12-06'),
(93, 93, 9733, 'R', '2022-04-17'),
(94, 94, 3126, 'R', '2023-07-19'),
(95, 95, 8401, 'P', '2023-06-05'),
(96, 96, 5314, 'P', '2021-12-20'),
(97, 97, 1661, 'P', '2022-10-22'),
(98, 98, 5979, 'R', '2023-07-13'),
(99, 99, 5894, 'R', '2023-02-17'),
(100, 100, 3602, 'R', '2022-02-14'),
(101, 101, 6996, 'P', '2022-07-29'),
(102, 102, 7391, 'R', '2023-07-04'),
(103, 103, 1934, 'R', '2022-11-08'),
(104, 104, 5429, 'P', '2023-07-22'),
(105, 105, 4112, 'R', '2022-01-02'),
(106, 106, 8774, 'P', '2022-07-27'),
(107, 107, 2227, 'P', '2022-11-12'),
(108, 108, 2217, 'P', '2023-07-08'),
(109, 109, 7091, 'R', '2021-10-19'),
(110, 110, 6433, 'R', '2022-04-30'),
(111, 111, 4989, 'P', '2022-12-21'),
(112, 112, 6007, 'R', '2022-02-07'),
(113, 113, 7169, 'R', '2022-11-08'),
(114, 114, 1891, 'R', '2021-12-18'),
(115, 115, 8360, 'P', '2022-09-24'),
(116, 116, 4897, 'P', '2023-06-19'),
(117, 117, 1639, 'R', '2022-09-22'),
(118, 118, 7333, 'P', '2023-04-24'),
(119, 119, 3150, 'R', '2021-09-27'),
(120, 120, 7462, 'P', '2021-12-03'),
(121, 121, 9944, 'P', '2022-02-27'),
(122, 122, 7084, 'P', '2023-06-02'),
(123, 123, 2301, 'R', '2022-11-20'),
(124, 124, 2224, 'R', '2022-03-15'),
(125, 125, 4928, 'P', '2022-09-05'),
(126, 126, 8869, 'R', '2022-10-08'),
(127, 127, 1318, 'R', '2023-04-22'),
(128, 128, 7981, 'P', '2023-08-30'),
(129, 129, 3343, 'R', '2022-08-29'),
(130, 130, 2140, 'P', '2022-10-30'),
(131, 131, 6076, 'R', '2023-03-06'),
(132, 132, 6367, 'R', '2022-07-29'),
(133, 133, 6396, 'R', '2022-10-24'),
(134, 134, 3288, 'R', '2023-01-11'),
(135, 135, 5622, 'P', '2022-02-26'),
(136, 136, 7278, 'P', '2022-03-03'),
(137, 137, 8349, 'R', '2022-01-23'),
(138, 138, 1497, 'R', '2022-09-30'),
(139, 139, 3402, 'R', '2022-05-10'),
(140, 140, 2312, 'R', '2022-06-15'),
(141, 141, 3448, 'P', '2022-07-07'),
(142, 142, 1268, 'P', '2022-05-26'),
(143, 143, 1648, 'R', '2023-06-20'),
(144, 144, 1082, 'R', '2022-04-17'),
(145, 145, 4416, 'P', '2022-04-21'),
(146, 146, 1567, 'R', '2022-09-24'),
(147, 147, 9822, 'R', '2022-09-22'),
(148, 148, 5841, 'P', '2022-10-10'),
(149, 149, 4727, 'P', '2022-10-06'),
(150, 150, 6073, 'P', '2022-08-14'),
(151, 151, 7965, 'P', '2023-06-24'),
(152, 152, 1783, 'P', '2022-05-22'),
(153, 153, 1276, 'R', '2022-12-24'),
(154, 154, 7658, 'P', '2023-07-22'),
(155, 155, 8925, 'R', '2022-06-08'),
(156, 156, 6682, 'R', '2022-03-29'),
(157, 157, 4554, 'P', '2021-11-08'),
(158, 158, 1708, 'P', '2023-06-14'),
(159, 159, 8942, 'P', '2023-03-22'),
(160, 160, 4132, 'P', '2022-07-02'),
(161, 161, 1389, 'P', '2022-08-17'),
(162, 162, 7033, 'R', '2023-01-19'),
(163, 163, 3172, 'R', '2022-10-09'),
(164, 164, 9181, 'R', '2022-08-28'),
(165, 165, 3077, 'R', '2022-01-20'),
(166, 166, 6548, 'P', '2022-02-25'),
(167, 167, 1620, 'R', '2023-09-01'),
(168, 168, 8334, 'R', '2023-07-04'),
(169, 169, 5607, 'P', '2022-06-14'),
(170, 170, 7207, 'R', '2022-09-29'),
(171, 171, 7322, 'R', '2022-07-09'),
(172, 172, 3833, 'P', '2022-01-02'),
(173, 173, 2226, 'R', '2022-10-12'),
(174, 174, 9522, 'P', '2023-05-12'),
(175, 175, 8609, 'R', '2022-06-22'),
(176, 176, 1000, 'R', '2023-01-21'),
(177, 177, 6809, 'P', '2023-04-27'),
(178, 178, 7378, 'R', '2022-06-28'),
(179, 179, 6337, 'P', '2021-10-31'),
(180, 180, 9018, 'R', '2021-09-17'),
(181, 181, 2561, 'P', '2022-03-25'),
(182, 182, 4390, 'R', '2022-05-08'),
(183, 183, 2713, 'R', '2022-05-04'),
(184, 184, 2267, 'R', '2022-09-21'),
(185, 185, 8577, 'R', '2023-05-17'),
(186, 186, 4982, 'R', '2021-12-02'),
(187, 187, 8179, 'R', '2022-05-10'),
(188, 188, 5496, 'P', '2022-11-24'),
(189, 189, 9096, 'R', '2022-11-10'),
(190, 190, 6744, 'R', '2021-12-24'),
(191, 191, 4484, 'R', '2023-07-30'),
(192, 192, 8570, 'P', '2023-03-05'),
(193, 193, 9831, 'R', '2021-10-28'),
(194, 194, 4555, 'P', '2022-05-18'),
(195, 195, 8636, 'P', '2023-04-24'),
(196, 196, 6666, 'R', '2023-06-26'),
(197, 197, 9546, 'P', '2022-02-22'),
(198, 198, 6960, 'P', '2022-04-23'),
(199, 199, 1024, 'R', '2022-10-16'),
(200, 200, 9338, 'P', '2022-09-09'),
(201, 201, 5455, 'P', '2022-12-23'),
(202, 202, 2890, 'P', '2023-02-09'),
(203, 203, 8138, 'P', '2023-01-22'),
(204, 204, 1188, 'P', '2023-07-09'),
(205, 205, 8895, 'P', '2021-12-21'),
(206, 206, 5249, 'R', '2021-09-21'),
(207, 207, 5198, 'P', '2023-05-14'),
(208, 208, 2718, 'P', '2021-12-11'),
(209, 209, 9038, 'R', '2022-07-03'),
(210, 210, 6187, 'P', '2023-06-20'),
(211, 211, 5019, 'R', '2022-12-08'),
(212, 212, 2376, 'P', '2023-01-03'),
(213, 213, 7828, 'R', '2023-07-08'),
(214, 214, 3074, 'P', '2023-07-09'),
(215, 215, 9173, 'R', '2023-09-13'),
(216, 216, 9181, 'P', '2022-05-16'),
(217, 217, 4493, 'R', '2022-08-30'),
(218, 218, 2857, 'R', '2022-03-01'),
(219, 219, 1311, 'R', '2023-05-09'),
(220, 220, 8185, 'P', '2022-10-08'),
(221, 221, 5891, 'P', '2023-07-12'),
(222, 222, 7776, 'P', '2023-04-21'),
(223, 223, 9299, 'R', '2022-03-19'),
(224, 224, 5302, 'R', '2023-06-11'),
(225, 225, 6960, 'P', '2023-02-13'),
(226, 226, 2965, 'R', '2022-11-30'),
(227, 227, 1471, 'P', '2023-03-31'),
(228, 228, 9973, 'P', '2021-10-27'),
(229, 229, 2476, 'P', '2022-12-27'),
(230, 230, 3062, 'R', '2023-04-04'),
(231, 231, 4707, 'R', '2023-08-20'),
(232, 232, 1005, 'P', '2023-08-28'),
(233, 233, 5998, 'P', '2023-07-24'),
(234, 234, 4270, 'P', '2022-07-16'),
(235, 235, 2482, 'P', '2022-09-18'),
(236, 236, 8964, 'P', '2022-01-10'),
(237, 237, 3752, 'P', '2023-06-01'),
(238, 238, 1698, 'R', '2022-06-06'),
(239, 239, 7328, 'R', '2023-03-09'),
(240, 240, 10000, 'P', '2021-11-27'),
(241, 241, 3506, 'P', '2023-05-02'),
(242, 242, 1894, 'R', '2023-08-24'),
(243, 243, 5523, 'P', '2022-07-09'),
(244, 244, 9587, 'R', '2022-03-23'),
(245, 245, 2523, 'R', '2023-01-17'),
(246, 246, 2063, 'R', '2022-02-06'),
(247, 247, 1799, 'R', '2022-11-27'),
(248, 248, 6898, 'R', '2023-02-17'),
(249, 249, 5463, 'P', '2023-08-06'),
(250, 250, 1011, 'R', '2023-09-10'),
(251, 251, 2795, 'R', '2023-01-08'),
(252, 252, 7734, 'P', '2023-02-03'),
(253, 253, 4967, 'P', '2022-07-28'),
(254, 254, 9816, 'R', '2022-11-05'),
(255, 255, 8351, 'P', '2022-05-16'),
(256, 256, 7371, 'P', '2021-10-17'),
(257, 257, 8180, 'P', '2022-07-23'),
(258, 258, 3032, 'R', '2022-08-19'),
(259, 259, 3742, 'R', '2023-09-01'),
(260, 260, 1688, 'P', '2023-08-09'),
(261, 261, 9371, 'P', '2022-01-03'),
(262, 262, 1368, 'P', '2023-09-04'),
(263, 263, 4430, 'R', '2022-05-15'),
(264, 264, 5514, 'R', '2022-12-02'),
(265, 265, 6476, 'R', '2022-07-11'),
(266, 266, 4989, 'P', '2022-08-07'),
(267, 267, 5198, 'R', '2022-06-10'),
(268, 268, 5805, 'P', '2022-03-18'),
(269, 269, 1086, 'R', '2022-04-11'),
(270, 270, 5762, 'R', '2022-08-21'),
(271, 271, 9843, 'P', '2022-10-20'),
(272, 272, 4778, 'R', '2022-01-02'),
(273, 273, 5897, 'R', '2022-05-27'),
(274, 274, 9911, 'R', '2022-05-23'),
(275, 275, 2459, 'R', '2022-06-21'),
(276, 276, 6853, 'P', '2023-06-29'),
(277, 277, 4789, 'R', '2022-09-02'),
(278, 278, 6201, 'P', '2021-12-10'),
(279, 279, 7271, 'P', '2021-12-13'),
(280, 280, 5500, 'R', '2022-01-29'),
(281, 281, 4868, 'P', '2022-10-01'),
(282, 282, 5971, 'P', '2021-10-04'),
(283, 283, 4033, 'P', '2022-04-21'),
(284, 284, 6026, 'P', '2022-01-05'),
(285, 285, 4662, 'P', '2021-10-16'),
(286, 286, 6858, 'P', '2022-11-11'),
(287, 287, 3760, 'R', '2022-12-07'),
(288, 288, 2582, 'P', '2022-06-19'),
(289, 289, 3408, 'P', '2021-10-06'),
(290, 290, 5232, 'R', '2022-09-03'),
(291, 291, 2208, 'R', '2023-05-04'),
(292, 292, 4573, 'P', '2023-06-10'),
(293, 293, 5253, 'P', '2022-05-25'),
(294, 294, 3971, 'P', '2023-02-14'),
(295, 295, 3046, 'R', '2022-04-10'),
(296, 296, 3892, 'P', '2023-04-01'),
(297, 297, 3938, 'R', '2022-11-23'),
(298, 298, 4654, 'R', '2023-07-08'),
(299, 299, 3407, 'P', '2023-04-24'),
(300, 300, 2902, 'P', '2023-05-26'),
(301, 301, 9064, 'P', '2022-12-15'),
(302, 302, 5872, 'R', '2023-07-03'),
(303, 303, 5626, 'R', '2022-03-29'),
(304, 304, 6557, 'R', '2022-02-19'),
(305, 305, 8339, 'R', '2023-05-14'),
(306, 306, 4186, 'P', '2022-12-17'),
(307, 307, 2251, 'R', '2023-04-06'),
(308, 308, 3487, 'P', '2023-05-02'),
(309, 309, 2802, 'P', '2023-05-13'),
(310, 310, 2493, 'R', '2023-05-19'),
(311, 311, 2063, 'P', '2022-09-13'),
(312, 312, 9701, 'P', '2022-03-26'),
(313, 313, 8565, 'P', '2023-04-24'),
(314, 314, 2087, 'P', '2023-04-25'),
(315, 315, 7055, 'P', '2022-02-21'),
(316, 316, 1444, 'P', '2023-08-27'),
(317, 317, 3580, 'R', '2022-07-01'),
(318, 318, 6780, 'P', '2023-08-18'),
(319, 319, 1632, 'R', '2023-02-04'),
(320, 320, 4943, 'R', '2023-08-03'),
(321, 321, 4868, 'R', '2023-08-13'),
(322, 322, 5533, 'R', '2023-08-31'),
(323, 323, 1195, 'P', '2022-05-21'),
(324, 324, 9431, 'R', '2021-11-19'),
(325, 325, 3673, 'P', '2022-04-14'),
(326, 326, 7310, 'R', '2022-12-19'),
(327, 327, 1595, 'R', '2022-12-01'),
(328, 328, 3879, 'P', '2022-04-22'),
(329, 329, 2329, 'R', '2021-10-06'),
(330, 330, 1187, 'P', '2021-12-18'),
(331, 331, 7903, 'R', '2021-11-24'),
(332, 332, 2562, 'P', '2021-10-23'),
(333, 333, 9055, 'R', '2023-01-29'),
(334, 334, 9795, 'P', '2022-06-07'),
(335, 335, 6152, 'R', '2023-08-13'),
(336, 336, 6005, 'R', '2021-10-13'),
(337, 337, 6587, 'P', '2022-07-20'),
(338, 338, 2319, 'R', '2023-03-17'),
(339, 339, 3238, 'R', '2022-07-28'),
(340, 340, 9658, 'R', '2023-02-21'),
(341, 341, 2678, 'P', '2023-01-08'),
(342, 342, 4399, 'R', '2023-08-05'),
(343, 343, 9110, 'R', '2022-11-15'),
(344, 344, 4750, 'P', '2022-10-15'),
(345, 345, 5365, 'P', '2022-09-13'),
(346, 346, 6903, 'P', '2023-07-04'),
(347, 347, 6554, 'P', '2021-09-18'),
(348, 348, 7929, 'R', '2022-12-25'),
(349, 349, 2029, 'R', '2022-04-26'),
(350, 350, 9205, 'P', '2023-03-28'),
(351, 351, 3733, 'P', '2022-02-10'),
(352, 352, 4448, 'P', '2023-06-04'),
(353, 353, 4308, 'R', '2023-09-14'),
(354, 354, 6861, 'P', '2022-03-21'),
(355, 355, 4556, 'P', '2022-05-18'),
(356, 356, 9134, 'P', '2023-08-02'),
(357, 357, 6888, 'R', '2023-04-23'),
(358, 358, 8497, 'P', '2023-09-15'),
(359, 359, 3286, 'R', '2023-07-06'),
(360, 360, 8538, 'R', '2021-10-04'),
(361, 361, 9462, 'R', '2021-10-23'),
(362, 362, 8571, 'P', '2021-09-22'),
(363, 363, 3907, 'R', '2023-05-13'),
(364, 364, 8902, 'R', '2023-04-20'),
(365, 365, 8685, 'R', '2023-02-07'),
(366, 366, 9455, 'R', '2022-11-04'),
(367, 367, 7200, 'P', '2022-10-16'),
(368, 368, 4530, 'R', '2022-02-17'),
(369, 369, 8110, 'P', '2023-04-10'),
(370, 370, 5124, 'P', '2022-02-04'),
(371, 371, 2188, 'R', '2021-10-20'),
(372, 372, 7728, 'R', '2023-03-13'),
(373, 373, 3615, 'P', '2023-06-30'),
(374, 374, 8549, 'P', '2022-09-08'),
(375, 375, 6559, 'R', '2023-03-08'),
(376, 376, 8878, 'R', '2022-03-11'),
(377, 377, 6047, 'P', '2023-04-13'),
(378, 378, 1490, 'R', '2021-10-13'),
(379, 379, 8220, 'P', '2022-03-16'),
(380, 380, 8262, 'R', '2022-07-06'),
(381, 381, 3621, 'R', '2023-06-21'),
(382, 382, 3424, 'P', '2021-12-13'),
(383, 383, 1392, 'R', '2022-11-09'),
(384, 384, 7541, 'R', '2023-07-22'),
(385, 385, 5680, 'R', '2022-06-20'),
(386, 386, 2287, 'R', '2022-01-05'),
(387, 387, 4562, 'R', '2022-06-28'),
(388, 388, 6636, 'P', '2023-01-27'),
(389, 389, 6591, 'P', '2023-06-01'),
(390, 390, 8138, 'P', '2023-07-28'),
(391, 391, 4952, 'P', '2023-04-01'),
(392, 392, 2533, 'R', '2023-06-14'),
(393, 393, 7142, 'P', '2023-03-23'),
(394, 394, 7287, 'P', '2023-04-14'),
(395, 395, 6069, 'R', '2022-03-14'),
(396, 396, 4416, 'R', '2023-03-31'),
(397, 397, 4765, 'R', '2022-08-17'),
(398, 398, 4951, 'R', '2021-11-29'),
(399, 399, 9993, 'P', '2022-11-22'),
(400, 400, 6441, 'R', '2022-05-05'),
(401, 401, 3090, 'P', '2022-08-13'),
(402, 402, 1260, 'P', '2023-05-04'),
(403, 403, 6809, 'R', '2021-09-22'),
(404, 404, 2530, 'P', '2022-08-21'),
(405, 405, 2242, 'R', '2023-04-05'),
(406, 406, 2976, 'R', '2023-02-02'),
(407, 407, 5115, 'R', '2021-09-23'),
(408, 408, 4272, 'R', '2021-09-26'),
(409, 409, 4463, 'P', '2022-05-05'),
(410, 410, 9748, 'P', '2022-06-20'),
(411, 411, 4413, 'P', '2023-05-27'),
(412, 412, 7379, 'R', '2023-07-03'),
(413, 413, 9546, 'P', '2022-06-21'),
(414, 414, 5175, 'R', '2023-02-08'),
(415, 415, 1362, 'P', '2022-10-08'),
(416, 416, 4090, 'R', '2023-09-13'),
(417, 417, 2555, 'R', '2023-03-24'),
(418, 418, 4211, 'R', '2022-12-12'),
(419, 419, 8067, 'R', '2022-08-08'),
(420, 420, 8694, 'P', '2022-07-31'),
(421, 421, 9596, 'R', '2023-03-15'),
(422, 422, 7230, 'P', '2022-08-20'),
(423, 423, 1067, 'P', '2022-01-07'),
(424, 424, 9239, 'R', '2023-04-09'),
(425, 425, 4818, 'R', '2022-07-30'),
(426, 426, 4771, 'P', '2023-04-06'),
(427, 427, 3085, 'P', '2021-11-10'),
(428, 428, 2038, 'P', '2022-06-24'),
(429, 429, 5430, 'P', '2022-08-25'),
(430, 430, 7867, 'R', '2023-08-18'),
(431, 431, 6578, 'P', '2022-03-21'),
(432, 432, 3907, 'R', '2022-08-01'),
(433, 433, 6593, 'R', '2022-11-28'),
(434, 434, 2338, 'P', '2023-02-09'),
(435, 435, 2892, 'P', '2021-10-13'),
(436, 436, 6455, 'P', '2022-11-18'),
(437, 437, 6078, 'R', '2022-06-27'),
(438, 438, 4539, 'R', '2022-08-02'),
(439, 439, 9830, 'P', '2022-09-05'),
(440, 440, 7225, 'P', '2022-11-21'),
(441, 441, 3433, 'P', '2022-09-17'),
(442, 442, 1854, 'R', '2022-10-26'),
(443, 443, 8099, 'R', '2023-06-16'),
(444, 444, 9331, 'R', '2021-09-25'),
(445, 445, 7459, 'P', '2022-02-14'),
(446, 446, 5077, 'P', '2022-11-15'),
(447, 447, 1138, 'R', '2023-04-13'),
(448, 448, 5535, 'R', '2022-07-31'),
(449, 449, 3483, 'R', '2022-05-14'),
(450, 450, 4046, 'R', '2022-11-10'),
(451, 451, 6633, 'P', '2023-02-25'),
(452, 452, 2433, 'P', '2021-09-19'),
(453, 453, 5498, 'P', '2022-01-09'),
(454, 454, 2399, 'P', '2022-03-27'),
(455, 455, 9651, 'R', '2022-01-24'),
(456, 456, 6160, 'P', '2022-07-22'),
(457, 457, 3146, 'P', '2023-04-11'),
(458, 458, 9961, 'P', '2022-01-26'),
(459, 459, 3563, 'P', '2023-09-05'),
(460, 460, 3250, 'P', '2022-04-06'),
(461, 461, 5875, 'R', '2021-10-15'),
(462, 462, 3847, 'R', '2023-06-30'),
(463, 463, 2970, 'P', '2021-09-18'),
(464, 464, 8414, 'P', '2022-02-10'),
(465, 465, 7904, 'R', '2022-06-17'),
(466, 466, 6930, 'R', '2022-10-31'),
(467, 467, 4801, 'R', '2023-06-04'),
(468, 468, 3649, 'R', '2022-07-25'),
(469, 469, 4611, 'P', '2022-11-22'),
(470, 470, 4720, 'R', '2022-08-30'),
(471, 471, 7969, 'R', '2021-10-06'),
(472, 472, 1175, 'P', '2022-04-19'),
(473, 473, 4739, 'P', '2022-09-15'),
(474, 474, 7768, 'P', '2023-05-12'),
(475, 475, 5359, 'P', '2022-10-25'),
(476, 476, 7841, 'P', '2021-09-30'),
(477, 477, 7188, 'R', '2022-04-17'),
(478, 478, 4762, 'R', '2023-02-20'),
(479, 479, 9383, 'R', '2021-12-11'),
(480, 480, 8587, 'R', '2022-07-06'),
(481, 481, 4369, 'P', '2021-10-11'),
(482, 482, 1940, 'R', '2023-06-18'),
(483, 483, 1412, 'R', '2021-11-13'),
(484, 484, 4110, 'P', '2022-01-02'),
(485, 485, 8893, 'R', '2022-04-07'),
(486, 486, 9515, 'R', '2022-09-03'),
(487, 487, 1576, 'P', '2023-07-21'),
(488, 488, 3351, 'R', '2022-07-03'),
(489, 489, 4926, 'R', '2022-11-14'),
(490, 490, 2569, 'R', '2022-03-29'),
(491, 491, 8821, 'R', '2022-09-02'),
(492, 492, 8754, 'R', '2023-03-24'),
(493, 493, 1549, 'P', '2023-02-08'),
(494, 494, 7541, 'P', '2023-03-16'),
(495, 495, 5344, 'R', '2023-07-04'),
(496, 496, 2964, 'R', '2022-06-27'),
(497, 497, 9725, 'P', '2022-08-19'),
(498, 498, 3952, 'P', '2022-12-12'),
(499, 499, 7640, 'R', '2021-12-19'),
(500, 500, 5169, 'P', '2021-11-08'),
(501, 501, 3596, 'R', '2022-10-09'),
(502, 502, 3985, 'R', '2023-06-10'),
(503, 503, 6381, 'P', '2022-06-04'),
(504, 504, 7458, 'R', '2023-07-21'),
(505, 505, 1729, 'R', '2023-08-24'),
(506, 506, 8562, 'P', '2022-01-20'),
(507, 507, 8193, 'P', '2021-12-29'),
(508, 508, 5416, 'P', '2022-11-09'),
(509, 509, 8574, 'P', '2023-02-15'),
(510, 510, 3967, 'P', '2023-09-16'),
(511, 511, 8912, 'R', '2021-09-30'),
(512, 512, 2305, 'R', '2022-01-28'),
(513, 513, 6641, 'P', '2022-07-12'),
(514, 514, 9241, 'R', '2022-03-25'),
(515, 515, 4542, 'R', '2022-01-10'),
(516, 516, 6095, 'R', '2023-07-11'),
(517, 517, 1826, 'P', '2021-09-25'),
(518, 518, 7292, 'R', '2021-11-09'),
(519, 519, 2407, 'R', '2022-04-30'),
(520, 520, 1425, 'P', '2023-03-22'),
(521, 521, 6055, 'P', '2022-05-08'),
(522, 522, 9606, 'R', '2023-04-07'),
(523, 523, 8988, 'R', '2022-07-22'),
(524, 524, 5867, 'R', '2022-07-25'),
(525, 525, 6759, 'P', '2021-11-01'),
(526, 526, 5189, 'R', '2022-06-25'),
(527, 527, 6645, 'P', '2021-09-26'),
(528, 528, 7325, 'P', '2023-08-12'),
(529, 529, 5525, 'R', '2023-02-19'),
(530, 530, 1057, 'R', '2023-04-03'),
(531, 531, 4805, 'P', '2023-02-01'),
(532, 532, 4579, 'P', '2021-09-23'),
(533, 533, 5040, 'R', '2023-01-11'),
(534, 534, 9878, 'R', '2023-05-28'),
(535, 535, 6227, 'P', '2022-10-14'),
(536, 536, 5900, 'R', '2023-09-11'),
(537, 537, 6238, 'R', '2022-12-08'),
(538, 538, 8954, 'R', '2022-08-27'),
(539, 539, 8617, 'R', '2022-06-10'),
(540, 540, 4941, 'P', '2022-09-07'),
(541, 541, 3504, 'P', '2021-09-18'),
(542, 542, 5787, 'R', '2022-05-13'),
(543, 543, 1976, 'R', '2023-07-16'),
(544, 544, 8433, 'R', '2022-08-22'),
(545, 545, 8176, 'P', '2022-09-02'),
(546, 546, 4559, 'P', '2022-12-13'),
(547, 547, 3342, 'R', '2023-06-28'),
(548, 548, 5009, 'P', '2022-04-08'),
(549, 549, 8659, 'R', '2022-12-28'),
(550, 550, 7646, 'R', '2022-10-25'),
(551, 551, 7531, 'P', '2023-06-09'),
(552, 552, 9132, 'P', '2023-04-07'),
(553, 553, 1472, 'R', '2022-03-12'),
(554, 554, 8482, 'P', '2023-04-23'),
(555, 555, 9174, 'R', '2023-04-01'),
(556, 556, 5190, 'R', '2021-10-12'),
(557, 557, 5500, 'R', '2022-02-28'),
(558, 558, 5996, 'R', '2022-11-26'),
(559, 559, 3353, 'P', '2023-06-07'),
(560, 560, 3100, 'R', '2023-08-11'),
(561, 561, 2052, 'P', '2023-03-18'),
(562, 562, 7205, 'R', '2022-03-23'),
(563, 563, 5429, 'P', '2021-11-09'),
(564, 564, 3857, 'R', '2023-07-21'),
(565, 565, 6300, 'P', '2022-07-14'),
(566, 566, 8772, 'R', '2023-02-27'),
(567, 567, 1661, 'R', '2022-03-08'),
(568, 568, 9900, 'R', '2023-03-13'),
(569, 569, 7247, 'P', '2022-12-22'),
(570, 570, 1746, 'P', '2021-09-23'),
(571, 571, 8606, 'P', '2022-03-14'),
(572, 572, 5994, 'P', '2023-05-12'),
(573, 573, 8835, 'R', '2022-03-20'),
(574, 574, 9793, 'P', '2021-09-19'),
(575, 575, 8860, 'P', '2022-06-30'),
(576, 576, 1066, 'R', '2021-12-08'),
(577, 577, 7320, 'R', '2023-06-01'),
(578, 578, 1171, 'R', '2022-12-18'),
(579, 579, 7019, 'P', '2022-10-16'),
(580, 580, 3777, 'R', '2023-09-11'),
(581, 581, 3001, 'R', '2023-06-21'),
(582, 582, 7291, 'P', '2021-10-06'),
(583, 583, 4112, 'P', '2023-01-07'),
(584, 584, 5260, 'P', '2022-07-10'),
(585, 585, 5685, 'R', '2021-10-28'),
(586, 586, 9744, 'P', '2021-10-12'),
(587, 587, 2933, 'P', '2022-09-06'),
(588, 588, 9965, 'R', '2022-03-12'),
(589, 589, 3700, 'R', '2023-04-04'),
(590, 590, 4667, 'P', '2022-10-14'),
(591, 591, 4608, 'P', '2023-01-05'),
(592, 592, 6280, 'R', '2023-06-14'),
(593, 593, 6591, 'R', '2023-08-30'),
(594, 594, 7416, 'P', '2023-01-09'),
(595, 595, 5308, 'P', '2023-07-29'),
(596, 596, 3982, 'R', '2023-06-22'),
(597, 597, 9742, 'P', '2022-04-07'),
(598, 598, 7760, 'R', '2023-05-06'),
(599, 599, 4769, 'P', '2022-12-08'),
(600, 600, 3565, 'R', '2023-05-28'),
(601, 601, 1131, 'P', '2022-03-11'),
(602, 602, 6784, 'R', '2022-03-04'),
(603, 603, 2773, 'R', '2021-09-17'),
(604, 604, 7501, 'R', '2023-08-15'),
(605, 605, 5471, 'P', '2022-08-08'),
(606, 606, 9061, 'R', '2022-02-01'),
(607, 607, 6082, 'P', '2021-11-27'),
(608, 608, 2176, 'P', '2022-01-07'),
(609, 609, 7904, 'R', '2022-07-06'),
(610, 610, 6167, 'R', '2022-01-01'),
(611, 611, 4500, 'P', '2023-03-10'),
(612, 612, 4326, 'R', '2021-09-30'),
(613, 613, 4524, 'R', '2023-06-22'),
(614, 614, 7799, 'R', '2023-01-13'),
(615, 615, 2352, 'R', '2023-09-03'),
(616, 616, 4285, 'R', '2023-02-15'),
(617, 617, 8951, 'R', '2021-11-25'),
(618, 618, 3473, 'P', '2023-08-14'),
(619, 619, 9403, 'R', '2021-11-02'),
(620, 620, 1538, 'P', '2022-04-05'),
(621, 621, 9817, 'P', '2021-11-24'),
(622, 622, 9971, 'R', '2022-06-11'),
(623, 623, 1606, 'R', '2021-11-18'),
(624, 624, 4654, 'R', '2022-09-02'),
(625, 625, 6197, 'P', '2023-03-24'),
(626, 626, 4847, 'P', '2022-04-11'),
(627, 627, 7157, 'R', '2021-09-20'),
(628, 628, 8329, 'P', '2021-12-03'),
(629, 629, 4513, 'P', '2023-02-24'),
(630, 630, 7936, 'R', '2023-07-26'),
(631, 631, 8421, 'P', '2022-01-01'),
(632, 632, 4215, 'R', '2023-07-23'),
(633, 633, 8782, 'P', '2022-04-11'),
(634, 634, 6599, 'P', '2022-02-25'),
(635, 635, 6144, 'R', '2023-01-25'),
(636, 636, 4576, 'R', '2022-03-25'),
(637, 637, 1855, 'P', '2022-02-28'),
(638, 638, 6402, 'P', '2022-01-23'),
(639, 639, 7192, 'R', '2022-09-23'),
(640, 640, 4866, 'R', '2023-06-01'),
(641, 641, 4495, 'R', '2022-11-30'),
(642, 642, 6933, 'R', '2023-06-07'),
(643, 643, 6527, 'R', '2022-01-13'),
(644, 644, 6360, 'P', '2023-04-27'),
(645, 645, 7465, 'R', '2022-02-10'),
(646, 646, 2420, 'R', '2022-07-03'),
(647, 647, 3184, 'R', '2022-03-31'),
(648, 648, 3859, 'R', '2021-12-20'),
(649, 649, 3762, 'R', '2022-10-01'),
(650, 650, 4340, 'P', '2023-07-15'),
(651, 651, 7715, 'R', '2023-08-06'),
(652, 652, 8693, 'P', '2021-10-07'),
(653, 653, 2704, 'P', '2021-10-01'),
(654, 654, 2930, 'P', '2022-09-21'),
(655, 655, 8988, 'R', '2022-09-18'),
(656, 656, 8654, 'R', '2022-12-11'),
(657, 657, 7973, 'P', '2022-07-28'),
(658, 658, 1299, 'R', '2023-07-08'),
(659, 659, 7026, 'P', '2022-02-18'),
(660, 660, 6828, 'R', '2023-09-01'),
(661, 661, 4391, 'P', '2021-10-12'),
(662, 662, 1496, 'R', '2022-01-05'),
(663, 663, 5219, 'P', '2022-09-12'),
(664, 664, 8633, 'R', '2023-08-25'),
(665, 665, 5360, 'P', '2021-11-02'),
(666, 666, 6157, 'P', '2022-04-01'),
(667, 667, 1430, 'R', '2021-10-27'),
(668, 668, 7299, 'R', '2023-02-02'),
(669, 669, 7502, 'P', '2022-03-12'),
(670, 670, 7869, 'P', '2022-02-22'),
(671, 671, 7878, 'R', '2023-08-01'),
(672, 672, 6942, 'P', '2023-06-28'),
(673, 673, 3941, 'P', '2023-07-13'),
(674, 674, 4559, 'P', '2022-03-05'),
(675, 675, 3942, 'R', '2023-07-12'),
(676, 676, 1033, 'P', '2021-10-17'),
(677, 677, 6930, 'R', '2022-09-13'),
(678, 678, 3680, 'R', '2022-04-02'),
(679, 679, 1928, 'R', '2022-08-21'),
(680, 680, 1094, 'P', '2021-12-22'),
(681, 681, 4212, 'R', '2022-06-05'),
(682, 682, 5014, 'P', '2023-05-19'),
(683, 683, 5952, 'P', '2022-09-19'),
(684, 684, 3298, 'P', '2022-08-20'),
(685, 685, 8854, 'R', '2023-08-08'),
(686, 686, 5354, 'P', '2022-11-28'),
(687, 687, 6208, 'P', '2021-12-20'),
(688, 688, 1113, 'P', '2022-06-30'),
(689, 689, 9080, 'P', '2022-11-20'),
(690, 690, 8587, 'P', '2022-09-03'),
(691, 691, 2707, 'P', '2022-03-09'),
(692, 692, 9183, 'R', '2023-05-20'),
(693, 693, 2037, 'P', '2022-09-26'),
(694, 694, 9700, 'R', '2023-02-20'),
(695, 695, 3326, 'P', '2022-06-09'),
(696, 696, 5389, 'R', '2022-11-07'),
(697, 697, 9680, 'P', '2021-09-29'),
(698, 698, 6730, 'R', '2022-11-27'),
(699, 699, 4932, 'P', '2022-01-27'),
(700, 700, 7389, 'P', '2023-09-02'),
(701, 701, 5013, 'P', '2023-08-13'),
(702, 702, 2792, 'P', '2023-06-23'),
(703, 703, 2314, 'R', '2021-09-21'),
(704, 704, 7980, 'R', '2022-09-22'),
(705, 705, 8093, 'R', '2023-01-24'),
(706, 706, 7000, 'P', '2021-09-25'),
(707, 707, 7751, 'R', '2022-12-01'),
(708, 708, 7594, 'R', '2022-02-16'),
(709, 709, 5749, 'R', '2022-01-05'),
(710, 710, 8577, 'P', '2021-12-22'),
(711, 711, 6552, 'P', '2023-03-17'),
(712, 712, 6270, 'P', '2023-05-19'),
(713, 713, 7586, 'P', '2022-11-11'),
(714, 714, 8219, 'R', '2022-11-04'),
(715, 715, 3362, 'P', '2022-01-28'),
(716, 716, 9064, 'P', '2023-01-12'),
(717, 717, 8790, 'P', '2023-07-24'),
(718, 718, 4566, 'P', '2023-05-03'),
(719, 719, 4171, 'P', '2023-09-11'),
(720, 720, 2531, 'P', '2021-10-25'),
(721, 721, 6138, 'R', '2022-06-03'),
(722, 722, 8370, 'R', '2023-08-17'),
(723, 723, 1107, 'R', '2023-08-09'),
(724, 724, 2949, 'R', '2021-11-10'),
(725, 725, 6755, 'P', '2022-11-14'),
(726, 726, 7145, 'P', '2022-04-10'),
(727, 727, 6851, 'P', '2022-04-01'),
(728, 728, 2891, 'R', '2022-08-29'),
(729, 729, 4588, 'P', '2022-12-23'),
(730, 730, 6017, 'R', '2021-10-02'),
(731, 731, 5055, 'R', '2023-08-09'),
(732, 732, 9578, 'P', '2022-03-25'),
(733, 733, 9084, 'P', '2022-03-13'),
(734, 734, 1900, 'P', '2023-03-29'),
(735, 735, 3971, 'P', '2023-01-11'),
(736, 736, 4926, 'P', '2022-10-18'),
(737, 737, 6013, 'P', '2022-12-29'),
(738, 738, 2050, 'R', '2021-11-21'),
(739, 739, 8470, 'P', '2023-01-08'),
(740, 740, 9734, 'P', '2023-07-22'),
(741, 741, 1257, 'P', '2023-06-04'),
(742, 742, 1181, 'P', '2023-02-05'),
(743, 743, 9525, 'R', '2023-08-29'),
(744, 744, 1577, 'R', '2022-05-08'),
(745, 745, 2690, 'P', '2022-03-01'),
(746, 746, 8842, 'R', '2023-03-25'),
(747, 747, 7212, 'P', '2022-08-11'),
(748, 748, 6318, 'R', '2022-04-10'),
(749, 749, 4324, 'R', '2021-12-07'),
(750, 750, 4492, 'R', '2022-08-19'),
(751, 751, 2398, 'P', '2021-12-25'),
(752, 752, 4193, 'P', '2023-05-23'),
(753, 753, 7397, 'R', '2022-07-17'),
(754, 754, 3932, 'P', '2022-05-12'),
(755, 755, 1282, 'P', '2023-08-08'),
(756, 756, 5124, 'P', '2021-11-22'),
(757, 757, 2864, 'R', '2022-10-02'),
(758, 758, 4365, 'P', '2022-05-08'),
(759, 759, 6979, 'P', '2023-08-19'),
(760, 760, 8715, 'R', '2022-11-03'),
(761, 761, 3074, 'P', '2022-12-03'),
(762, 762, 6594, 'R', '2022-05-09'),
(763, 763, 9359, 'R', '2023-03-23'),
(764, 764, 9748, 'P', '2022-04-20'),
(765, 765, 1461, 'P', '2023-08-09'),
(766, 766, 1684, 'P', '2021-10-01'),
(767, 767, 6325, 'R', '2022-04-10'),
(768, 768, 5926, 'P', '2022-10-14'),
(769, 769, 2224, 'P', '2023-05-23'),
(770, 770, 2031, 'R', '2021-11-27'),
(771, 771, 5898, 'R', '2023-02-21'),
(772, 772, 2518, 'P', '2022-05-16'),
(773, 773, 6524, 'P', '2022-04-21'),
(774, 774, 3014, 'P', '2023-06-24'),
(775, 775, 3210, 'R', '2021-10-25'),
(776, 776, 3583, 'R', '2022-01-28'),
(777, 777, 8374, 'R', '2023-01-12'),
(778, 778, 7702, 'R', '2022-12-06'),
(779, 779, 8814, 'P', '2023-05-29'),
(780, 780, 5678, 'R', '2021-10-01'),
(781, 781, 4561, 'R', '2023-05-19'),
(782, 782, 9193, 'R', '2023-06-14'),
(783, 783, 7535, 'P', '2023-04-02'),
(784, 784, 7354, 'R', '2023-05-13'),
(785, 785, 7414, 'R', '2022-05-19'),
(786, 786, 9132, 'R', '2021-12-21'),
(787, 787, 9752, 'P', '2022-06-17'),
(788, 788, 4759, 'R', '2022-11-26'),
(789, 789, 5947, 'P', '2022-07-30'),
(790, 790, 1976, 'P', '2022-10-03'),
(791, 791, 1582, 'R', '2022-06-12'),
(792, 792, 1709, 'R', '2021-12-10'),
(793, 793, 2992, 'R', '2023-01-11'),
(794, 794, 6008, 'P', '2022-07-18'),
(795, 795, 5081, 'P', '2023-03-26'),
(796, 796, 7007, 'P', '2022-04-01'),
(797, 797, 3833, 'R', '2022-03-03'),
(798, 798, 3463, 'R', '2022-05-02'),
(799, 799, 3964, 'R', '2022-02-23'),
(800, 800, 4961, 'P', '2022-11-09'),
(801, 801, 7672, 'P', '2022-04-12'),
(802, 802, 7693, 'P', '2022-04-07'),
(803, 803, 4274, 'R', '2022-12-27'),
(804, 804, 7334, 'P', '2021-12-09'),
(805, 805, 9003, 'P', '2022-06-23'),
(806, 806, 1943, 'R', '2022-04-28'),
(807, 807, 5638, 'P', '2022-08-21'),
(808, 808, 9437, 'R', '2021-10-12'),
(809, 809, 6766, 'R', '2023-04-11'),
(810, 810, 9529, 'R', '2023-04-29'),
(811, 811, 5664, 'R', '2022-12-19'),
(812, 812, 9723, 'R', '2022-09-04'),
(813, 813, 4794, 'P', '2022-08-15'),
(814, 814, 7827, 'R', '2023-07-27'),
(815, 815, 5446, 'P', '2023-01-14'),
(816, 816, 6840, 'P', '2022-08-12'),
(817, 817, 2215, 'P', '2022-06-24'),
(818, 818, 3419, 'P', '2022-03-10'),
(819, 819, 6543, 'P', '2022-07-17'),
(820, 820, 3197, 'R', '2022-09-27'),
(821, 821, 3070, 'P', '2022-10-28'),
(822, 822, 3386, 'R', '2023-01-15'),
(823, 823, 6810, 'R', '2023-09-07'),
(824, 824, 8960, 'R', '2022-07-06'),
(825, 825, 1344, 'P', '2023-01-29'),
(826, 826, 6438, 'P', '2022-05-14'),
(827, 827, 3283, 'P', '2021-10-07'),
(828, 828, 3069, 'P', '2021-09-17'),
(829, 829, 8185, 'R', '2022-05-12'),
(830, 830, 2040, 'P', '2023-07-28'),
(831, 831, 2407, 'P', '2023-01-14'),
(832, 832, 1412, 'R', '2022-05-13'),
(833, 833, 7580, 'R', '2022-04-11'),
(834, 834, 6595, 'P', '2021-12-08'),
(835, 835, 3997, 'P', '2022-05-25'),
(836, 836, 1546, 'R', '2022-10-27'),
(837, 837, 8837, 'P', '2023-05-28'),
(838, 838, 7285, 'P', '2023-09-06'),
(839, 839, 4060, 'R', '2022-09-18'),
(840, 840, 4366, 'P', '2023-01-14'),
(841, 841, 7731, 'R', '2023-01-11'),
(842, 842, 7886, 'R', '2023-08-20'),
(843, 843, 1808, 'P', '2022-09-29'),
(844, 844, 4030, 'P', '2023-05-02'),
(845, 845, 9331, 'P', '2022-11-06'),
(846, 846, 3467, 'R', '2022-02-22'),
(847, 847, 9362, 'P', '2022-08-31'),
(848, 848, 2302, 'R', '2022-09-18'),
(849, 849, 6370, 'R', '2022-07-28'),
(850, 850, 1393, 'P', '2022-11-21'),
(851, 851, 7055, 'P', '2022-06-20'),
(852, 852, 7896, 'R', '2022-05-02'),
(853, 853, 1569, 'R', '2023-06-04'),
(854, 854, 2148, 'P', '2022-04-10'),
(855, 855, 6706, 'R', '2021-11-09'),
(856, 856, 3620, 'R', '2023-05-14'),
(857, 857, 9383, 'P', '2022-08-18'),
(858, 858, 5050, 'R', '2023-03-23'),
(859, 859, 3870, 'R', '2022-05-30'),
(860, 860, 9159, 'R', '2022-09-18'),
(861, 861, 4751, 'R', '2023-01-21'),
(862, 862, 8785, 'R', '2022-03-06'),
(863, 863, 3570, 'R', '2021-12-05'),
(864, 864, 1262, 'R', '2022-03-21'),
(865, 865, 5759, 'P', '2022-03-11'),
(866, 866, 2389, 'P', '2021-11-25'),
(867, 867, 8437, 'R', '2023-01-08'),
(868, 868, 2141, 'P', '2022-10-16'),
(869, 869, 4897, 'P', '2023-03-07'),
(870, 870, 6250, 'R', '2022-06-20'),
(871, 871, 7491, 'P', '2023-07-11'),
(872, 872, 4976, 'P', '2023-01-21'),
(873, 873, 6316, 'P', '2022-05-01'),
(874, 874, 3044, 'P', '2022-04-09'),
(875, 875, 1282, 'P', '2022-11-24'),
(876, 876, 1887, 'R', '2022-09-16'),
(877, 877, 5621, 'R', '2021-10-22'),
(878, 878, 9678, 'R', '2022-01-13'),
(879, 879, 8576, 'P', '2023-03-09'),
(880, 880, 9586, 'P', '2023-05-14'),
(881, 881, 5098, 'R', '2022-08-29'),
(882, 882, 8901, 'R', '2023-07-05'),
(883, 883, 6581, 'P', '2022-07-27'),
(884, 884, 1583, 'P', '2022-02-13'),
(885, 885, 3380, 'P', '2022-03-17'),
(886, 886, 1818, 'R', '2022-07-27'),
(887, 887, 6928, 'R', '2022-08-05'),
(888, 888, 2634, 'R', '2022-04-13'),
(889, 889, 6185, 'R', '2022-03-05'),
(890, 890, 6317, 'R', '2023-02-19'),
(891, 891, 4859, 'P', '2021-12-04'),
(892, 892, 8310, 'R', '2023-01-07'),
(893, 893, 9717, 'R', '2022-01-06'),
(894, 894, 5756, 'P', '2023-05-04'),
(895, 895, 2224, 'P', '2021-11-13'),
(896, 896, 4525, 'R', '2022-07-09'),
(897, 897, 3349, 'P', '2021-12-20'),
(898, 898, 8463, 'P', '2023-06-23'),
(899, 899, 8830, 'R', '2023-04-25'),
(900, 900, 2779, 'R', '2022-12-06'),
(901, 901, 8945, 'P', '2022-11-22'),
(902, 902, 2005, 'P', '2023-05-16'),
(903, 903, 3504, 'R', '2022-04-05'),
(904, 904, 6739, 'P', '2023-06-11'),
(905, 905, 4522, 'R', '2023-05-20'),
(906, 906, 7577, 'P', '2022-05-04'),
(907, 907, 8511, 'R', '2023-08-17'),
(908, 908, 3863, 'R', '2023-09-14'),
(909, 909, 2656, 'R', '2021-12-08'),
(910, 910, 2996, 'R', '2023-03-31'),
(911, 911, 7662, 'R', '2023-04-07'),
(912, 912, 4441, 'R', '2022-06-23'),
(913, 913, 9779, 'P', '2022-02-01'),
(914, 914, 7037, 'R', '2022-08-15'),
(915, 915, 9576, 'P', '2023-01-01'),
(916, 916, 7742, 'P', '2023-07-22'),
(917, 917, 7580, 'P', '2022-01-21'),
(918, 918, 6625, 'R', '2022-11-08'),
(919, 919, 4357, 'P', '2022-01-18'),
(920, 920, 9827, 'R', '2022-02-09'),
(921, 921, 8330, 'R', '2021-12-14'),
(922, 922, 4367, 'R', '2021-09-24'),
(923, 923, 2175, 'P', '2021-12-16'),
(924, 924, 6623, 'P', '2023-04-17'),
(925, 925, 1505, 'R', '2023-08-19'),
(926, 926, 2869, 'R', '2023-02-16'),
(927, 927, 6039, 'R', '2023-02-25'),
(928, 928, 7039, 'R', '2022-09-11'),
(929, 929, 1850, 'R', '2022-02-18'),
(930, 930, 5401, 'P', '2022-03-18'),
(931, 931, 1049, 'P', '2023-08-06'),
(932, 932, 7081, 'R', '2023-08-24'),
(933, 933, 1184, 'R', '2022-07-25'),
(934, 934, 4207, 'R', '2022-03-08'),
(935, 935, 7465, 'R', '2022-05-29'),
(936, 936, 7533, 'P', '2022-12-01'),
(937, 937, 3231, 'P', '2021-10-28'),
(938, 938, 7505, 'R', '2022-02-04'),
(939, 939, 2014, 'P', '2021-10-22'),
(940, 940, 2541, 'R', '2022-02-20'),
(941, 941, 8405, 'R', '2023-03-12'),
(942, 942, 5246, 'P', '2023-03-20'),
(943, 943, 7528, 'P', '2023-04-04'),
(944, 944, 9139, 'P', '2022-09-18'),
(945, 945, 1281, 'R', '2022-03-16'),
(946, 946, 2751, 'P', '2023-09-15'),
(947, 947, 1089, 'P', '2023-08-21'),
(948, 948, 9062, 'R', '2023-04-24'),
(949, 949, 6033, 'P', '2022-07-06'),
(950, 950, 8987, 'P', '2022-06-07'),
(951, 951, 1506, 'R', '2023-07-26'),
(952, 952, 4850, 'R', '2022-12-17'),
(953, 953, 7619, 'P', '2022-02-07'),
(954, 954, 6422, 'P', '2022-12-27'),
(955, 955, 4723, 'P', '2022-09-11'),
(956, 956, 1698, 'R', '2023-06-09'),
(957, 957, 7386, 'R', '2022-01-25'),
(958, 958, 9840, 'P', '2022-06-04'),
(959, 959, 5375, 'R', '2023-02-12'),
(960, 960, 9691, 'P', '2022-10-05'),
(961, 961, 2869, 'P', '2021-12-28'),
(962, 962, 1156, 'R', '2023-01-20'),
(963, 963, 3212, 'R', '2023-03-25'),
(964, 964, 1051, 'P', '2023-05-19'),
(965, 965, 7830, 'P', '2021-11-01'),
(966, 966, 3435, 'P', '2021-11-29'),
(967, 967, 2381, 'R', '2022-07-09'),
(968, 968, 6304, 'R', '2021-10-28'),
(969, 969, 6100, 'P', '2022-01-12'),
(970, 970, 2982, 'P', '2022-06-05'),
(971, 971, 5061, 'P', '2022-02-23'),
(972, 972, 1119, 'R', '2021-10-27'),
(973, 973, 3960, 'R', '2021-11-11'),
(974, 974, 1801, 'P', '2022-01-20'),
(975, 975, 4711, 'R', '2021-09-19'),
(976, 976, 2728, 'P', '2023-04-15'),
(977, 977, 7156, 'R', '2022-01-29'),
(978, 978, 8302, 'P', '2022-02-20'),
(979, 979, 7151, 'P', '2021-12-15'),
(980, 980, 4980, 'P', '2022-03-10'),
(981, 981, 6681, 'P', '2023-01-30'),
(982, 982, 2958, 'R', '2023-06-26'),
(983, 983, 4981, 'P', '2023-08-24'),
(984, 984, 9766, 'R', '2022-02-02'),
(985, 985, 3835, 'P', '2023-04-15'),
(986, 986, 2263, 'R', '2022-12-13'),
(987, 987, 7268, 'R', '2022-11-10'),
(988, 988, 8075, 'R', '2022-01-17'),
(989, 989, 7999, 'P', '2023-04-12'),
(990, 990, 5359, 'R', '2021-09-25'),
(991, 991, 3992, 'R', '2022-03-03'),
(992, 992, 6300, 'P', '2021-10-31'),
(993, 993, 2504, 'P', '2023-03-24'),
(994, 994, 2541, 'P', '2022-11-11'),
(995, 995, 4328, 'P', '2022-04-11'),
(996, 996, 1419, 'P', '2022-01-22'),
(997, 997, 5944, 'R', '2022-12-14'),
(998, 998, 3276, 'P', '2022-10-14'),
(999, 999, 8579, 'R', '2023-05-14'),
(1000, 1000, 3530, 'P', '2023-08-24');
SET IDENTITY_INSERT users.bonus_points OFF;




---------------------------------------------ULTIMO INSERT
GO

-- Inserción 1
INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_addr_id, hotel_addr_description, hotel_modified_date)
VALUES ('Hotel Palacio de sal', 'Un lujoso hotel hecho de sal cerca al salar de uyuni', 1, '123-456-7890', 1, 'cerca al salar de uyuni', GETDATE());

-- Inserción 2
INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_addr_id, hotel_addr_description, hotel_modified_date)
VALUES ('Hotel Casa grande', 'Un increible hotel con hermosa vista', 1, '987-654-3210', 2, 'Calle Bolívar #1234, Ciudad', GETDATE());

-- Inserción 3
INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_addr_id, hotel_addr_description, hotel_modified_date)
VALUES ('Hotel Camino Real', 'Un hotel de primer nivel con increibles habitacines para toda la familia', 3, '555-123-4567', 3, 'Avenida San Martin &, C. K, Ciudad', GETDATE());

-- Inserción 4
INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_addr_id, hotel_addr_description, hotel_modified_date)
VALUES ('Hotel Los tajibos', 'Un hotel histórico en la ciudad de santa cruz', 1, '777-888-9999', 4, 'Av. San Martín 455, Ciudad', GETDATE());

-- Inserción 5
INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_addr_id, hotel_addr_description, hotel_modified_date)
VALUES ('Hotel Camino real', 'Un hotel de negocios para viajeros', 1, '444-555-6666', 5, '202 las loritas, Ciudad', GETDATE());
-- Inserción 6
INSERT INTO Hotel.Hotels (hotel_name, hotel_description, hotel_status, hotel_phonenumber, hotel_addr_id, hotel_addr_description, hotel_modified_date)
VALUES ('Hotel regina', 'Un hotel perfecto para relajacion', 0, '444-555-6666', 6, '202 carlos muñoz, Ciudad', GETDATE());

GO 

INSERT INTO Hotel.Hotel_Reviews 
(hore_user_review, hore_rating, hore_created_on, hore_user_id, hore_hotel_id) 
VALUES 
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 5, '2022-05-29', 1, 6),
('cerca de muchas atracciones turísticas y restaurantes. Fue fácil desplazarse por la ciudad desde aquí.', 3, '2022-08-22', 2, 2),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 2, '2022-01-16', 3, 5),
('lo que hizo que nuestra estadía fuera aún más especial.', 4, '2023-03-03', 4, 1),
('La ubicación del hotel era accesible y conveniente para explorar la ciudad. Pudimos caminar a muchas atracciones populares.', 5, '2022-04-08', 5, 6),
('Las vistas panorámicas desde el bar en la azotea eran espectaculares. Disfrutamos de cócteles mientras veíamos la puesta de sol sobre la ciudad.', 2, '2022-02-03', 6, 1),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 1, '2022-08-02', 7, 2),
('Pasamos un fin de semana romántico aquí y fue maravilloso. La suite con vista al mar y la bañera de hidromasaje fueron lo más destacado. ¡Definitivamente regresaremos para otra escapada!', 5, '2022-04-13', 8, 5),
('El servicio de concierge fue sobresaliente. Nos proporcionaron mapas', 2, '2022-03-05', 9, 3),
('Este hotel es un rincón de lujo en medio de la ciudad. Desde el momento en que llegamos', 3, '2022-12-05', 10, 4),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 4, '2023-05-30', 11, 4),
('Elegimos este hotel para nuestra boda y fue una elección perfecta. El personal de eventos hizo que todo fuera sin problemas y la recepción en el salón del hotel fue mágica.', 4, '2021-10-11', 12, 5),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 1, '2022-09-26', 13, 3),
('', 5, '2023-03-29', 14, 2),
('Pasamos dias emocionantes haciendo deportes acuáticos cerca del hotel. Fue una experiencia emocionante para toda la familia.', 2, '2022-10-25', 15, 5),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 2, '2022-06-21', 16, 5),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 1, '2022-03-30', 17, 4),
('Nuestra habitación con vista al mar nos brindó unas vistas impresionantes. Nos despertábamos con el sonido de las olas.', 2, '2022-08-24', 18, 6),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 2, '2023-03-16', 19, 5),
('Pasamos un fin de semana maravilloso en este hotel. Las vistas desde la habitación eran impresionantes y el desayuno buffet era delicioso.', 3, '2023-08-21', 20, 3),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 3, '2023-05-18', 21, 5),
('Celebramos nuestras bodas de plata aquí y fue una celebración inolvidable. El equipo de eventos se encargó de todos los detalles', 5, '2023-02-06', 22, 3),
('Este hotel fue el lugar perfecto para celebrar nuestro aniversario. La cena romántica en el restaurante con velas y música en vivo fue mágica.', 2, '2022-08-28', 23, 1),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 4, '2022-12-22', 24, 6),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 4, '2023-07-03', 25, 4),
('Pasamos un fin de semana romántico aquí y fue maravilloso. La suite con vista al mar y la bañera de hidromasaje fueron lo más destacado. ¡Definitivamente regresaremos para otra escapada!', 4, '2022-08-28', 26, 5),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 1, '2022-10-10', 27, 6),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 4, '2023-06-19', 28, 5),
('lo que hizo que nuestra estadía fuera aún más especial.', 1, '2021-09-17', 29, 5),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 1, '2023-07-19', 30, 1),
('el diseño es impresionante y contemporáneo.', 4, '2023-06-11', 31, 2),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 2, '2021-10-30', 32, 2),
('fue genial regresar a una habitación cómoda y relajante.', 1, '2022-06-18', 33, 3),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 4, '2022-08-26', 34, 2),
('Esta fue una experiencia de hotel inolvidable. No puedo dejar de hablar de lo increíble que fue mi estadía aquí. ¡Definitivamente regresaré en el futuro!', 2, '2021-09-17', 35, 3),
('Pasamos nuestra luna de miel en este hotel y fue inolvidable. La suite nupcial era impresionante y el personal nos recibió con champagne y pétalos de rosa esparcidos por la habitación.', 1, '2023-09-13', 36, 1),
('El personal del hotel fue siempre amable y atento a nuestras necesidades. Siempre estaban dispuestos a ayudar y brindar recomendaciones locales.', 2, '2023-06-17', 37, 4),
('Pasamos un fin de semana romántico aquí y fue maravilloso. La suite con vista al mar y la bañera de hidromasaje fueron lo más destacado. ¡Definitivamente regresaremos para otra escapada!', 5, '2023-05-19', 38, 1),
('Viajamos con nuestros hijos pequeños y el hotel ofreció un programa infantil divertido. Los niños lo pasaron en grande y nosotros también.', 5, '2022-10-07', 39, 5),
('El spa del hotel ofrece tratamientos relajantes. Disfruté de un masaje que me dejó completamente renovado.', 1, '2023-03-30', 40, 4),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 3, '2022-05-02', 41, 5),
('El desayuno buffet ofrecía una gran variedad de opciones', 1, '2022-09-16', 42, 5),
('Usamos este hotel como base para nuestras aventuras en la montaña. Después de un día agotador', 5, '2021-11-21', 43, 3),
('desde la decoración hasta la música.', 2, '2021-10-04', 44, 6),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 2, '2023-02-25', 45, 4),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 5, '2021-11-05', 46, 4),
('Probamos la comida en el restaurante del hotel y quedamos impresionados. Los platos eran deliciosos y el chef se aseguró de que todo estuviera perfecto.', 3, '2023-09-06', 47, 5),
('La ubicación del hotel es perfecta', 5, '2021-10-10', 48, 3),
('Pasamos nuestra luna de miel en este hotel y fue inolvidable. La suite nupcial era impresionante y el personal nos recibió con champagne y pétalos de rosa esparcidos por la habitación.', 4, '2022-08-21', 49, 2),
('lo que hizo que nuestra estadía fuera aún más especial.', 3, '2023-05-14', 50, 4),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 3, '2021-12-07', 51, 3),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 5, '2022-02-10', 52, 5),
('El servicio en este hotel es de primera clase. El personal siempre estaba dispuesto a ayudar y hacernos sentir como en casa. No puedo esperar para volver.', 3, '2023-01-23', 53, 2),
('Esta fue una experiencia de hotel inolvidable. No puedo dejar de hablar de lo increíble que fue mi estadía aquí. ¡Definitivamente regresaré en el futuro!', 5, '2022-01-30', 54, 2),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 5, '2022-07-28', 55, 4),
('lo que hizo que nuestra estadía fuera aún más especial.', 5, '2023-04-14', 56, 2),
('Viajamos con nuestros hijos pequeños y el hotel ofreció un programa infantil divertido. Los niños lo pasaron en grande y nosotros también.', 4, '2021-12-29', 57, 3),
('Pasamos dias emocionantes haciendo deportes acuáticos cerca del hotel. Fue una experiencia emocionante para toda la familia.', 3, '2022-10-14', 58, 6),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 1, '2022-05-29', 59, 6),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 4, '2022-02-15', 60, 3),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 5, '2021-11-25', 61, 3),
('La ubicación del hotel era accesible y conveniente para explorar la ciudad. Pudimos caminar a muchas atracciones populares.', 2, '2023-05-18', 62, 4),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 1, '2023-07-05', 63, 5),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 5, '2022-05-18', 64, 3),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 1, '2022-09-11', 65, 5),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 5, '2023-06-05', 66, 3),
('el diseño es impresionante y contemporáneo.', 2, '2021-10-27', 67, 3),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 3, '2021-11-27', 68, 1),
('Este hotel es una mezcla perfecta de elegancia y modernidad. Desde la recepción hasta las habitaciones', 2, '2023-05-13', 69, 2),
('nos dieron una cálida bienvenida. El personal de recepción hizo que nuestra estadía fuera aún más especial.', 4, '2022-01-16', 70, 6),
('La ubicación del hotel era accesible y conveniente para explorar la ciudad. Pudimos caminar a muchas atracciones populares.', 1, '2022-07-03', 71, 5),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 4, '2023-06-03', 72, 5),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 5, '2023-01-12', 73, 4),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 1, '2023-07-26', 74, 5),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 2, '2021-10-18', 75, 4),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 3, '2022-09-12', 76, 3),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 5, '2023-04-30', 77, 6),
('Celebramos nuestras bodas de plata aquí y fue una celebración inolvidable. El equipo de eventos se encargó de todos los detalles', 3, '2023-04-04', 78, 1),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 2, '2022-03-02', 79, 5),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 4, '2023-08-23', 80, 5),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 3, '2022-02-11', 81, 1),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 1, '2021-10-22', 82, 4),
('El personal del hotel fue siempre amable y atento a nuestras necesidades. Siempre estaban dispuestos a ayudar y brindar recomendaciones locales.', 3, '2022-08-04', 83, 2),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 1, '2021-11-08', 84, 2),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 4, '2023-01-24', 85, 6),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 4, '2022-03-16', 86, 2),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 5, '2022-02-12', 87, 1),
('nos sentimos mimados y cuidados. Las instalaciones son de primera categoría.', 4, '2022-10-17', 88, 6),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 3, '2022-10-26', 89, 4),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 2, '2023-07-25', 90, 3),
('', 1, '2021-11-22', 91, 1),
('Desde el momento en que llegamos', 2, '2022-09-02', 92, 4),
('El servicio en este hotel es de primera clase. El personal siempre estaba dispuesto a ayudar y hacernos sentir como en casa. No puedo esperar para volver.', 4, '2023-06-10', 93, 5),
('Organizamos una conferencia en este hotel y todo salió perfecto. Las salas de reuniones estaban bien equipadas y el personal de eventos se encargó de cada detalle.', 2, '2023-03-04', 94, 3),
('Este hotel es un rincón de lujo en medio de la ciudad. Desde el momento en que llegamos', 5, '2022-12-10', 95, 6),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 2, '2023-06-11', 96, 1),
('Celebré mi cumpleaños en este hotel y fue una celebración inolvidable. El pastel sorpresa en la habitación fue un toque encantador.', 1, '2023-08-01', 97, 1),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 3, '2023-02-05', 98, 3),
('Las vistas panorámicas desde el bar en la azotea eran espectaculares. Disfrutamos de cócteles mientras veíamos la puesta de sol sobre la ciudad.', 3, '2023-05-27', 99, 6),
('El spa del hotel ofrece tratamientos relajantes. Disfruté de un masaje que me dejó completamente renovado.', 3, '2023-04-08', 100, 1),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 5, '2021-10-19', 101, 6),
('reservaron excursiones y nos dieron excelentes recomendaciones para explorar la región.', 3, '2023-07-22', 102, 1),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 1, '2023-03-26', 103, 6),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 5, '2023-09-01', 104, 6),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 3, '2021-10-11', 105, 3),
('Esta fue una experiencia de hotel inolvidable. No puedo dejar de hablar de lo increíble que fue mi estadía aquí. ¡Definitivamente regresaré en el futuro!', 2, '2021-12-18', 106, 1),
('Mi estadía en este hotel fue increíble. Las habitaciones son espaciosas y cómodas y el personal es amable y servicial. ¡Recomiendo encarecidamente este lugar!', 1, '2022-03-05', 107, 1),
('El spa del hotel ofrece tratamientos relajantes. Disfruté de un masaje que me dejó completamente renovado.', 3, '2023-04-08', 108, 2),
('El desayuno buffet ofrecía una gran variedad de opciones', 1, '2022-09-15', 109, 2),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 4, '2022-10-09', 110, 2),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 5, '2023-06-12', 111, 5),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 1, '2022-04-25', 112, 1),
('Pasamos un fin de semana romántico aquí y fue maravilloso. La suite con vista al mar y la bañera de hidromasaje fueron lo más destacado. ¡Definitivamente regresaremos para otra escapada!', 2, '2023-06-14', 113, 1),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 2, '2023-07-23', 114, 4),
('La ubicación del hotel era accesible y conveniente para explorar la ciudad. Pudimos caminar a muchas atracciones populares.', 3, '2022-06-09', 115, 2),
('', 4, '2022-07-17', 116, 3),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 5, '2022-10-13', 117, 4),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 3, '2023-03-23', 118, 1),
('Esta fue una experiencia de hotel inolvidable. No puedo dejar de hablar de lo increíble que fue mi estadía aquí. ¡Definitivamente regresaré en el futuro!', 4, '2021-12-14', 119, 4),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 2, '2023-06-06', 120, 1),
('Este hotel es una mezcla perfecta de elegancia y modernidad. Desde la recepción hasta las habitaciones', 1, '2023-03-17', 121, 5),
('Celebré mi cumpleaños en este hotel y fue una celebración inolvidable. El pastel sorpresa en la habitación fue un toque encantador.', 5, '2022-01-20', 122, 4),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 2, '2023-01-08', 123, 3),
('Celebramos el Día de San Valentín aquí y fue mágico. La cena a la luz de las velas en el restaurante del hotel fue una experiencia única.', 5, '2023-01-08', 124, 1),
('Viajamos con nuestros hijos pequeños y el hotel ofreció un programa infantil divertido. Los niños lo pasaron en grande y nosotros también.', 4, '2023-05-20', 125, 5),
('Nuestra habitación con vista al mar nos brindó unas vistas impresionantes. Nos despertábamos con el sonido de las olas.', 4, '2022-06-20', 126, 2),
('reservaron excursiones y nos dieron excelentes recomendaciones para explorar la región.', 3, '2022-03-10', 127, 1),
('Pasamos un fin de semana maravilloso en este hotel. Las vistas desde la habitación eran impresionantes y el desayuno buffet era delicioso.', 1, '2022-05-07', 128, 4),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 2, '2022-09-12', 129, 1),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 1, '2022-03-19', 130, 3),
('Mi estadía en este hotel fue increíble. Las habitaciones son espaciosas y cómodas y el personal es amable y servicial. ¡Recomiendo encarecidamente este lugar!', 5, '2022-09-08', 131, 2),
('Celebramos el Día de San Valentín aquí y fue mágico. La cena a la luz de las velas en el restaurante del hotel fue una experiencia única.', 2, '2022-10-24', 132, 5),
('Este hotel fue el lugar perfecto para celebrar nuestro aniversario. La cena romántica en el restaurante con velas y música en vivo fue mágica.', 2, '2023-04-11', 133, 4),
('El servicio en este hotel es de primera clase. El personal siempre estaba dispuesto a ayudar y hacernos sentir como en casa. No puedo esperar para volver.', 5, '2021-11-09', 134, 4),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 3, '2022-07-25', 135, 3),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 4, '2021-11-03', 136, 2),
('El servicio de concierge fue sobresaliente. Nos proporcionaron mapas', 3, '2022-06-18', 137, 1),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 1, '2021-11-20', 138, 1),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 5, '2022-07-08', 139, 5),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 5, '2022-01-10', 140, 3),
('Las vistas panorámicas desde el bar en la azotea eran espectaculares. Disfrutamos de cócteles mientras veíamos la puesta de sol sobre la ciudad.', 1, '2022-04-13', 141, 1),
('lo que hizo que nuestra estadía fuera aún más especial.', 2, '2022-12-25', 142, 5),
('desde la decoración hasta la música.', 4, '2022-05-11', 143, 3),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 4, '2023-01-27', 144, 1),
('desde la decoración hasta la música.', 2, '2023-05-14', 145, 3),
('Pasamos un fin de semana romántico aquí y fue maravilloso. La suite con vista al mar y la bañera de hidromasaje fueron lo más destacado. ¡Definitivamente regresaremos para otra escapada!', 3, '2022-03-13', 146, 1),
('', 2, '2022-04-13', 147, 5),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 2, '2022-06-22', 148, 6),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 1, '2023-02-23', 149, 4),
('El spa del hotel ofrece tratamientos relajantes. Disfruté de un masaje que me dejó completamente renovado.', 4, '2023-05-03', 150, 1),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 1, '2022-10-20', 151, 3),
('Este hotel es una mezcla perfecta de elegancia y modernidad. Desde la recepción hasta las habitaciones', 5, '2022-02-06', 152, 1),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 2, '2022-06-27', 153, 6),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 4, '2022-07-20', 154, 5),
('Viajamos con nuestros hijos pequeños y el hotel ofreció un programa infantil divertido. Los niños lo pasaron en grande y nosotros también.', 1, '2022-07-07', 155, 4),
('Nuestra habitación con vista al mar nos brindó unas vistas impresionantes. Nos despertábamos con el sonido de las olas.', 2, '2022-04-07', 156, 4),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 2, '2023-08-07', 157, 6),
('El programa de entretenimiento nocturno en el hotel fue divertido. Disfrutamos de espectáculos en vivo y música en el bar.', 5, '2022-03-29', 158, 5),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 1, '2021-10-19', 159, 5),
('La ubicación del hotel es perfecta', 4, '2022-01-23', 160, 4),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 4, '2022-10-25', 161, 6),
('nos dieron una cálida bienvenida. El personal de recepción hizo que nuestra estadía fuera aún más especial.', 5, '2021-11-01', 162, 4),
('Organizamos una conferencia en este hotel y todo salió perfecto. Las salas de reuniones estaban bien equipadas y el personal de eventos se encargó de cada detalle.', 4, '2023-06-28', 163, 2),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 3, '2023-01-02', 164, 6),
('Usamos este hotel como base para nuestras aventuras en la montaña. Después de un día agotador', 3, '2023-08-10', 165, 4),
('Celebré mi cumpleaños en este hotel y fue una celebración inolvidable. El pastel sorpresa en la habitación fue un toque encantador.', 2, '2023-08-19', 166, 3),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 2, '2023-07-23', 167, 2),
('El servicio de concierge fue sobresaliente. Nos proporcionaron mapas', 2, '2022-05-26', 168, 3),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 4, '2022-03-04', 169, 3),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 2, '2022-12-17', 170, 5),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 3, '2022-06-30', 171, 3),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 1, '2023-05-23', 172, 1),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 5, '2023-06-09', 173, 1),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 4, '2022-11-13', 174, 4),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 1, '2021-09-22', 175, 1),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 1, '2023-04-15', 176, 5),
('La ubicación del hotel era accesible y conveniente para explorar la ciudad. Pudimos caminar a muchas atracciones populares.', 1, '2022-11-14', 177, 5),
('El desayuno buffet ofrecía una gran variedad de opciones', 5, '2021-12-01', 178, 3),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 2, '2022-08-23', 179, 4),
('Usamos este hotel como base para nuestras aventuras en la montaña. Después de un día agotador', 5, '2021-10-08', 180, 5),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 2, '2022-12-20', 181, 6),
('nos sentimos mimados y cuidados. Las instalaciones son de primera categoría.', 5, '2021-10-20', 182, 1),
('El personal del hotel fue siempre amable y atento a nuestras necesidades. Siempre estaban dispuestos a ayudar y brindar recomendaciones locales.', 3, '2022-05-25', 183, 2),
('reservaron excursiones y nos dieron excelentes recomendaciones para explorar la región.', 3, '2023-06-18', 184, 1),
('el diseño es impresionante y contemporáneo.', 1, '2022-10-13', 185, 5),
('Pasamos un fin de semana maravilloso en este hotel. Las vistas desde la habitación eran impresionantes y el desayuno buffet era delicioso.', 5, '2023-04-15', 186, 4),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 2, '2023-01-15', 187, 4),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 4, '2022-03-31', 188, 4),
('Este hotel fue el lugar perfecto para celebrar nuestro aniversario. La cena romántica en el restaurante con velas y música en vivo fue mágica.', 4, '2023-08-11', 189, 3),
('Esta fue una experiencia de hotel inolvidable. No puedo dejar de hablar de lo increíble que fue mi estadía aquí. ¡Definitivamente regresaré en el futuro!', 3, '2022-07-27', 190, 2),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 5, '2023-06-14', 191, 5),
('lo que hizo que nuestra estadía fuera aún más especial.', 2, '2022-05-20', 192, 3),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 5, '2021-10-12', 193, 5),
('Probamos la comida en el restaurante del hotel y quedamos impresionados. Los platos eran deliciosos y el chef se aseguró de que todo estuviera perfecto.', 1, '2022-11-20', 194, 6),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 2, '2022-07-04', 195, 3),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 2, '2022-06-30', 196, 2),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 5, '2022-11-22', 197, 2),
('cerca de muchas atracciones turísticas y restaurantes. Fue fácil desplazarse por la ciudad desde aquí.', 2, '2022-07-21', 198, 4),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 5, '2022-10-29', 199, 5),
('Este hotel fue el lugar perfecto para celebrar nuestro aniversario. La cena romántica en el restaurante con velas y música en vivo fue mágica.', 2, '2023-01-31', 200, 1),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 2, '2023-07-22', 201, 5),
('El spa del hotel ofrece tratamientos relajantes. Disfruté de un masaje que me dejó completamente renovado.', 5, '2022-06-12', 202, 4),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 4, '2022-10-17', 203, 4),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 5, '2023-08-30', 204, 3),
('el diseño es impresionante y contemporáneo.', 1, '2023-04-25', 205, 3),
('El programa de entretenimiento nocturno en el hotel fue divertido. Disfrutamos de espectáculos en vivo y música en el bar.', 2, '2023-05-19', 206, 5),
('Celebré mi cumpleaños en este hotel y fue una celebración inolvidable. El pastel sorpresa en la habitación fue un toque encantador.', 1, '2021-11-17', 207, 2),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 4, '2022-02-15', 208, 2),
('Celebramos el Día de San Valentín aquí y fue mágico. La cena a la luz de las velas en el restaurante del hotel fue una experiencia única.', 1, '2022-07-15', 209, 1),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 2, '2023-03-16', 210, 3),
('El desayuno buffet ofrecía una gran variedad de opciones', 2, '2023-05-10', 211, 6),
('La ubicación del hotel era accesible y conveniente para explorar la ciudad. Pudimos caminar a muchas atracciones populares.', 5, '2023-04-11', 212, 1),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 3, '2021-12-02', 213, 4),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 4, '2023-04-14', 214, 3),
('El servicio de concierge fue sobresaliente. Nos proporcionaron mapas', 2, '2023-08-01', 215, 4),
('El servicio de concierge fue sobresaliente. Nos proporcionaron mapas', 1, '2022-10-05', 216, 5),
('El desayuno buffet ofrecía una gran variedad de opciones', 3, '2022-07-30', 217, 4),
('La ubicación del hotel era accesible y conveniente para explorar la ciudad. Pudimos caminar a muchas atracciones populares.', 3, '2023-05-26', 218, 3),
('Las vistas panorámicas desde el bar en la azotea eran espectaculares. Disfrutamos de cócteles mientras veíamos la puesta de sol sobre la ciudad.', 5, '2021-09-27', 219, 2),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 4, '2022-11-07', 220, 4),
('nos dieron una cálida bienvenida. El personal de recepción hizo que nuestra estadía fuera aún más especial.', 3, '2021-10-18', 221, 6),
('Elegimos este hotel para nuestra boda y fue una elección perfecta. El personal de eventos hizo que todo fuera sin problemas y la recepción en el salón del hotel fue mágica.', 3, '2023-03-20', 222, 2),
('Viajamos con nuestros hijos pequeños y el hotel ofreció un programa infantil divertido. Los niños lo pasaron en grande y nosotros también.', 5, '2023-04-11', 223, 6),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 5, '2022-10-04', 224, 4),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 1, '2023-07-04', 225, 3),
('Probamos la comida en el restaurante del hotel y quedamos impresionados. Los platos eran deliciosos y el chef se aseguró de que todo estuviera perfecto.', 4, '2023-05-11', 226, 4),
('El desayuno buffet ofrecía una gran variedad de opciones', 1, '2022-08-11', 227, 5),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 5, '2022-12-01', 228, 6),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 1, '2021-12-20', 229, 3),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 3, '2021-11-07', 230, 4),
('Usamos este hotel como base para nuestras aventuras en la montaña. Después de un día agotador', 2, '2022-04-12', 231, 1),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 3, '2021-09-27', 232, 6),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 5, '2023-04-29', 233, 1),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 3, '2023-09-05', 234, 5),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 3, '2021-10-11', 235, 2),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 4, '2022-02-27', 236, 6),
('desde la decoración hasta la música.', 5, '2021-10-31', 237, 3),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 1, '2022-04-17', 238, 6),
('Esta fue una experiencia de hotel inolvidable. No puedo dejar de hablar de lo increíble que fue mi estadía aquí. ¡Definitivamente regresaré en el futuro!', 4, '2023-04-24', 239, 4),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 3, '2022-09-27', 240, 6),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 5, '2022-03-25', 241, 6),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 1, '2022-10-01', 242, 4),
('Pasamos nuestra luna de miel en este hotel y fue inolvidable. La suite nupcial era impresionante y el personal nos recibió con champagne y pétalos de rosa esparcidos por la habitación.', 5, '2021-10-26', 243, 3),
('el diseño es impresionante y contemporáneo.', 2, '2022-02-21', 244, 1),
('Usamos este hotel como base para nuestras aventuras en la montaña. Después de un día agotador', 5, '2021-11-08', 245, 3),
('Mi estadía en este hotel fue increíble. Las habitaciones son espaciosas y cómodas y el personal es amable y servicial. ¡Recomiendo encarecidamente este lugar!', 4, '2022-02-17', 246, 4),
('el diseño es impresionante y contemporáneo.', 1, '2021-12-06', 247, 6),
('Desde el momento en que llegamos', 5, '2022-12-05', 248, 3),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 5, '2023-05-15', 249, 4),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 1, '2023-08-02', 250, 2),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 3, '2022-04-09', 251, 1),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 3, '2022-03-20', 252, 6),
('Las vistas panorámicas desde el bar en la azotea eran espectaculares. Disfrutamos de cócteles mientras veíamos la puesta de sol sobre la ciudad.', 1, '2023-08-25', 253, 1),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 4, '2022-02-18', 254, 4),
('Pasamos dias emocionantes haciendo deportes acuáticos cerca del hotel. Fue una experiencia emocionante para toda la familia.', 2, '2023-03-15', 255, 5),
('desde la decoración hasta la música.', 2, '2022-06-09', 256, 1),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 1, '2023-01-12', 257, 6),
('El servicio en este hotel es de primera clase. El personal siempre estaba dispuesto a ayudar y hacernos sentir como en casa. No puedo esperar para volver.', 3, '2023-08-15', 258, 2),
('Elegimos este hotel para nuestra boda y fue una elección perfecta. El personal de eventos hizo que todo fuera sin problemas y la recepción en el salón del hotel fue mágica.', 3, '2023-05-02', 259, 1),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 2, '2023-09-16', 260, 2),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 2, '2023-03-20', 261, 6),
('reservaron excursiones y nos dieron excelentes recomendaciones para explorar la región.', 5, '2023-02-05', 262, 3),
('Pasamos dias emocionantes haciendo deportes acuáticos cerca del hotel. Fue una experiencia emocionante para toda la familia.', 1, '2023-04-11', 263, 2),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 2, '2023-07-03', 264, 3),
('fue genial regresar a una habitación cómoda y relajante.', 1, '2023-05-28', 265, 4),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 1, '2022-05-17', 266, 6),
('Pasamos un fin de semana maravilloso en este hotel. Las vistas desde la habitación eran impresionantes y el desayuno buffet era delicioso.', 1, '2022-03-06', 267, 4),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 2, '2023-04-08', 268, 1),
('Pasamos dias emocionantes haciendo deportes acuáticos cerca del hotel. Fue una experiencia emocionante para toda la familia.', 4, '2021-09-30', 269, 6),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 2, '2021-10-03', 270, 2),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 1, '2023-06-19', 271, 6),
('El servicio en este hotel es de primera clase. El personal siempre estaba dispuesto a ayudar y hacernos sentir como en casa. No puedo esperar para volver.', 1, '2021-10-08', 272, 6),
('Pasamos dias emocionantes haciendo deportes acuáticos cerca del hotel. Fue una experiencia emocionante para toda la familia.', 1, '2022-12-25', 273, 2),
('Organizamos una conferencia en este hotel y todo salió perfecto. Las salas de reuniones estaban bien equipadas y el personal de eventos se encargó de cada detalle.', 2, '2023-02-14', 274, 5),
('cerca de muchas atracciones turísticas y restaurantes. Fue fácil desplazarse por la ciudad desde aquí.', 5, '2023-06-05', 275, 6),
('Mi estadía en este hotel fue increíble. Las habitaciones son espaciosas y cómodas y el personal es amable y servicial. ¡Recomiendo encarecidamente este lugar!', 2, '2022-03-22', 276, 5),
('el diseño es impresionante y contemporáneo.', 5, '2023-05-19', 277, 4),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 5, '2023-02-05', 278, 5),
('fue genial regresar a una habitación cómoda y relajante.', 5, '2022-01-12', 279, 6),
('fue genial regresar a una habitación cómoda y relajante.', 2, '2023-08-26', 280, 3),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 5, '2023-04-29', 281, 1),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 5, '2023-03-24', 282, 2),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 5, '2022-09-14', 283, 2),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 3, '2023-08-29', 284, 4),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 2, '2023-01-03', 285, 4),
('nos sentimos mimados y cuidados. Las instalaciones son de primera categoría.', 1, '2022-02-14', 286, 1),
('Usamos este hotel como base para nuestras aventuras en la montaña. Después de un día agotador', 3, '2023-05-23', 287, 3),
('El programa de entretenimiento nocturno en el hotel fue divertido. Disfrutamos de espectáculos en vivo y música en el bar.', 2, '2022-07-18', 288, 1),
('Pasamos dias emocionantes haciendo deportes acuáticos cerca del hotel. Fue una experiencia emocionante para toda la familia.', 5, '2022-03-07', 289, 1),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 5, '2023-08-19', 290, 1),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 1, '2023-03-23', 291, 5),
('Este hotel es una mezcla perfecta de elegancia y modernidad. Desde la recepción hasta las habitaciones', 3, '2023-08-18', 292, 2),
('desde la decoración hasta la música.', 1, '2021-10-11', 293, 1),
('La ubicación del hotel era accesible y conveniente para explorar la ciudad. Pudimos caminar a muchas atracciones populares.', 3, '2022-02-18', 294, 2),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 1, '2023-08-05', 295, 3),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 1, '2022-10-08', 296, 2),
('Desde el momento en que llegamos', 4, '2022-03-18', 297, 2),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 1, '2022-11-13', 298, 2),
('el diseño es impresionante y contemporáneo.', 3, '2021-11-25', 299, 5),
('El desayuno buffet ofrecía una gran variedad de opciones', 3, '2023-01-17', 300, 1),
('Este hotel es una mezcla perfecta de elegancia y modernidad. Desde la recepción hasta las habitaciones', 5, '2022-05-26', 301, 4),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 4, '2023-02-28', 302, 1),
('La ubicación del hotel era accesible y conveniente para explorar la ciudad. Pudimos caminar a muchas atracciones populares.', 1, '2023-06-28', 303, 3),
('lo que hizo que nuestra estadía fuera aún más especial.', 4, '2023-06-29', 304, 1),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 4, '2021-12-07', 305, 6),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 3, '2022-05-06', 306, 5),
('El programa de entretenimiento nocturno en el hotel fue divertido. Disfrutamos de espectáculos en vivo y música en el bar.', 4, '2022-07-30', 307, 3),
('fue genial regresar a una habitación cómoda y relajante.', 3, '2023-01-15', 308, 4),
('nos sentimos mimados y cuidados. Las instalaciones son de primera categoría.', 4, '2022-09-19', 309, 4),
('La decoración del hotel es hermosa y elegante. Cada rincón estaba cuidadosamente diseñado', 3, '2023-04-04', 310, 1),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 4, '2023-04-10', 311, 4),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 1, '2021-09-25', 312, 5),
('El desayuno buffet ofrecía una gran variedad de opciones', 5, '2022-02-04', 313, 1),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 4, '2021-12-08', 314, 1),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 2, '2021-09-17', 315, 3),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 5, '2023-09-06', 316, 2),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 3, '2022-12-13', 317, 2),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 1, '2022-02-17', 318, 4),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 4, '2023-08-01', 319, 2),
('Pasamos nuestra luna de miel en este hotel y fue inolvidable. La suite nupcial era impresionante y el personal nos recibió con champagne y pétalos de rosa esparcidos por la habitación.', 4, '2022-03-05', 320, 1),
('Nuestra habitación con vista al mar nos brindó unas vistas impresionantes. Nos despertábamos con el sonido de las olas.', 3, '2022-03-29', 321, 2),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 3, '2022-07-23', 322, 5),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 1, '2022-11-14', 323, 2),
('La decoración del hotel es hermosa y elegante. Cada rincón estaba cuidadosamente diseñado', 1, '2021-11-25', 324, 3),
('Elegimos este hotel para nuestra boda y fue una elección perfecta. El personal de eventos hizo que todo fuera sin problemas y la recepción en el salón del hotel fue mágica.', 2, '2022-08-28', 325, 4),
('Pasamos un fin de semana maravilloso en este hotel. Las vistas desde la habitación eran impresionantes y el desayuno buffet era delicioso.', 3, '2022-11-16', 326, 5),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 2, '2023-03-05', 327, 4),
('Las vistas panorámicas desde el bar en la azotea eran espectaculares. Disfrutamos de cócteles mientras veíamos la puesta de sol sobre la ciudad.', 3, '2021-11-10', 328, 2),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 5, '2022-03-17', 329, 4),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 3, '2022-10-07', 330, 1),
('Este hotel fue el lugar perfecto para celebrar nuestro aniversario. La cena romántica en el restaurante con velas y música en vivo fue mágica.', 3, '2023-08-23', 331, 6),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 5, '2023-06-07', 332, 1),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 4, '2022-12-26', 333, 5),
('El spa del hotel ofrece tratamientos relajantes. Disfruté de un masaje que me dejó completamente renovado.', 2, '2023-03-23', 334, 5),
('El programa de entretenimiento nocturno en el hotel fue divertido. Disfrutamos de espectáculos en vivo y música en el bar.', 5, '2023-04-29', 335, 4),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 4, '2023-03-04', 336, 5),
('Celebré mi cumpleaños en este hotel y fue una celebración inolvidable. El pastel sorpresa en la habitación fue un toque encantador.', 4, '2023-03-06', 337, 4),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 3, '2022-04-01', 338, 3),
('Viajamos con nuestros hijos pequeños y el hotel ofreció un programa infantil divertido. Los niños lo pasaron en grande y nosotros también.', 4, '2023-07-18', 339, 1),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 1, '2022-11-08', 340, 4),
('Pasamos un fin de semana romántico aquí y fue maravilloso. La suite con vista al mar y la bañera de hidromasaje fueron lo más destacado. ¡Definitivamente regresaremos para otra escapada!', 1, '2023-06-22', 341, 3),
('nos sentimos mimados y cuidados. Las instalaciones son de primera categoría.', 4, '2023-09-16', 342, 5),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 3, '2023-09-11', 343, 3),
('Desde el momento en que llegamos', 1, '2023-03-25', 344, 1),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 1, '2023-09-02', 345, 6),
('el diseño es impresionante y contemporáneo.', 4, '2021-10-17', 346, 2),
('Esta fue una experiencia de hotel inolvidable. No puedo dejar de hablar de lo increíble que fue mi estadía aquí. ¡Definitivamente regresaré en el futuro!', 3, '2022-01-25', 347, 6),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 2, '2023-03-25', 348, 4),
('', 2, '2021-10-09', 349, 3),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 3, '2023-07-29', 350, 4),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 3, '2023-09-14', 351, 1),
('fue genial regresar a una habitación cómoda y relajante.', 1, '2022-04-07', 352, 3),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 4, '2022-08-29', 353, 5),
('Probamos la comida en el restaurante del hotel y quedamos impresionados. Los platos eran deliciosos y el chef se aseguró de que todo estuviera perfecto.', 4, '2022-07-31', 354, 4),
('el diseño es impresionante y contemporáneo.', 5, '2022-12-31', 355, 5),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 2, '2022-04-21', 356, 6),
('Viajamos con nuestros hijos pequeños y el hotel ofreció un programa infantil divertido. Los niños lo pasaron en grande y nosotros también.', 5, '2022-04-04', 357, 1),
('La decoración del hotel es hermosa y elegante. Cada rincón estaba cuidadosamente diseñado', 4, '2022-07-11', 358, 1),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 5, '2023-09-05', 359, 4),
('cerca de muchas atracciones turísticas y restaurantes. Fue fácil desplazarse por la ciudad desde aquí.', 4, '2022-09-29', 360, 6),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 5, '2022-09-28', 361, 2),
('La decoración del hotel es hermosa y elegante. Cada rincón estaba cuidadosamente diseñado', 1, '2023-05-09', 362, 6),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 4, '2023-03-10', 363, 2),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 3, '2021-12-25', 364, 6),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 5, '2023-05-28', 365, 6),
('nos sentimos mimados y cuidados. Las instalaciones son de primera categoría.', 1, '2022-01-07', 366, 4),
('Desde el momento en que llegamos', 5, '2023-05-14', 367, 1),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 1, '2023-07-20', 368, 2),
('Este hotel es una mezcla perfecta de elegancia y modernidad. Desde la recepción hasta las habitaciones', 4, '2021-11-15', 369, 2),
('nos dieron una cálida bienvenida. El personal de recepción hizo que nuestra estadía fuera aún más especial.', 4, '2021-11-26', 370, 2),
('El spa del hotel ofrece tratamientos relajantes. Disfruté de un masaje que me dejó completamente renovado.', 5, '2022-05-23', 371, 6),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 1, '2022-09-30', 372, 3),
('Organizamos una conferencia en este hotel y todo salió perfecto. Las salas de reuniones estaban bien equipadas y el personal de eventos se encargó de cada detalle.', 3, '2021-11-26', 373, 6),
('El servicio de concierge fue sobresaliente. Nos proporcionaron mapas', 5, '2022-09-12', 374, 3),
('desde la decoración hasta la música.', 5, '2022-06-02', 375, 2),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 5, '2022-03-28', 376, 6),
('El servicio en este hotel es de primera clase. El personal siempre estaba dispuesto a ayudar y hacernos sentir como en casa. No puedo esperar para volver.', 3, '2023-09-15', 377, 6),
('El spa del hotel ofrece tratamientos relajantes. Disfruté de un masaje que me dejó completamente renovado.', 3, '2022-05-28', 378, 4),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 1, '2023-07-08', 379, 3),
('Pasamos un fin de semana romántico aquí y fue maravilloso. La suite con vista al mar y la bañera de hidromasaje fueron lo más destacado. ¡Definitivamente regresaremos para otra escapada!', 5, '2021-11-16', 380, 5),
('desde la decoración hasta la música.', 4, '2023-03-03', 381, 2),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 3, '2022-10-28', 382, 1),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 2, '2023-09-14', 383, 2),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 4, '2023-08-30', 384, 4),
('Elegimos este hotel para nuestra boda y fue una elección perfecta. El personal de eventos hizo que todo fuera sin problemas y la recepción en el salón del hotel fue mágica.', 5, '2022-08-14', 385, 1),
('Este hotel es un rincón de lujo en medio de la ciudad. Desde el momento en que llegamos', 2, '2022-04-20', 386, 4),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 1, '2022-04-08', 387, 2),
('El personal del hotel fue siempre amable y atento a nuestras necesidades. Siempre estaban dispuestos a ayudar y brindar recomendaciones locales.', 1, '2023-05-23', 388, 3),
('', 1, '2023-07-16', 389, 5),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 5, '2022-12-08', 390, 5),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 4, '2022-03-30', 391, 6),
('fue genial regresar a una habitación cómoda y relajante.', 1, '2023-04-21', 392, 2),
('nos sentimos mimados y cuidados. Las instalaciones son de primera categoría.', 2, '2023-03-15', 393, 6),
('Pasamos un fin de semana maravilloso en este hotel. Las vistas desde la habitación eran impresionantes y el desayuno buffet era delicioso.', 5, '2022-07-22', 394, 4),
('Desde el momento en que llegamos', 5, '2021-11-17', 395, 1),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 1, '2022-10-19', 396, 4),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 1, '2022-08-14', 397, 5),
('Mi estadía en este hotel fue increíble. Las habitaciones son espaciosas y cómodas y el personal es amable y servicial. ¡Recomiendo encarecidamente este lugar!', 1, '2021-10-24', 398, 3),
('Pasamos un fin de semana maravilloso en este hotel. Las vistas desde la habitación eran impresionantes y el desayuno buffet era delicioso.', 1, '2022-05-20', 399, 2),
('Desde el momento en que llegamos', 1, '2023-02-01', 400, 2),
('Pasamos nuestra luna de miel en este hotel y fue inolvidable. La suite nupcial era impresionante y el personal nos recibió con champagne y pétalos de rosa esparcidos por la habitación.', 5, '2022-05-27', 401, 5),
('desde la decoración hasta la música.', 2, '2022-06-09', 402, 6),
('nos dieron una cálida bienvenida. El personal de recepción hizo que nuestra estadía fuera aún más especial.', 4, '2022-06-24', 403, 3),
('Este hotel es una mezcla perfecta de elegancia y modernidad. Desde la recepción hasta las habitaciones', 5, '2022-10-09', 404, 5),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 3, '2022-11-23', 405, 1),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 5, '2022-04-20', 406, 4),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 2, '2022-10-10', 407, 6),
('cerca de muchas atracciones turísticas y restaurantes. Fue fácil desplazarse por la ciudad desde aquí.', 4, '2023-03-30', 408, 3),
('Celebramos nuestras bodas de plata aquí y fue una celebración inolvidable. El equipo de eventos se encargó de todos los detalles', 1, '2022-01-15', 409, 5),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 2, '2021-11-07', 410, 4),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 1, '2023-03-08', 411, 6),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 2, '2022-12-23', 412, 3),
('Este hotel es un rincón de lujo en medio de la ciudad. Desde el momento en que llegamos', 1, '2022-09-13', 413, 3),
('Esta fue una experiencia de hotel inolvidable. No puedo dejar de hablar de lo increíble que fue mi estadía aquí. ¡Definitivamente regresaré en el futuro!', 3, '2022-06-10', 414, 4),
('Pasamos dias emocionantes haciendo deportes acuáticos cerca del hotel. Fue una experiencia emocionante para toda la familia.', 3, '2022-05-31', 415, 1),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 5, '2022-04-10', 416, 5),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 1, '2023-01-27', 417, 2),
('El personal del hotel fue siempre amable y atento a nuestras necesidades. Siempre estaban dispuestos a ayudar y brindar recomendaciones locales.', 3, '2021-12-19', 418, 6),
('reservaron excursiones y nos dieron excelentes recomendaciones para explorar la región.', 3, '2022-08-29', 419, 5),
('La ubicación del hotel era accesible y conveniente para explorar la ciudad. Pudimos caminar a muchas atracciones populares.', 2, '2022-09-20', 420, 1),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 3, '2022-02-06', 421, 1),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 4, '2022-09-22', 422, 6),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 5, '2023-05-28', 423, 2),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 4, '2023-05-17', 424, 2),
('Pasamos dias emocionantes haciendo deportes acuáticos cerca del hotel. Fue una experiencia emocionante para toda la familia.', 2, '2022-02-09', 425, 6),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 2, '2021-11-07', 426, 2),
('El personal del hotel fue siempre amable y atento a nuestras necesidades. Siempre estaban dispuestos a ayudar y brindar recomendaciones locales.', 1, '2022-12-07', 427, 3),
('La ubicación del hotel es perfecta', 4, '2022-03-23', 428, 6),
('Celebramos el Día de San Valentín aquí y fue mágico. La cena a la luz de las velas en el restaurante del hotel fue una experiencia única.', 1, '2022-10-22', 429, 3),
('El servicio en este hotel es de primera clase. El personal siempre estaba dispuesto a ayudar y hacernos sentir como en casa. No puedo esperar para volver.', 3, '2023-09-03', 430, 6),
('Nuestra habitación con vista al mar nos brindó unas vistas impresionantes. Nos despertábamos con el sonido de las olas.', 5, '2022-03-14', 431, 5),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 2, '2022-09-28', 432, 2),
('desde la decoración hasta la música.', 1, '2023-07-28', 433, 1),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 2, '2023-05-24', 434, 4),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 1, '2023-02-07', 435, 5),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 3, '2022-08-16', 436, 6),
('Desde el momento en que llegamos', 4, '2023-07-26', 437, 1),
('Mi estadía en este hotel fue increíble. Las habitaciones son espaciosas y cómodas y el personal es amable y servicial. ¡Recomiendo encarecidamente este lugar!', 5, '2022-11-16', 438, 4),
('el diseño es impresionante y contemporáneo.', 2, '2022-09-26', 439, 2),
('El spa del hotel ofrece tratamientos relajantes. Disfruté de un masaje que me dejó completamente renovado.', 2, '2023-03-28', 440, 4),
('Mi estadía en este hotel fue increíble. Las habitaciones son espaciosas y cómodas y el personal es amable y servicial. ¡Recomiendo encarecidamente este lugar!', 3, '2022-08-24', 441, 3),
('Este hotel es una mezcla perfecta de elegancia y modernidad. Desde la recepción hasta las habitaciones', 5, '2022-06-25', 442, 5),
('Nuestra habitación con vista al mar nos brindó unas vistas impresionantes. Nos despertábamos con el sonido de las olas.', 3, '2023-04-09', 443, 2),
('Pasamos nuestra luna de miel en este hotel y fue inolvidable. La suite nupcial era impresionante y el personal nos recibió con champagne y pétalos de rosa esparcidos por la habitación.', 3, '2023-05-31', 444, 2),
('nos dieron una cálida bienvenida. El personal de recepción hizo que nuestra estadía fuera aún más especial.', 5, '2023-01-24', 445, 1),
('El desayuno buffet ofrecía una gran variedad de opciones', 1, '2022-10-21', 446, 5),
('El servicio de concierge fue sobresaliente. Nos proporcionaron mapas', 3, '2023-01-23', 447, 5),
('Probamos la comida en el restaurante del hotel y quedamos impresionados. Los platos eran deliciosos y el chef se aseguró de que todo estuviera perfecto.', 1, '2023-06-30', 448, 6),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 2, '2023-09-05', 449, 4),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 3, '2023-06-12', 450, 5),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 2, '2022-12-18', 451, 4),
('desde la decoración hasta la música.', 4, '2023-02-18', 452, 4),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 2, '2023-08-23', 453, 3),
('fue genial regresar a una habitación cómoda y relajante.', 1, '2023-04-14', 454, 3),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 4, '2021-11-13', 455, 6),
('lo que hizo que nuestra estadía fuera aún más especial.', 4, '2022-06-23', 456, 2),
('cerca de muchas atracciones turísticas y restaurantes. Fue fácil desplazarse por la ciudad desde aquí.', 1, '2023-07-25', 457, 5),
('desde la decoración hasta la música.', 2, '2022-02-16', 458, 2),
('Celebré mi cumpleaños en este hotel y fue una celebración inolvidable. El pastel sorpresa en la habitación fue un toque encantador.', 4, '2022-05-14', 459, 1),
('Esta fue una experiencia de hotel inolvidable. No puedo dejar de hablar de lo increíble que fue mi estadía aquí. ¡Definitivamente regresaré en el futuro!', 1, '2022-11-22', 460, 4),
('Viajamos con nuestros hijos pequeños y el hotel ofreció un programa infantil divertido. Los niños lo pasaron en grande y nosotros también.', 2, '2023-01-24', 461, 1),
('Este hotel fue el lugar perfecto para celebrar nuestro aniversario. La cena romántica en el restaurante con velas y música en vivo fue mágica.', 3, '2021-11-11', 462, 1),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 5, '2021-12-24', 463, 4),
('El spa del hotel ofrece tratamientos relajantes. Disfruté de un masaje que me dejó completamente renovado.', 4, '2023-04-21', 464, 2),
('El desayuno buffet ofrecía una gran variedad de opciones', 3, '2022-05-17', 465, 2),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 3, '2023-01-28', 466, 3),
('Pasamos un fin de semana maravilloso en este hotel. Las vistas desde la habitación eran impresionantes y el desayuno buffet era delicioso.', 3, '2023-06-12', 467, 4),
('', 5, '2022-08-01', 468, 4),
('Desde el momento en que llegamos', 4, '2022-12-01', 469, 6),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 2, '2022-02-19', 470, 5),
('El servicio de concierge fue sobresaliente. Nos proporcionaron mapas', 4, '2023-07-08', 471, 2),
('desde la decoración hasta la música.', 5, '2021-12-19', 472, 1),
('Mi estadía en este hotel fue increíble. Las habitaciones son espaciosas y cómodas y el personal es amable y servicial. ¡Recomiendo encarecidamente este lugar!', 5, '2023-02-06', 473, 5),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 5, '2023-05-20', 474, 2),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 4, '2021-11-14', 475, 6),
('el diseño es impresionante y contemporáneo.', 2, '2022-09-15', 476, 2),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 1, '2022-05-18', 477, 6),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 2, '2022-09-02', 478, 1),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 5, '2023-03-22', 479, 2),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 1, '2023-04-09', 480, 1),
('Viajamos con nuestros hijos pequeños y el hotel ofreció un programa infantil divertido. Los niños lo pasaron en grande y nosotros también.', 2, '2021-11-13', 481, 6),
('fue genial regresar a una habitación cómoda y relajante.', 5, '2022-04-20', 482, 6),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 3, '2022-03-24', 483, 4),
('Usamos este hotel como base para nuestras aventuras en la montaña. Después de un día agotador', 3, '2023-01-18', 484, 3),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 1, '2022-10-20', 485, 1),
('desde la decoración hasta la música.', 1, '2022-02-14', 486, 6),
('Nuestra habitación con vista al mar nos brindó unas vistas impresionantes. Nos despertábamos con el sonido de las olas.', 5, '2023-09-11', 487, 1),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 1, '2023-03-28', 488, 4),
('Nuestra habitación con vista al mar nos brindó unas vistas impresionantes. Nos despertábamos con el sonido de las olas.', 2, '2021-10-11', 489, 1),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 5, '2022-05-28', 490, 3),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 5, '2022-03-01', 491, 2),
('Este hotel es una mezcla perfecta de elegancia y modernidad. Desde la recepción hasta las habitaciones', 4, '2021-12-19', 492, 5),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 2, '2022-06-30', 493, 5),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 2, '2023-08-16', 494, 3),
('', 5, '2022-11-01', 495, 5),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 1, '2022-07-13', 496, 5),
('Viajamos con nuestros hijos pequeños y el hotel ofreció un programa infantil divertido. Los niños lo pasaron en grande y nosotros también.', 1, '2023-03-01', 497, 4),
('Celebramos el Día de San Valentín aquí y fue mágico. La cena a la luz de las velas en el restaurante del hotel fue una experiencia única.', 1, '2022-02-14', 498, 5),
('Celebramos el Día de San Valentín aquí y fue mágico. La cena a la luz de las velas en el restaurante del hotel fue una experiencia única.', 5, '2022-07-17', 499, 3),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 3, '2022-01-07', 500, 5),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 2, '2021-09-29', 501, 1),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 1, '2023-01-08', 502, 5),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 5, '2023-09-16', 503, 1),
('reservaron excursiones y nos dieron excelentes recomendaciones para explorar la región.', 5, '2023-02-02', 504, 6),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 5, '2022-10-23', 505, 4),
('La decoración del hotel es hermosa y elegante. Cada rincón estaba cuidadosamente diseñado', 3, '2022-10-20', 506, 5),
('El servicio de concierge fue sobresaliente. Nos proporcionaron mapas', 4, '2023-02-08', 507, 6),
('El programa de entretenimiento nocturno en el hotel fue divertido. Disfrutamos de espectáculos en vivo y música en el bar.', 2, '2022-05-17', 508, 5),
('desde la decoración hasta la música.', 4, '2022-12-27', 509, 4),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 3, '2022-12-23', 510, 2),
('Organizamos una conferencia en este hotel y todo salió perfecto. Las salas de reuniones estaban bien equipadas y el personal de eventos se encargó de cada detalle.', 1, '2022-09-05', 511, 3),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 2, '2022-02-01', 512, 6),
('Este hotel es un rincón de lujo en medio de la ciudad. Desde el momento en que llegamos', 4, '2023-06-12', 513, 3),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 5, '2022-03-02', 514, 2),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 1, '2023-03-25', 515, 6),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 4, '2022-04-10', 516, 5),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 1, '2022-03-24', 517, 2),
('cerca de muchas atracciones turísticas y restaurantes. Fue fácil desplazarse por la ciudad desde aquí.', 1, '2021-12-28', 518, 6),
('El programa de entretenimiento nocturno en el hotel fue divertido. Disfrutamos de espectáculos en vivo y música en el bar.', 1, '2022-06-11', 519, 3),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 1, '2023-07-30', 520, 4),
('El desayuno buffet ofrecía una gran variedad de opciones', 1, '2022-08-31', 521, 1),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 3, '2022-01-05', 522, 1),
('el diseño es impresionante y contemporáneo.', 1, '2021-11-29', 523, 1),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 1, '2022-04-05', 524, 2),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 3, '2023-05-11', 525, 3),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 2, '2022-10-29', 526, 4),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 4, '2023-03-23', 527, 1),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 2, '2021-11-03', 528, 3),
('El servicio de concierge fue sobresaliente. Nos proporcionaron mapas', 4, '2022-02-04', 529, 2),
('Celebramos el Día de San Valentín aquí y fue mágico. La cena a la luz de las velas en el restaurante del hotel fue una experiencia única.', 3, '2023-04-05', 530, 6),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 3, '2023-06-25', 531, 6),
('Este hotel fue el lugar perfecto para celebrar nuestro aniversario. La cena romántica en el restaurante con velas y música en vivo fue mágica.', 1, '2023-06-05', 532, 5),
('La ubicación del hotel es perfecta', 5, '2023-06-23', 533, 6),
('Desde el momento en que llegamos', 5, '2022-03-25', 534, 6),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 3, '2022-08-10', 535, 2),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 4, '2022-11-11', 536, 5),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 1, '2023-06-12', 537, 6),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 2, '2021-09-21', 538, 3),
('El personal del hotel fue siempre amable y atento a nuestras necesidades. Siempre estaban dispuestos a ayudar y brindar recomendaciones locales.', 5, '2023-01-19', 539, 5),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 5, '2022-02-28', 540, 2),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 3, '2023-02-06', 541, 1),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 5, '2023-08-03', 542, 6),
('El personal del hotel fue siempre amable y atento a nuestras necesidades. Siempre estaban dispuestos a ayudar y brindar recomendaciones locales.', 4, '2022-06-10', 543, 1),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 2, '2023-08-09', 544, 2),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 5, '2023-01-15', 545, 4),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 4, '2023-05-06', 546, 3),
('lo que hizo que nuestra estadía fuera aún más especial.', 1, '2022-03-24', 547, 4),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 5, '2021-11-20', 548, 2),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 3, '2022-04-15', 549, 1),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 5, '2022-09-21', 550, 5),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 4, '2023-06-27', 551, 6),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 4, '2022-12-05', 552, 2),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 3, '2022-01-18', 553, 4),
('Este hotel es un rincón de lujo en medio de la ciudad. Desde el momento en que llegamos', 4, '2022-10-29', 554, 2),
('Celebramos el Día de San Valentín aquí y fue mágico. La cena a la luz de las velas en el restaurante del hotel fue una experiencia única.', 1, '2022-11-13', 555, 2),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 1, '2023-07-17', 556, 1),
('Pasamos nuestra luna de miel en este hotel y fue inolvidable. La suite nupcial era impresionante y el personal nos recibió con champagne y pétalos de rosa esparcidos por la habitación.', 2, '2023-02-23', 557, 6),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 3, '2022-10-11', 558, 5),
('Nuestra habitación con vista al mar nos brindó unas vistas impresionantes. Nos despertábamos con el sonido de las olas.', 2, '2023-05-03', 559, 3),
('Pasamos un fin de semana romántico aquí y fue maravilloso. La suite con vista al mar y la bañera de hidromasaje fueron lo más destacado. ¡Definitivamente regresaremos para otra escapada!', 2, '2021-10-25', 560, 3),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 3, '2022-01-03', 561, 4),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 5, '2023-09-15', 562, 6),
('el diseño es impresionante y contemporáneo.', 5, '2021-11-21', 563, 1),
('desde la decoración hasta la música.', 1, '2022-07-17', 564, 1),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 2, '2023-01-02', 565, 2),
('nos sentimos mimados y cuidados. Las instalaciones son de primera categoría.', 3, '2022-09-02', 566, 2),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 1, '2022-03-07', 567, 3),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 5, '2022-10-27', 568, 1),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 3, '2021-09-18', 569, 1),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 2, '2023-06-22', 570, 1),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 2, '2021-10-16', 571, 3),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 5, '2023-01-24', 572, 4),
('Celebramos nuestras bodas de plata aquí y fue una celebración inolvidable. El equipo de eventos se encargó de todos los detalles', 3, '2022-04-04', 573, 3),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 3, '2023-03-02', 574, 4),
('reservaron excursiones y nos dieron excelentes recomendaciones para explorar la región.', 4, '2021-10-11', 575, 5),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 5, '2023-08-31', 576, 5),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 1, '2023-02-06', 577, 5),
('El servicio en este hotel es de primera clase. El personal siempre estaba dispuesto a ayudar y hacernos sentir como en casa. No puedo esperar para volver.', 5, '2023-04-10', 578, 6),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 3, '2022-04-10', 579, 5),
('El personal del hotel fue siempre amable y atento a nuestras necesidades. Siempre estaban dispuestos a ayudar y brindar recomendaciones locales.', 5, '2023-04-21', 580, 5),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 5, '2022-01-01', 581, 1),
('fue genial regresar a una habitación cómoda y relajante.', 5, '2022-01-18', 582, 4),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 3, '2022-09-16', 583, 6),
('Este hotel fue el lugar perfecto para celebrar nuestro aniversario. La cena romántica en el restaurante con velas y música en vivo fue mágica.', 2, '2023-06-30', 584, 6),
('Este hotel fue el lugar perfecto para celebrar nuestro aniversario. La cena romántica en el restaurante con velas y música en vivo fue mágica.', 4, '2023-07-25', 585, 4),
('El personal del hotel fue siempre amable y atento a nuestras necesidades. Siempre estaban dispuestos a ayudar y brindar recomendaciones locales.', 4, '2023-07-27', 586, 4),
('fue genial regresar a una habitación cómoda y relajante.', 5, '2022-01-31', 587, 2),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 2, '2022-05-13', 588, 3),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 4, '2022-11-09', 589, 5),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 1, '2022-10-15', 590, 5),
('Celebramos el Día de San Valentín aquí y fue mágico. La cena a la luz de las velas en el restaurante del hotel fue una experiencia única.', 3, '2022-08-19', 591, 2),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 1, '2022-08-20', 592, 1),
('Este hotel fue el lugar perfecto para celebrar nuestro aniversario. La cena romántica en el restaurante con velas y música en vivo fue mágica.', 5, '2023-02-16', 593, 6),
('nos dieron una cálida bienvenida. El personal de recepción hizo que nuestra estadía fuera aún más especial.', 5, '2023-01-21', 594, 4),
('Pasamos un fin de semana maravilloso en este hotel. Las vistas desde la habitación eran impresionantes y el desayuno buffet era delicioso.', 1, '2021-11-25', 595, 6),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 2, '2023-03-25', 596, 3),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 5, '2022-12-30', 597, 4),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 5, '2022-01-15', 598, 1),
('el diseño es impresionante y contemporáneo.', 2, '2022-10-27', 599, 3),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 3, '2022-09-12', 600, 1),
('cerca de muchas atracciones turísticas y restaurantes. Fue fácil desplazarse por la ciudad desde aquí.', 5, '2023-04-02', 601, 1),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 5, '2022-06-06', 602, 3),
('La ubicación del hotel es perfecta', 5, '2022-07-25', 603, 6),
('cerca de muchas atracciones turísticas y restaurantes. Fue fácil desplazarse por la ciudad desde aquí.', 2, '2021-12-19', 604, 3),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 5, '2022-03-11', 605, 6),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 3, '2022-02-21', 606, 4),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 1, '2022-03-14', 607, 1),
('lo que hizo que nuestra estadía fuera aún más especial.', 4, '2021-09-29', 608, 4),
('El servicio en este hotel es de primera clase. El personal siempre estaba dispuesto a ayudar y hacernos sentir como en casa. No puedo esperar para volver.', 2, '2022-11-24', 609, 3),
('La ubicación del hotel es perfecta', 3, '2023-04-10', 610, 2),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 5, '2022-09-05', 611, 1),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 2, '2023-03-11', 612, 2),
('desde la decoración hasta la música.', 2, '2023-08-21', 613, 3),
('el diseño es impresionante y contemporáneo.', 1, '2022-08-31', 614, 5),
('Este hotel fue el lugar perfecto para celebrar nuestro aniversario. La cena romántica en el restaurante con velas y música en vivo fue mágica.', 5, '2022-04-04', 615, 5),
('nos dieron una cálida bienvenida. El personal de recepción hizo que nuestra estadía fuera aún más especial.', 2, '2021-11-11', 616, 1),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 5, '2022-06-04', 617, 2),
('Este hotel es un rincón de lujo en medio de la ciudad. Desde el momento en que llegamos', 2, '2022-07-13', 618, 5),
('fue genial regresar a una habitación cómoda y relajante.', 3, '2022-05-08', 619, 2),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 3, '2023-03-08', 620, 6),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 3, '2022-06-09', 621, 6),
('Pasamos dias emocionantes haciendo deportes acuáticos cerca del hotel. Fue una experiencia emocionante para toda la familia.', 3, '2022-11-24', 622, 3),
('La ubicación del hotel era accesible y conveniente para explorar la ciudad. Pudimos caminar a muchas atracciones populares.', 1, '2023-06-19', 623, 3),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 2, '2023-08-24', 624, 3),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 3, '2022-10-31', 625, 3),
('Celebré mi cumpleaños en este hotel y fue una celebración inolvidable. El pastel sorpresa en la habitación fue un toque encantador.', 2, '2023-02-12', 626, 5),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 4, '2022-05-07', 627, 1),
('fue genial regresar a una habitación cómoda y relajante.', 4, '2022-07-13', 628, 2),
('El servicio de concierge fue sobresaliente. Nos proporcionaron mapas', 3, '2021-10-28', 629, 5),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 4, '2021-12-26', 630, 2),
('El personal del hotel fue siempre amable y atento a nuestras necesidades. Siempre estaban dispuestos a ayudar y brindar recomendaciones locales.', 1, '2022-06-05', 631, 2),
('Las vistas panorámicas desde el bar en la azotea eran espectaculares. Disfrutamos de cócteles mientras veíamos la puesta de sol sobre la ciudad.', 5, '2022-11-23', 632, 4),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 4, '2022-11-20', 633, 4),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 2, '2023-09-02', 634, 3),
('Elegimos este hotel para nuestra boda y fue una elección perfecta. El personal de eventos hizo que todo fuera sin problemas y la recepción en el salón del hotel fue mágica.', 4, '2023-01-21', 635, 6),
('Las vistas panorámicas desde el bar en la azotea eran espectaculares. Disfrutamos de cócteles mientras veíamos la puesta de sol sobre la ciudad.', 5, '2022-07-25', 636, 3),
('lo que hizo que nuestra estadía fuera aún más especial.', 5, '2022-03-15', 637, 1),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 2, '2022-01-13', 638, 6),
('El desayuno buffet ofrecía una gran variedad de opciones', 2, '2022-10-21', 639, 5),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 2, '2022-08-11', 640, 1),
('nos sentimos mimados y cuidados. Las instalaciones son de primera categoría.', 2, '2023-08-31', 641, 4),
('Elegimos este hotel para nuestra boda y fue una elección perfecta. El personal de eventos hizo que todo fuera sin problemas y la recepción en el salón del hotel fue mágica.', 1, '2022-06-26', 642, 4),
('Usamos este hotel como base para nuestras aventuras en la montaña. Después de un día agotador', 4, '2021-12-06', 643, 5),
('Nuestra habitación con vista al mar nos brindó unas vistas impresionantes. Nos despertábamos con el sonido de las olas.', 3, '2022-06-07', 644, 4),
('reservaron excursiones y nos dieron excelentes recomendaciones para explorar la región.', 3, '2023-04-06', 645, 6),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 1, '2023-03-02', 646, 3),
('El personal del hotel fue siempre amable y atento a nuestras necesidades. Siempre estaban dispuestos a ayudar y brindar recomendaciones locales.', 1, '2022-03-23', 647, 6),
('La ubicación del hotel es perfecta', 1, '2022-09-08', 648, 2),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 1, '2021-11-22', 649, 2),
('Pasamos un fin de semana maravilloso en este hotel. Las vistas desde la habitación eran impresionantes y el desayuno buffet era delicioso.', 2, '2023-03-02', 650, 6),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 3, '2022-01-22', 651, 3),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 3, '2023-09-10', 652, 2),
('Mi estadía en este hotel fue increíble. Las habitaciones son espaciosas y cómodas y el personal es amable y servicial. ¡Recomiendo encarecidamente este lugar!', 2, '2022-07-08', 653, 4),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 1, '2023-07-29', 654, 5),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 1, '2022-08-22', 655, 4),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 2, '2023-03-16', 656, 1),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 5, '2021-10-21', 657, 5),
('El programa de entretenimiento nocturno en el hotel fue divertido. Disfrutamos de espectáculos en vivo y música en el bar.', 2, '2023-05-04', 658, 6),
('Probamos la comida en el restaurante del hotel y quedamos impresionados. Los platos eran deliciosos y el chef se aseguró de que todo estuviera perfecto.', 4, '2022-07-02', 659, 6),
('El programa de entretenimiento nocturno en el hotel fue divertido. Disfrutamos de espectáculos en vivo y música en el bar.', 5, '2022-12-16', 660, 1),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 1, '2023-01-04', 661, 1),
('La ubicación del hotel es perfecta', 5, '2022-09-14', 662, 6),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 1, '2023-04-24', 663, 4),
('El personal del hotel fue siempre amable y atento a nuestras necesidades. Siempre estaban dispuestos a ayudar y brindar recomendaciones locales.', 3, '2022-11-27', 664, 1),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 4, '2022-06-11', 665, 5),
('Organizamos una conferencia en este hotel y todo salió perfecto. Las salas de reuniones estaban bien equipadas y el personal de eventos se encargó de cada detalle.', 4, '2023-09-13', 666, 3),
('Pasamos nuestra luna de miel en este hotel y fue inolvidable. La suite nupcial era impresionante y el personal nos recibió con champagne y pétalos de rosa esparcidos por la habitación.', 1, '2023-06-24', 667, 6),
('', 3, '2023-05-27', 668, 4),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 3, '2022-10-06', 669, 4),
('el diseño es impresionante y contemporáneo.', 4, '2023-04-29', 670, 4),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 2, '2022-04-01', 671, 3),
('Las vistas panorámicas desde el bar en la azotea eran espectaculares. Disfrutamos de cócteles mientras veíamos la puesta de sol sobre la ciudad.', 3, '2023-05-24', 672, 2),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 4, '2023-03-31', 673, 5),
('fue genial regresar a una habitación cómoda y relajante.', 3, '2023-07-18', 674, 1),
('Celebré mi cumpleaños en este hotel y fue una celebración inolvidable. El pastel sorpresa en la habitación fue un toque encantador.', 2, '2023-07-23', 675, 2),
('Elegimos este hotel para nuestra boda y fue una elección perfecta. El personal de eventos hizo que todo fuera sin problemas y la recepción en el salón del hotel fue mágica.', 4, '2023-07-05', 676, 3),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 4, '2022-03-12', 677, 1),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 5, '2023-06-14', 678, 5),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 5, '2022-08-03', 679, 3),
('Pasamos un fin de semana maravilloso en este hotel. Las vistas desde la habitación eran impresionantes y el desayuno buffet era delicioso.', 3, '2022-11-05', 680, 4),
('Celebré mi cumpleaños en este hotel y fue una celebración inolvidable. El pastel sorpresa en la habitación fue un toque encantador.', 5, '2022-04-07', 681, 2),
('lo que hizo que nuestra estadía fuera aún más especial.', 4, '2023-04-22', 682, 1),
('Viajamos con nuestros hijos pequeños y el hotel ofreció un programa infantil divertido. Los niños lo pasaron en grande y nosotros también.', 3, '2022-02-27', 683, 2),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 2, '2022-12-21', 684, 1),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 4, '2022-12-15', 685, 6),
('fue genial regresar a una habitación cómoda y relajante.', 2, '2022-12-02', 686, 5),
('Elegimos este hotel para nuestra boda y fue una elección perfecta. El personal de eventos hizo que todo fuera sin problemas y la recepción en el salón del hotel fue mágica.', 1, '2023-03-06', 687, 1),
('Esta fue una experiencia de hotel inolvidable. No puedo dejar de hablar de lo increíble que fue mi estadía aquí. ¡Definitivamente regresaré en el futuro!', 3, '2021-11-28', 688, 5),
('Organizamos una conferencia en este hotel y todo salió perfecto. Las salas de reuniones estaban bien equipadas y el personal de eventos se encargó de cada detalle.', 5, '2022-09-28', 689, 4),
('nos dieron una cálida bienvenida. El personal de recepción hizo que nuestra estadía fuera aún más especial.', 2, '2022-08-03', 690, 3),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 4, '2022-10-30', 691, 6),
('Pasamos dias emocionantes haciendo deportes acuáticos cerca del hotel. Fue una experiencia emocionante para toda la familia.', 3, '2023-02-15', 692, 2),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 5, '2023-07-27', 693, 5),
('El programa de entretenimiento nocturno en el hotel fue divertido. Disfrutamos de espectáculos en vivo y música en el bar.', 1, '2021-10-27', 694, 1),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 3, '2022-04-02', 695, 6),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 4, '2022-05-21', 696, 2),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 5, '2021-09-24', 697, 2),
('Pasamos un fin de semana maravilloso en este hotel. Las vistas desde la habitación eran impresionantes y el desayuno buffet era delicioso.', 5, '2021-10-24', 698, 5),
('desde la decoración hasta la música.', 1, '2022-05-30', 699, 1),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 5, '2021-10-08', 700, 5),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 2, '2022-09-15', 701, 5),
('El servicio de concierge fue sobresaliente. Nos proporcionaron mapas', 5, '2021-10-26', 702, 6),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 3, '2023-04-12', 703, 5),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 5, '2023-03-12', 704, 1),
('El desayuno buffet ofrecía una gran variedad de opciones', 5, '2021-10-23', 705, 3),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 4, '2023-03-26', 706, 5),
('El desayuno buffet ofrecía una gran variedad de opciones', 2, '2023-04-09', 707, 5),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 1, '2023-04-02', 708, 1),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 4, '2021-10-11', 709, 2),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 5, '2023-09-01', 710, 2),
('', 1, '2023-04-29', 711, 5),
('nos sentimos mimados y cuidados. Las instalaciones son de primera categoría.', 1, '2022-07-12', 712, 6),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 2, '2023-07-20', 713, 3),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 1, '2023-02-20', 714, 6),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 1, '2022-04-02', 715, 6),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 2, '2021-11-11', 716, 2),
('Desde el momento en que llegamos', 5, '2022-06-13', 717, 5),
('Celebramos el Día de San Valentín aquí y fue mágico. La cena a la luz de las velas en el restaurante del hotel fue una experiencia única.', 2, '2022-07-06', 718, 2),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 3, '2022-08-15', 719, 2),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 5, '2021-12-06', 720, 3),
('Celebramos el Día de San Valentín aquí y fue mágico. La cena a la luz de las velas en el restaurante del hotel fue una experiencia única.', 4, '2023-05-21', 721, 2),
('cerca de muchas atracciones turísticas y restaurantes. Fue fácil desplazarse por la ciudad desde aquí.', 4, '2021-11-10', 722, 5),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 3, '2021-10-12', 723, 3),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 3, '2023-03-10', 724, 4),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 2, '2023-06-13', 725, 6),
('Este hotel es una mezcla perfecta de elegancia y modernidad. Desde la recepción hasta las habitaciones', 2, '2021-10-08', 726, 2),
('nos sentimos mimados y cuidados. Las instalaciones son de primera categoría.', 1, '2022-01-03', 727, 4),
('Las vistas panorámicas desde el bar en la azotea eran espectaculares. Disfrutamos de cócteles mientras veíamos la puesta de sol sobre la ciudad.', 1, '2022-07-03', 728, 1),
('cerca de muchas atracciones turísticas y restaurantes. Fue fácil desplazarse por la ciudad desde aquí.', 1, '2023-06-06', 729, 6),
('El spa del hotel ofrece tratamientos relajantes. Disfruté de un masaje que me dejó completamente renovado.', 4, '2022-01-24', 730, 6),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 4, '2023-04-11', 731, 3),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 3, '2021-12-27', 732, 2),
('lo que hizo que nuestra estadía fuera aún más especial.', 5, '2023-04-20', 733, 3),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 4, '2023-06-01', 734, 3),
('Usamos este hotel como base para nuestras aventuras en la montaña. Después de un día agotador', 5, '2022-09-26', 735, 6),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 3, '2021-10-11', 736, 5),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 4, '2022-01-01', 737, 3),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 4, '2021-12-16', 738, 4),
('Elegimos este hotel para nuestra boda y fue una elección perfecta. El personal de eventos hizo que todo fuera sin problemas y la recepción en el salón del hotel fue mágica.', 4, '2022-07-16', 739, 4),
('La ubicación del hotel es perfecta', 4, '2023-04-06', 740, 6),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 4, '2023-09-12', 741, 6),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 1, '2022-01-20', 742, 3),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 3, '2022-11-03', 743, 3),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 3, '2021-12-06', 744, 6),
('El personal del hotel fue siempre amable y atento a nuestras necesidades. Siempre estaban dispuestos a ayudar y brindar recomendaciones locales.', 3, '2023-05-18', 745, 6),
('', 1, '2022-01-17', 746, 2),
('cerca de muchas atracciones turísticas y restaurantes. Fue fácil desplazarse por la ciudad desde aquí.', 3, '2022-09-26', 747, 4),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 4, '2022-07-16', 748, 3),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 1, '2022-08-24', 749, 4),
('El programa de entretenimiento nocturno en el hotel fue divertido. Disfrutamos de espectáculos en vivo y música en el bar.', 3, '2023-06-19', 750, 4),
('Pasamos nuestra luna de miel en este hotel y fue inolvidable. La suite nupcial era impresionante y el personal nos recibió con champagne y pétalos de rosa esparcidos por la habitación.', 2, '2022-09-22', 751, 3),
('Celebramos el Día de San Valentín aquí y fue mágico. La cena a la luz de las velas en el restaurante del hotel fue una experiencia única.', 5, '2022-08-07', 752, 4),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 4, '2023-06-08', 753, 1),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 1, '2022-12-16', 754, 3),
('Celebramos nuestras bodas de plata aquí y fue una celebración inolvidable. El equipo de eventos se encargó de todos los detalles', 1, '2023-09-12', 755, 4),
('Celebré mi cumpleaños en este hotel y fue una celebración inolvidable. El pastel sorpresa en la habitación fue un toque encantador.', 5, '2021-09-24', 756, 2),
('Usamos este hotel como base para nuestras aventuras en la montaña. Después de un día agotador', 2, '2022-08-12', 757, 3),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 2, '2023-06-13', 758, 2),
('El servicio de concierge fue sobresaliente. Nos proporcionaron mapas', 3, '2022-03-24', 759, 4),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 1, '2022-01-30', 760, 6),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 2, '2022-01-13', 761, 5),
('Mi estadía en este hotel fue increíble. Las habitaciones son espaciosas y cómodas y el personal es amable y servicial. ¡Recomiendo encarecidamente este lugar!', 2, '2022-09-20', 762, 5),
('Nuestra habitación con vista al mar nos brindó unas vistas impresionantes. Nos despertábamos con el sonido de las olas.', 5, '2022-10-04', 763, 1),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 3, '2023-09-11', 764, 4),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 3, '2023-02-07', 765, 2),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 4, '2022-06-27', 766, 6),
('Viajamos con nuestros hijos pequeños y el hotel ofreció un programa infantil divertido. Los niños lo pasaron en grande y nosotros también.', 1, '2023-04-29', 767, 2),
('Pasamos nuestra luna de miel en este hotel y fue inolvidable. La suite nupcial era impresionante y el personal nos recibió con champagne y pétalos de rosa esparcidos por la habitación.', 3, '2023-08-23', 768, 2),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 1, '2023-06-13', 769, 1),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 1, '2022-07-05', 770, 6),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 1, '2021-11-16', 771, 2),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 4, '2021-12-15', 772, 3),
('lo que hizo que nuestra estadía fuera aún más especial.', 4, '2022-08-06', 773, 1),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 3, '2023-02-07', 774, 2),
('Celebramos nuestras bodas de plata aquí y fue una celebración inolvidable. El equipo de eventos se encargó de todos los detalles', 5, '2022-01-24', 775, 1),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 1, '2023-07-10', 776, 6),
('Celebré mi cumpleaños en este hotel y fue una celebración inolvidable. El pastel sorpresa en la habitación fue un toque encantador.', 2, '2023-07-27', 777, 2),
('desde la decoración hasta la música.', 3, '2023-08-29', 778, 6),
('Nuestra habitación con vista al mar nos brindó unas vistas impresionantes. Nos despertábamos con el sonido de las olas.', 5, '2022-12-20', 779, 3),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 5, '2022-06-28', 780, 6),
('El hotel presta atención a los detalles. Desde el recibimiento con una bebida de bienvenida hasta los pequeños obsequios en la habitación', 3, '2022-09-04', 781, 4),
('Desde el momento en que llegamos', 4, '2023-04-23', 782, 3),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 4, '2022-12-14', 783, 1),
('fue genial regresar a una habitación cómoda y relajante.', 1, '2021-12-03', 784, 4),
('Pasamos nuestra luna de miel en este hotel y fue inolvidable. La suite nupcial era impresionante y el personal nos recibió con champagne y pétalos de rosa esparcidos por la habitación.', 4, '2023-06-24', 785, 3),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 4, '2022-07-14', 786, 5),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 1, '2023-02-13', 787, 1),
('El spa del hotel ofrece tratamientos relajantes. Disfruté de un masaje que me dejó completamente renovado.', 1, '2022-12-06', 788, 4),
('Probamos la comida en el restaurante del hotel y quedamos impresionados. Los platos eran deliciosos y el chef se aseguró de que todo estuviera perfecto.', 3, '2022-09-16', 789, 2),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 3, '2021-12-24', 790, 1),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 3, '2022-11-13', 791, 3),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 2, '2022-01-07', 792, 3),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 1, '2022-03-15', 793, 6),
('nos dieron una cálida bienvenida. El personal de recepción hizo que nuestra estadía fuera aún más especial.', 3, '2022-10-15', 794, 5),
('Desde el momento en que llegamos', 3, '2022-07-08', 795, 3),
('reservaron excursiones y nos dieron excelentes recomendaciones para explorar la región.', 2, '2023-04-10', 796, 1),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 1, '2022-04-24', 797, 6),
('El servicio en este hotel es de primera clase. El personal siempre estaba dispuesto a ayudar y hacernos sentir como en casa. No puedo esperar para volver.', 1, '2021-11-07', 798, 5),
('reservaron excursiones y nos dieron excelentes recomendaciones para explorar la región.', 5, '2022-11-08', 799, 3),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 1, '2022-07-28', 800, 1),
('Este hotel es una mezcla perfecta de elegancia y modernidad. Desde la recepción hasta las habitaciones', 3, '2022-11-25', 801, 4),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 2, '2021-09-28', 802, 4),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 5, '2021-12-03', 803, 5),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 4, '2021-12-14', 804, 3),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 3, '2022-06-24', 805, 6),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 5, '2021-11-11', 806, 4),
('Organizamos una conferencia en este hotel y todo salió perfecto. Las salas de reuniones estaban bien equipadas y el personal de eventos se encargó de cada detalle.', 3, '2021-12-28', 807, 6),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 5, '2022-07-16', 808, 3),
('Este hotel es un rincón de lujo en medio de la ciudad. Desde el momento en que llegamos', 3, '2023-09-01', 809, 2),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 1, '2022-04-23', 810, 3),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 4, '2022-01-21', 811, 6),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 4, '2022-01-02', 812, 3),
('nos sentimos mimados y cuidados. Las instalaciones son de primera categoría.', 5, '2021-10-16', 813, 2),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 5, '2022-03-26', 814, 6),
('Elegimos este hotel para nuestra boda y fue una elección perfecta. El personal de eventos hizo que todo fuera sin problemas y la recepción en el salón del hotel fue mágica.', 1, '2021-09-28', 815, 6),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 1, '2022-06-04', 816, 4),
('el diseño es impresionante y contemporáneo.', 3, '2023-06-15', 817, 4),
('El spa del hotel ofrece tratamientos relajantes. Disfruté de un masaje que me dejó completamente renovado.', 3, '2022-04-24', 818, 3),
('Pasamos un fin de semana maravilloso en este hotel. Las vistas desde la habitación eran impresionantes y el desayuno buffet era delicioso.', 4, '2022-09-21', 819, 6),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 4, '2021-10-01', 820, 4),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 2, '2023-06-15', 821, 4),
('Organizamos una conferencia en este hotel y todo salió perfecto. Las salas de reuniones estaban bien equipadas y el personal de eventos se encargó de cada detalle.', 1, '2022-08-15', 822, 3),
('El servicio de concierge fue sobresaliente. Nos proporcionaron mapas', 4, '2022-09-17', 823, 1),
('Este hotel es un rincón de lujo en medio de la ciudad. Desde el momento en que llegamos', 2, '2023-06-09', 824, 1),
('Las vistas panorámicas desde el bar en la azotea eran espectaculares. Disfrutamos de cócteles mientras veíamos la puesta de sol sobre la ciudad.', 5, '2023-04-26', 825, 4),
('El programa de entretenimiento nocturno en el hotel fue divertido. Disfrutamos de espectáculos en vivo y música en el bar.', 2, '2021-10-31', 826, 5),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 3, '2021-09-28', 827, 5),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 5, '2022-01-04', 828, 1),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 5, '2022-12-19', 829, 4),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 1, '2022-05-08', 830, 4),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 1, '2022-07-26', 831, 6),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 4, '2022-03-16', 832, 4),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 1, '2022-09-29', 833, 4),
('Usamos este hotel como base para nuestras aventuras en la montaña. Después de un día agotador', 5, '2021-12-03', 834, 4),
('desde la decoración hasta la música.', 2, '2022-05-21', 835, 4),
('La ubicación del hotel era accesible y conveniente para explorar la ciudad. Pudimos caminar a muchas atracciones populares.', 5, '2023-07-06', 836, 2),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 2, '2022-07-10', 837, 5),
('Esta fue una experiencia de hotel inolvidable. No puedo dejar de hablar de lo increíble que fue mi estadía aquí. ¡Definitivamente regresaré en el futuro!', 3, '2023-09-02', 838, 6),
('las habitaciones eran elegantes y la atención al cliente era excepcional. ¡No podríamos haber pedido más!', 5, '2021-10-11', 839, 6),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 3, '2022-12-04', 840, 3),
('Nuestra habitación con vista al mar nos brindó unas vistas impresionantes. Nos despertábamos con el sonido de las olas.', 5, '2022-11-25', 841, 5),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 4, '2022-01-29', 842, 6),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 1, '2023-09-15', 843, 4),
('Elegimos este hotel para nuestra boda y fue una elección perfecta. El personal de eventos hizo que todo fuera sin problemas y la recepción en el salón del hotel fue mágica.', 4, '2023-07-05', 844, 6),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 4, '2022-03-17', 845, 3),
('desde platos locales hasta opciones internacionales. Perfecto para todos los gustos.', 3, '2022-03-27', 846, 5),
('Este hotel fue el lugar perfecto para celebrar nuestro aniversario. La cena romántica en el restaurante con velas y música en vivo fue mágica.', 2, '2022-09-13', 847, 5),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 5, '2022-07-08', 848, 3),
('nos sentimos mimados y cuidados. Las instalaciones son de primera categoría.', 3, '2021-10-14', 849, 5),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 2, '2022-03-15', 850, 5),
('Probamos la comida en el restaurante del hotel y quedamos impresionados. Los platos eran deliciosos y el chef se aseguró de que todo estuviera perfecto.', 1, '2023-04-24', 851, 2),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 5, '2022-10-02', 852, 3),
('Celebramos el Día de San Valentín aquí y fue mágico. La cena a la luz de las velas en el restaurante del hotel fue una experiencia única.', 1, '2022-10-11', 853, 4),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 5, '2023-06-22', 854, 1),
('Esta fue una experiencia de hotel inolvidable. No puedo dejar de hablar de lo increíble que fue mi estadía aquí. ¡Definitivamente regresaré en el futuro!', 3, '2023-04-10', 855, 1),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 1, '2023-01-15', 856, 2),
('Celebramos nuestras bodas de plata aquí y fue una celebración inolvidable. El equipo de eventos se encargó de todos los detalles', 1, '2021-10-10', 857, 5),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 4, '2022-10-12', 858, 1),
('fue genial regresar a una habitación cómoda y relajante.', 1, '2023-03-28', 859, 6),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 5, '2023-09-16', 860, 4),
('La ubicación del hotel es perfecta', 2, '2022-12-10', 861, 1),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 5, '2023-09-02', 862, 2),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 4, '2022-01-21', 863, 5),
('La ubicación del hotel era accesible y conveniente para explorar la ciudad. Pudimos caminar a muchas atracciones populares.', 1, '2021-11-10', 864, 6),
('Pasamos dias emocionantes haciendo deportes acuáticos cerca del hotel. Fue una experiencia emocionante para toda la familia.', 4, '2022-06-11', 865, 3),
('Pasamos un fin de semana romántico aquí y fue maravilloso. La suite con vista al mar y la bañera de hidromasaje fueron lo más destacado. ¡Definitivamente regresaremos para otra escapada!', 3, '2022-08-17', 866, 3),
('Viajamos con nuestros hijos pequeños y el hotel ofreció un programa infantil divertido. Los niños lo pasaron en grande y nosotros también.', 5, '2022-10-16', 867, 6),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 4, '2022-11-07', 868, 6),
('Este hotel es una mezcla perfecta de elegancia y modernidad. Desde la recepción hasta las habitaciones', 5, '2022-04-08', 869, 1),
('lo que hizo que nuestra estadía fuera aún más especial.', 1, '2022-09-22', 870, 3),
('Elegimos este hotel para nuestra boda y fue una elección perfecta. El personal de eventos hizo que todo fuera sin problemas y la recepción en el salón del hotel fue mágica.', 2, '2023-04-10', 871, 1),
('nos sentimos mimados y cuidados. Las instalaciones son de primera categoría.', 2, '2022-08-10', 872, 1),
('Usamos este hotel como base para nuestras aventuras en la montaña. Después de un día agotador', 2, '2023-04-15', 873, 1),
('Pasamos dias emocionantes haciendo deportes acuáticos cerca del hotel. Fue una experiencia emocionante para toda la familia.', 1, '2021-11-22', 874, 1),
('Pasamos dias emocionantes haciendo deportes acuáticos cerca del hotel. Fue una experiencia emocionante para toda la familia.', 2, '2021-09-21', 875, 3),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 2, '2023-07-19', 876, 6),
('el diseño es impresionante y contemporáneo.', 5, '2023-05-10', 877, 5),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 5, '2023-07-05', 878, 3),
('Pasamos nuestra luna de miel en este hotel y fue inolvidable. La suite nupcial era impresionante y el personal nos recibió con champagne y pétalos de rosa esparcidos por la habitación.', 2, '2021-12-29', 879, 3),
('La decoración del hotel es hermosa y elegante. Cada rincón estaba cuidadosamente diseñado', 1, '2022-03-31', 880, 4),
('Este hotel es una mezcla perfecta de elegancia y modernidad. Desde la recepción hasta las habitaciones', 1, '2022-12-08', 881, 6),
('El servicio en este hotel es de primera clase. El personal siempre estaba dispuesto a ayudar y hacernos sentir como en casa. No puedo esperar para volver.', 1, '2021-12-28', 882, 4),
('El servicio en este hotel es de primera clase. El personal siempre estaba dispuesto a ayudar y hacernos sentir como en casa. No puedo esperar para volver.', 1, '2022-02-05', 883, 2),
('Celebramos nuestras bodas de plata aquí y fue una celebración inolvidable. El equipo de eventos se encargó de todos los detalles', 3, '2022-07-21', 884, 4),
('La ubicación del hotel era accesible y conveniente para explorar la ciudad. Pudimos caminar a muchas atracciones populares.', 1, '2022-12-15', 885, 6),
('fue genial regresar a una habitación cómoda y relajante.', 4, '2022-08-11', 886, 3),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 3, '2023-01-26', 887, 5),
('nos sentimos mimados y cuidados. Las instalaciones son de primera categoría.', 1, '2023-02-04', 888, 4),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 3, '2022-02-17', 889, 5),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 4, '2023-02-11', 890, 4),
('El servicio de concierge fue sobresaliente. Nos proporcionaron mapas', 3, '2022-10-27', 891, 4),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 4, '2022-10-25', 892, 4),
('Las vistas panorámicas desde el bar en la azotea eran espectaculares. Disfrutamos de cócteles mientras veíamos la puesta de sol sobre la ciudad.', 4, '2021-12-15', 893, 6),
('fue genial regresar a una habitación cómoda y relajante.', 1, '2023-08-23', 894, 1),
('Mi estadía en este hotel fue increíble. Las habitaciones son espaciosas y cómodas y el personal es amable y servicial. ¡Recomiendo encarecidamente este lugar!', 5, '2022-01-06', 895, 2),
('El servicio en este hotel es de primera clase. El personal siempre estaba dispuesto a ayudar y hacernos sentir como en casa. No puedo esperar para volver.', 5, '2021-12-02', 896, 2),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 5, '2023-01-30', 897, 2),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 2, '2022-02-12', 898, 5),
('', 1, '2022-10-29', 899, 6),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 3, '2022-10-13', 900, 6),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 3, '2023-06-14', 901, 6),
('El personal del hotel fue siempre amable y atento a nuestras necesidades. Siempre estaban dispuestos a ayudar y brindar recomendaciones locales.', 2, '2021-10-27', 902, 4),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 5, '2023-09-10', 903, 1),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 2, '2023-05-18', 904, 6),
('', 1, '2023-08-17', 905, 6),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 2, '2023-03-30', 906, 6),
('Celebré mi cumpleaños en este hotel y fue una celebración inolvidable. El pastel sorpresa en la habitación fue un toque encantador.', 4, '2023-02-20', 907, 5),
('Pasamos un fin de semana maravilloso en este hotel. Las vistas desde la habitación eran impresionantes y el desayuno buffet era delicioso.', 4, '2022-11-04', 908, 1),
('Pasamos un fin de semana romántico aquí y fue maravilloso. La suite con vista al mar y la bañera de hidromasaje fueron lo más destacado. ¡Definitivamente regresaremos para otra escapada!', 4, '2022-08-16', 909, 4),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 3, '2023-03-20', 910, 5),
('Pasamos nuestra luna de miel en este hotel y fue inolvidable. La suite nupcial era impresionante y el personal nos recibió con champagne y pétalos de rosa esparcidos por la habitación.', 1, '2022-04-20', 911, 6),
('Este hotel fue el lugar perfecto para celebrar nuestro aniversario. La cena romántica en el restaurante con velas y música en vivo fue mágica.', 5, '2022-08-11', 912, 6),
('Este hotel es un rincón de lujo en medio de la ciudad. Desde el momento en que llegamos', 1, '2022-06-19', 913, 5),
('La ubicación del hotel es perfecta', 5, '2023-01-23', 914, 6),
('Probamos la comida en el restaurante del hotel y quedamos impresionados. Los platos eran deliciosos y el chef se aseguró de que todo estuviera perfecto.', 5, '2022-09-17', 915, 4),
('El desayuno buffet ofrecía una gran variedad de opciones', 3, '2022-01-26', 916, 5),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 3, '2022-06-28', 917, 2),
('desde la decoración hasta la música.', 4, '2023-05-29', 918, 6),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 2, '2022-01-16', 919, 4),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 2, '2023-08-09', 920, 3),
('El servicio de concierge fue sobresaliente. Nos proporcionaron mapas', 1, '2022-04-29', 921, 6),
('Desde el momento en que llegamos', 2, '2023-09-12', 922, 6),
('Pasamos un fin de semana maravilloso en este hotel. Las vistas desde la habitación eran impresionantes y el desayuno buffet era delicioso.', 5, '2023-06-05', 923, 1),
('Cada comida en el restaurante del hotel fue una experiencia culinaria excepcional. El chef realmente sabe cómo deleitar los paladares.', 4, '2023-09-02', 924, 1),
('Nuestra habitación con vista al mar nos brindó unas vistas impresionantes. Nos despertábamos con el sonido de las olas.', 1, '2023-04-07', 925, 4),
('reservaron excursiones y nos dieron excelentes recomendaciones para explorar la región.', 1, '2023-08-01', 926, 3),
('Celebré mi cumpleaños en este hotel y fue una celebración inolvidable. El pastel sorpresa en la habitación fue un toque encantador.', 2, '2021-12-21', 927, 1),
('Desde el momento en que llegamos', 1, '2023-08-04', 928, 3),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 1, '2021-10-08', 929, 6),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 3, '2023-06-12', 930, 5),
('Celebramos el Día de San Valentín aquí y fue mágico. La cena a la luz de las velas en el restaurante del hotel fue una experiencia única.', 2, '2021-12-18', 931, 4),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 4, '2021-12-24', 932, 1),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 4, '2021-10-05', 933, 6),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 1, '2023-02-11', 934, 6),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 4, '2022-05-28', 935, 2),
('Viajé por negocios y el hotel tenía todo lo que necesitaba. El Wi-Fi de alta velocidad y el centro de negocios fueron muy útiles.', 5, '2023-05-28', 936, 4),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 2, '2022-11-01', 937, 1),
('El spa del hotel ofrece tratamientos relajantes. Disfruté de un masaje que me dejó completamente renovado.', 4, '2022-06-01', 938, 2),
('Este hotel es un rincón de lujo en medio de la ciudad. Desde el momento en que llegamos', 4, '2022-01-05', 939, 3),
('lo que hizo que nuestra estadía fuera aún más especial.', 4, '2023-07-27', 940, 6),
('Pasamos un fin de semana romántico aquí y fue maravilloso. La suite con vista al mar y la bañera de hidromasaje fueron lo más destacado. ¡Definitivamente regresaremos para otra escapada!', 5, '2023-09-05', 941, 3),
('Mi estadía en este hotel fue increíble. Las habitaciones son espaciosas y cómodas y el personal es amable y servicial. ¡Recomiendo encarecidamente este lugar!', 1, '2023-07-08', 942, 6),
('Esta fue una experiencia de hotel inolvidable. No puedo dejar de hablar de lo increíble que fue mi estadía aquí. ¡Definitivamente regresaré en el futuro!', 1, '2023-03-23', 943, 3),
('El desayuno buffet ofrecía una gran variedad de opciones', 4, '2022-07-01', 944, 2),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 4, '2022-01-05', 945, 1),
('reservaron excursiones y nos dieron excelentes recomendaciones para explorar la región.', 1, '2022-07-05', 946, 4),
('Nuestras vacaciones en este hotel fueron perfectas. La piscina era refrescante', 1, '2022-10-12', 947, 5),
('El spa del hotel ofrece tratamientos relajantes. Disfruté de un masaje que me dejó completamente renovado.', 3, '2021-09-30', 948, 2),
('La ubicación del hotel era accesible y conveniente para explorar la ciudad. Pudimos caminar a muchas atracciones populares.', 2, '2022-10-07', 949, 5),
('utilizamos el servicio de habitaciones varias veces y siempre fue eficiente. La comida llegaba caliente y deliciosa.', 3, '2023-03-29', 950, 3),
('Viajamos con nuestros hijos pequeños y el hotel ofreció un programa infantil divertido. Los niños lo pasaron en grande y nosotros también.', 3, '2023-06-03', 951, 5),
('Este hotel es un rincón de lujo en medio de la ciudad. Desde el momento en que llegamos', 2, '2023-02-22', 952, 2),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 1, '2022-10-03', 953, 4),
('Este hotel es un rincón de lujo en medio de la ciudad. Desde el momento en que llegamos', 4, '2021-12-16', 954, 4),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 3, '2023-09-06', 955, 4),
('El desayuno buffet ofrecía una gran variedad de opciones', 3, '2022-03-29', 956, 3),
('El casino del hotel fue una sorpresa agradable. Pasamos una noche divertida jugando a las cartas y a la ruleta.', 1, '2022-03-08', 957, 6),
('Celebramos nuestras bodas de plata aquí y fue una celebración inolvidable. El equipo de eventos se encargó de todos los detalles', 4, '2022-12-19', 958, 2),
('Pasamos un fin de semana romántico aquí y fue maravilloso. La suite con vista al mar y la bañera de hidromasaje fueron lo más destacado. ¡Definitivamente regresaremos para otra escapada!', 3, '2022-10-07', 959, 2),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 1, '2023-09-08', 960, 5),
('Utilizamos el servicio de transporte del hotel para ir al aeropuerto y fue eficiente y puntual. Nos hizo la vida mucho más fácil.', 3, '2022-11-22', 961, 3),
('Viajamos con nuestros hijos y el hotel fue amigable para familias. Había actividades para niños y la piscina era segura.', 4, '2023-02-21', 962, 3),
('Pasamos dias emocionantes haciendo deportes acuáticos cerca del hotel. Fue una experiencia emocionante para toda la familia.', 2, '2021-11-06', 963, 2),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 1, '2022-11-27', 964, 3),
('nos dieron una cálida bienvenida. El personal de recepción hizo que nuestra estadía fuera aún más especial.', 3, '2022-01-23', 965, 6),
('Las habitaciones estaban impecablemente limpias y bien cuidadas. El personal de limpieza hizo un trabajo excepcional.', 2, '2023-04-11', 966, 2),
('Pasamos un fin de semana maravilloso en este hotel. Las vistas desde la habitación eran impresionantes y el desayuno buffet era delicioso.', 4, '2021-10-11', 967, 1),
('se nota que se esfuerzan por hacer que los huéspedes se sientan especiales.', 4, '2023-04-20', 968, 1),
('Este hotel es una mezcla perfecta de elegancia y modernidad. Desde la recepción hasta las habitaciones', 3, '2023-07-26', 969, 5),
('El programa de entretenimiento nocturno en el hotel fue divertido. Disfrutamos de espectáculos en vivo y música en el bar.', 1, '2023-02-10', 970, 3),
('Organizamos una reunión familiar en este hotel y fue una experiencia especial. El personal nos ayudó a coordinar todas las actividades y la comida fue deliciosa.', 2, '2022-04-07', 971, 1),
('El hotel ofreció una experiencia cultural única con su decoración temática local. Nos sentimos inmersos en la cultura del lugar.', 4, '2022-11-23', 972, 5),
('Probamos la comida en el restaurante del hotel y quedamos impresionados. Los platos eran deliciosos y el chef se aseguró de que todo estuviera perfecto.', 3, '2023-06-30', 973, 2),
('Este hotel es una joya en medio de las montañas. La arquitectura y el diseño del lugar se integran perfectamente con el entorno natural. Fue una experiencia verdaderamente relajante.', 4, '2023-01-16', 974, 4),
('La paz y la tranquilidad de este hotel nos permitieron descansar y relajarnos por completo. Las camas eran cómodas y la habitación estaba bien insonorizada.', 4, '2022-06-10', 975, 6),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 3, '2021-10-04', 976, 2),
('El programa de entretenimiento nocturno en el hotel fue divertido. Disfrutamos de espectáculos en vivo y música en el bar.', 4, '2021-12-24', 977, 1),
('cerca de muchas atracciones turísticas y restaurantes. Fue fácil desplazarse por la ciudad desde aquí.', 3, '2022-01-24', 978, 2),
('Disfrutamos de un día en el spa del hotel y fue una experiencia relajante y rejuvenecedora. Los masajes fueron increíbles.', 3, '2022-08-23', 979, 1),
('la piscina del hotel es un verdadero oasis. Pasamos horas nadando y disfrutando del sol en las cómodas tumbonas.', 3, '2023-07-04', 980, 1),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 1, '2023-03-14', 981, 6),
('Quedamos gratamente sorprendidos por la excelente relación calidad-precio de este hotel. Ofrece comodidades de alto nivel a un precio asequible.', 5, '2022-05-15', 982, 1),
('El servicio en este hotel es de primera clase. El personal siempre estaba dispuesto a ayudar y hacernos sentir como en casa. No puedo esperar para volver.', 4, '2023-04-28', 983, 4),
('Las áreas comunes y las habitaciones estaban impecablemente limpias. El mantenimiento del hotel es excelente.', 3, '2023-05-08', 984, 4),
('Probamos la comida en el restaurante del hotel y quedamos impresionados. Los platos eran deliciosos y el chef se aseguró de que todo estuviera perfecto.', 4, '2023-09-09', 985, 5),
('Esta fue una experiencia de hotel inolvidable. No puedo dejar de hablar de lo increíble que fue mi estadía aquí. ¡Definitivamente regresaré en el futuro!', 3, '2023-08-21', 986, 4),
('fue genial regresar a una habitación cómoda y relajante.', 3, '2023-05-04', 987, 4),
('el diseño es impresionante y contemporáneo.', 1, '2022-11-27', 988, 2),
('El desayuno buffet ofrecía una gran variedad de opciones', 3, '2022-08-28', 989, 5),
('Este hotel es el lugar perfecto para desconectar. Olvidamos el estrés y nos sumergimos en la tranquilidad del lugar.', 5, '2023-02-23', 990, 4),
('Este hotel se preocupa por el medio ambiente y tiene prácticas sostenibles. Fue genial ver su compromiso con la conservación.', 1, '2022-08-20', 991, 6),
('el diseño es impresionante y contemporáneo.', 4, '2023-08-12', 992, 3),
('cerca de muchas atracciones turísticas y restaurantes. Fue fácil desplazarse por la ciudad desde aquí.', 1, '2022-07-18', 993, 1),
('La decoración del hotel es hermosa y elegante. Cada rincón estaba cuidadosamente diseñado', 5, '2022-10-15', 994, 3),
('Trajimos a nuestra mascota y el hotel era amigable para mascotas. Incluso tenían un área de juegos para perros.', 2, '2021-12-03', 995, 2),
('Celebramos nuestras bodas de plata aquí y fue una celebración inolvidable. El equipo de eventos se encargó de todos los detalles', 5, '2023-07-19', 996, 5),
('Mi estadía en este hotel fue increíble. Las habitaciones son espaciosas y cómodas y el personal es amable y servicial. ¡Recomiendo encarecidamente este lugar!', 4, '2021-12-20', 997, 5),
('Este hotel es una mezcla perfecta de elegancia y modernidad. Desde la recepción hasta las habitaciones', 3, '2021-12-22', 998, 4),
('lo que hizo que nuestra estadía fuera aún más especial.', 4, '2023-04-13', 999, 4),
('Disfruté de una experiencia de golf inolvidable mientras me alojaba en este hotel. El campo de golf cercano era espectacular.', 5, '2023-01-17', 1000, 1);
GO 

INSERT INTO Hotel.Facilities 
		(faci_name, faci_description, faci_max_number, faci_measure_unit, faci_room_number, faci_startdate, faci_enddate, faci_low_price, 
		faci_high_price, faci_expose_price, faci_discount, faci_tax_rate, faci_modified_date, faci_cagro_id, faci_hotel_id, faci_user_id)
VALUES
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '105', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 300, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '106', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '107', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '108', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '109', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '110', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '112', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '113', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '114', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '115', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '116', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '117', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '118', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '119', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '120', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '121', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '122', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '123', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '124', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '125', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '126', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '127', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '128', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '129', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '130', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '131', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '132', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '133', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '134', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '135', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '136', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '137', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '138', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '139', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '140', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '141', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '142', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '143', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '144', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '145', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '146', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '147', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '148', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '149', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '150', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '151', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '152', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '153', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '154', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '155', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '156', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '157', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '158', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '159', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '160', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '161', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '162', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '163', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '164', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '165', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Suite Ejecutiva', 'Suite espaciosa con cama king-size, sala de estar y vista a la ciudad', 4, 'beds', '166', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 1000, 1200, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '167', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '168', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '169', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 1, 1),
('Spa', 'Spa relajante con masajes y tratamientos de bienestar', NULL, 'people', 'SPA101', '2023-03-14 10:00:00', '2023-03-16 20:00:00', 50, 100, 2, NULL, 10, GETDATE(), 9, 1, 1),
('Bar', 'Bar acogedor con una selección de cócteles y bebidas', 50, 'people', 'BAR101', '2023-03-14 18:00:00', '2023-03-16 01:00:00', 50, 100, 2, NULL, 10, GETDATE(), 8, 1, 1),
('Centro de Negocios', 'Centro de negocios completamente equipado con salas de reuniones', 20, 'people', 'BC101', '2023-03-14 08:00:00', '2023-03-15 18:00:00', 50, 100, 2, NULL, 10, GETDATE(), 3, 1, 1),
('Salón de baile', 'Salón de baile con instructores de baile', 30, 'people', 'SJ101', '2023-03-14 14:00:00', '2023-03-16 02:00:00', 100, 150, 2, NULL, 10, GETDATE(), 7, 1, 1),
('Área de Niños', 'Área de juegos para niños con supervisión', 20, 'people', 'AN101', '2023-03-14 10:00:00', '2023-03-16 18:00:00', 25, 100, 2, NULL, 10, GETDATE(), 11, 1, 1),
('Sauna', 'Área de sauna con instalaciones de relajación', 10, 'people', 'SA101', '2023-03-14 12:00:00', '2023-03-16 22:00:00', 25, 100, 2, NULL, 10, GETDATE(), 4, 1, 1),
('Salón de Yoga', 'Salón de yoga con clases diarias', 20, 'people', 'YOGA101', '2023-03-14 07:00:00', '2023-03-16 18:00:00', 25, 100, 2, NULL, 10, GETDATE(), 9, 1, 1),

--------------------------------------------------------------------DATA 2--------------------------------------------------------
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '205', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 300, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '206', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '207', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '208', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '209', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '210', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '212', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '213', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1,2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '214', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '215', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '216', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '217', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '218', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1,2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '219', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '220', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '221', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '222', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '223', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '224', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '225', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '226', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '227', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '228', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '229', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '230', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '231', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '232', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '233', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '234', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '235', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '236', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '237', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '238', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '239', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '240', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '241', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '242', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '243', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '244', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '245', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '246', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '247', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '248', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '249', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '250', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '251', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '252', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '253', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '254', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '255', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '256', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '257', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '258', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '259', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '260', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '261', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '262', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '263', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '264', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '265', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Suite Ejecutiva', 'Suite espaciosa con cama king-size, sala de estar y vista a la ciudad', 4, 'beds', '266', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 1000, 1200, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '267', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '268', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '269', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 2, 2),
('Spa', 'Spa relajante con masajes y tratamientos de bienestar', NULL, 'people', 'SPA201', '2023-03-14 10:00:00', '2023-03-16 20:00:00', 50, 100, 2, NULL, 10, GETDATE(), 9, 2, 2),
('Bar', 'Bar acogedor con una selección de cócteles y bebidas', 50, 'people', 'BAR201', '2023-03-14 18:00:00', '2023-03-16 01:00:00', 50, 100, 2, NULL, 10, GETDATE(), 8, 2, 2),
('Centro de Negocios', 'Centro de negocios completamente equipado con salas de reuniones', 20, 'people', 'BC201', '2023-03-14 08:00:00', '2023-03-15 18:00:00', 50, 100, 2, NULL, 10, GETDATE(), 3, 2, 2),
('Salón de baile', 'Salón de baile con instructores de baile', 30, 'people', 'SJ201', '2023-03-14 14:00:00', '2023-03-16 02:00:00', 100, 150, 2, NULL, 10, GETDATE(), 7, 2, 2),
('Área de Niños', 'Área de juegos para niños con supervisión', 20, 'people', 'AN201', '2023-03-14 10:00:00', '2023-03-16 18:00:00', 25, 100, 2, NULL, 10, GETDATE(), 11, 2, 2),
('Sauna', 'Área de sauna con instalaciones de relajación', 10, 'people', 'SA201', '2023-03-14 12:00:00', '2023-03-16 22:00:00', 25, 100, 2, NULL, 10, GETDATE(), 4, 2, 2),
('Salón de Yoga', 'Salón de yoga con clases diarias', 20, 'people', 'YOGA201', '2023-03-14 07:00:00', '2023-03-16 18:00:00', 25, 100, 2, NULL, 10, GETDATE(), 9,2, 2),

--------------------------------------------------------------------DATA 3-------------------------------------------------------
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '305', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 300, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '306', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '307', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '308', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '309', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '310', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '312', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '313', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '314', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '315', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '316', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '317', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '318', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '319', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '320', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '321', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '322', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '323', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '324', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '325', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '326', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '327', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '328', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '329', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '330', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '331', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '332', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '333', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '334', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '335', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '336', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '337', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '338', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '339', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '340', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '341', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '342', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '343', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '344', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '345', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '346', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '347', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '348', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '349', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '350', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '351', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '352', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '353', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '354', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '355', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '356', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '357', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '358', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '359', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '360', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '361', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '362', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '363', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '364', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '365', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Suite Ejecutiva', 'Suite espaciosa con cama king-size, sala de estar y vista a la ciudad', 4, 'beds', '366', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 1000, 1200, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '367', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '368', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '369', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 3, 3),
('Spa', 'Spa relajante con masajes y tratamientos de bienestar', NULL, 'people', 'SPA301', '2023-03-14 10:00:00', '2023-03-16 20:00:00', 50, 100, 2, NULL, 10, GETDATE(), 9, 3, 3),
('Bar', 'Bar acogedor con una selección de cócteles y bebidas', 50, 'people', 'BAR301', '2023-03-14 18:00:00', '2023-03-16 01:00:00', 50, 100, 2, NULL, 10, GETDATE(), 8, 3, 3),
('Centro de Negocios', 'Centro de negocios completamente equipado con salas de reuniones', 20, 'people', 'BC301', '2023-03-14 08:00:00', '2023-03-15 18:00:00', 50, 100, 2, NULL, 10, GETDATE(), 3, 3, 3),
('Salón de baile', 'Salón de baile con instructores de baile', 30, 'people', 'SJ301', '2023-03-14 14:00:00', '2023-03-16 02:00:00', 100, 150, 2, NULL, 10, GETDATE(), 7, 3, 3),
('Área de Niños', 'Área de juegos para niños con supervisión', 20, 'people', 'AN301', '2023-03-14 10:00:00', '2023-03-16 18:00:00', 25, 100, 2, NULL, 10, GETDATE(), 11, 3, 3),
('Sauna', 'Área de sauna con instalaciones de relajación', 10, 'people', 'SA301', '2023-03-14 12:00:00', '2023-03-16 22:00:00', 25, 100, 2, NULL, 10, GETDATE(), 4, 3, 3),
('Salón de Yoga', 'Salón de yoga con clases diarias', 20, 'people', 'YOGA301', '2023-03-14 07:00:00', '2023-03-16 18:00:00', 25, 100, 2, NULL, 10, GETDATE(), 9, 3, 3),

--------------------------------------------------------------------DATA 4--------------------------------------------------------
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '405', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 300, 1, NULL, 10, GETDATE(), 1, 4, 4),
('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '406', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '407', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '408', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '409', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '410', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '412', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '413', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '414', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '415', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '416', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '417', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '418', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '419', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '420', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '421', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '422', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '423', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '424', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '425', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 4, 4),

-----------------------------


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '426', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '427', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '428', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '429', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '430', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '431', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '432', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '433', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '434', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '435', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '436', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '437', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '438', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '439', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '440', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '441', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '442', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '443', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '444', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '445', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '446', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '447', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '448', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '449', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '450', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '451', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '452', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '453', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '454', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '455', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '456', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '457', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '458', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '459', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '460', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '461', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '462', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '463', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '464', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '465', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Suite Ejecutiva', 'Suite espaciosa con cama king-size, sala de estar y vista a la ciudad', 4, 'beds', '466', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 1000, 1200, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '467', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '468', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),




('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '469', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 4, 4),



('Spa', 'Spa relajante con masajes y tratamientos de bienestar', NULL, 'people', 'SPA401', '2023-03-14 10:00:00', '2023-03-16 20:00:00', 50, 100, 2, NULL, 10, GETDATE(), 9, 4, 4),




('Bar', 'Bar acogedor con una selección de cócteles y bebidas', 50, 'people', 'BAR401', '2023-03-14 18:00:00', '2023-03-16 01:00:00', 50, 100, 2, NULL, 10, GETDATE(), 8, 4, 4),




('Centro de Negocios', 'Centro de negocios completamente equipado con salas de reuniones', 20, 'people', 'BC401', '2023-03-14 08:00:00', '2023-03-15 18:00:00', 50, 100, 2, NULL, 10, GETDATE(), 3, 4, 4),



('Salón de baile', 'Salón de baile con instructores de baile', 30, 'people', 'SJ401', '2023-03-14 14:00:00', '2023-03-16 02:00:00', 100, 150, 2, NULL, 10, GETDATE(), 7, 4, 4),




('Área de Niños', 'Área de juegos para niños con supervisión', 20, 'people', 'AN401', '2023-03-14 10:00:00', '2023-03-16 18:00:00', 25, 100, 2, NULL, 10, GETDATE(), 11, 4, 4),



('Sauna', 'Área de sauna con instalaciones de relajación', 10, 'people', 'SA401', '2023-03-14 12:00:00', '2023-03-16 22:00:00', 25, 100, 2, NULL, 10, GETDATE(), 4, 4, 4),




('Salón de Yoga', 'Salón de yoga con clases diarias', 20, 'people', 'YOGA401', '2023-03-14 07:00:00', '2023-03-16 18:00:00', 25, 100, 2, NULL, 10, GETDATE(), 9, 4, 4),
--------------------------------------------------------------------DATA 5--------------------------------------------------------


('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '505', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 300, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '506', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '507', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '508', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '509', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '510', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '512', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '513', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '514', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '515', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '516', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '517', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '518', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '519', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '520', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '521', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '522', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '523', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '524', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '525', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 5, 5),

-----------------------------


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '526', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '527', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '528', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '529', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '530', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '531', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '532', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '533', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '534', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '535', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '536', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '537', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '538', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '539', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '540', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '541', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '542', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '543', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '544', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '545', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '546', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '547', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '548', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '549', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '550', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),


-------------------------------------------------------------



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '551', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '552', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '553', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '554', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '555', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '556', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '557', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '558', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '559', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '560', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 5, 5),


----------------------------------------------------------------------------------



('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '561', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '562', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '563', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '564', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '565', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 5, 5),

-----------------------------------------------------------------------------


('Suite Ejecutiva', 'Suite espaciosa con cama king-size, sala de estar y vista a la ciudad', 4, 'beds', '566', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 1000, 1200, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '567', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),



('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '568', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),




('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '569', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 5, 5),

----------------------------------------



('Spa', 'Spa relajante con masajes y tratamientos de bienestar', NULL, 'people', 'SPA501', '2023-03-14 10:00:00', '2023-03-16 20:00:00', 50, 100, 2, NULL, 10, GETDATE(), 9, 5, 5),




('Bar', 'Bar acogedor con una selección de cócteles y bebidas', 50, 'people', 'BAR501', '2023-03-14 18:00:00', '2023-03-16 01:00:00', 50, 100, 2, NULL, 10, GETDATE(), 8, 5, 5),




('Centro de Negocios', 'Centro de negocios completamente equipado con salas de reuniones', 20, 'people', 'BC501', '2023-03-14 08:00:00', '2023-03-15 18:00:00', 50, 100, 2, NULL, 10, GETDATE(), 3, 5, 5),



('Salón de baile', 'Salón de baile con instructores de baile', 30, 'people', 'SJ501', '2023-03-14 14:00:00', '2023-03-16 02:00:00', 100, 150, 2, NULL, 10, GETDATE(), 7, 5, 5),




('Área de Niños', 'Área de juegos para niños con supervisión', 20, 'people', 'AN501', '2023-03-14 10:00:00', '2023-03-16 18:00:00', 25, 100, 2, NULL, 10, GETDATE(), 11, 5, 5),



('Sauna', 'Área de sauna con instalaciones de relajación', 10, 'people', 'SA501', '2023-03-14 12:00:00', '2023-03-16 22:00:00', 25, 100, 2, NULL, 10, GETDATE(), 4, 5, 5),




('Salón de Yoga', 'Salón de yoga con clases diarias', 20, 'people', 'YOGA501', '2023-03-14 07:00:00', '2023-03-16 18:00:00', 25, 100, 2, NULL, 10, GETDATE(), 9, 5, 5),
--------------------------------------------------------------------DATA 6--------------------------------------------------------


('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '605', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 300, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '606', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '607', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '608', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '609', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '610', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '612', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '613', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '614', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '615', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '616', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '617', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '618', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '619', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '620', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '621', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '622', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '623', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '624', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Individual', 'Habitación acogedora y confortable con una cama individual.', 1, 'beds', '625', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 200, 350, 1, NULL, 10, GETDATE(), 1, 6, 6),

-----------------------------


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '626', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '627', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '628', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '629', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '630', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '631', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '632', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '633', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '634', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '635', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '636', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '637', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '638', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '639', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '640', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '641', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '642', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '643', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '644', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '645', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '646', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '647', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '648', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '649', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


('Habitación Doble', 'Habitación acogedora y confortable con dos camas individuales.', 2, 'beds', '650', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),


-------------------------------------------------------------



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '651', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '652', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '653', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '654', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '655', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '656', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '657', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '658', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '659', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Habitación Doble con Dos Camas', 'Habitación con dos camas individuales.', 4, 'beds', '660', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 600, 650, 1, NULL, 10, GETDATE(), 1, 6, 6),


----------------------------------------------------------------------------------



('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '661', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '662', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '663', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '664', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Suite de Lujo', 'Descripción: Habitación lujosa con una cama king-size y un sofá.', 2, 'beds', '665', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 800, 1000, 1, NULL, 10, GETDATE(), 1, 6, 6),

-----------------------------------------------------------------------------


('Suite Ejecutiva', 'Suite espaciosa con cama king-size, sala de estar y vista a la ciudad', 4, 'beds', '666', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 1000, 1200, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '667', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),



('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '668', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),




('Habitación Familiar', 'Habitación ideal para familias con espacio adicional y comodidades para niños.', 6, 'beds', '669', '2023-03-14 14:00:00', '2023-03-16 12:00:00', 400, 500, 1, NULL, 10, GETDATE(), 1, 6, 6),

----------------------------------------



('Spa', 'Spa relajante con masajes y tratamientos de bienestar', NULL, 'people', 'SPA601', '2023-03-14 10:00:00', '2023-03-16 20:00:00', 50, 100, 2, NULL, 10, GETDATE(), 9, 6, 6),




('Bar', 'Bar acogedor con una selección de cócteles y bebidas', 50, 'people', 'BAR601', '2023-03-14 18:00:00', '2023-03-16 01:00:00', 50, 100, 2, NULL, 10, GETDATE(), 8, 6, 6),




('Centro de Negocios', 'Centro de negocios completamente equipado con salas de reuniones', 20, 'people', 'BC601', '2023-03-14 08:00:00', '2023-03-15 18:00:00', 50, 100, 2, NULL, 10, GETDATE(), 3, 6, 6),



('Salón de baile', 'Salón de baile con instructores de baile', 30, 'people', 'SJ601', '2023-03-14 14:00:00', '2023-03-16 02:00:00', 100, 150, 2, NULL, 10, GETDATE(), 7, 6, 6),




('Área de Niños', 'Área de juegos para niños con supervisión', 20, 'people', 'AN601', '2023-03-14 10:00:00', '2023-03-16 18:00:00', 25, 100, 2, NULL, 10, GETDATE(), 11, 6, 6),



('Sauna', 'Área de sauna con instalaciones de relajación', 10, 'people', 'SA601', '2023-03-14 12:00:00', '2023-03-16 22:00:00', 25, 100, 2, NULL, 10, GETDATE(), 4, 6, 6),




('Salón de Yoga', 'Salón de yoga con clases diarias', 20, 'people', 'YOGA601', '2023-03-14 07:00:00', '2023-03-16 18:00:00', 25, 100, 2, NULL, 10, GETDATE(), 9, 6, 6);
GO


INSERT INTO Hotel.Facility_Photos (fapho_photo_filename, fapho_thumbnail_filename, fapho_original_filename, fapho_file_size, fapho_file_type, fapho_primary, fapho_url, fapho_modified_date, fapho_faci_id)
SELECT 'photo1.jpg', 'thumb1.jpg', 'orig1.jpg', 1024, 'jpg', 0, 'https://example.com/photo1.jpg', GETDATE(), faci_id FROM Hotel.Facilities
UNION ALL
SELECT 'photo2.jpg', 'thumb2.jpg', 'orig2.jpg', 2048, 'jpg', 0, 'https://example.com/photo2.jpg', GETDATE(), faci_id FROM Hotel.Facilities
UNION ALL
SELECT 'photo3.jpg', 'thumb3.jpg', 'orig3.jpg', 3072, 'jpg', 0, 'https://example.com/photo3.jpg', GETDATE(), faci_id FROM Hotel.Facilities;

GO

set dateformat ymd
---- INSERT HR.JOB_ROLE
SET IDENTITY_INSERT hr.job_role ON
INSERT INTO hr.job_role (joro_id, joro_name, joro_modified_date) values
(1, 'Recepcionista', '2022-12-09'),
(2, 'Personal de Limpieza', '2023-08-10'),
(3, 'Conserje', '2020-12-24'),
(4, 'Chef de Cocina', '2022-03-27'),
(5, 'Camarero o Mesero', '2023-04-05'),
(6, 'Gerente de Hotel', '2021-11-06'),
(7, 'Bartender', '2023-04-09'),
(8, 'Jefe de Mantenimiento', '2023-03-08'),
(9, 'Botones', '2021-03-06'),
(10, 'Gerente de Alimentos y Bebidas', '2021-03-11'),
(11, 'Contador del Hotel', '2022-11-22'),
(12, 'Portero', '2021-01-22'),
(13, 'Masajista o Terapeuta de Spa', '2023-04-18'),
(14, 'Gerente de Seguridad', '2022-07-16'),
(15, 'Gerente de Marketing', '2023-07-31'),
(16, 'Gerente de Recepción', '2020-11-30'),
(17, 'Gerente de Habitaciones', '2022-01-30'),
(18, 'Camarero de Bar', '2022-12-26'),
(19, 'Agente de Reservas', '2020-11-11'),
(20, 'Ingeniero de Mantenimiento', '2023-08-29'),
(21, 'Gerente de Restaurante', '2023-04-28'),
(22, 'Lavandero o Lavandera', '2021-05-17'),
(23, 'Asistente de Gerente de Hotel', '2020-12-20'),
(24, 'Conductor de Valet', '2022-10-13'),
(25, 'Camarero de Room Service', '2021-08-12'),
(26, 'Supervisor de Seguridad', '2022-08-22'),
(27, 'Coordinador de Transporte', '2022-09-28'),
(28, 'Asistente de Reservas', '2021-11-20');
SET IDENTITY_INSERT hr.job_role OFF
GO


---- INSERT HR.EMPLOYEE
SET IDENTITY_INSERT hr.employee ON
INSERT INTO hr.employee (emp_id, emp_national_id, emp_birth_date, emp_marital_status, emp_gender, emp_hire_date,
						 emp_salaried_flag, emp_joro_id) 
VALUES
(1, 'a123123123456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 1),
(2, 'b456456456123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 1),
(3, 'c231231231339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 1),
(4, 'd524524524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 1),
(5, 'e122122122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 1),
(6, 'f090285082940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 1),
(7, 'g122932483892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 1),
(8, 'h214392573294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 1),
(9, 'i217473298498378988932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 1),
(10, 'j219483945782893873249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 1),
(11, 'k123123123456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 1),
(12, 'l456456456123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 1),
(13, 'm231231231339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 2),
(14, 'n524524524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 2),
(15, 'o122122122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 2),
(16, 'p090285082940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 2),
(17, 'q122932483892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 2),
(18, 'r214392573294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 2),
(19, 's217473298498378988932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 2),
(20, 't219483945782893873249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 2),
(21, 'u123123123456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 2),
(22, 'v456456456123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 2),
(23, 'w231231231339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 2),
(24, 'x524524524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 2),
(25, 'y122122122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 2),
(26, 'z090285082940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 2),
(27, 'aa22932483892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 2),
(28, 'bb14392573294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 2),
(29, 'cc23123123456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 2),
(30, 'dd45645645612312312378978', '2002-02-01', 'M', 'F', GETDATE(), '0', 2),
(31, 'ee31231231339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 2),
(32, 'ff24524524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 2),
(33, 'gg22122122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 2),
(34, 'hh90285082940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 2),
(35, 'ii22932483892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 2),
(36, 'jj14392573294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 2),
(37, 'kk17473298498378988932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 2),
(38, 'll19483945782893873249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 2),
(39, 'mm3123123456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 2),
(40, 'nn56456456123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 2),
(41, 'oo23123123139339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 2),
(42, 'pp24524524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 2),
(43, 'qq22122122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 2),
(44, 'rr90285082940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 2),
(45, 'ss22932483892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 2),
(46, 'tt14392573294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 2),
(47, 'uu21747329849838988932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 2),
(48, 'vv19483945782893873249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 2),
(49, 'ww23123123456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 2),
(50, 'xx56456456123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 2),
(51, 'yy31231231339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 2),
(52, 'zz24524524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 2),
(53, 'aaa2122122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 2),
(54, 'bbb0285082940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 2),
(55, 'ccc2932483892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 2),
(56, 'ddd4392573294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 2),
(57, 'eee3123123456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 2),
(58, 'fff6456456123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 2),
(59, 'ggg1231231339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 2),
(60, 'hhh4524524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 2),
(61, 'iii2122122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 2),
(62, 'jjj0285082940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 2),
(63, 'kkk2932483892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 2),
(64, 'lll4392573294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 2),
(65, 'mmm7473298498378988932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 2),
(66, 'nnn9483945782893873249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 2),
(67, 'ooo3123123456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 2),
(68, 'ppp6456456123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 2),
(69, 'qqq1231231339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 2),
(70, 'rrr4524524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 2),
(71, 'sss2122122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 2),
(72, 'ttt0285082940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 2),
(73, 'uuu2932483892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 3),
(74, 'vvv4392573294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 3),
(75, 'www7473298498378988932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 3),
(76, 'xxx9483945782893873249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 3),
(77, 'yyy3123123456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 3),
(78, 'zzz6456456123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 3),
(79, 'aaaa231231339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 4),
(80, 'bbbb524524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 4),
(81, 'cccc122122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 4),
(82, 'dddd285082940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 4),
(83, 'eeee932483892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 4),
(84, 'ffff392573294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 4),
(85, 'gggg123123456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 4),
(86, 'hhhh645645612312312379789', '2002-02-01', 'M', 'F', GETDATE(), '0', 4),
(87, 'iiii231231339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 4),
(88, 'jjjj524524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 4),
(89, 'kkkk122122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 4),
(90, 'llll285082940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 4),
(91, 'mmmm932483892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 4),
(92, 'nnnn392573294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 4),
(93, 'oooo473298498378988932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 4),
(94, 'pppp483945782893873249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 4),
(95, 'qqqq23123456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 4),
(96, 'rrrr456456123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 4),
(97, 'ssss123123133933933903013', '2003-03-01', 'M', 'M', GETDATE(), '1', 4),
(98, 'tttt524524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 4),
(99, 'uuuu122122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 4),
(100, 'vvvv28508294024328423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 4),
(101, 'wwww93248389209534354255', '1998-07-01', 'M', 'M', GETDATE(), '1', 4),
(102, 'xxxx39257329481274392523', '2002-08-01', 'S', 'F', GETDATE(), '0', 4),-------------------
(103, 'yyyy74732984983789882754', '1999-09-01', 'S', 'M', GETDATE(), '1', 5),
(104, 'zzzz48394578289387329573', '2001-10-01', 'M', 'F', GETDATE(), '0', 5),
(105, 'aaaaa2312345645645678789', '2001-01-01', 'S', 'M', GETDATE(), '1', 5),
(106, 'bbbbb5645612312312378789', '2002-02-01', 'M', 'F', GETDATE(), '0', 5),
(107, 'ccccc3123133933933913013', '2003-03-01', 'M', 'M', GETDATE(), '1', 5),
(108, 'ddddd2452462162162132832', '1999-04-01', 'S', 'F', GETDATE(), '0', 5),
(109, 'eeeee2212232232232244944', '1997-05-01', 'S', 'M', GETDATE(), '1', 5),
(110, 'fffff8508294024328443853', '1999-06-01', 'M', 'F', GETDATE(), '0', 5),
(111, 'ggggg3248389209534534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 5),
(112, 'hhhhh9257329481273928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 5),
(113, 'iiiii2312345645656789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 5),
(114, 'jjjjj5645612312123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 5),
(115, 'kkkkk3123133939339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 5),
(116, 'lllll2452462121621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 5),
(117, 'mmmmm2212232322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 5),
(118, 'nnnnn8508290243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 5),
(119, 'ooooo3248392095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 5),
(120, 'ppppp9257294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 5),-------------------
(121, 'qqqqq2313456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 6),
(122, 'rrrrr5656123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 6),
(123, 'sssss3123133933339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 6),
(124, 'ttttt2452462161621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 6),
(125, 'uuuuu2212232222322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 6),
(126, 'vvvvv8508294243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 6),
(127, 'wwwww32483892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 6),-------------------
(128, 'xxxxx92573294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 7),
(129, 'yyyyy73298498378988932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 7),
(130, 'zzzzz83945782893873249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 7),
(131, 'aaaaaa2312356456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 7),
(132, 'bbbbbb6456123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 7),
(133, 'cccccc1231339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 7),
(134, 'dddddd4524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 7),
(135, 'eeeeee2122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 7),
(136, 'ffffff5082940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 7),
(137, 'gggggg2483892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 7),
(138, 'hhhhhh2573294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 7),
(139, 'iiiiii3298498378988932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 7),-----------------
(140, 'jjjjjj3945782893873249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 8),
(141, 'kkkkkk3123456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 8),
(142, 'llllll6456123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 8),
(143, 'mmmmmm1231339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 8),
(144, 'nnnnnn4524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 8),
(145, 'oooooo2122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 8),
(146, 'pppppp5082940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 8),
(147, 'qqqqqq2483892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 8),
(148, 'rrrrrr2573294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 8),
(149, 'ssssss3123456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 8),
(150, 'tttttt5645123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 8),
(151, 'uuuuuu1231339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 8),------------------------
(152, 'vvvvvv4524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 9),
(153, 'wwwwww2122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 9),
(154, 'xxxxxx5082940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 9),
(155, 'yyyyyy2483892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 9),
(156, 'zzzzzz2573294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 9),
(157, 'aaaaaaa298498378988932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 9),
(158, 'bbbbbbb947782893873249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 9),
(159, 'ccccccc23456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 9),
(160, 'ddddddd456123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 9),
(161, 'eeeeeee131339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 9),
(162, 'fffffff524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 9),
(163, 'ggggggg122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 9),-----------------
(164, 'hhhhhhh082940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 10),
(165, 'iiiiiii483892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 10),
(166, 'jjjjjjj573294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 10),
(167, 'kkkkkkk329849837898932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 10),
(168, 'lllllll945778289383249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 10),
(169, 'mmmmmmm123456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 10),-------------
(170, 'nnnnnnn456123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 11),
(171, 'ooooooo231339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 11),
(172, 'ppppppp524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 11),
(173, 'qqqqqqq122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 11),
(174, 'rrrrrrr082940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 11),
(175, 'sssssss483892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 11),
(176, 'ttttttt573294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 12),
(177, 'uuuuuuu123456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 12),
(178, 'vvvvvvv456123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 12),
(179, 'wwwwwww231339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 12),
(180, 'xxxxxxx524621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 12),
(181, 'yyyyyyy122322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 12),
(182, 'zzzzzzz082940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 12),
(183, 'aaaaaaaa83892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 12),
(184, 'bbbbbbbb73294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 12),
(185, 'cccccccc98498378988932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 12),
(186, 'dddddddd45782893873249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 12),
(187, 'eeeeeeee23456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 12),-------------------
(188, 'ffffffff56123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 13),
(189, 'gggggggg31339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 13),
(190, 'hhhhhhhh24621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 13),
(191, 'iiiiiiii22322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 13),
(192, 'jjjjjjjj82940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 13),
(193, 'kkkkkkkk83892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 13),
(194, 'llllllll73294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 13),
(195, 'mmmmmmmm98498378988932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 13),
(196, 'nnnnnnnn45782893873249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 13),
(197, 'oooooooo23456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 13),
(198, 'pppppppp56123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 13),
(199, 'qqqqqqqq31339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 13),
(200, 'rrrrrrrr24621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 13),
(201, 'ssssssss22322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 13),
(202, 'tttttttt82940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 13),
(203, 'uuuuuuuu83892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 13),
(204, 'vvvvvvvv73294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 13),
(205, 'wwwwwwww23456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 13),--------------
(206, 'xxxxxxxx45612312323789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 14),
(207, 'yyyyyyyy31339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 14),
(208, 'zzzzzzzz24621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 14),
(209, 'aaaaaaaaa2322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 14),
(210, 'bbbbbbbbb2940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 14),
(211, 'ccccccccc3892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 14),
(212, 'ddddddddd3294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 15),
(213, 'eeeeeeee8498378988932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 15),
(214, 'fffffffff457828973249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 15),
(215, 'ggggggggg56456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 15),
(216, 'hhhhhhhhh612312123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 15),
(217, 'iiiiiiiii313399339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 15),
(218, 'jjjjjjjjj462162621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 16),
(219, 'kkkkkkkkk2322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 16),
(220, 'lllllllll2940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 16),
(221, 'mmmmmmmmm8389209534334255', '1998-07-01', 'M', 'M', GETDATE(), '1', 16),
(222, 'nnnnnnnnn3294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 16),
(223, 'ooooooooo9849837898932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 16),
(224, 'ppppppppp5782893873249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 17),
(225, 'qqqqqqqqq3456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 17),
(226, 'rrrrrrrrr6123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 17),
(227, 'sssssssss1339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 17),
(228, 'ttttttttt4621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 17),
(229, 'uuuuuuuuu2322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 17),---------------------
(230, 'vvvvvvvvv2940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 18),
(231, 'wwwwwwwww3892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 18),
(232, 'xxxxxxxxx3294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 18),
(233, 'yyyyyyyyy3456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 18),
(234, 'zzzzzzzzz6123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 18),
(235, 'aaaaaaaaaa339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 18),
(236, 'bbbbbbbbbb621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 18),
(237, 'cccccccccc322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 18),
(238, 'dddddddddd940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 18),
(239, 'eeeeeeeeee892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 18),
(240, 'ffffffffff294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 18),
(241, 'gggggggggg56456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 18),
(242, 'hhhhhhhhhh12312312789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 18),
(243, 'iiiiiiiiii13393393013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 19),
(244, 'jjjjjjjjjj62162161832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 19),
(245, 'kkkkkkkkkk32232232244944', '1997-05-01', 'S', 'M', GETDATE(), '1', 19),
(246, 'llllllllll94024328423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 19),
(247, 'mmmmmmmmmm89209534534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 19),
(248, 'nnnnnnnnnn29481273928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 19),
(249, 'oooooooooo84983789932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 19),
(250, 'pppppppppp78289383249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 19),
(251, 'qqqqqqqqqq45645645689789', '2001-01-01', 'S', 'M', GETDATE(), '1', 19),
(252, 'rrrrrrrrrr123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 19),
(253, 'ssssssssss339339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 19),
(254, 'tttttttttt621621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 19),------------------
(255, 'uuuuuuuuuu322322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 20),
(256, 'vvvvvvvvvv940243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 20),
(257, 'wwwwwwwwww892095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 20),
(258, 'xxxxxxxxxx294812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 20),
(259, 'yyyyyyyyyy456456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 20),
(260, 'zzzzzzzzzz123123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 20),
(261, 'aaaaaaaaaaa39339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 21),
(262, 'bbbbbbbbbbb21621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 21),
(263, 'ccccccccccc22322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 21),
(264, 'ddddddddddd40243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 21),
(265, 'eeeeeeeeeee92095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 21),
(266, 'fffffffffff94812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 21),----------------
(267, 'ggggggggggg6456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 22),
(268, 'hhhhhhhhhhh23123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 22),
(269, 'iiiiiiiiiii33933939013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 22),
(270, 'jjjjjjjjjjj21621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 22),
(271, 'kkkkkkkkkkk22322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 22),
(272, 'lllllllllll40243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 22),
(273, 'mmmmmmmmmmm92095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 22),
(274, 'nnnnnnnnnnn94812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 22),
(275, 'ooooooooooo49837898932754', '1999-09-01', 'S', 'M', GETDATE(), '1', 22),
(276, 'ppppppppppp82893873249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 22),
(277, 'qqqqqqqqqqq56456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 22),
(278, 'rrrrrrrrrrr23123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 22),----------
(279, 'sssssssssss39339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 22),
(280, 'ttttttttttt21621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 22),
(281, 'uuuuuuuuuuu22322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 22),
(282, 'vvvvvvvvvvv40243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 22),
(283, 'wwwwwwwwwww92095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 22),
(284, 'xxxxxxxxxxx94812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 22),
(285, 'yyyyyyyyyyy94812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 22),
(286, 'zzzzzzzzzzz94812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 22),
(287, 'aaaaaaaaaaaa9339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 22),
(288, 'bbbbbbbbbbbb1621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 22),
(289, 'cccccccccccc2322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 22),
(290, 'dddddddddddd0243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 22),
(291, 'eeeeeeeeeeee2095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 23),
(292, 'ffffffffffff4812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 23),
(293, 'gggggggggggg456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 23),
(294, 'hhhhhhhhhhhh3123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 23),
(295, 'iiiiiiiiiiii3933933913013', '2003-03-01', 'M', 'M', GETDATE(), '1', 23),
(296, 'jjjjjjjjjjjj1621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 23),
(297, 'kkkkkkkkkkkk2322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 24),
(298, 'llllllllllll0243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 24),
(299, 'mmmmmmmmmmmm2095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 24),
(300, 'nnnnnnnnnnnn4812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 24),
(301, 'oooooooooooo9837898892754', '1999-09-01', 'S', 'M', GETDATE(), '1', 24),
(302, 'pppppppppppp2893873249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 24),
(303, 'qqqqqqqqqqqq6456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 24),
(304, 'rrrrrrrrrrrr3123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 24),
(305, 'ssssssssssss9339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 24),
(306, 'tttttttttttt1621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 24),
(307, 'uuuuuuuuuuuu2322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 24),
(308, 'vvvvvvvvvvvv0243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 24),
(309, 'wwwwwwwwwwww2095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 25),
(310, 'xxxxxxxxxxxx4812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 25),
(311, 'yyyyyyyyyyyy4812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 25),
(312, 'zzzzzzzzzzzz4812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 25),
(313, 'aaaaaaaaaaaaa339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 25),
(314, 'bbbbbbbbbbbbb621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 25),
(315, 'ccccccccccccc322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 25),
(316, 'ddddddddddddd243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 25),
(317, 'eeeeeeeeeeeee095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 25),
(318, 'fffffffffffff812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 25),
(319, 'ggggggggggggg56456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 25),
(320, 'hhhhhhhhhhhhh123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 25),
(321, 'iiiiiiiiiiiii933933901013', '2003-03-01', 'M', 'M', GETDATE(), '1', 26),
(322, 'jjjjjjjjjjjjj621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 26),
(323, 'kkkkkkkkkkkkk322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 26),
(324, 'lllllllllllll243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 26),
(325, 'mmmmmmmmmmmmm095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 26),
(326, 'nnnnnnnnnnnnn812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 26),
(327, 'ooooooooooooo837898893754', '1999-09-01', 'S', 'M', GETDATE(), '1', 27),
(328, 'ppppppppppppp893873249573', '2001-10-01', 'M', 'F', GETDATE(), '0', 27),
(329, 'qqqqqqqqqqqqq456456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 27),
(330, 'rrrrrrrrrrrrr123123789789', '2002-02-01', 'M', 'F', GETDATE(), '0', 27),
(331, 'sssssssssssss339339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 27),
(332, 'ttttttttttttt621621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 27),
(333, 'uuuuuuuuuuuuu322322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 28),
(334, 'vvvvvvvvvvvvv243284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 28),
(335, 'wwwwwwwwwwwww095343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 28),
(336, 'xxxxxxxxxxxxx812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 28),
(337, 'yyyyyyyyyyyyy812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 28),
(338, 'zzzzzzzzzzzzz812743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 28),-----------
(339, 'aaaaaaaaaaaaaa39339013013', '2003-03-01', 'M', 'M', GETDATE(), '1', 2),----
(340, 'bbbbbbbbbbbbbb21621832832', '1999-04-01', 'S', 'F', GETDATE(), '0', 3),
(341, 'cccccccccccccc22322494944', '1997-05-01', 'S', 'M', GETDATE(), '1', 3),
(342, 'dddddddddddddd43284423853', '1999-06-01', 'M', 'F', GETDATE(), '0', 3),
(343, 'eeeeeeeeeeeeee95343534255', '1998-07-01', 'M', 'M', GETDATE(), '1', 3),
(344, 'ffffffffffffff12743928523', '2002-08-01', 'S', 'F', GETDATE(), '0', 3),
(345, 'gggggggggggggg6456789789', '2001-01-01', 'S', 'M', GETDATE(), '1', 3);
SET IDENTITY_INSERT hr.employee OFF
GO

---- INSERT HR.SHIFT //turno
SET IDENTITY_INSERT hr.shift ON
INSERT INTO hr.shift(shift_id, shift_name, shift_start_time, shift_end_time) VALUES
(1,'Shift 1', '08:00:00', '16:00:00'),
(2,'Shift 2', '16:00:00', '00:00:00'),
(3,'Shift 3', '00:00:00', '08:00:00');
SET IDENTITY_INSERT hr.shift OFF
GO


set dateformat ymd
SET IDENTITY_INSERT hr.department ON
insert into hr.department(dept_id, dept_name, dept_modified_date)values
	(1, 'Recepción', GETDATE()),
	(2, 'Seguridad', GETDATE()),
	(3, 'Marketing', GETDATE()),
	(4, 'Contabilidad', GETDATE()),
	(5, 'Alimentos y bebidas', GETDATE()),
	(6, 'Limpieza', GETDATE()),
	(7, 'Compras', GETDATE()),
	(8, 'Ingeniería', GETDATE()),
	(9, 'Personeria (HRD)', GETDATE()),
	(10, 'Ventas', GETDATE()),
    (11, 'Recursos Humanos', GETDATE()),
    (12, 'Soporte Técnico', GETDATE()),
    (13, 'Logística', GETDATE()),
    (14, 'Legal', GETDATE()),
    (15, 'Comunicaciones', GETDATE());
SET IDENTITY_INSERT hr.department OFF

GO

---- INSERT HR.EMPLOYEE_DEPARRMENT_HISTORY
SET IDENTITY_INSERT hr.employee_department_history ON
insert into hr.employee_department_history(edhi_id, edhi_emp_id, edhi_dept_id, edhi_shift_id) values
(1,1, 1, 1),
(2,2, 2, 2),
(3,3, 3, 3),
(4,4, 4, 1),
(5,5, 5, 2),
(6,6, 6, 3),
(7,7, 7, 1),
(8,8, 8, 2),
(9,9, 9, 3),
(10,10, 2, 1),
(11,11, 1, 2),
(12,12, 2, 3),
(13,13, 3, 1),
(14,14, 4, 2),
(15,15, 5, 3),
(16,16, 6, 1),
(17,17, 7, 2),
(18,18, 8, 3),
(19,19, 9, 1),
(20,20, 2, 2);
SET IDENTITY_INSERT hr.employee_department_history OFF
GO

---- INSERT HR.EMPLOYEE_PAY_HISTORY  //historial salarial del empleado
INSERT INTO hr.employee_pay_history (ephi_emp_id, ephi_rate_change_date) VALUES
(1, GETDATE()),
(2, GETDATE()),
(3, GETDATE()),
(4, GETDATE()),
(5, GETDATE()),
(6, GETDATE()),
(7, GETDATE()),
(8, GETDATE()),
(9, GETDATE()),
(10, GETDATE());
GO





----------------------------------------------------------------------- CORRIO HASTA AQUI ------------------------------------------
------------------------------------------------------------------------------------------------------------
EXEC PA_work_orders_y_work_orders_detail;
--------------------------------------AREA DE HR.WORK_ORDERS
--------------------------------------AREA DE HR.WORK_ORDERS_DETAILS
GO
------------------------------------------------------------------------------------------------------------



--------------------------------------AREA Booking.special_offers
SET IDENTITY_INSERT Booking.special_offers ON
INSERT INTO Booking.special_offers (spof_id, spof_name, spof_description, spof_type, spof_discount, spof_start_date, spof_end_date, spof_min_qty, spof_max_qty, spof_modified_date)
VALUES (1, 'Oferta de invierno', 'Consigue un 20% de descuento en tu estancia al reservar una habitación durante los meses de invierno', 'T', 0.2, '2022-12-01', '2023-03-31', 1, 3, GETDATE()),
       (2, 'Weekend Getaway Deal', 'Alójese dos noches durante el fin de semana y consiga un 20% para la noche siguiente', 'C', 0.2 , '2022-12-01', '2023-03-31', 3, 5, GETDATE()),
       (3, 'Oferta por reserva anticipada', 'Reserve con al menos 30 días de antelación y ahorre un 15% en su estancia', 'I', 0.15, '2022-12-01', '2023-03-31', 1, 2, GETDATE()),
       (4, 'Family Fun Package', 'Reserve una habitación familiar y consiga desayuno gratis para los niños', 'T', 0, '2022-12-01', '2023-03-31', 4, 6, GETDATE()),
       (5, 'Paquete romántico', 'Reserve una escapada romántica para dos y reciba una botella de champán a su llegada', 'C', 0, '2022-12-01', '2023-03-31', 2, 5, GETDATE()),
       (6, 'Oferta de última hora', 'Reserve en las 48 horas previas a su llegada y ahorre un 20% en su estancia', 'I', 0.2, '2022-12-01', '2023-03-31', 1, 3, GETDATE()),
       (7, 'Descuento AAA/CAA', 'Muestre su tarjeta de socio de la AAA o CAA y obtenga un 10% de descuento en su estancia', 'T', 0.1 , '2022-12-01', '2023-03-31', 1, 3, GETDATE()),
       (8, 'Descuento para mayores', 'Los huéspedes de 65 años o más reciben un 10% de descuento en su estancia', 'C', 0.1, '2022-12-01', '2022-03-31', 1, 3, GETDATE()),
       (9, 'Descuento para militares', 'Los militares en activo reciben un 15% de descuento en su estancia', 'I', 0.15, '2022-12-01', '2023-03-31', 1, 3, GETDATE()),
		(10, 'Oferta de verano', 'Disfrute del verano con un 15% de descuento en su estancia durante junio, julio y agosto', 'T', 0.15, '2023-06-01', '2023-08-31', 1, 4, GETDATE()),
		(11, 'Paquete de aniversario', 'Celebre su aniversario con nosotros y reciba una cena romántica para dos', 'C', 0, '2023-01-01', '2023-12-31', 2, 6, GETDATE()),
		(12, 'Oferta de esquí', 'Reserve una estancia durante la temporada de esquí y obtenga un pase de esquí gratuito por persona', 'T', 0, '2023-12-15', '2024-02-28', 3, 5, GETDATE()),
		(13, 'Descuento para estudiantes', 'Los estudiantes con identificación válida obtienen un 10% de descuento en su estancia', 'I', 0.1, '2023-01-01', '2023-12-31', 1, 2, GETDATE()),
		(14, 'Paquete de spa', 'Relájese con nuestro paquete de spa y obtenga un masaje gratuito por persona', 'C', 0, '2023-03-01', '2023-05-31', 4, 6, GETDATE()),
		(15, 'Oferta de Navidad', 'Celebre la Navidad con nosotros y reciba un regalo especial en su habitación', 'T', 0, '2023-12-24', '2023-12-25', 1, 3, GETDATE()),
		(16, 'Oferta de fin de año', 'Reciba el Año Nuevo con un brindis especial y fuegos artificiales desde nuestra terraza', 'C', 0, '2023-12-31', '2024-01-01', 2, 5, GETDATE()),
		(17, 'Oferta de luna de miel', 'Los recién casados disfrutan de un 20% de descuento en su estancia y una botella de vino espumoso', 'I', 0.2, '2023-04-01', '2023-09-30', 1, 2, GETDATE()),
		(18, 'Oferta de golf', 'Reserve una estancia durante la temporada de golf y obtenga un juego de golf gratuito por persona', 'T', 0, '2023-05-01', '2023-09-30', 3, 4, GETDATE()),
		(19, 'Descuento de cumpleaños', 'Celebre su cumpleaños con nosotros y obtenga un 10% de descuento en su estancia', 'C', 0.1, '2023-01-01', '2023-12-31', 4, 6, GETDATE()),
		(20, 'Oferta de aniversario del hotel', 'Celebre nuestro aniversario con nosotros y obtenga un 25% de descuento en su estancia', 'I', 0.25, '2023-10-01', '2023-10-31', 1, 2, GETDATE()),
		(21, 'Oferta de primavera', 'Disfrute de la temporada de primavera con un 10% de descuento en su estancia', 'T', 0.1, '2023-03-20', '2023-06-20', 2, 4, GETDATE()),
		(22, 'Paquete de lujo', 'Experimente el lujo con nuestro paquete especial que incluye una cena gourmet y masajes', 'C', 0, '2023-01-01', '2023-12-31', 3, 6, GETDATE()),
		(23, 'Oferta de aniversario de bodas', 'Celebre su aniversario de bodas con nosotros y reciba una tarta personalizada', 'I', 0, '2023-04-15', '2023-10-15', 4, 5, GETDATE()),
		(24, 'Paquete de aventuras', 'Viva una emocionante aventura con nuestro paquete que incluye deportes acuáticos y excursiones', 'T', 0, '2023-07-01', '2023-08-31', 1, 3, GETDATE()),
		(25, 'Oferta de otoño', 'Disfrute del otoño con un 15% de descuento en su estancia durante septiembre, octubre y noviembre', 'C', 0.15, '2023-09-01', '2023-11-30', 2, 4, GETDATE()),
		(26, 'Oferta de spa de fin de semana', 'Reserve un fin de semana relajante y reciba un masaje gratuito por persona', 'I', 0, '2023-04-01', '2023-06-30', 3, 5, GETDATE()),
		(27, 'Paquete de luna de miel de lujo', 'Los recién casados disfrutan de un 30% de descuento en su estancia y una suite de luna de miel', 'T', 0.3, '2023-01-01', '2023-12-31', 1, 2, GETDATE()),
		(28, 'Oferta de golf de invierno', 'Reserve una estancia durante la temporada de golf de invierno y obtenga un juego de golf gratuito por persona', 'C', 0, '2023-11-01', '2024-02-29', 3, 4, GETDATE()),
		(29, 'Descuento de Navidad', 'Celebre la Navidad con nosotros y obtenga un 10% de descuento en su estancia durante el mes de diciembre', 'I', 0.1, '2023-12-01', '2023-12-31', 4, 6, GETDATE()),
		(30, 'Oferta de escapada de montaña', 'Explore las montañas con un 15% de descuento en su estancia durante la temporada de invierno', 'T', 0.15, '2023-12-01', '2024-03-31', 1, 3, GETDATE()),
		(31, 'Paquete de spa de lujo', 'Experimente el máximo lujo con nuestro paquete de spa que incluye tratamientos exclusivos', 'C', 0, '2023-01-01', '2023-12-31', 2, 6, GETDATE()),
		(32, 'Oferta de verano para familias', 'Las familias disfrutan de un 20% de descuento en su estancia durante julio y agosto', 'I', 0.2, '2023-07-01', '2023-08-31', 4, 5, GETDATE()),
		(33, 'Paquete de aniversario de bodas de oro', 'Celebre sus 50 años de matrimonio con nosotros y reciba una cena de gala', 'T', 0, '2023-05-15', '2023-09-15', 3, 4, GETDATE()),
		(34, 'Oferta de actividades al aire libre', 'Aventúrese al aire libre con un 10% de descuento en actividades como senderismo y ciclismo', 'C', 0.1, '2023-04-01', '2023-10-31', 1, 3, GETDATE()),
		(35, 'Oferta de fin de semana largo', 'Disfrute de un fin de semana largo con un 15% de descuento en su estancia', 'I', 0.15, '2023-05-27', '2023-05-29', 2, 5, GETDATE()),
		(36, 'Paquete de golf de lujo', 'Los amantes del golf disfrutan de un 25% de descuento en su estancia y acceso exclusivo al campo de golf', 'T', 0.25, '2023-03-01', '2023-10-31', 1, 4, GETDATE()),
		(37, 'Oferta de luna de miel tropical', 'Celebre su luna de miel en un paraíso tropical con un 30% de descuento', 'C', 0.3, '2023-09-01', '2023-12-31', 2, 6, GETDATE()),
		(38, 'Oferta de Semana Santa', 'Celebre la Semana Santa con nosotros y reciba una cesta de Pascua en su habitación', 'I', 0, '2023-04-10', '2023-04-16', 3, 5, GETDATE()),
		(39, 'Descuento de grupo', 'Los grupos de 10 o más personas obtienen un 10% de descuento en su estancia', 'T', 0.1, '2023-01-01', '2023-12-31', 4, 6, GETDATE()),
		(40, 'Oferta de spa de fin de semana', 'Relájese y renueve energías con nuestro paquete de spa de fin de semana', 'I', 0.2, '2023-10-01', '2023-12-31', 1, 3, GETDATE()),
		(41, 'Oferta de golf de primavera', 'Disfrute de una partida de golf en primavera con un 20% de descuento en su estancia', 'T', 0.2, '2023-04-01', '2023-06-30', 2, 4, GETDATE()),
		(42, 'Paquete de aventuras acuáticas', 'Explore las aguas locales con nuestro paquete de deportes acuáticos', 'C', 0, '2023-03-01', '2023-09-30', 3, 6, GETDATE()),
		(43, 'Oferta de Halloween', 'Celebre Halloween con nosotros y reciba golosinas especiales en su habitación', 'I', 0, '2023-10-28', '2023-10-31', 4, 5, GETDATE()),
		(44, 'Oferta de esquí de invierno', 'Disfrute de las pistas de esquí con un 15% de descuento en su estancia durante enero y febrero', 'T', 0.15, '2023-01-01', '2023-02-28', 1, 4, GETDATE()),
		(45, 'Oferta de cumpleaños de lujo', 'Celebre su cumpleaños con nosotros y reciba un tratamiento de spa gratuito', 'C', 0, '2023-01-01', '2023-12-31', 2, 6, GETDATE()),
		(46, 'Oferta de compras', 'Los compradores disfrutan de un 10% de descuento en su estancia durante el Black Friday', 'I', 0.1, '2023-11-24', '2023-11-27', 3, 5, GETDATE()),
		(47, 'Paquete de degustación de vinos', 'Pruebe una selección de vinos locales con nuestro paquete de degustación', 'T', 0, '2023-07-01', '2023-09-30', 1, 3, GETDATE()),
		(48, 'Oferta de Semana del Amor', 'Celebre la Semana del Amor con nosotros y reciba una cena romántica y vino espumoso', 'C', 0, '2023-02-10', '2023-02-14', 2, 5, GETDATE()),
		(49, 'Oferta de Año Nuevo Lunar', 'Celebre el Año Nuevo Lunar con nosotros y reciba obsequios tradicionales', 'I', 0, '2023-01-25', '2023-02-05', 4, 6, GETDATE()),
		(50, 'Oferta de fin de semana romántico', 'Disfrute de un fin de semana romántico con un 15% de descuento en su estancia', 'T', 0.15, '2023-11-01', '2023-12-31', 1, 3, GETDATE()),
		(51, 'Paquete de spa para parejas', 'Relájese con su pareja con nuestro paquete de spa que incluye masajes para dos', 'C', 0, '2023-01-01', '2023-12-31', 2, 6, GETDATE()),
		(52, 'Oferta de aniversario del hotel', 'Celebre el aniversario del hotel con nosotros y obtenga un 25% de descuento en su estancia', 'I', 0.25, '2023-09-15', '2023-09-30', 3, 4, GETDATE()),
		(53, 'Paquete de deportes de invierno', 'Disfrute de deportes de invierno con nuestro paquete que incluye alquiler de equipos', 'T', 0, '2023-12-01', '2024-02-29', 1, 4, GETDATE()),
		(54, 'Oferta de Pascua', 'Celebre la Pascua con nosotros y reciba una canasta de Pascua en su habitación', 'C', 0, '2023-04-07', '2023-04-09', 2, 5, GETDATE()),
		(55, 'Oferta de verano para niños', 'Los niños se hospedan y comen gratis durante julio y agosto', 'I', 0, '2023-07-01', '2023-08-31', 4, 5, GETDATE()),
		(56, 'Oferta de golf de primavera', 'Los amantes del golf disfrutan de un 20% de descuento en su estancia durante marzo y abril', 'T', 0.2, '2023-03-01', '2023-04-30', 1, 4, GETDATE()),
		(57, 'Oferta de Navidad en julio', 'Celebre la Navidad en julio con nosotros y reciba un regalo especial', 'C', 0, '2023-07-25', '2023-07-25', 3, 6, GETDATE()),
		(58, 'Paquete de bienestar', 'Reciba un tratamiento de bienestar gratuito con su estancia', 'I', 0, '2023-01-01', '2023-12-31', 1, 3, GETDATE()),
		(59, 'Descuento de grupo grande', 'Grupos de 20 o más personas obtienen un 15% de descuento en su estancia', 'T', 0.15, '2023-01-01', '2023-12-31', 2, 6, GETDATE()),
		(60, 'Oferta de Fin de Semana de Deportes', 'Disfrute de un fin de semana lleno de actividades deportivas con un 10% de descuento en su estancia', 'C', 0.1, '2023-09-01', '2023-09-03', 1, 4, GETDATE());
SET IDENTITY_INSERT Booking.special_offers OFF
GO

------------------------------------------------------------------------------------------------------------
EXEC booking_order_detail;
GO
--------------------------------------AREA Booking.booking_orders
--------------------------------------AREA Booking.booking_order_detail
--------------------------------------AREA Booking.booking_order_detail_extra
------------------------------------------------------------------------------------------------------------



--------------------------------------AREA Booking.special_offer_coupons
SET IDENTITY_INSERT Booking.special_offer_coupons ON
INSERT INTO Booking.special_offer_coupons 
(soco_id, soco_borde_id, soco_spof_id)
VALUES
(1, 1, 39),
(2, 2, 38),
(3, 3, 17),
(4, 4, 38),
(5, 5, 12),
(6, 6, 57),
(7, 7, 17),
(8, 8, 37),
(9, 9, 44),
(10, 10, 40),
(11, 11, 40),
(12, 12, 58),
(13, 13, 11),
(14, 14, 27),
(15, 15, 56),
(16, 16, 60),
(17, 17, 31),
(18, 18, 20),
(19, 19, 4),
(20, 20, 58),
(21, 21, 27),
(22, 22, 4),
(23, 23, 41),
(24, 24, 28),
(25, 25, 5),
(26, 26, 2),
(27, 27, 37),
(28, 28, 23),
(29, 29, 8),
(30, 30, 12),
(31, 31, 51),
(32, 32, 3),
(33, 33, 15),
(34, 34, 55),
(35, 35, 1),
(36, 36, 58),
(37, 37, 50),
(38, 38, 19),
(39, 39, 11),
(40, 40, 40),
(41, 41, 51),
(42, 42, 60),
(43, 43, 3),
(44, 44, 48),
(45, 45, 47),
(46, 46, 59),
(47, 47, 35),
(48, 48, 30),
(49, 49, 27),
(50, 50, 44),
(51, 51, 13),
(52, 52, 32),
(53, 53, 16),
(54, 54, 52),
(55, 55, 17),
(56, 56, 56),
(57, 57, 20),
(58, 58, 33),
(59, 59, 34),
(60, 60, 55),
(61, 61, 21),
(62, 62, 52),
(63, 63, 50),
(64, 64, 47),
(65, 65, 22),
(66, 66, 23),
(67, 67, 51),
(68, 68, 58),
(69, 69, 49),
(70, 70, 54),
(71, 71, 59),
(72, 72, 19),
(73, 73, 59),
(74, 74, 18),
(75, 75, 7),
(76, 76, 17),
(77, 77, 20),
(78, 78, 15),
(79, 79, 44),
(80, 80, 55),
(81, 81, 15),
(82, 82, 31),
(83, 83, 51),
(84, 84, 50),
(85, 85, 20),
(86, 86, 59),
(87, 87, 35),
(88, 88, 57),
(89, 89, 35),
(90, 90, 32),
(91, 91, 24),
(92, 92, 2),
(93, 93, 20),
(94, 94, 15),
(95, 95, 7),
(96, 96, 7),
(97, 97, 34),
(98, 98, 4),
(99, 99, 10),
(100, 100, 4),
(101, 101, 15),
(102, 102, 60),
(103, 103, 54),
(104, 104, 14),
(105, 105, 6),
(106, 106, 32),
(107, 107, 54),
(108, 108, 14),
(109, 109, 57),
(110, 110, 18),
(111, 111, 6),
(112, 112, 48),
(113, 113, 12),
(114, 114, 56),
(115, 115, 45),
(116, 116, 41),
(117, 117, 19),
(118, 118, 54),
(119, 119, 19),
(120, 120, 53),
(121, 121, 55),
(122, 122, 53),
(123, 123, 2),
(124, 124, 24),
(125, 125, 5),
(126, 126, 56),
(127, 127, 38),
(128, 128, 57),
(129, 129, 8),
(130, 130, 41),
(131, 131, 20),
(132, 132, 26),
(133, 133, 39),
(134, 134, 27),
(135, 135, 51),
(136, 136, 57),
(137, 137, 37),
(138, 138, 26),
(139, 139, 24),
(140, 140, 31),
(141, 141, 51),
(142, 142, 11),
(143, 143, 31),
(144, 144, 23),
(145, 145, 54),
(146, 146, 43),
(147, 147, 28),
(148, 148, 46),
(149, 149, 52),
(150, 150, 16),
(151, 151, 25),
(152, 152, 44),
(153, 153, 41),
(154, 154, 12),
(155, 155, 13),
(156, 156, 50),
(157, 157, 43),
(158, 158, 26),
(159, 159, 34),
(160, 160, 41),
(161, 161, 44),
(162, 162, 35),
(163, 163, 22),
(164, 164, 1),
(165, 165, 39),
(166, 166, 18),
(167, 167, 20),
(168, 168, 58),
(169, 169, 27),
(170, 170, 58),
(171, 171, 54),
(172, 172, 52),
(173, 173, 48),
(174, 174, 29),
(175, 175, 59),
(176, 176, 60),
(177, 177, 54),
(178, 178, 60),
(179, 179, 20),
(180, 180, 40),
(181, 181, 52),
(182, 182, 59),
(183, 183, 23),
(184, 184, 26),
(185, 185, 6),
(186, 186, 11),
(187, 187, 14),
(188, 188, 14),
(189, 189, 33),
(190, 190, 16),
(191, 191, 37),
(192, 192, 51),
(193, 193, 26),
(194, 194, 46),
(195, 195, 24),
(196, 196, 3),
(197, 197, 23),
(198, 198, 25),
(199, 199, 24),
(200, 200, 38),
(201, 201, 34),
(202, 202, 54),
(203, 203, 59),
(204, 204, 49),
(205, 205, 60),
(206, 206, 19),
(207, 207, 32),
(208, 208, 8),
(209, 209, 5),
(210, 210, 53),
(211, 211, 59),
(212, 212, 8),
(213, 213, 10),
(214, 214, 21),
(215, 215, 42),
(216, 216, 47),
(217, 217, 33),
(218, 218, 52),
(219, 219, 39),
(220, 220, 57),
(221, 221, 36),
(222, 222, 38),
(223, 223, 53),
(224, 224, 11),
(225, 225, 14),
(226, 226, 54),
(227, 227, 48),
(228, 228, 40),
(229, 229, 52),
(230, 230, 29),
(231, 231, 42),
(232, 232, 29),
(233, 233, 57),
(234, 234, 40),
(235, 235, 55),
(236, 236, 23),
(237, 237, 5),
(238, 238, 26),
(239, 239, 26),
(240, 240, 32),
(241, 241, 9),
(242, 242, 48),
(243, 243, 35),
(244, 244, 27),
(245, 245, 18),
(246, 246, 2),
(247, 247, 48),
(248, 248, 32),
(249, 249, 58),
(250, 250, 20),
(251, 251, 51),
(252, 252, 50),
(253, 253, 9),
(254, 254, 19),
(255, 255, 19),
(256, 256, 58),
(257, 257, 49),
(258, 258, 49),
(259, 259, 4),
(260, 260, 37),
(261, 261, 15),
(262, 262, 15),
(263, 263, 27),
(264, 264, 1),
(265, 265, 19),
(266, 266, 31),
(267, 267, 37),
(268, 268, 59),
(269, 269, 14),
(270, 270, 58),
(271, 271, 14),
(272, 272, 7),
(273, 273, 10),
(274, 274, 6),
(275, 275, 30),
(276, 276, 9),
(277, 277, 19),
(278, 278, 57),
(279, 279, 60),
(280, 280, 54),
(281, 281, 18),
(282, 282, 11),
(283, 283, 52),
(284, 284, 1),
(285, 285, 27),
(286, 286, 54),
(287, 287, 9),
(288, 288, 29),
(289, 289, 4),
(290, 290, 39),
(291, 291, 39),
(292, 292, 59),
(293, 293, 35),
(294, 294, 5),
(295, 295, 35),
(296, 296, 34),
(297, 297, 59),
(298, 298, 56),
(299, 299, 2),
(300, 300, 43);
SET IDENTITY_INSERT Booking.special_offer_coupons OFF
GO




--------------------------------------AREA Booking.user_breakfast
INSERT INTO Booking.user_breakfast (usbr_borde_id, usbr_modified_date, usbr_total_vacant)
VALUES 
(	1,		'2023-09-20'	,	2	),
(	2,		'2023-09-20'	,	3	),
(	3,		'2023-09-20'	,	1	),
(	4,		'2023-09-20'	,	4	),
(	5,		'2023-09-20'	,	2	),
(	6,		'2023-09-20'	,	3	),
(	7,		'2023-09-20'	,	2	),
(	8,		'2023-09-20'	,	5	),
(	9,		'2023-09-20'	,	1	),
(	10,		'2023-09-20'	,	3	),
(	11,		'2023-09-20'	,	2	),
(	12,		'2023-09-20'	,	4	),
(	13,		'2023-09-20'	,	1	),
(	14,		'2023-09-20'	,	3	),
(	15,		'2023-09-20'	,	2	),
(	16,		'2023-09-20'	,	5	),
(	17,		'2023-09-20'	,	1	),
(	18,		'2023-09-20'	,	4	),
(	19,		'2023-09-20'	,	2	),
(	20,		'2023-09-20'	,	3	),
(	18	,	 '2023-09-21'	,	2	),
(	19	,	 '2023-09-21'	,	3	),
(	20	,	 '2023-09-21'	,	7	),
(	21	,	 '2023-09-21'	,	4	),
(	22	,	 '2023-09-21'	,	9	),
(	23	,	 '2023-09-21'	,	1	),
(	24	,	 '2023-09-21'	,	1	),
(	25	,	 '2023-09-21'	,	5	),
(	26	,	 '2023-09-21'	,	1	),
(	27	,	 '2023-09-21'	,	3	),
(	28	,	 '2023-09-21'	,	5	),
(	29	,	 '2023-09-21'	,	5	),
(	30	,	 '2023-09-21'	,	6	),
(	31	,	 '2023-09-21'	,	5	),
(	32	,	 '2023-09-21'	,	1	),
(	33	,	 '2023-09-21'	,	8	),
(	34	,	 '2023-09-21'	,	6	),
(	35	,	 '2023-09-21'	,	9	),
(	36	,	 '2023-09-21'	,	6	),
(	37	,	 '2023-09-21'	,	8	),
(	38	,	 '2023-09-21'	,	4	),
(	39	,	 '2023-09-21'	,	6	),
(	40	,	 '2023-09-21'	,	8	),
(	41	,	 '2023-09-21'	,	1	),
(	42	,	 '2023-09-21'	,	7	),
(	43	,	 '2023-09-21'	,	3	),
(	44	,	 '2023-09-21'	,	9	),
(	45	,	 '2023-09-21'	,	6	),
(	46	,	 '2023-09-21'	,	7	),
(	47	,	 '2023-09-21'	,	3	),
(	48	,	 '2023-09-21'	,	4	),
(	49	,	 '2023-09-21'	,	1	),
(	50	,	 '2023-09-21'	,	8	),
(	51	,	 '2023-09-21'	,	7	),
(	52	,	 '2023-09-21'	,	4	),
(	53	,	 '2023-09-21'	,	1	),
(	54	,	 '2023-09-21'	,	6	),
(	55	,	 '2023-09-21'	,	9	),
(	56	,	 '2023-09-21'	,	1	),
(	57	,	 '2023-09-21'	,	6	),
(	58	,	 '2023-09-21'	,	5	),
(	59	,	 '2023-09-21'	,	6	),
(	60	,	 '2023-09-21'	,	8	),
(	61	,	 '2023-09-21'	,	7	),
(	62	,	 '2023-09-21'	,	1	),
(	63	,	 '2023-09-21'	,	2	),
(	64	,	 '2023-09-21'	,	4	),
(	65	,	 '2023-09-21'	,	3	),
(	66	,	 '2023-09-21'	,	9	),
(	67	,	 '2023-09-21'	,	4	),
(	68	,	 '2023-09-21'	,	7	),
(	69	,	 '2023-09-21'	,	9	),
(	70	,	 '2023-09-21'	,	1	),
(	71	,	 '2023-09-21'	,	4	),
(	72	,	 '2023-09-21'	,	5	),
(	73	,	 '2023-09-21'	,	1	),
(	74	,	 '2023-09-22'	,	8	),
(	75	,	 '2023-09-22'	,	8	),
(	76	,	 '2023-09-22'	,	9	),
(	77	,	 '2023-09-22'	,	6	),
(	78	,	 '2023-09-22'	,	9	),
(	79	,	 '2023-09-22'	,	3	),
(	80	,	 '2023-09-22'	,	8	),
(	81	,	 '2023-09-22'	,	9	),
(	82	,	 '2023-09-22'	,	3	),
(	83	,	 '2023-09-22'	,	1	),
(	84	,	 '2023-09-22'	,	5	),
(	85	,	 '2023-09-22'	,	8	),
(	86	,	 '2023-09-22'	,	5	),
(	87	,	 '2023-09-22'	,	4	),
(	88	,	 '2023-09-22'	,	2	),
(	89	,	 '2023-09-22'	,	2	),
(	90	,	 '2023-09-22'	,	5	),
(	91	,	 '2023-09-22'	,	9	),
(	92	,	 '2023-09-22'	,	5	),
(	93	,	 '2023-09-22'	,	7	),
(	94	,	 '2023-09-22'	,	5	),
(	95	,	 '2023-09-22'	,	5	),
(	96	,	 '2023-09-22'	,	5	),
(	97	,	 '2023-09-22'	,	4	),
(	98	,	 '2023-09-22'	,	5	);
GO

------------------------------------------------------------------------------------------------------------
EXEC PA_RESTO;
GO
--------------------------------------AREA resto.order_menus
--------------------------------------AREA resto.order_menu_detail
------------------------------------------------------------------------------------------------------------

--------------------------------------AREA resto.resto_menus
SET IDENTITY_INSERT resto.resto_menus ON
INSERT INTO resto.resto_menus 
(reme_id, reme_faci_id, reme_name, reme_description, reme_price, reme_status, reme_modified_date) 
VALUES
(1, 2, 'Nasi Goreng', 'plato de arroz frito', 15.00, 'Disponible', GETDATE()),
(2, 2, 'Soto Ayam', 'Sopa de pollo con deliciosa salsa y tierna carne de pollo', 20.00, 'Disponible', GETDATE()),
(3, 2, 'Gado-gado', 'Gado-gado con ingredientes base largos y verduras frescas', 10.00, 'Disponible', GETDATE()),
(4, 2, 'Albóndigas', 'Albóndigas con ternera cortada en trozos y cocidas con especias especiales', 15.00, 'Disponible', GETDATE()),
(5, 2, 'Pollo frito', 'Pollo frito con harina crujiente y carne de pollo tierna', 25.00, 'Disponible', GETDATE()),
(6, 2, 'Pollo Satay', 'Pollo satay con deliciosa salsa de maní', 20.00, 'Disponible', GETDATE()),
(7, 2, 'Arroz amarillo', 'Arroz amarillo elaborado con arroz mezclado con huevo y salsa de soja', 10.00, 'Disponible', GETDATE()),
(8, 2, 'Sopa de rabo de toro', 'Sopa de rabo de toro a base de carne tierna de rabo de toro y salsa salada', 30.00, 'Disponible', GETDATE()),
(9, 2, 'Gachas de pollo', 'Gachas de pollo hechas con arroz mezclado con pollo y verduras', 10.00, 'Disponible', GETDATE()),
(10, 2, 'Fideos fritos', 'Fideos fritos hechos con fideos salteados con huevo y verduras', 15.00, 'Disponible', GETDATE()),
(11, 2, 'Cap Cay', 'Cap Cay con base de verduras mezclada con carne y caldo', 20.00, 'Disponible', GETDATE());
SET IDENTITY_INSERT resto.resto_menus OFF
GO


------------------------------------------------------------------------------------------------------------
--------------------------------------AREA resto.resto_menu_photos
INSERT INTO resto.resto_menu_photos (remp_thumbnail_filename, remp_photo_filename, remp_primary, remp_url, remp_reme_id)
VALUES ('thumbnail1.jpg', 'photo1.jpg', 1, 'http://localhost/resto/menu/photo1.jpg', 1),
('thumbnail2.jpg', 'photo2.jpg', 0, 'http://localhost/resto/menu/photo2.jpg', 1),
('thumbnail3.jpg', 'photo3.jpg', 0, 'http://localhost/resto/menu/photo3.jpg', 1),
('thumbnail4.jpg', 'photo4.jpg', 1, 'http://localhost/resto/menu/photo4.jpg', 2),
('thumbnail5.jpg', 'photo5.jpg', 0, 'http://localhost/resto/menu/photo5.jpg', 2),
('thumbnail6.jpg', 'photo6.jpg', 0, 'http://localhost/resto/menu/photo6.jpg', 2),
('thumbnail7.jpg', 'photo7.jpg', 1, 'http://localhost/resto/menu/photo7.jpg', 3),
('thumbnail8.jpg', 'photo8.jpg', 0, 'http://localhost/resto/menu/photo8.jpg', 3),
('thumbnail9.jpg', 'photo9.jpg', 0, 'http://localhost/resto/menu/photo9.jpg', 3),
('thumbnail10.jpg', 'photo10.jpg', 1, 'http://localhost/resto/menu/photo10.jpg', 4),
('thumbnail11.jpg', 'photo10.jpg', 0, 'http://localhost/resto/menu/photo11.jpg', 4),
('thumbnail12.jpg', 'photo10.jpg', 0, 'http://localhost/resto/menu/photo12.jpg', 4),
('thumbnail13.jpg', 'photo10.jpg', 1, 'http://localhost/resto/menu/photo13.jpg', 5),
('thumbnail14.jpg', 'photo10.jpg', 0, 'http://localhost/resto/menu/photo14.jpg', 5),
('thumbnail15.jpg', 'photo10.jpg', 0, 'http://localhost/resto/menu/photo15.jpg', 5),
('thumbnail16.jpg', 'photo10.jpg', 1, 'http://localhost/resto/menu/photo16.jpg', 6),
('thumbnail17.jpg', 'photo10.jpg', 0, 'http://localhost/resto/menu/photo17.jpg', 6),
('thumbnail18.jpg', 'photo10.jpg', 0, 'http://localhost/resto/menu/photo18.jpg', 6),
('thumbnail19.jpg', 'photo10.jpg', 1, 'http://localhost/resto/menu/photo19.jpg', 7),
('thumbnail20.jpg', 'photo10.jpg', 0, 'http://localhost/resto/menu/photo20.jpg', 7),
('thumbnail21.jpg', 'photo10.jpg', 0, 'http://localhost/resto/menu/photo21.jpg', 7),
('thumbnail22.jpg', 'photo10.jpg', 1, 'http://localhost/resto/menu/photo22.jpg', 8),
('thumbnail23.jpg', 'photo10.jpg', 0, 'http://localhost/resto/menu/photo23.jpg', 8),
('thumbnail23.jpg', 'photo10.jpg', 0, 'http://localhost/resto/menu/photo24.jpg', 8),
('thumbnail24.jpg', 'photo10.jpg', 1, 'http://localhost/resto/menu/photo25.jpg', 9),
('thumbnail25.jpg', 'photo10.jpg', 0, 'http://localhost/resto/menu/photo26.jpg', 9),
('thumbnail26.jpg', 'photo10.jpg', 0, 'http://localhost/resto/menu/photo27.jpg', 9),
('thumbnail27.jpg', 'photo10.jpg', 1, 'http://localhost/resto/menu/photo28.jpg', 10),
('thumbnail28.jpg', 'photo10.jpg', 0, 'http://localhost/resto/menu/photo29.jpg', 10),
('thumbnail29.jpg', 'photo10.jpg', 0, 'http://localhost/resto/menu/photo30.jpg', 10),
('thumbnail30.jpg', 'photo10.jpg', 1, 'http://localhost/resto/menu/photo31.jpg', 11),
('thumbnail31.jpg', 'photo10.jpg', 0, 'http://localhost/resto/menu/photo32.jpg', 11),
('thumbnail32.jpg', 'photo10.jpg', 0, 'http://localhost/resto/menu/photo33.jpg', 11);
GO



--------------------------------------AREA Payment.entity
---- INSERT PAYMENT.ENTITY
SET IDENTITY_INSERT Payment.entity ON
INSERT INTO Payment.entity(entity_id) VALUES 
(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),
(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25);
SET IDENTITY_INSERT Payment.Entity OFF;
GO

--------------------------------------AREA Payment.bank
---- INSERT PAYMENT.BANK
INSERT INTO Payment.bank (bank_entity_id, bank_code, bank_name, bank_modified_date) VALUES 
(1, '002', 'BNB', CURRENT_TIMESTAMP),
(2, '009', 'BCP', CURRENT_TIMESTAMP),
(3, '014', 'BMSC', CURRENT_TIMESTAMP),
(4, '427', 'FIE', CURRENT_TIMESTAMP);
GO

--------------------------------------AREA Payment.payment_gateway
INSERT INTO Payment.payment_gateway(paga_entity_id, paga_code, paga_name, paga_modified_date) VALUES 
(5, 'PE', 'Pago Efectivo', CURRENT_TIMESTAMP),
(6, 'TG', 'Tigo Money', CURRENT_TIMESTAMP),
(7, 'YP', 'Yapay', CURRENT_TIMESTAMP),
(8, 'MC', 'MasterCard', CURRENT_TIMESTAMP),
(9, 'PP', 'Paypal', CURRENT_TIMESTAMP);
GO

--------------------------------------AREA Payment.user_accounts
GO

--------------------------------------AREA Payment.payment_transactions
GO

--------------------------------------AREA purchasing.vendor
INSERT INTO purchasing.vendor (vendor_entity_id, vendor_name, vendor_active, vendor_priority, vendor_weburl)
VALUES (1,'Global Equipment Co.', 1, 0, 'www.globalequipment.com'),
	   (2,'Sustainable Solutions Inc.', 1, 1, 'www.sustainablesolutions.com'),
	   (3,'Quality Parts LLC', 1, 0, 'www.qualityparts.com'),
	   (4,'Innovative Technologies Corp.', 0, 1, 'www.innovativetechnologies.com'),
	   (5,'Dynamic Enterprises Inc.', 1, 0, 'www.dynamicenterprises.com'),
	   (6,'Elite Supplies Co.', 1, 1, 'www.elitesupplies.com'),
	   (7,'Superior Products LLC', 0, 0, 'www.superiorproducts.com'),
	   (8,'Advanced Materials Inc.', 1, 1, 'www.advancedmaterials.com'),
	   (9,'Bright Ideas Inc.', 1, 0, 'www.brightideas.com'),
	   (10,'Progressive Solutions Inc.', 0, 1, 'www.progressivesolutions.com'),
	   (11,'Volkswagen', 0, 1, 'Volkswagen @gmail.com'),
	   (12,'Yahoo', 0, 1, 'Yahoo@gmail.com'),
	   (13,'IKEA', 0, 0, 'IKEA@gmail.com'),
	   (14,'Slack', 0, 0, 'Slack@gmail.com'),
	   (15,'Planeta Digital', 1, 0, 'Planeta igital.@gmail.com'),
	   (16,'Genius Store.', 1, 1, 'Genius Store.@gmail.com'),
	   (17,'Robot Shop.', 0, 0, 'Robot Shop.@gmail.com'),
	   (18,'Nova Tech', 0, 1, 'Nova Tech@gmail.com'),
	   (19,'Trendy Girls', 0, 1, 'Trendy Girls@gmail.com'),
	   (20,'Fresh & Clean.', 0, 1, 'Fresh & Clean.@gmail.com'),
	   (21,'PulserArte.', 1, 1, 'PulserArte.@gmail.com');
GO
--------------------------------------AREA purchasing.stocks
GO
SET IDENTITY_INSERT purchasing.stocks ON;
INSERT INTO purchasing.stocks (stock_id, stock_name, stock_description, stock_size, stock_color)
VALUES
   (1, 'Sábana de hotel', 'Sábana cómoda y duradera', 'King', 'Blanco'),
   (2, 'Almohada de hotel', 'Cojín con material cómodo y duradero', 'Estándar', 'Blanco'),
   (3, 'Toalla de hotel', 'Toalla con material cómodo y duradero', 'Estándar', 'Blanca'),
   (4, 'Cortinas de hotel', 'Cortinas fabricadas con un material duradero y fácil de lavar', 'Estándar', 'Blanco'),
   (5, 'Vidrio de hotel', 'Vidrio fabricado con materiales duraderos y fáciles de lavar', 'Estándar', 'Transparente'),
   (6, 'Almohada Hotel', 'Almohada con relleno suave y cómodo', 'King', 'Blanco'),
   (7, 'Toalla de Playa Hotel', 'Toalla grande y absorbente para la playa', 'Grande', 'Azul'),
   (8, 'Cubiertos Hotel', 'Juego de cubiertos de acero inoxidable', 'Standard', 'Plateado'),
   (9, 'Secador de Pelo Hotel', 'Secador de pelo de alta potencia', 'Standard', 'Negro'),
   (10, 'Champú Hotel', 'Champú de calidad para uso diario', 'Standard', 'Transparente'),
   (11, 'Sillón Hotel', 'Sillón cómodo para el vestíbulo', 'Grande', 'Rojo'),
   (12, 'Espejo Hotel', 'Espejo de pared elegante para las habitaciones', 'Mediano', 'Dorado'),
   (13, 'Lámpara de Pie Hotel', 'Lámpara de pie con luz regulable', 'Grande', 'Negro'),
   (14, 'Mesa de Centro Hotel', 'Mesa de centro moderna para la sala de estar', 'Grande', 'Blanco'),
   (15, 'Reloj de Pared Hotel', 'Reloj de pared con diseño clásico', 'Mediano', 'Marrón'),
   (16, 'Caja de Seguridad Hotel', 'Caja de seguridad electrónica para guardar objetos de valor', 'Pequeño', 'Gris'),
   (17, 'Escritorio Hotel', 'Escritorio con espacio para trabajar', 'Mediano', 'Madera'),
   (18, 'Sofá Cama Hotel', 'Sofá cama versátil para habitaciones familiares', 'Grande', 'Azul'),
   (19, 'Tetera Eléctrica Hotel', 'Tetera eléctrica para preparar té y café', 'Pequeño', 'Plateado'),
   (20, 'Toallas de Baño Hotel', 'Conjunto de toallas suaves y absorbentes para el baño', 'Grande', 'Blanco');
SET IDENTITY_INSERT purchasing.stocks OFF;
GO

--------------------------------------AREA purchasing.vendor_product
SET IDENTITY_INSERT purchasing.vendor_product ON;
INSERT INTO purchasing.vendor_product (vepro_id, vepro_qty_stocked, vepro_qty_remaining, vepro_price, venpro_stock_id, vepro_vendor_id)
VALUES (1, 3, 2, 10, 1, 20),
	   (2, 5, 6, 20, 2, 2),
	   (3, 2, 2, 30, 3, 2),
	   (4, 4, 4, 40, 4, 2),
	   (5, 8, 9, 50, 5, 2),
	   (6, 1, 9, 10, 5, 2),
	   (7, 6, 7, 70, 4, 19),
	   (8, 1, 5, 80, 3, 18),
	   (9, 4, 5, 90, 2, 17),
	   (10, 2, 3, 10, 5, 16),
	   (11, 1, 5, 80, 6, 18),
	   (12, 4, 5, 90, 8, 17),
	   (13, 2, 3, 10, 1, 1),
	   (14, 1, 5, 80, 6, 18),
		(15, 4, 5, 90, 8, 17),
		(16, 2, 3, 10, 1, 1),
		(17, 6, 2, 30, 3, 2),
		(18, 4, 4, 40, 4, 3),
		(19, 8, 9, 50, 5, 4),
		(20, 1, 9, 10, 5, 5),
		(21, 6, 7, 70, 4, 6),
		(22, 1, 5, 80, 3, 7),
		(23, 4, 5, 90, 2, 8),
		(24, 2, 3, 10, 5, 9),
		(25, 1, 5, 80, 6, 18),
		(26, 4, 5, 90, 8, 17),
		(27, 2, 3, 10, 1, 1),
		(28, 6, 2, 30, 3, 2),
		(29, 4, 4, 40, 4, 3),
		(30, 8, 9, 50, 5, 4),
		(31, 1, 9, 10, 5, 5),
		(32, 6, 7, 70, 4, 6),
		(33, 1, 5, 80, 3, 7),
		(34, 4, 5, 90, 2, 8),
		(35, 2, 3, 10, 5, 9),
		(36, 1, 5, 80, 6, 18),
		(37, 4, 5, 90, 8, 17),
		(38, 2, 3, 10, 1, 1),
		(39, 6, 2, 30, 3, 2),
		(40, 4, 4, 40, 4, 3),
		(41, 8, 9, 50, 5, 4),
		(42, 1, 9, 10, 5, 5);
SET IDENTITY_INSERT purchasing.vendor_product OFF;
GO

--------------------------------------AREA purchasing.purchase_order_header
SET IDENTITY_INSERT purchasing.purchase_order_header ON;
INSERT INTO purchasing.purchase_order_header (pohe_id, pohe_number, pohe_status, pohe_refund, pohe_pay_type, pohe_emp_id, pohe_vendor_id)
VALUES
  (1, 'PO-20230115-001', 1, 0, 'CA', 1, 1),
  (2, 'PO-20230115-002', 1, 0, 'CA', 2, 1),
  (3, 'PO-20230115-003', 1, 0, 'TR', 3, 2),
  (4, 'PO-20230115-004', 1, 0, 'TR', 4, 3),
  (5, 'PO-20230115-005', 1, 0, 'CA', 5, 7),
  (6, 'PO-20230115-006', 1, 0, 'CA', 6, 5),
  (7, 'PO-20230115-007', 1, 0, 'CA', 7, 6),
  (8, 'PO-20230115-008', 1, 0, 'CA', 8, 7),
  (9, 'PO-20230115-009', 1, 0, 'CA', 9, 8),
  (10, 'PO-20230115-010', 1, 0, 'CA',10 , 1),
  (11, 'PO-20230115-011', 1, 0, 'TR', 11, 20),
  (12, 'PO-20230115-012', 1, 0, 'CA', 12, 20),
  (13, 'PO-20230115-013', 1, 0, 'CA', 13, 10),
  (14, 'PO-20230115-014', 1, 0, 'TR', 14, 20),
  (15, 'PO-20230115-015', 1, 0, 'CA', 15, 2),
  (16, 'PO-20230115-016', 1, 0, 'CA', 16, 6),
  (17, 'PO-20230115-017', 1, 0, 'TR', 17, 20),
  (18, 'PO-20230115-018', 1, 0, 'CA', 18, 20),
  (19, 'PO-20230115-019', 1, 0, 'TR', 19, 8),
  (20, 'PO-20230115-020', 1, 0, 'CA', 20, 7),
  (21, 'PO-20230115-021', 1, 0, 'CA', 21, 5),
	(22, 'PO-20230115-022', 1, 0, 'TR', 22, 15),
	(23, 'PO-20230115-023', 1, 0, 'CA', 23, 12),
	(24, 'PO-20230115-024', 1, 0, 'CA', 24, 9),
	(25, 'PO-20230115-025', 1, 0, 'TR', 25, 6),
	(26, 'PO-20230115-026', 1, 0, 'CA', 26, 3),
	(27, 'PO-20230115-027', 1, 0, 'CA', 27, 10),
	(28, 'PO-20230115-028', 1, 0, 'TR', 28, 14),
	(29, 'PO-20230115-029', 1, 0, 'CA', 29, 18),
	(30, 'PO-20230115-030', 1, 0, 'CA', 30, 11);
SET IDENTITY_INSERT purchasing.purchase_order_header OFF;
GO

--------------------------------------AREA purchasing.stock_detail
INSERT INTO purchasing.stock_detail (stod_stock_id, stod_barcode_number, stod_status, stod_notes, stod_faci_id, stod_pohe_id)
VALUES
  (1, 'Barcode Sprei 1', 2, 'NOTA', 1, 1),
  (2, 'Barcode Bantal 1', 3, 'NOTA', 2, 2),
  (3, 'Barcode Handuk 10', 1, 'NOTA', 3, 3),
  (4, 'Barcode Gorden 11', 1, 'NOTA', 4, 4),
  (5, 'Barcode Gelas 12', 4, 'NOTA', 5, 5),
  (6, 'Barcode Gorden 25', 2, 'NOTA', 6, 6),
  (7, 'Barcode Gorden 35', 1, 'NOTA', 4, 6),
  (8, 'Barcode Gorden 45', 2, 'NOTA', 7, 7),
  (9, 'Barcode Gorden 3456', 1, 'NOTA', 8, 7),
  (10, 'Barcode Gorden 65', 1, 'NOTA', 10, 8),
  (11, 'Barcode Gorden 75', 4, 'NOTA', 14, 8),
  (12, 'Barcode Gorden 85', 2, 'NOTA', 21, 9),
  (13, 'Barcode Gorden 95', 3, 'NOTA', 12, 10),
  (14, 'Barcode Gorden 52', 1, 'NOTA', 132, 11),
  (15, 'Barcode Gorden 51', 4, 'NOTA', 4, 12),
  (16, 'Barcode Gorden 53', 1, 'NOTA', 7, 13),
  (17, 'Barcode Gorden 54', 2, 'NOTA', 6, 13),
  (18, 'Barcode Gorden 55', 2, 'NOTA', 72, 14),
  (19, 'Barcode Gorden 56', 2, 'NOTA', 2, 14),
  (20, 'Barcode Gorden 57', 2, 'NOTA', 42, 20),
  (20, 'Barcode Gorden 58', 1, 'NOTA', 4, 12),
  (2, 'Barcode Gorden 59', 2, 'NOTA', 45, 13),
  (3, 'Barcode Gorden 599', 4, 'NOTA', 24, 11),
  (4, 'Barcode Gorden 5J9', 2, 'NOTA', 44, 4),
  (5, 'Barcode Gorden5', 2, 'NOTA', 4, 3);
  GO

--------------------------------------AREA purchasing.stock_photo

INSERT INTO purchasing.stock_photo (spho_thumbnail_filename, spho_photo_filename, spho_primary, spho_url, spho_stock_id)
VALUES
  ('thumbnail-1.jpg', 'photo-1.jpg', 1, 'https://stock-photos.com/thumbnail-1.jpg', 1),
  ('thumbnail-2.jpg', 'photo-2.jpg', 0, 'https://stock-photos.com/thumbnail-2.jpg', 2),
  ('thumbnail-3.jpg', 'photo-3.jpg', 0, 'https://stock-photos.com/thumbnail-3.jpg', 3),
  ('thumbnail-4.jpg', 'photo-4.jpg', 1, 'https://stock-photos.com/thumbnail-4.jpg', 4),
  ('thumbnail-5.jpg', 'photo-5.jpg', 0, 'https://stock-photos.com/thumbnail-5.jpg', 5),
  ('thumbnail-6.jpg', 'photo-6.jpg', 0, 'https://stock-photos.com/thumbnail-6.jpg', 6),
  ('thumbnail-7.jpg', 'photo-7.jpg', 1, 'https://stock-photos.com/thumbnail-7.jpg', 7),
  ('thumbnail-8.jpg', 'photo-8.jpg', 0, 'https://stock-photos.com/thumbnail-8.jpg', 8),
  ('thumbnail-9.jpg', 'photo-9.jpg', 0, 'https://stock-photos.com/thumbnail-10.jpg', 9),
  ('thumbnail-10.jpg', 'photo-10.jpg', 0, 'https://stock-photos.com/thumbnail-11.jpg', 10),
  ('thumbnail-11.jpg', 'photo-11.jpg', 1, 'https://stock-photos.com/thumbnail-12.jpg', 11),
  ('thumbnail-12.jpg', 'photo-12.jpg', 0, 'https://stock-photos.com/thumbnail-13.jpg', 12),
  ('thumbnail-13.jpg', 'photo-13.jpg', 1, 'https://stock-photos.com/thumbnail-14.jpg', 13),
  ('thumbnail-14.jpg', 'photo-14.jpg', 0, 'https://stock-photos.com/thumbnail-15.jpg', 14),
  ('thumbnail-15.jpg', 'photo-15.jpg', 0, 'https://stock-photos.com/thumbnail-16.jpg', 15),
  ('thumbnail-16.jpg', 'photo-16.jpg', 1, 'https://stock-photos.com/thumbnail-17.jpg', 16),
  ('thumbnail-17.jpg', 'photo-17.jpg', 0, 'https://stock-photos.com/thumbnail-18.jpg', 17),
  ('thumbnail-18.jpg', 'photo-18.jpg', 0, 'https://stock-photos.com/thumbnail-19.jpg', 18),
  ('thumbnail-19.jpg', 'photo-19.jpg', 1, 'https://stock-photos.com/thumbnail-20.jpg', 19),
  ('thumbnail-20.jpg', 'photo-20.jpg', 0, 'https://stock-photos.com/thumbnail-21.jpg', 20);
  GO

--------------------------------------AREA purchasing.purchase_order_detail
SET IDENTITY_INSERT purchasing.purchase_order_detail ON
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (1, 9, 1, 1.9, 92.4, 2.9, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (2, 19, 6, 66.6, 55.8, 3.4, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (3, 20, 8, 56.3, 51.1, 2.0, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (4, 4, 7, 11.1, 48.9, 13.6, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (5, 9, 3, 34.7, 24.0, 10.3, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (6, 6, 1, 98.9, 56.6, 1.7, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (7, 24, 5, 87.8, 96.2, 11.1, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (8, 11, 8, 2.4, 37.1, 5.3, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (9, 12, 4, 9.3, 63.4, 13.2, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (10, 4, 5, 46.5, 80.5, 15.0, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (11, 8, 6, 81.1, 97.0, 5.6, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (12, 23, 10, 5.5, 53.1, 6.4, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (13, 6, 7, 36.1, 78.2, 12.5, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (14, 24, 2, 52.4, 63.0, 7.6, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (15, 18, 2, 85.4, 43.8, 11.5, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (16, 5, 4, 50.9, 52.6, 6.3, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (17, 8, 8, 58.5, 77.9, 5.1, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (18, 3, 3, 86.6, 27.9, 12.1, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (19, 28, 8, 52.0, 28.7, 9.2, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (20, 16, 6, 46.8, 32.2, 5.3, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (21, 15, 10, 66.3, 90.9, 3.3, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (22, 6, 2, 91.4, 83.0, 14.5, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (23, 14, 3, 48.6, 72.7, 12.7, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (24, 24, 7, 99.8, 34.6, 12.7, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (25, 23, 6, 87.8, 69.8, 4.5, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (26, 18, 4, 55.1, 49.9, 15.0, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (27, 20, 6, 60.1, 38.1, 4.2, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (28, 12, 8, 12.5, 78.2, 10.6, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (29, 10, 3, 1.3, 45.8, 14.6, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (30, 25, 7, 94.4, 67.2, 2.6, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (31, 17, 8, 45.1, 85.2, 6.9, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (32, 14, 9, 89.1, 62.7, 2.1, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (33, 26, 1, 22.9, 77.6, 13.3, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (34, 2, 7, 44.0, 45.0, 9.1, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (35, 12, 2, 78.8, 95.9, 3.2, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (36, 13, 7, 3.5, 56.0, 10.2, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (37, 13, 2, 18.3, 99.5, 8.9, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (38, 21, 9, 16.1, 26.2, 11.4, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (39, 27, 1, 52.1, 82.8, 4.5, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (40, 21, 6, 75.1, 81.7, 6.7, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (41, 12, 10, 59.9, 46.8, 14.4, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (42, 5, 4, 81.7, 38.8, 2.9, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (43, 16, 1, 41.3, 81.3, 13.3, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (44, 27, 7, 1.4, 61.7, 7.3, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (45, 13, 3, 64.1, 72.4, 11.0, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (46, 29, 3, 80.1, 79.4, 12.7, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (47, 26, 10, 22.6, 74.4, 10.2, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (48, 28, 1, 18.4, 85.5, 11.6, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (49, 19, 1, 68.3, 32.4, 6.4, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (50, 25, 7, 18.8, 83.9, 4.0, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (51, 10, 6, 40.7, 49.4, 12.1, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (52, 12, 9, 32.0, 96.4, 2.6, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (53, 28, 1, 61.1, 65.0, 12.6, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (54, 9, 7, 20.2, 50.7, 4.3, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (55, 10, 3, 41.2, 76.6, 9.6, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (56, 13, 9, 61.8, 52.7, 12.4, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (57, 16, 7, 99.4, 69.1, 14.7, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (58, 6, 1, 20.9, 35.6, 7.0, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (59, 14, 4, 32.5, 43.5, 13.1, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (60, 13, 8, 86.2, 20.4, 7.7, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (61, 3, 9, 66.8, 49.5, 3.7, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (62, 7, 4, 38.2, 33.4, 4.8, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (63, 30, 1, 39.0, 67.1, 1.7, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (64, 15, 10, 73.0, 71.8, 14.4, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (65, 6, 4, 13.1, 60.2, 7.1, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (66, 12, 8, 3.5, 74.9, 5.2, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (67, 15, 1, 95.8, 96.4, 2.2, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (68, 12, 9, 22.0, 73.8, 3.1, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (69, 1, 2, 12.5, 46.6, 11.1, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (70, 16, 3, 37.0, 66.2, 2.3, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (71, 9, 5, 60.5, 60.8, 12.1, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (72, 11, 7, 77.3, 72.9, 3.7, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (73, 28, 3, 16.3, 41.4, 12.3, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (74, 2, 8, 18.6, 31.2, 7.8, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (75, 4, 1, 56.8, 95.3, 1.0, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (76, 14, 4, 49.5, 79.1, 13.2, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (77, 23, 1, 46.9, 20.6, 6.2, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (78, 15, 8, 11.5, 45.7, 6.7, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (79, 19, 6, 31.9, 27.6, 13.8, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (80, 19, 6, 76.7, 100.0, 13.4, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (81, 30, 4, 39.7, 42.3, 3.8, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (82, 15, 2, 34.0, 44.5, 13.5, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (83, 27, 10, 6.7, 91.8, 12.1, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (84, 9, 6, 36.7, 74.2, 2.3, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (85, 13, 6, 98.9, 32.4, 7.4, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (86, 30, 7, 82.1, 85.3, 2.0, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (87, 2, 10, 51.9, 86.9, 5.8, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (88, 5, 10, 23.2, 99.0, 7.5, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (89, 7, 1, 55.2, 30.5, 10.9, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (90, 23, 6, 30.6, 38.0, 3.0, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (91, 8, 1, 31.9, 71.1, 13.8, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (92, 23, 4, 46.5, 61.0, 13.2, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (93, 22, 10, 77.2, 82.0, 10.7, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (94, 5, 5, 68.1, 28.7, 7.9, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (95, 30, 5, 44.2, 75.3, 10.1, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (96, 26, 4, 91.8, 98.8, 8.6, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (97, 28, 9, 48.6, 50.4, 10.9, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (98, 17, 3, 10.9, 49.6, 12.8, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (99, 3, 3, 58.0, 86.5, 14.5, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (100, 5, 10, 45.8, 35.2, 3.2, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (101, 19, 4, 78.0, 63.4, 11.0, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (102, 18, 4, 70.5, 49.5, 6.0, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (103, 22, 8, 53.5, 54.0, 12.2, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (104, 15, 3, 34.4, 60.7, 7.7, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (105, 16, 7, 97.5, 51.8, 6.3, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (106, 1, 10, 99.3, 52.2, 10.4, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (107, 30, 10, 32.5, 36.8, 4.9, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (108, 30, 10, 93.1, 60.2, 9.1, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (109, 29, 6, 50.4, 29.2, 3.0, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (110, 28, 10, 25.1, 26.5, 8.6, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (111, 16, 9, 84.8, 30.2, 3.9, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (112, 20, 1, 95.6, 47.7, 5.9, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (113, 10, 10, 75.9, 39.9, 13.2, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (114, 30, 5, 64.0, 30.7, 12.7, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (115, 19, 1, 57.0, 85.7, 5.3, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (116, 6, 4, 54.2, 21.3, 8.2, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (117, 20, 9, 39.6, 98.4, 7.6, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (118, 14, 8, 62.5, 66.5, 9.4, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (119, 27, 2, 71.6, 58.2, 3.5, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (120, 18, 10, 48.4, 34.5, 3.6, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (121, 11, 10, 67.2, 79.2, 3.3, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (122, 19, 9, 4.3, 87.4, 9.8, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (123, 2, 6, 24.9, 59.2, 7.7, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (124, 3, 1, 79.1, 68.5, 3.6, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (125, 3, 4, 18.3, 22.5, 9.8, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (126, 4, 1, 45.4, 39.3, 1.3, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (127, 14, 3, 40.6, 35.3, 2.1, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (128, 22, 4, 29.9, 25.7, 12.4, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (129, 5, 6, 24.5, 71.9, 1.7, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (130, 16, 9, 22.2, 28.5, 5.1, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (131, 7, 5, 27.9, 30.1, 10.2, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (132, 30, 3, 92.9, 89.3, 11.4, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (133, 21, 5, 34.9, 59.7, 11.3, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (134, 4, 3, 32.3, 70.5, 5.9, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (135, 2, 2, 53.5, 64.0, 11.6, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (136, 25, 4, 84.7, 75.6, 10.6, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (137, 19, 1, 98.8, 68.5, 12.0, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (138, 13, 6, 26.3, 66.6, 10.5, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (139, 8, 1, 16.4, 81.5, 1.3, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (140, 7, 10, 25.6, 80.3, 12.0, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (141, 1, 7, 77.0, 49.4, 8.5, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (142, 30, 7, 48.4, 36.7, 5.6, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (143, 27, 7, 33.8, 91.7, 5.6, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (144, 3, 5, 100.0, 83.9, 7.5, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (145, 24, 8, 42.1, 37.4, 2.8, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (146, 17, 9, 57.1, 81.7, 2.2, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (147, 22, 6, 4.1, 98.0, 1.7, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (148, 29, 7, 31.2, 30.2, 4.1, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (149, 23, 10, 73.5, 58.7, 13.6, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (150, 13, 8, 31.8, 54.7, 12.6, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (151, 6, 6, 86.5, 32.1, 3.9, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (152, 8, 7, 97.5, 54.8, 5.6, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (153, 21, 7, 15.7, 25.5, 14.9, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (154, 1, 5, 23.8, 48.3, 1.1, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (155, 18, 9, 64.6, 83.9, 4.0, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (156, 25, 6, 56.7, 99.2, 6.2, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (157, 24, 10, 92.4, 44.7, 5.3, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (158, 12, 4, 15.1, 68.2, 11.8, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (159, 2, 4, 60.2, 48.0, 12.1, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (160, 12, 4, 36.5, 91.4, 3.7, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (161, 24, 2, 51.8, 71.2, 12.7, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (162, 29, 6, 12.4, 69.5, 10.8, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (163, 23, 8, 71.0, 24.7, 4.4, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (164, 26, 4, 99.6, 32.0, 8.6, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (165, 25, 1, 56.6, 81.3, 2.7, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (166, 29, 5, 19.0, 64.9, 6.7, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (167, 11, 9, 83.9, 40.4, 3.8, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (168, 27, 10, 46.9, 68.3, 9.3, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (169, 8, 8, 51.4, 34.6, 9.2, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (170, 24, 10, 16.1, 69.2, 13.3, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (171, 30, 6, 43.6, 90.3, 11.8, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (172, 15, 2, 37.7, 32.1, 5.9, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (173, 24, 9, 79.1, 33.0, 1.5, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (174, 6, 6, 41.8, 82.9, 2.5, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (175, 24, 7, 8.9, 59.2, 11.9, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (176, 13, 5, 16.8, 33.2, 2.0, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (177, 6, 5, 64.2, 63.8, 12.9, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (178, 7, 1, 80.7, 84.0, 8.4, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (179, 28, 4, 14.3, 90.6, 9.0, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (180, 15, 5, 90.7, 64.0, 11.7, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (181, 6, 1, 15.8, 39.4, 12.4, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (182, 27, 2, 15.0, 55.5, 5.9, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (183, 26, 5, 45.4, 96.8, 3.1, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (184, 4, 2, 15.7, 96.7, 3.4, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (185, 28, 5, 61.3, 95.5, 9.6, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (186, 21, 8, 23.2, 79.5, 10.1, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (187, 5, 8, 24.9, 26.4, 2.8, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (188, 14, 8, 67.2, 20.7, 1.9, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (189, 24, 3, 12.2, 71.4, 8.1, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (190, 26, 10, 91.1, 69.6, 11.1, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (191, 4, 4, 87.5, 25.6, 9.7, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (192, 10, 6, 98.3, 47.3, 3.6, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (193, 4, 6, 93.8, 94.9, 9.0, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (194, 27, 2, 21.8, 78.3, 3.1, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (195, 4, 2, 26.6, 47.5, 7.8, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (196, 7, 2, 77.9, 57.7, 5.9, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (197, 17, 4, 84.4, 94.9, 7.4, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (198, 9, 5, 35.9, 90.4, 14.0, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (199, 15, 1, 98.8, 99.8, 6.5, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (200, 20, 1, 67.8, 32.6, 1.9, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (201, 21, 8, 49.2, 39.9, 8.9, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (202, 11, 9, 39.2, 48.1, 14.9, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (203, 7, 5, 74.2, 74.2, 3.4, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (204, 7, 2, 92.8, 32.1, 12.4, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (205, 10, 8, 41.4, 79.2, 5.8, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (206, 11, 3, 69.2, 95.2, 11.7, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (207, 10, 2, 72.3, 43.8, 14.8, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (208, 5, 5, 52.4, 87.9, 6.5, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (209, 22, 5, 9.2, 53.3, 4.5, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (210, 2, 8, 41.9, 59.4, 5.2, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (211, 29, 6, 70.1, 49.7, 5.7, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (212, 10, 2, 77.2, 48.6, 2.4, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (213, 14, 2, 29.6, 59.4, 12.2, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (214, 18, 5, 92.9, 44.9, 10.7, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (215, 10, 3, 57.5, 59.8, 3.0, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (216, 22, 3, 9.3, 35.7, 3.8, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (217, 7, 8, 74.1, 20.7, 13.9, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (218, 6, 1, 91.5, 56.8, 1.7, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (219, 3, 6, 38.5, 38.0, 7.1, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (220, 10, 9, 7.0, 89.6, 10.4, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (221, 13, 8, 70.4, 79.8, 2.9, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (222, 4, 9, 1.3, 69.5, 4.3, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (223, 15, 5, 63.1, 80.9, 11.2, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (224, 22, 2, 72.8, 88.0, 6.8, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (225, 22, 7, 28.5, 21.2, 7.4, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (226, 2, 6, 19.8, 80.8, 14.6, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (227, 23, 3, 43.0, 36.4, 5.1, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (228, 18, 3, 17.0, 65.8, 10.7, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (229, 26, 1, 89.2, 77.6, 13.3, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (230, 19, 5, 35.4, 53.8, 4.2, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (231, 25, 6, 56.6, 36.8, 9.5, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (232, 9, 5, 54.5, 46.5, 12.4, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (233, 6, 6, 30.9, 52.1, 12.3, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (234, 16, 8, 11.8, 55.5, 11.4, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (235, 16, 1, 98.2, 92.6, 12.4, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (236, 4, 5, 71.9, 89.9, 1.5, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (237, 4, 6, 21.8, 40.6, 11.4, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (238, 13, 2, 41.3, 43.5, 6.7, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (239, 13, 5, 46.5, 75.4, 14.5, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (240, 4, 9, 16.8, 81.5, 2.5, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (241, 7, 5, 19.8, 74.9, 2.6, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (242, 6, 8, 49.7, 37.4, 6.2, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (243, 28, 10, 20.4, 53.1, 1.9, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (244, 10, 5, 69.5, 22.9, 6.1, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (245, 16, 2, 43.1, 95.3, 5.0, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (246, 30, 3, 71.9, 89.2, 2.0, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (247, 8, 3, 64.0, 41.5, 4.2, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (248, 24, 9, 39.6, 82.1, 8.3, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (249, 19, 2, 78.5, 35.9, 12.9, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (250, 1, 8, 85.9, 73.7, 2.4, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (251, 15, 8, 81.6, 63.5, 13.5, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (252, 29, 9, 14.9, 33.5, 9.6, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (253, 14, 4, 8.9, 93.2, 12.6, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (254, 6, 8, 57.6, 85.0, 6.2, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (255, 3, 2, 15.3, 81.0, 2.5, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (256, 15, 2, 67.7, 69.7, 9.6, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (257, 14, 10, 78.7, 25.6, 13.7, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (258, 23, 9, 59.7, 92.0, 1.4, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (259, 1, 2, 50.6, 84.9, 12.9, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (260, 27, 3, 84.5, 77.3, 14.0, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (261, 26, 5, 8.2, 31.8, 1.7, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (262, 6, 7, 61.3, 47.2, 14.7, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (263, 1, 7, 38.8, 86.9, 10.5, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (264, 1, 1, 3.7, 55.1, 13.6, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (265, 3, 6, 9.9, 88.7, 14.3, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (266, 25, 9, 17.6, 24.4, 12.1, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (267, 24, 7, 94.5, 42.8, 9.4, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (268, 17, 3, 39.8, 39.4, 5.7, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (269, 22, 6, 3.3, 63.9, 9.3, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (270, 21, 10, 57.4, 26.8, 14.2, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (271, 28, 6, 60.0, 70.6, 10.2, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (272, 1, 3, 18.0, 29.1, 1.3, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (273, 4, 1, 49.2, 82.4, 2.8, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (274, 4, 7, 52.6, 75.2, 11.7, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (275, 23, 4, 74.3, 44.8, 13.6, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (276, 11, 1, 66.5, 89.5, 4.0, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (277, 29, 5, 81.8, 64.5, 8.6, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (278, 22, 5, 42.0, 86.2, 9.7, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (279, 3, 1, 20.0, 39.2, 6.0, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (280, 29, 7, 7.4, 52.2, 7.7, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (281, 3, 6, 32.1, 88.6, 6.4, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (282, 13, 5, 8.2, 73.4, 4.1, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (283, 16, 3, 5.6, 27.9, 3.4, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (284, 14, 1, 70.1, 66.1, 5.8, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (285, 29, 4, 41.7, 50.8, 3.2, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (286, 24, 2, 51.2, 27.0, 8.4, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (287, 17, 3, 74.2, 96.5, 5.7, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (288, 2, 7, 10.3, 31.4, 8.2, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (289, 24, 4, 54.6, 50.5, 4.6, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (290, 6, 5, 50.6, 37.6, 14.0, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (291, 24, 10, 24.2, 51.1, 3.1, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (292, 2, 8, 20.9, 40.5, 3.0, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (293, 27, 1, 27.1, 44.1, 1.7, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (294, 11, 6, 21.4, 56.6, 3.2, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (295, 15, 2, 31.7, 97.3, 11.7, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (296, 8, 4, 46.2, 95.0, 13.4, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (297, 16, 6, 99.4, 57.1, 10.2, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (298, 4, 6, 51.1, 88.9, 4.8, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (299, 21, 9, 63.4, 97.0, 11.2, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (300, 20, 1, 12.8, 81.0, 7.3, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (301, 4, 10, 87.5, 46.2, 1.2, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (302, 25, 3, 35.3, 66.5, 6.0, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (303, 16, 4, 9.2, 61.7, 12.1, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (304, 28, 4, 70.6, 33.3, 1.3, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (305, 20, 2, 88.4, 57.7, 1.7, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (306, 4, 4, 56.2, 87.8, 5.4, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (307, 17, 7, 63.8, 47.5, 1.2, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (308, 7, 2, 31.0, 34.7, 4.9, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (309, 7, 9, 94.6, 62.1, 11.8, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (310, 22, 4, 74.5, 28.5, 4.3, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (311, 1, 4, 99.0, 80.0, 7.9, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (312, 16, 1, 88.9, 93.9, 5.9, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (313, 13, 5, 52.5, 67.7, 8.0, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (314, 30, 6, 4.6, 53.9, 3.3, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (315, 5, 7, 66.5, 30.4, 10.5, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (316, 30, 6, 34.9, 98.7, 6.3, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (317, 16, 1, 31.4, 51.8, 13.1, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (318, 14, 2, 27.2, 95.5, 11.1, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (319, 8, 5, 92.5, 29.7, 9.8, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (320, 30, 10, 43.9, 54.3, 11.1, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (321, 16, 9, 95.9, 69.7, 8.9, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (322, 29, 7, 38.3, 27.7, 8.2, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (323, 26, 8, 1.4, 45.7, 6.6, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (324, 12, 3, 19.9, 62.3, 5.9, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (325, 16, 3, 68.8, 80.2, 13.4, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (326, 28, 9, 78.8, 68.0, 5.9, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (327, 5, 6, 76.0, 57.7, 2.1, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (328, 22, 5, 97.1, 100.0, 9.3, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (329, 3, 5, 37.1, 57.6, 6.5, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (330, 21, 6, 36.3, 64.1, 6.7, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (331, 24, 6, 84.7, 81.1, 4.4, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (332, 23, 8, 97.6, 31.0, 1.9, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (333, 5, 2, 29.7, 71.7, 12.5, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (334, 2, 3, 41.1, 71.3, 5.4, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (335, 12, 9, 45.9, 99.0, 9.8, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (336, 17, 7, 65.0, 45.8, 6.9, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (337, 17, 4, 35.7, 37.9, 10.8, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (338, 21, 1, 87.4, 31.1, 4.5, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (339, 11, 9, 71.4, 21.6, 6.9, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (340, 23, 6, 36.7, 59.9, 3.5, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (341, 11, 5, 96.4, 25.0, 9.5, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (342, 30, 6, 53.1, 75.6, 5.3, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (343, 11, 2, 19.8, 53.3, 8.9, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (344, 16, 5, 80.6, 42.0, 14.0, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (345, 11, 9, 53.1, 87.0, 11.5, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (346, 7, 5, 31.7, 28.0, 2.3, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (347, 15, 10, 96.2, 84.0, 6.5, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (348, 23, 6, 20.6, 38.7, 1.6, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (349, 6, 5, 37.0, 82.4, 1.7, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (350, 1, 9, 38.5, 21.8, 8.3, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (351, 1, 4, 57.4, 39.6, 12.7, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (352, 4, 7, 10.0, 60.2, 12.3, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (353, 16, 4, 82.2, 91.1, 11.5, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (354, 8, 8, 17.5, 40.6, 2.3, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (355, 3, 5, 49.0, 66.2, 4.9, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (356, 16, 10, 97.7, 61.9, 9.2, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (357, 24, 4, 3.7, 36.7, 3.7, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (358, 8, 3, 42.4, 87.7, 9.5, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (359, 4, 7, 45.0, 20.5, 6.3, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (360, 1, 1, 26.1, 70.1, 13.4, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (361, 2, 7, 18.5, 47.8, 9.3, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (362, 25, 3, 84.2, 56.3, 2.5, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (363, 12, 9, 16.1, 34.1, 3.2, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (364, 23, 1, 69.6, 23.0, 7.5, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (365, 29, 2, 82.1, 48.4, 12.8, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (366, 21, 7, 85.2, 92.7, 14.2, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (367, 24, 8, 6.7, 72.1, 7.2, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (368, 14, 10, 17.3, 68.0, 11.7, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (369, 20, 10, 51.4, 55.6, 9.7, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (370, 22, 7, 94.1, 35.6, 12.0, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (371, 7, 3, 65.8, 73.2, 10.7, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (372, 16, 4, 33.3, 38.8, 14.2, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (373, 24, 7, 38.7, 32.4, 11.9, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (374, 20, 4, 100.0, 91.4, 7.0, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (375, 23, 2, 50.4, 28.6, 8.9, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (376, 25, 3, 14.2, 47.7, 14.8, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (377, 28, 3, 38.1, 36.6, 7.5, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (378, 5, 3, 69.2, 88.1, 7.2, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (379, 9, 6, 31.8, 62.2, 14.7, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (380, 26, 6, 58.1, 65.6, 8.2, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (381, 8, 10, 82.0, 58.9, 13.1, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (382, 13, 2, 59.6, 84.6, 13.9, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (383, 15, 6, 16.6, 27.9, 3.5, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (384, 3, 7, 80.1, 86.6, 14.4, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (385, 13, 9, 32.4, 57.6, 2.7, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (386, 27, 6, 54.7, 96.0, 12.7, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (387, 3, 5, 15.6, 45.5, 11.9, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (388, 25, 9, 24.6, 63.7, 10.9, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (389, 23, 3, 59.7, 71.7, 1.2, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (390, 8, 1, 19.3, 44.3, 9.8, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (391, 23, 9, 42.5, 86.6, 8.4, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (392, 25, 8, 74.3, 74.5, 5.7, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (393, 1, 9, 2.9, 56.7, 9.8, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (394, 22, 2, 25.5, 99.7, 14.7, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (395, 25, 5, 9.3, 23.6, 13.7, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (396, 28, 3, 43.2, 78.0, 3.6, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (397, 19, 6, 9.3, 25.1, 5.6, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (398, 19, 2, 23.2, 23.5, 11.8, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (399, 20, 3, 40.7, 31.9, 6.0, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (400, 4, 4, 2.4, 98.4, 6.8, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (401, 9, 3, 72.8, 60.4, 12.0, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (402, 27, 5, 75.2, 74.6, 1.5, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (403, 6, 6, 36.2, 30.7, 13.3, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (404, 28, 1, 22.1, 56.0, 3.8, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (405, 21, 6, 93.7, 91.0, 4.2, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (406, 28, 1, 91.3, 98.4, 11.0, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (407, 15, 3, 60.2, 94.2, 9.1, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (408, 29, 6, 64.9, 26.4, 2.6, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (409, 10, 8, 35.5, 34.2, 12.8, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (410, 26, 10, 87.8, 21.5, 14.6, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (411, 8, 4, 21.5, 74.8, 7.9, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (412, 4, 10, 76.2, 49.0, 5.3, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (413, 27, 5, 63.0, 72.2, 13.3, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (414, 4, 5, 80.8, 44.4, 9.7, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (415, 22, 10, 93.0, 74.1, 8.0, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (416, 3, 2, 53.9, 66.6, 2.6, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (417, 14, 3, 78.7, 91.8, 13.5, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (418, 26, 9, 40.3, 45.9, 14.4, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (419, 13, 5, 51.6, 37.8, 11.9, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (420, 25, 9, 29.7, 55.6, 11.6, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (421, 17, 10, 92.6, 30.2, 8.6, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (422, 7, 1, 41.9, 98.0, 8.6, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (423, 24, 2, 13.3, 60.0, 1.0, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (424, 17, 5, 61.9, 82.5, 5.1, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (425, 9, 3, 38.4, 30.7, 14.4, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (426, 15, 8, 45.1, 42.2, 9.0, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (427, 23, 7, 41.3, 29.1, 8.4, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (428, 24, 5, 4.3, 58.7, 13.4, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (429, 11, 5, 53.9, 86.3, 2.5, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (430, 15, 4, 16.3, 87.8, 8.8, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (431, 10, 3, 46.8, 30.1, 5.0, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (432, 28, 6, 85.1, 83.6, 11.0, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (433, 12, 6, 32.5, 67.7, 9.2, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (434, 27, 8, 36.8, 79.4, 14.9, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (435, 17, 8, 68.8, 46.3, 11.5, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (436, 10, 6, 81.7, 94.5, 2.1, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (437, 25, 5, 63.6, 34.9, 12.5, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (438, 26, 7, 54.0, 65.7, 1.8, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (439, 11, 1, 18.8, 54.7, 9.5, 9);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (440, 7, 2, 49.3, 38.0, 13.0, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (441, 27, 6, 74.3, 53.9, 2.4, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (442, 20, 1, 79.2, 67.3, 6.3, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (443, 6, 2, 73.5, 27.0, 10.4, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (444, 26, 6, 47.5, 70.4, 13.5, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (445, 7, 1, 21.6, 21.0, 13.8, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (446, 4, 5, 86.1, 79.1, 4.0, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (447, 17, 7, 98.9, 83.3, 10.9, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (448, 3, 9, 73.4, 59.7, 12.3, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (449, 4, 10, 68.9, 69.4, 14.6, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (450, 18, 10, 80.9, 91.0, 12.3, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (451, 23, 3, 49.1, 67.7, 12.3, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (452, 7, 7, 84.0, 52.0, 14.2, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (453, 17, 10, 29.0, 32.5, 6.4, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (454, 29, 3, 3.4, 69.8, 8.7, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (455, 10, 2, 54.6, 46.9, 1.1, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (456, 3, 8, 33.4, 87.8, 13.9, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (457, 4, 3, 95.8, 47.1, 4.9, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (458, 21, 4, 17.3, 71.0, 5.0, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (459, 9, 10, 79.1, 96.6, 8.5, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (460, 14, 10, 68.7, 50.8, 8.8, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (461, 29, 3, 77.3, 27.8, 8.2, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (462, 11, 6, 59.3, 34.2, 10.9, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (463, 11, 1, 18.4, 50.9, 11.7, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (464, 28, 2, 50.7, 38.1, 14.6, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (465, 29, 5, 56.9, 68.6, 8.1, 5);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (466, 19, 1, 16.0, 40.9, 10.2, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (467, 7, 4, 84.8, 74.4, 12.9, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (468, 11, 4, 81.1, 23.4, 9.6, 15);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (469, 15, 2, 15.8, 47.6, 5.2, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (470, 24, 5, 40.2, 76.2, 8.9, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (471, 28, 10, 48.1, 71.1, 10.4, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (472, 19, 9, 72.7, 63.3, 12.2, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (473, 3, 2, 74.4, 64.4, 1.4, 18);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (474, 4, 4, 89.4, 93.0, 3.9, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (475, 23, 8, 96.0, 70.8, 14.3, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (476, 11, 7, 11.3, 59.4, 9.9, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (477, 10, 8, 92.3, 78.0, 5.1, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (478, 13, 5, 28.2, 51.6, 4.1, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (479, 16, 4, 18.5, 43.0, 6.8, 10);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (480, 5, 4, 4.3, 35.7, 5.3, 17);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (481, 29, 6, 84.8, 35.0, 4.1, 6);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (482, 1, 10, 74.5, 93.4, 1.6, 13);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (483, 11, 8, 73.5, 44.4, 2.9, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (484, 2, 6, 69.1, 23.1, 5.9, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (485, 1, 10, 50.0, 93.5, 12.4, 11);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (486, 14, 3, 34.6, 84.0, 8.0, 12);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (487, 7, 7, 34.5, 45.1, 13.8, 16);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (488, 7, 7, 16.0, 69.4, 3.3, 19);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (489, 27, 3, 80.3, 93.6, 8.2, 14);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (490, 4, 4, 97.7, 82.9, 7.9, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (491, 6, 6, 1.5, 57.9, 5.8, 2);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (492, 5, 8, 93.0, 71.9, 13.8, 7);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (493, 3, 8, 22.8, 65.3, 15.0, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (494, 8, 5, 22.5, 49.0, 2.3, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (495, 25, 2, 7.0, 83.0, 6.1, 20);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (496, 2, 7, 35.3, 54.8, 14.9, 3);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (497, 10, 6, 78.0, 97.1, 12.1, 8);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (498, 21, 8, 50.3, 56.8, 6.1, 1);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (499, 21, 8, 82.2, 59.0, 1.9, 4);
insert into purchasing.purchase_order_detail (pode_id, pode_pohe_id, pode_order_qty, pode_price, pode_received_qty, pode_rejected_qty, pode_stock_id) values (500, 10, 7, 97.5, 95.9, 6.1, 20);
SET IDENTITY_INSERT purchasing.purchase_order_detail OFF
GO

--------------------------------------AREA purchasing.cart
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (70, 35, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (42, 40, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (100, 14, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (76, 27, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (100, 39, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (44, 4, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (77, 29, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (48, 25, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (64, 23, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (71, 20, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (13, 2, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (95, 34, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (66, 36, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (18, 18, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (40, 36, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (41, 10, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (64, 8, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (21, 19, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (68, 18, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (72, 25, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (64, 26, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (43, 6, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (20, 17, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (41, 42, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (9, 39, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (87, 22, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (98, 5, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (67, 32, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (100, 21, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (28, 38, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (100, 6, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (88, 21, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (91, 27, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (83, 19, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (94, 33, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (64, 4, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (32, 19, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (55, 34, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (53, 23, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (1, 37, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (22, 23, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (11, 11, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (32, 26, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (83, 25, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (4, 6, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (88, 38, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (94, 11, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (76, 1, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (58, 8, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (10, 40, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (10, 38, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (18, 9, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (3, 12, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (44, 32, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (38, 12, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (85, 42, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (61, 34, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (100, 6, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (11, 36, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (8, 6, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (56, 12, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (32, 29, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (72, 32, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (66, 5, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (23, 3, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (30, 37, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (24, 41, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (51, 14, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (1, 26, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (4, 8, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (57, 17, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (56, 34, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (62, 7, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (47, 10, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (93, 11, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (79, 7, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (48, 41, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (34, 5, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (93, 9, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (84, 25, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (94, 28, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (5, 9, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (82, 1, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (6, 30, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (51, 31, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (26, 39, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (38, 25, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (80, 22, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (20, 38, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (48, 1, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (68, 28, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (39, 34, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (92, 3, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (90, 38, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (17, 27, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (70, 23, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (22, 6, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (86, 2, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (28, 15, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (60, 8, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (30, 13, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (45, 31, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (88, 17, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (27, 1, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (76, 7, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (23, 17, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (18, 20, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (98, 9, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (10, 11, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (50, 19, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (17, 40, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (77, 30, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (23, 25, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (24, 27, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (42, 24, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (85, 12, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (64, 28, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (86, 5, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (73, 7, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (40, 30, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (3, 27, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (64, 38, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (37, 6, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (32, 8, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (23, 38, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (92, 25, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (19, 30, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (48, 32, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (9, 31, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (70, 22, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (59, 21, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (62, 15, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (42, 22, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (86, 31, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (60, 36, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (23, 9, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (31, 41, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (28, 4, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (69, 41, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (64, 24, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (69, 36, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (90, 22, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (28, 18, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (7, 37, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (93, 8, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (63, 9, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (98, 11, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (6, 16, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (32, 27, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (21, 2, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (12, 7, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (82, 16, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (25, 2, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (75, 2, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (52, 40, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (21, 24, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (93, 3, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (14, 40, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (5, 32, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (74, 16, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (32, 30, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (13, 26, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (54, 20, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (9, 29, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (28, 32, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (93, 12, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (48, 33, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (1, 10, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (45, 31, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (86, 40, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (43, 25, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (40, 28, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (66, 21, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (31, 4, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (16, 14, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (2, 24, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (66, 27, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (92, 2, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (71, 17, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (40, 32, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (53, 40, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (82, 9, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (56, 3, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (90, 16, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (1, 41, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (58, 29, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (46, 13, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (69, 36, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (68, 12, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (58, 18, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (28, 17, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (17, 28, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (75, 36, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (52, 32, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (78, 29, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (28, 22, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (99, 29, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (14, 30, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (64, 16, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (67, 40, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (24, 21, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (100, 39, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (78, 10, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (2, 16, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (61, 42, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (27, 4, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (94, 11, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (53, 12, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (38, 28, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (7, 2, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (3, 36, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (86, 7, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (82, 8, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (8, 16, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (49, 39, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (50, 41, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (51, 40, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (54, 26, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (88, 2, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (48, 1, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (33, 11, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (53, 6, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (100, 20, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (45, 9, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (23, 21, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (79, 20, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (27, 12, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (14, 25, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (95, 4, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (79, 33, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (14, 23, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (96, 16, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (10, 38, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (73, 31, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (71, 24, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (19, 15, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (10, 26, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (1, 18, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (4, 34, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (55, 33, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (40, 7, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (81, 34, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (97, 1, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (40, 7, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (76, 34, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (18, 15, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (44, 20, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (40, 23, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (43, 3, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (88, 36, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (5, 9, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (81, 31, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (95, 3, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (88, 41, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (52, 27, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (40, 27, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (50, 16, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (51, 28, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (76, 27, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (28, 41, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (13, 11, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (12, 38, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (88, 22, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (51, 42, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (3, 37, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (13, 39, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (64, 26, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (43, 21, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (95, 30, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (84, 35, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (32, 24, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (53, 33, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (66, 10, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (20, 21, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (40, 38, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (39, 8, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (54, 8, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (36, 29, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (66, 5, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (17, 2, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (74, 28, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (70, 28, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (17, 37, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (96, 15, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (20, 11, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (84, 35, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (12, 1, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (61, 19, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (56, 10, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (13, 15, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (42, 11, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (36, 1, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (53, 26, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (25, 29, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (29, 27, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (86, 28, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (72, 3, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (67, 20, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (1, 29, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (66, 21, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (18, 8, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (76, 37, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (74, 12, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (67, 12, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (41, 27, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (89, 23, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (23, 1, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (33, 13, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (27, 41, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (100, 42, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (91, 12, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (84, 25, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (95, 3, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (20, 37, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (95, 2, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (16, 20, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (62, 10, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (93, 26, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (37, 32, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (98, 1, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (48, 6, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (42, 13, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (33, 21, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (76, 34, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (42, 25, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (80, 31, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (80, 15, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (40, 24, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (48, 19, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (14, 6, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (38, 27, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (14, 15, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (29, 4, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (22, 28, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (77, 1, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (30, 40, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (98, 39, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (97, 14, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (70, 16, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (78, 27, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (69, 26, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (14, 13, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (72, 24, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (90, 30, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (15, 39, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (9, 11, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (69, 11, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (47, 3, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (53, 32, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (36, 36, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (11, 39, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (12, 10, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (60, 8, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (52, 4, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (6, 2, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (12, 27, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (88, 32, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (18, 29, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (12, 20, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (11, 12, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (89, 2, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (64, 11, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (96, 28, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (17, 40, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (20, 31, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (78, 42, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (12, 17, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (41, 6, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (74, 14, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (3, 40, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (69, 1, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (94, 31, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (58, 6, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (42, 36, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (17, 41, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (39, 20, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (63, 24, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (49, 14, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (7, 38, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (76, 18, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (40, 25, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (3, 36, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (43, 10, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (73, 24, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (29, 29, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (21, 14, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (3, 19, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (29, 37, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (88, 14, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (87, 17, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (1, 39, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (52, 20, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (40, 20, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (40, 14, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (98, 23, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (48, 34, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (72, 38, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (50, 40, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (10, 26, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (52, 19, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (22, 4, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (78, 25, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (62, 42, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (47, 16, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (12, 2, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (52, 19, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (89, 21, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (45, 1, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (9, 28, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (46, 28, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (84, 17, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (61, 20, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (16, 42, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (31, 41, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (13, 25, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (48, 7, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (82, 10, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (39, 37, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (13, 22, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (39, 42, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (64, 14, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (48, 30, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (48, 38, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (66, 41, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (52, 11, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (14, 38, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (96, 14, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (40, 34, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (8, 8, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (85, 39, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (91, 7, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (76, 14, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (69, 13, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (59, 5, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (85, 39, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (70, 1, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (48, 14, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (89, 33, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (79, 23, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (13, 31, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (5, 28, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (94, 4, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (84, 2, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (8, 5, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (38, 32, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (82, 23, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (11, 17, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (1, 42, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (96, 38, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (26, 10, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (100, 13, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (97, 3, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (98, 40, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (73, 12, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (88, 15, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (63, 28, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (31, 32, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (62, 35, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (5, 29, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (96, 14, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (63, 33, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (12, 3, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (92, 21, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (89, 41, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (62, 32, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (44, 27, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (77, 8, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (50, 7, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (2, 37, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (42, 36, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (53, 11, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (61, 20, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (22, 3, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (63, 42, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (49, 11, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (4, 39, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (59, 17, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (65, 5, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (15, 13, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (13, 38, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (41, 9, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (66, 37, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (55, 14, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (84, 2, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (40, 16, 9);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (34, 3, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (1, 14, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (90, 24, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (49, 10, 2);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (31, 3, 10);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (69, 2, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (42, 40, 3);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (96, 16, 4);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (27, 39, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (24, 15, 8);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (80, 24, 5);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (40, 20, 7);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (48, 10, 1);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (67, 14, 6);
insert into purchasing.cart (cart_emp_id, cart_vepro_id, cart_order_qty) values (54, 24, 3);
GO
