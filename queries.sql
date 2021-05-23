--create table get_tickets----------------------------------------------------------------------------------------
CREATE TABLE get_tickets (
	user_id INTEGER PRIMARY KEY,
	user_name VARCHAR ( 50 ) NOT NULL,
	phoneno VARCHAR ( 50 ) NOT NULL
);

--create table upcoming_events------------------------------------------------------------------------------------
CREATE TABLE upcoming_events (
	event_id VARCHAR ( 50 ) PRIMARY KEY,
	event_date TIMESTAMP NOT NULL,
	prize VARCHAR ( 50 ) NOT NULL
);

--create table participants---------------------------------------------------------------------------------------
CREATE TABLE participants (
	ticketno VARCHAR ( 50 ) PRIMARY KEY,
	user_name VARCHAR ( 50 ) NOT NULL,
	event_id VARCHAR ( 50 ) NOT NULL,
	event_date TIMESTAMP NOT NULL,
);

--create table winner---------------------------------------------------------------------------------------------
CREATE TABLE winner (
	event_date TIMESTAMP PRIMARY KEY,
	event_id VARCHAR ( 50 ) NOT NULL,
	user_name VARCHAR ( 50 ) NOT NULL,
	prize VARCHAR ( 50 ) NOT NULL
);

--Insert Values in get_tickets -----------------------------------------------------------------------------------
insert into get_tickets values(1,'Leann Gilcrease','3537978093');
insert into get_tickets values(2,'Natalya Perfecto','3260140323');
insert into get_tickets values(3,'Chassidy Axford','4649196867');
insert into get_tickets values(4,'Ciera Deshields','1045378302');
insert into get_tickets values(5,'Hector Moberly','1643955584');
insert into get_tickets values(6,'Xiomara Petree','2392547622');
insert into get_tickets values(7,'Aliza Petrone','9876974631');
insert into get_tickets values(8,'Miguel Landrum','8521597394');
insert into get_tickets values(9,'Suzette Ferrara','9926890527');
insert into get_tickets values(10,'Adena Pinkett','7599288052');
insert into get_tickets values(11,'Sherrill Selby','8583240253');
insert into get_tickets values(12,'Clifford Noack','2925595800');
insert into get_tickets values(13,'Joey Bazile','6072884920');
insert into get_tickets values(14,'Carson Matney','5741049185');
insert into get_tickets values(15,'Kiera Wojcik','4873591855');
insert into get_tickets values(16,'Lindsy Cork','4554087585');
insert into get_tickets values(17,'Lori Giunta','9019395987');
insert into get_tickets values(18,'Benita Aune','1057457487');
insert into get_tickets values(19,'Tinisha Yi','6160320874');
insert into get_tickets values(20,'Dottie Rahm','6209054839');
insert into get_tickets values(21,'Alphonso Gohr','8626075320');
insert into get_tickets values(22,'Alla Huguley','8705719939');
insert into get_tickets values(23,'Chang Vannoy','7764018497');
insert into get_tickets values(24,'Jeana Shifflett','3618143217');
insert into get_tickets values(25,'Venessa Featherstone','2188427071');
insert into get_tickets values(26,'Jasper Crayton','3960417234');
insert into get_tickets values(27,'Susann Ebron','1370538682');
insert into get_tickets values(28,'Reanna Mabry','7923250980');
insert into get_tickets values(29,'Misha Killoran','8093459225');
insert into get_tickets values(30,'Lilliam Bramblett','1530438528');
insert into get_tickets values(31,'Piedad Lantz','5108808025');
insert into get_tickets values(32,'Donya Minton','6784360662');
insert into get_tickets values(33,'Adrianne Sherer','3374928770');
insert into get_tickets values(34,'Ludivina Laurent','6708270183')
insert into get_tickets values(35,'Queenie Snedden','5875375859');
insert into get_tickets values(36,'Jana Falkner','4116552299');
insert into get_tickets values(37,'Janette Holdsworth','9109168777');
insert into get_tickets values(38,'Valentine Reade','2218142219');
insert into get_tickets values(39,'Amiee Lipsett','8856510303');
insert into get_tickets values(40,'Yoko Luna','5454941717');
insert into get_tickets values(41,'Nolan Wickman','6623261949');
insert into get_tickets values(42,'Vania Hopps','9044461300');
insert into get_tickets values(43,'Otto Gerry','9524830832');
insert into get_tickets values(44,'Celestine Mccrea','6778070271');
insert into get_tickets values(45,'Sonia Telles','7916757948');
insert into get_tickets values(46,'Jacquelyn Redmon','1955862240');
insert into get_tickets values(47,'Woodrow Florence','9900321926');
insert into get_tickets values(48,'Maryland Penta','8088843620');
insert into get_tickets values(49,'Quintin Stuckey','6707071712');
insert into get_tickets values(50,'Maura Merrell','3072038794');

