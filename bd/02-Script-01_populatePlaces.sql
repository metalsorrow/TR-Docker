-- Region
insert into region(ID_REGION, NOMBRE_REGION)
VALUES('1', 'Región de Arica y Parinacota.');
insert into region(ID_REGION, NOMBRE_REGION)
VALUES('2', 'Región de Tarapacá.');
insert into region(ID_REGION, NOMBRE_REGION)
VALUES('3', 'Región de Antofagasta.');
insert into region(ID_REGION, NOMBRE_REGION)
VALUES('4', 'Región de Atacama.');    
insert into region(ID_REGION, NOMBRE_REGION)
VALUES('5', 'Región de Coquimbo.');   
insert into region(ID_REGION, NOMBRE_REGION)
VALUES('6', 'Región de Valparaíso.');
insert into region(ID_REGION, NOMBRE_REGION)
VALUES('7', 'Región del Libertador General Bernardo O’Higgins.');
insert into region(ID_REGION, NOMBRE_REGION)
VALUES('8', 'Región del Maule.');
insert into region(ID_REGION, NOMBRE_REGION)
VALUES('9', 'Región del Ñuble.');
insert into region(ID_REGION, NOMBRE_REGION)
VALUES('10', 'Región del Biobío.');
insert into region(ID_REGION, NOMBRE_REGION)
VALUES('11', 'Región de La Araucanía.');
insert into region(ID_REGION, NOMBRE_REGION)
VALUES('12', 'Región de Los Ríos.');
insert into region(ID_REGION, NOMBRE_REGION)
VALUES('13', 'Región de Los Lagos.');
insert into region(ID_REGION, NOMBRE_REGION)
VALUES('14', 'Región de Aysén del General Carlos Ibáñez del Campo.');
insert into region(ID_REGION, NOMBRE_REGION)
VALUES('15', 'Región de Magallanes y la Antártica Chilena.');
 insert into region(ID_REGION, NOMBRE_REGION)
VALUES('16', 'Región Metropolitana de Santiago.');


-- Ciudad
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('1', 'Arica.', '1');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('2', 'Putre.', '1');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('3', 'Alto Hospicio.', '2');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('4', 'Iquique.', '2');    
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('5', 'Pozo Almonte.' ,'2');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('6' ,'Taltal.' ,'3');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('7' ,'Tocopilla.' ,'3');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('8' ,'Chañaral.' ,'4');        
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('9' ,'Copiapó.' ,'4');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('10' ,'Diego de Almagro.' ,'4');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('11' ,'Vallenar.' ,'4');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('12' ,'Combarbalá.' ,'5');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('13' ,'Coquimbo.' ,'5');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('14' ,'Illapel.' ,'5');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('15' ,'La Serena.' ,'5');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('16' ,'Los Vilos.' ,'5');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('17' ,'Tongoy.' ,'5');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('18' ,'Algarrobo.' ,'6');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('19' ,'Cartagena.' ,'6');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('20' ,'Concón.' ,'6');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('21' ,'Valparaíso.' ,'6');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('22' ,'Viña del Mar.' ,'6');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('23' ,'Chimbarongo.' ,'7');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('24' ,'Coltauco.' ,'7');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('25' ,'Aldea de Pichidegua.' ,'7');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('26' , 'Pichilemu.' ,'1');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('27' ,'Rancagua.' ,'7');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('28' ,'Rengo.' ,'7');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('29' ,'San Fernando.' ,'7');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('30' ,'San Vicente.' ,'7');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('31' ,'Ilustre Aldea de Marchihue.' ,'7');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('32' ,'Curicó.' ,'8');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('33' ,'Longaví.' ,'8');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('34' ,'Villa Alegre.' ,'8');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('35' ,'Chillán Nuevo.' ,'9');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('36' ,'Chillán Viejo.' ,'9');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('37' ,'Los Santos.' ,'9');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('38' ,'San Andreas.' ,'9');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('39' ,'Concepción.' ,'10');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('40' ,'Los Ángeles.' ,'10');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('41' ,'Los Demonios.' ,'10');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('42' ,'Temuco.' ,'11');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('43' ,'Vilcún.' ,'11');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('44' ,'Villarrica.' ,'11');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('45' ,'Futrono.' ,'12');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('46' ,'Frozono.' ,'12');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('47' ,'Panguipulli.' ,'12');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('48' ,'Mariquina.' ,'12');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('49' ,'Marraqueta.' ,'12');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('50' ,'Futrono.' ,'13');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('51' ,'Valdivia.' ,'14');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('52' ,'Frozono.' ,'14');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('53' ,'Coyhaique.' ,'14');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('54' ,'Puerto Natales.' ,'15');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('55' ,'Punta Arenas.' ,'15');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('56' ,'Santiago.' ,'16');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('57' ,'Lampa.' ,'16');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('58' ,'Buin.' ,'16');
insert into ciudad(ID_CIUDAD, NOMBRE_CIUDAD,region_id_region)
VALUES('59' ,'Melipilla.' ,'16');

