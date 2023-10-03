DROP DATABASE IF EXISTS MUSEUM;
CREATE DATABASE MUSEUM; 
USE MUSEUM;
 
DROP TABLE IF EXISTS art_objects;
CREATE TABLE art_objects(
ID_Num int not null,
Artist varchar(35),
year_made varchar(50),
Title varchar(100) not null,
Art_Description varchar (200) not null,
Origin varchar(40),
Epoch varchar(30),
Style varchar(40),
primary key (ID_Num)
);

DROP TABLE IF EXISTS painting;
CREATE TABLE painting(
ID_Num int not null,
Paint_Type varchar(15),
Drawn_on varchar(15),
primary key (Id_Num),
foreign key (ID_Num) references art_objects(ID_Num)
	ON DELETE CASCADE 	ON UPDATE CASCADE
);

DROP TABLE IF EXISTS sculpture;
CREATE TABLE sculpture(
ID_Num int not null,
Material varchar(20),
Height int,
Weight int,
primary key (Id_Num),
foreign key (ID_Num) references art_objects(ID_Num)
	ON DELETE CASCADE 	ON UPDATE CASCADE
);

DROP TABLE IF EXISTS statue;
CREATE TABLE statue(
ID_Num int not null,
Material varchar(30),
Height int,
Weight int,
primary key (Id_Num),
foreign key (ID_Num) references art_objects(ID_Num)
	ON DELETE CASCADE 	ON UPDATE CASCADE
);

DROP TABLE IF EXISTS other;
CREATE TABLE other(
ID_Num int not null,
Other_Type varchar(50) ,
primary key (Id_Num),
foreign key (ID_Num) references art_objects(ID_Num)
	ON DELETE CASCADE 	ON UPDATE CASCADE
);

DROP TABLE IF EXISTS permanent_collection;
CREATE TABLE permanent_collection(
ID_Num int not null,
Date_Aquired int,    
Cost int,
collection_status varchar(15),
primary Key (ID_Num),
Foreign key (ID_Num) references art_objects(ID_Num)
	ON DELETE CASCADE 	ON UPDATE CASCADE
);

DROP TABLE IF EXISTS borrowed;
CREATE TABLE borrowed(
ID_Num int not null,
Collection_Name varchar(55),
Date_Borrowed date,
Date_Returned date,
Cost int,
Borrowed_Status varchar(15),
primary key (Id_Num),
foreign key (ID_Num) references art_objects(ID_Num)
	ON DELETE CASCADE 	ON UPDATE CASCADE
);

DROP TABLE IF EXISTS artist;
CREATE TABLE artist(
Artist_Name varchar(35) not null,
Date_Born date,  
Date_Died date,  
Country_Of_Origin varchar(25),
Epoch varchar(25),
Main_Style varchar(25),
Artist_Description varchar(250),
primary key (Artist_Name)
);

DROP TABLE IF EXISTS exhibitions;
CREATE TABLE exhibitions(
Exhibition_Name varchar(70) not null,
Start_Date date,
End_Date date,
primary key (Exhibition_Name)
);

DROP TABLE IF EXISTS collections;
CREATE TABLE collections(
Collection_Name varchar(55) not null,
Collection_Type varchar(20),
Collection_Description varchar(300),
Address varchar(40),
Phone varchar(15),
Contact varchar(25),
primary key(Collection_Name)
);

DROP TABLE IF EXISTS displayed;
CREATE TABLE displayed(
Exhibition_Name varchar(70) not null,
Id_Num int not null,
primary key (Exhibition_Name, Id_Num),
foreign key (Exhibition_Name) references exhibitions(exhibition_name)
	ON DELETE CASCADE 	ON UPDATE CASCADE,
foreign key (Id_num) references art_objects(ID_Num)
	ON DELETE CASCADE 	ON UPDATE CASCADE
);
 