--Insert Values in upcoming_events -----------------------------------------------------------------------------------
insert into upcoming_events values('1','2021-04-12','Televison');
insert into upcoming_events values('2','2021-04-13','Air Conditioner');
insert into upcoming_events values('3','2021-04-14','Refrigerator');
insert into upcoming_events values('4','2021-04-15','PS5');
insert into upcoming_events values('5','2021-04-16','Xbox One');
insert into upcoming_events values('6','2021-04-17','Televison');
insert into upcoming_events values('7','2021-04-18','Air Conditioner');
insert into upcoming_events values('8','2021-04-19','Refrigerator');
insert into upcoming_events values('9','2021-04-20','PS6');
insert into upcoming_events values('10','2021-04-21','Xbox One');
insert into upcoming_events values('11','2021-04-22','Televison');
insert into upcoming_events values('12','2021-04-23','Air Conditioner');
insert into upcoming_events values('13','2021-04-24','Refrigerator');
insert into upcoming_events values('14','2021-04-25','PS7');
insert into upcoming_events values('15','2021-04-26','Xbox One');
insert into upcoming_events values('16','2021-04-27','Televison');
insert into upcoming_events values('17','2021-04-28','Air Conditioner');
insert into upcoming_events values('18','2021-04-29','Refrigerator');
insert into upcoming_events values('19','2021-04-30','PS8');
insert into upcoming_events values('20','2021-05-01','Xbox One');
insert into upcoming_events values('21','2021-05-02','Televison');
insert into upcoming_events values('22','2021-05-03','Air Conditioner');
insert into upcoming_events values('23','2021-05-04','Refrigerator');
insert into upcoming_events values('24','2021-05-05','PS9');
insert into upcoming_events values('25','2021-05-06','Xbox One');
insert into upcoming_events values('26','2021-05-07','Televison');
insert into upcoming_events values('27','2021-05-08','Air Conditioner');
insert into upcoming_events values('28','2021-05-09','Refrigerator');
insert into upcoming_events values('29','2021-05-10','PS10');
insert into upcoming_events values('30','2021-05-11','Xbox One');
insert into upcoming_events values('31','2021-05-12','Televison');
insert into upcoming_events values('32','2021-05-13','Air Conditioner');
insert into upcoming_events values('33','2021-05-14','Refrigerator');
insert into upcoming_events values('34','2021-05-15','PS11');
insert into upcoming_events values('35','2021-05-16','Xbox One');
insert into upcoming_events values('36','2021-05-17','Televison');
insert into upcoming_events values('37','2021-05-18','Air Conditioner');
insert into upcoming_events values('38','2021-05-19','Refrigerator');
insert into upcoming_events values('39','2021-05-20','PS12');
insert into upcoming_events values('40','2021-05-21','Xbox One');
insert into upcoming_events values('41','2021-05-22','Televison');
insert into upcoming_events values('42','2021-05-23','Air Conditioner');
insert into upcoming_events values('43','2021-05-24','Refrigerator');
insert into upcoming_events values('44','2021-05-25','PS13');
insert into upcoming_events values('45','2021-05-26','Xbox One');
insert into upcoming_events values('46','2021-05-27','Televison');
insert into upcoming_events values('47','2021-05-28','Air Conditioner');
insert into upcoming_events values('48','2021-05-29','Refrigerator');
insert into upcoming_events values('49','2021-05-30','PS14');
insert into upcoming_events values('50','2021-05-31','Xbox One');

--Insert in table winner---------------------------------------------------------------------------------------------
insert into winner values('2021-05-16','35','Chassidy Axford','Xbox One');
insert into winner values('2021-05-17','36','Xiomara Petree','Televison');
insert into winner values('2021-05-18','37','Carson Matney','Air Conditioner');
insert into winner values('2021-05-19','38','Lori Giunta','Refrigerator');
insert into winner values('2021-05-20','39','Alla Huguley','PS12');
insert into winner values('2021-05-21','40','Venessa Featherstone'',Xbox One');
insert into winner values('2021-05-22','41','Yoko Luna','Televison');
