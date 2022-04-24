-- SETTING DATABASE
CREATE DATABASE kutubxona OWNER kidirbaev LOCALE 'sv_SE.iso885915' ENCODING 'utf-8';

-- ENV SETUP
-- \c kutubxona;

-- DDL
DROP TABLE IF EXISTS Bolimlar;
DROP TABLE IF EXISTS Kitoblar;
DROP TABLE IF EXISTS Hodimlar;
DROP TABLE IF EXISTS Mahalliy_Nashriyotlar;
DROP TABLE IF EXISTS Yetkazib_Beruvchi_Tashkilot;

CREATE TABLE Bolimlar (
	id serial PRIMARY KEY,
	nomi VARCHAR(50) NOT NULL,
	adabiyotlar VARCHAR(50) NOT NULL,
	kategoriyalar INT NOT NULL,
	masul_shaxs VARCHAR(50) NOT NULL
);

CREATE TABLE Kitoblar (
	id serial PRIMARY KEY,
	nomi VARCHAR(50) NOT NULL,
	soni INT NOT NULL,
	muallif VARCHAR(50) NOT NULL,
	nashriyot VARCHAR(50) NOT NULL
);

CREATE TABLE Hodimlar (
	id serial PRIMARY KEY,
	fish VARCHAR(50) NOT NULL,
	lavozimi VARCHAR(50) NOT NULL,
	telefon_raqami VARCHAR(20) NOT NULL,
	yashash_manzili VARCHAR(50) NOT NULL,
	malumoti VARCHAR(50) NOT NULL,
	darajasi VARCHAR(50) NOT NULL,
	ish_tajribasi INT NOT NULL
);

CREATE TABLE Mahalliy_Nashriyotlar (
	id serial PRIMARY KEY,
	nomi VARCHAR(50) NOT NULL,
	muallif VARCHAR(50) NOT NULL,
	yonalish VARCHAR(50) NOT NULL
);

CREATE TABLE Yetkazib_Beruvchi_Tashkilot (
	id serial PRIMARY KEY,
	nomi VARCHAR(50) NOT NULL,
	masul_shaxs VARCHAR(50) NOT NULL
);

-- DML
INSERT INTO bolimlar VALUES (DEFAULT, 'Tarixiy', 'mavjud', 7, 'A. J. Xolmatov'),
	(DEFAULT, 'Arboblar', 'mavjud', 21, 'D. A. Istomi'),
	(DEFAULT, 'Informatsion Texnologiyalar', 'mavjud', 52, 'S. U. Toshboev');

INSERT INTO Kitoblar VALUES	(DEFAULT, 'Tabiiy-Ilmiy', 4235, 'Mahalliy', 'Xorijiy'),
	(DEFAULT, 'Gumanitar Talim', 8542, 'Xorijiy', 'Xorijiy'),
	(DEFAULT, 'Iqtisod va Boshqaruv', 3161, 'Mahalliy', 'Mahalliy');

INSERT INTO Hodimlar VALUES	(DEFAULT, 'K. A. Samatov', 'mudir', '998904041122', 'Yunusobod', 'Orta maxsus', 'Yuqori', 5),
	(DEFAULT, 'X. M. Jalilov', 'nazoratchi', '998931014565', 'Sergili', 'Oliy', 'Yuqori', 6),
	(DEFAULT, 'O. Q. Tursunmurodova', 'arxivchi', '998916501003', 'Qoraqamish', 'Oliy', 'Orta', 12);

INSERT INTO Mahalliy_Nashriyotlar VALUES (DEFAULT, 'Sharq', 'Asroriy', 'Fantastik asar'),
	(DEFAULT, 'Cholpon', 'K. A. Qorjovov', 'Dramatik'),
	(DEFAULT, 'Qaldirgoch', 'T. Malik', 'Romantik');

INSERT INTO Yetkazib_Beruvchi_Tashkilot VALUES (DEFAULT, 'Tarixiy', 'N. A. Pardayev'),
	(DEFAULT, 'Arboblar', 'J. Usmonov'),
	(DEFAULT, 'Information Texnologiyalar', 'K. I. Jorayev');


-- DVQ
SELECT * FROM Bolimlar;
SELECT * FROM Kitoblar;
SELECT * FROM Hodimlar;
SELECT * FROM Mahalliy_Nashriyotlar;
SELECT * FROM Yetkazib_Beruvchi_Tashkilot;