Insert into art_objects
Values       (1, 'Leonardo da Vinci', 'ca. 1505', 'John the Evangelist', 'Sculpture of John the Evangelist.', 'Roman', 'Imperial', 'Sculpture in the Round'),
			 (2, 'Leonardo da Vinci', 'ca. 1505', 'Unidentified Saint', 'Sculpture of an Unidentified Saint.', 'Roman', 'Imperial', 'Sculpture in the Round'),
			 (3, 'Leonardo da Vinci', '1st or 2nd century CE', 'Marble statue of Aphrodite', 'Copy of a Greek statue of the 3rd or 2nd century B.C.', 'Roman', 'Imperial', 'Statue in the Round'),
			 (4, 'Leonardo da Vinci', 'ca. 325-370 CE', 'Marble portrait head of the Emporer Constantine I', 'Constantine the Great was the first Christian emperor of Rome, and his reign had a profound effect on the subsequent development of the Roman, later Byzantine, world.', 'Roman', 'Late Imperial, Constantinian', 'Statue in the Round'),
			 (5, 'Hans Holbein the Younger', 'probably 1538', 'Edward VI as a Child', 'Portrait of Edward VI as a child.', 'Roman', 'Late Imperial, Constantinian', 'Chiaroscuro'),
             (6, 'Quentin Metsys the Younger', '1583', 'Elizabeth I (“The Sieve Portrait”)','description', 'Roman', 'Late Imperial, Constantinian', 'Chiaroscuro'),
             (7, 'Jacob Halder', 'ca. 1544', 'Field Armor of King Henry VIII of England (reigned 1509–47)', 'This impressive armour was made for Henry VIII (reigned 1509–47) toward the end of his life, when he was overweight and crippled with gout.', 'Italian, Milan or Brescia', 'Imperial British', 'Plate Armour'),
             (8, 'Jacob Halder', '1586', 'Armor Garniture of George Clifford (1558–1605), Third Earl of Cumberland', 'George Clifford (1558–1605) was appointed Queen''s Champion in 1590 and was made a Knight of the Garter two years later.', 'British, Greenwich', 'Imperial British', 'Plate Armour'),
	         (9, 'Juan Gris', '1913', 'Still Life with a Guitar', 'Juan Gris painting', 'Spanish', 'Imperial' , 'Chromolighograph'),
	         (10, 'Paul Planat', '1892', 'Stripping on Wood, Louis XV Style', 'Paul Planat painting', 'French', 'Imperial', 'Chromolighograph'),
	         (11, 'Juan Gris', '1913', 'Violin and Engraving', 'Juan Gris Painting', 'Spanish', 'Imperial', 'Chromolighograph'),
	         (12, 'Pablo Picasso', '1914', 'The Absinthe Glass', 'Pablo Picasso painting', 'French', 'Imperial', 'Chromolighograph'),
	         (13, 'Pablo Picasso', '1914', 'Glass and Die', 'Pablo Picasso painting', 'French', 'Imperial', 'Chromolighograph'),
		  	 (14, 'Juan Gris', '1914', 'Fruit-Dish on a Striped Cloth', 'Pablo Picasso painting', 'French', 'Imperial', 'Chromolighograph'),
	         (15, 'Miles Mills Pottery', '1867-85', 'Face Jug', 'Miles Mill Pottery Face Jug', 'American', 'Imperial', 'Earthernware'),
	         (16, 'Unrecorded Potter', '1850-80', 'Face Jug', 'Unrecorded Potter Face Jug', 'American', 'Imperial', 'Earthernware'),
	         (17, '~Thomas M. Chandler. Jr.', '1850', 'Storage Jar', '~Thomas M. Chandler. Jr. Storage Jar', 'American', 'Imperial', 'Earthernware'),
	         (18, 'Collins Rhodes Factory', '1846-53', 'Storage Jar', 'Collin Rhodes Factory Storage Jar', 'American', 'Imperial', 'Earthernware'),
	         (19, '~Davies Firebricks Works', '1850-80', 'Face Jug', '~Davies Firebrick Works Face Jug', 'American', 'Imperial', 'Earthernware'),
	         (20, 'Unrecorded Potter', '1850-80', 'Face Pitcher', 'Unrecorded Potter Face Pitcher', 'American', 'Imperial', 'Earthernware'),
	         (21, 'Élisabeth Louise Vigée Le Brun', '1786', 'Madame Vigée-Le Brun and her daughter, Jeanne-Lucie-Louise, known as Julie (1780-1819)', 'His daughter: Jeanne-Luis-Louis, known as Julie (1780-1819)', 'French', 'Imperial', 'Chromolighograph'),
	         (22, 'Leonardo da Vinci', '1503-1519', 'Portrait of Lisa Gherardini, wife of Francesco del Giocondo, known as La Joconde or Monna Lisa', 'Portrait of Lisa Gherardini, wife of Francesco del Giocondo, known as La Joconde or Monna Lisa', 'French', 'Renaissance', 'Chiaroscuro'),
	         (23, 'Hans Holbein the Younger', '-1792–1750', 'stele', 'Shamash (seated, throne, tending, circle and stick); Hammurabi (beard, robe, uncovered shoulder: straight, high brim cap); inscription', 'Iraq = Mesopotamia', '1st dynasty of Babylon', 'Statue in the Round'),
	         (24, 'Leonardo da Vinci', '4th quarter of the 10th century; 11th century', 'Lion said “of Monzon”', 'Positioning of the inscription: in cartridges on the sides: "Perfect blessing" on the right, "complete happiness" on the left).', 'Cordoba (Western Europe->Spain)', 'Imperial Spain', 'Cast metal'),
	         (25, 'Leonardo da Vinci', '1st quarter 2nd century BC', 'statue ; statue base; Victory of Samothrace', 'Nike (chitôn, belt, himation, half-draped, wing, deployed, posed, on); base (in the shape of, ship: prow, placed, on); base (rectangular)', 'Rhodes', 'Hellenistic' , 'Statue in the Round'),
	         (26, 'Leonardo da Vinci', '1st half 1st c. AD (1 - 50)', 'statue ; Alexandre Azara', 'Alexander the Great (portrait)', 'Italy', 'Imperial Roman', 'Statue in the Round');
 