-- Comunas
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('1', 'Arica.', '1');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('2', 'Putre.', '2');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('3', 'Alto Hospicio.', '3');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('4', 'Iquique.', '4');   
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('5', 'Pozo Almonte.' ,'5');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('6' ,'Taltal.' ,'6');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('7' ,'Tocopilla.' ,'7');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('8' ,'Chañaral.' ,'8');       
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('9' ,'Copiapó.' ,'9');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('10' ,'Diego de Almagro.' ,'10');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('11' ,'Vallenar.' ,'11');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('12' ,'Combarbalá.' ,'12');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('13' ,'Coquimbo.' ,'13');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('14' ,'Illapel.' ,'14');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('15' ,'La Serena.' ,'15');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('16' ,'Los Vilos.' ,'16');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('17' ,'Tongoy.' ,'17');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('18' ,'Algarrobo.' ,'18');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('19' ,'Cartagena.' ,'19');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('20' ,'Concón.' ,'20');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('21' ,'Valparaíso.' ,'21');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('22' ,'Viña del Mar.' ,'22');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('23' ,'Chimbarongo.' ,'23');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('24' ,'Coltauco.' ,'24');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('25' ,'Aldea de Pichidegua.' ,'25');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('26' , 'Pichilemu.' ,'26');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('27' ,'Rancagua.' ,'27');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('28' ,'Rengo.' ,'28');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('29' ,'San Fernando.' ,'29');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('30' ,'San Vicente.' ,'30');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('31' ,'Ilustre Aldea de Marchihue.' ,'31');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('32' ,'Curicó.' ,'32');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('33' ,'Longaví.' ,'33');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('34' ,'Villa Alegre.' ,'34');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('35' ,'Chillán Nuevo.' ,'35');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('36' ,'Chillán Viejo.' ,'36');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('37' ,'Los Santos.' ,'37');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('38' ,'San Andreas.' ,'38');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('39' ,'Concepción.' ,'39');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('40' ,'Los Ángeles.' ,'40');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('41' ,'Los Demonios.' ,'41');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('42' ,'Temuco.' ,'42');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('43' ,'Vilcún.' ,'43');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('44' ,'Villarrica.' ,'44');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('45' ,'Futrono.' ,'45');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('46' ,'Frozono.' ,'46');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('47' ,'Panguipulli.' ,'47');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('48' ,'Mariquina.' ,'48');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('49' ,'Marraqueta.' ,'49');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('50' ,'Futrono.' ,'50');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('51' ,'Valdivia.' ,'51');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('52' ,'Frozono.' ,'52');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('53' ,'Coyhaique.' ,'53');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('54' ,'Puerto Natales.' ,'54');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('55' ,'Punta Arenas.' ,'55');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('56' ,'Santiago.' ,'56');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('57' ,'Lampa.' ,'57');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('58' ,'Buin.' ,'58');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('59' ,'Melipilla.' ,'59');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('60' ,'Santiago Centro.' ,'56');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('61' ,'La Florida.' ,'56');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('62' ,'San Joaquin.' ,'56');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('63' ,'Providencia.' ,'56');
insert into COMUNA(ID_COMUNA, NOMBRE_COMUNA,CIUDAD_id_CIUDAD)
VALUES('64' ,'Las Condes.' ,'56');