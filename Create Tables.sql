/*** 

Lenteliu sukurimas ir duomeni irasymas

***/
CREATE TABLE Projektai (
    "Nr" integer NOT NULL,
    "Pavadinimas" VARCHAR(255),
    "Svarba" VARCHAR(255),
    "Pradžia" date,
    "Trukmė" integer
);

CREATE TABLE Vykdymas (
    "Projektas" integer NOT NULL,
    "Vykdytojas" integer NOT NULL,
    "Statusas" VARCHAR(255),
    "Valandos" integer
);

CREATE TABLE Vykdytojai (
    "Nr" integer NOT NULL,
    "Pavardė" VARCHAR(255),
    "Kvalifikacija" VARCHAR(255),
    "Kategorija" integer,
    "Išsilavinimas" VARCHAR(255)
);

INSERT INTO Projektai ("Nr", "Pavadinimas", "Svarba", "Pradžia", "Trukmė") VALUES
(1,	'Studentų apskaita',	'Aukšta',	'2015-01-01',	12),
(2,	'Buhalterinė apskaita',	'Vidutinė',	'2005-03-01',	10),
(3,	'WWW svetainė',			'Ypatinga',	'2005-06-01',	2),
(4,	'projektas prie kurio niekas nedirba',	'Vidutine',	'2022-06-09',	1);


INSERT INTO Vykdymas ("Projektas", "Vykdytojas", "Statusas", "Valandos") VALUES
(1,	1,	'Programuotojas', 30),
(1,	2,	'Dokumentuotojas', 100),
(1,	3,	'Testuotojas', 100),
(1,	4,	'Vadovas', 100),
(2,	1,	'Programuotojas', 300),
(2,	2,	'Analitikas',	250),
(2,	34,	'Vadovas',	100),
(3,	1,	'Programuotojas', 250),
(3,	2,	'Vadovas',	400),
(3,	3,	'Dizaineris',	150),
(5,	1,	'Programuotojas',	10);

INSERT INTO Vykdytojai ("Nr", "Pavardė", "Kvalifikacija", "Kategorija", "Išsilavinimas") VALUES
(1,	'Jonaitis',	'Informatikas'	,2,	'VU'),
(2,	'Petraitis','Statistikas'	,3,	'VU'),
(3,	'Gražulytė','Inžinierius'	,1,	NULL),
(4,	'Onaitytė',	'Vadybininkas'	,5,	'VDU'),
(5,	'Antanaitis','Informatikas'	,3,	'VU'
);

ALTER TABLE "Projektai"
    ADD CONSTRAINT "Projektai_pkey" PRIMARY KEY ("Nr");

ALTER TABLE "Vykdymas"
ADD CONSTRAINT "Vykdymas_pkey" PRIMARY KEY ("Projektas", "Vykdytojas");

ALTER TABLE "Vykdytojai"
    ADD CONSTRAINT "Vykdytojai_pkey" PRIMARY KEY ("Nr");