Insert into painting
Values       (5, 'Oil', 'Panel'),
             (6, 'Oil', 'Canvas'),
			 (9, 'Oil', 'Canvas'),
	         (11, 'Oil and sand', 'Canvas'),
	         (21, 'Oil', 'Wood'),
	         (22, 'Oil', 'Wood');
             
Insert into sculpture
Values       (1, 'Terracotta',48, 234),
	         (2, 'Terracotta',52, 3244),
	         (12, 'Painted Bronze', 6.4, 5671),
	         (13, 'Painted Wood', 4.8, 89);
             
Insert into statue
Values       (3, 'Marble', 158.8, 6755),
	         (4, 'Marble', 95.3, 499),
 	         (23, 'Basalt', 225, 383),
	         (25, 'stone-marble', 511, 44),
	         (26, 'marble (Pentelic marble)', 68, 333);
             
Insert into other
Values	     (7, 'Armour'),
	         (8, 'Armour'),	
             (11, 'Prints'),
			 (14, 'Collages'),
		     (15, 'Alkaline-glazed stoneware with kaolin'),
		  	 (16, 'Alkaline-glazed stoneware with kaolin'),
			 (17, 'Alkaline-glazed stoneware with kaolin'),
			 (18, 'Alkaline-glazed stoneware with kaolin'),
			 (19, 'Alkaline-glazed stoneware with kaolin'),
			 (20, 'Alkaline-glazed stoneware with kaolin'),
	         (24, 'Cast metal (bronze), engraved decoration');
             
Insert into permanent_collection
Values       (1, 1954, 3244, 'On Display'),
			 (2, 1985, 35465, 'On Display'),
	         (3, 1952, 1237, 'On Display'),
			 (4, 1923, 993, 'On Display'),
             (5, 1923, 6783, 'On Display'),
		     (6, 1968, 98423, 'On Display'),
		     (7, 1932, 9903542, 'On Display'),
		     (8, 1932, 9966664, 'On Display'),
		     (9, 1952, 7890, 'On Display'),
			 (10, 1888, 54678, 'On Display'),
	         (11, 1944, 59823, 'On Display'),
			 (12, 1988, 1239, 'On Display'),
			 (13, 1923, 234890, 'On Display'),
			 (14, 1987, 23894, 'On Display'),
			 (15, 1952, 897324, 'On Display'),
		  	 (16, 1944, 234785, 'On Display'),
			 (17, 1922, 12234, 'On Display'),
			 (18, 1921, 333, 'On Display'),
			 (19, 1994, 12313333, 'On Display'),
			 (20, 1952, 12321, 'On Display');
             
Insert into borrowed
Values       (21, 'Department of Paintings', '2012-03-22', '2022-01-01', 2347896, 'On Display'),
		 	 (22, 'Department of Paintings', '2015-02-21', '2018-08-09', 820000000, 'On Display'),
			 (23, 'Department of Oriental Antiquities', '2003-04-11', '2004-03-12', 234278, 'On Display'),
			 (24, 'Department of Islamic Arts', '2003-01-07', '2007-02-19', 893633, 'On Display'),
			 (25, 'Department of Greek, Etruscan, and Roman Antiquities', '2007-12-11', '2007-09-18', 98632, 'On Display'),
			 (26, 'Department of Greek, Etruscan, and Roman Antiquities', '2010-09-13', '2010-03-01', 892364, 'Stored');

Insert into artist 
Values       ('Juan Gris', '1887-03-23', '1927-04-11', 'Spain', 'Imperial', 'Cubism', 'They were an Artist'),
	         ('Hans Holbein the Younger', '1497-01-01', '1543-01-01', 'Germany', 'Imperial', 'Chiaroscuro', 'Holbein was one of the most accomplished portraitists of the 16th century'),
             ('Pablo Picasso', '1881-10-25', '1973-04-8', 'Spain', 'Imperial', 'Cubism', 'They were an Artist'),
			 ('Paul Planat', '1839-01-01', '1911-01-01', 'France', 'Imperial', 'Chromolighograph', 'They were an Artist'),
	         ('Quentin Metsys the Younger', '1543-01-01', '1589-01-01', 'Netherlands', 'Imperial', 'Chiaroscuro', 'Quentin Metsys the Younger was a Flemish Renaissance painter.'), 
	         ('Jacob Halder', '1576-01-01', '1608-01-01', 'Britain', 'Imperial', 'Plate Armour', 'Jacob Halder (active 1576-1608) was Master Workman at the Almain Armoury at Greenwich from 1576 until his death in 1608.'),
	         ('Miles Mills Pottery', '1233-01-01', '1245-01-01', 'United States of America', 'Imperial', 'Pottery', 'They were an Artist'),
	         ('Unrecorded Potter', '1733-01-01', '1788-01-01', 'United States of America', 'Imperial', 'Pottery', 'They were an Artist'),
	         ('~Thomas M. Chandler. Jr.', '1922-01-01', '1955-01-01', 'United States of America', 'Imperial', 'Pottery', 'They were an Artist'),
	         ('Collins Rhodes Factory', '1899-01-01', '1934-01-01', 'United States of America', 'Imperial', 'Pottery', 'They were an Artist'),
	         ('~Davies Firebricks Works', '1767-01-01', '1799-01-01', 'United States of America', 'Imperial', 'Pottery', 'They were an Artist'),
	         ('Élisabeth Louise Vigée Le Brun', '1755-04-16', '1842-03-30', 'France', 'Imperial', 'Rococo, Neoclassicism', 'Élisabeth Louise Vigée Le Brun, also known as Madame Le Brun, was a French portrait painter, especially of women, in the late 18th and early 19th centuries.'),
	         ('Leonardo da Vinci', '1452-03-15', '1519-05-2', 'Italy', 'Renaissance', 'High Renaissance', 'Leonardo di ser Piero da Vinci was an Italian polymath of the High Renaissance who was active as a painter, draughtsman, engineer, scientist, theorist, sculptor, and architect.');
             
Insert into exhibitions
Values       ('The Tudors: Art and Majesty in Renaissance England', '2022-10-10', '2023-1-8'),
			 ('Cubism and the Trompe l''Oeil Tradition', '2022-10-20', '2023-1-22'),
             ('Hear Me Now: The Black Potters of Old Edgefield, South Carolina', '2022-9-9', '2023-2-5'),
	         ('National Galleries of the Grand Palais', '2015-09-21', '2016-01-11'), 
	         ('Metropolitan Museum of Art', '1974-04-16', '1974-06-11'),
			 ('Temporary Exhibition under the pyramid', '2008-03-14', '2008-06-2'),
	         ('Louvre Abu Dhabi', '2017-12-01', '2018-11-30'),
	         ('Hyogo Prefectural Museum of Art', '2003-10-18', '2003-12-22');
             
Insert into collections
Values       ('Department of Paintings', 'Museum', 'The Department of Paintings reflects the encyclopedic scope of the Louvre, encompassing every European school from the 13th century to 1848.', 'Louvre Museum 75058 Paris Cedex 01', '33 891 071 383', 'Joseph Duong'),
			 ('Department of Oriental Antiquities', 'Museum', 'With more than 150,000 objects, the Department of Oriental Antiquities of the Louvre Museum presents one of the most important collections in the world, which makes it possible to offer one of the most complete panoramas of the ancient history of the Near and Middle East.',  'Louvre Museum 75058 Paris Cedex 01', '33 123 031 993', 'Andrew Duong'), 
			 ('Department of Islamic Arts', 'Museum', 'the department houses over 3,000 artworks reflecting the variety and luxury that surrounded caliphs, sultans and princes.', 'Louvre Museum 75058 Paris Cedex 01', '33 322 271 386', 'Ethan Bensler'),
			 ('Department of Greek, Etruscan, and Roman Antiquities', 'Museum', 'The Department of Greek, Etruscan, and Roman Antiquities is home to a collection of artworks representing the Greek, Etruscan, and Roman civilizations.', 'Louvre Museum 75058 Paris Cedex 01', '33 851 065 653', 'Liam Brennan');

Insert into displayed
Values       ('The Tudors: Art and Majesty in Renaissance England', 1),
			 ('The Tudors: Art and Majesty in Renaissance England', 2),
             ('The Tudors: Art and Majesty in Renaissance England', 3),
			 ('The Tudors: Art and Majesty in Renaissance England', 4),
			 ('The Tudors: Art and Majesty in Renaissance England', 5),
			 ('The Tudors: Art and Majesty in Renaissance England', 6),
			 ('The Tudors: Art and Majesty in Renaissance England', 7),
			 ('The Tudors: Art and Majesty in Renaissance England', 8),
			 ('Cubism and the Trompe l''Oeil Tradition', 9),
		 	 ('Cubism and the Trompe l''Oeil Tradition', 10),
             ('Cubism and the Trompe l''Oeil Tradition', 11),
			 ('Cubism and the Trompe l''Oeil Tradition', 12),
			 ('Cubism and the Trompe l''Oeil Tradition', 13),
			 ('Cubism and the Trompe l''Oeil Tradition', 14),
			 ('Hear Me Now: The Black Potters of Old Edgefield, South Carolina', 15),
			 ('Hear Me Now: The Black Potters of Old Edgefield, South Carolina', 16),
			 ('Hear Me Now: The Black Potters of Old Edgefield, South Carolina', 17),
			 ('Hear Me Now: The Black Potters of Old Edgefield, South Carolina', 18),
			 ('Hear Me Now: The Black Potters of Old Edgefield, South Carolina', 19),
			 ('Hear Me Now: The Black Potters of Old Edgefield, South Carolina', 20),
	         ('National Galleries of the Grand Palais', 21), 
			 ('Metropolitan Museum of Art', 22), 
			 ('Temporary Exhibition under the pyramid', 23), 
	         ('Louvre Abu Dhabi', 24), 
			 ('Hyogo Prefectural Museum of Art', 25), 
			 ('Hyogo Prefectural Museum of Art', 26);
             
ALTER TABLE art_objects
ADD foreign key (Artist) references Artist(Artist_Name);
 
ALTER TABLE borrowed
ADD foreign key (collection_name) references collections(collection_Name);
 
DROP USER IF EXISTS admin@localhost;
DROP USER IF EXISTS data@localhost;
DROP USER IF EXISTS guest@localhost;
 
CREATE USER admin@localhost IDENTIFIED WITH mysql_native_password BY 'adminpass';
CREATE USER data@localhost IDENTIFIED WITH mysql_native_password BY 'datapass';
CREATE USER guest@localhost;
 
GRANT ALL PRIVILEGES ON Museum. * TO admin@localhost WITH GRANT OPTION;
GRANT CREATE USER ON *.* TO admin@localhost;
GRANT Select, Delete, Insert, Update ON Museum. * TO data@localhost;
GRANT Select ON Museum. * TO guest@localhost;
 
SET DEFAULT ROLE ALL TO guest@localhost;
