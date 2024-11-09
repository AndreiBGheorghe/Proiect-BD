CREATE SCHEMA Ferma ;

CREATE TABLE Ferma.Utilaje (
	id_utilaj INT NOT NULL,
    tip VARCHAR(20) NOT NULL,
    marca VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_utilaj)
);

CREATE TABLE Ferma.Locatie (
	id_locatie INT NOT NULL,
    nume_locatie VARCHAR(20) NOT NULL UNIQUE,
    judet VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_locatie)
);

CREATE TABLE Ferma.Parcele (
	id_parcela INT NOT NULL,
	dimensiune INT NOT NULL,
    id_locatie INT NOT NULL,
    PRIMARY KEY (id_parcela),
    FOREIGN KEY (id_locatie) REFERENCES Ferma.Locatie (id_locatie)
    ON DELETE CASCADE
);

CREATE TABLE Ferma.Angajati (
	id_angajat INT NOT NULL,
	nume VARCHAR(20) NOT NULL,
    prenume VARCHAR(20) NOT NULL,
    denumire_job VARCHAR(20) NOT NULL,
    id_utilaj INT,
    id_parcela INT NOT NULL,
    PRIMARY KEY (id_angajat),
    FOREIGN KEY (id_utilaj) REFERENCES Ferma.Utilaje (id_utilaj)
    ON DELETE CASCADE,
    FOREIGN KEY (id_parcela) REFERENCES Ferma.Parcele (id_parcela)
    ON DELETE CASCADE
);

CREATE TABLE Ferma.Cereale (
	id_cereale INT NOT NULL,
	denumire VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_cereale)
);

CREATE TABLE Ferma.IstoricParcele (
	id_istparc INT NOT NULL,
    id_parcela INT NOT NULL,
    id_cereale INT NOT NULL,
    data_plantare DATE NOT NULL,
    data_recoltare DATE,
    PRIMARY KEY (id_istparc),
    FOREIGN KEY (id_parcela) REFERENCES Ferma.Parcele (id_parcela)
    ON DELETE CASCADE,
    FOREIGN KEY (id_cereale) REFERENCES Ferma.Cereale (id_cereale)
    ON DELETE CASCADE
);

CREATE TABLE Ferma.Clienti (
	id_client INT NOT NULL,
    nume_cl VARCHAR(20) NOT NULL,
    prenume_cl VARCHAR(20) NOT NULL,
    tip_tranzactie VARCHAR(20),
    PRIMARY KEY (id_client)
);

CREATE TABLE Ferma.Animale (
	id_animal INT NOT NULL,
    nume_animal VARCHAR(20) NOT NULL,
    greutate INT NOT NULL,
    pret INT,
    id_locatie INT NOT NULL,
    id_client INT,
    PRIMARY KEY (id_animal),
    FOREIGN KEY (id_locatie) REFERENCES Ferma.Locatie (id_locatie)
    ON DELETE CASCADE,
    FOREIGN KEY (id_client) REFERENCES Ferma.Clienti (id_client)
    ON DELETE CASCADE
);

INSERT INTO Ferma.Utilaje (id_utilaj,tip,marca) VALUES (1,'Tractor','John Deere');
INSERT INTO Ferma.Utilaje (id_utilaj,tip,marca) VALUES (2,'Tractor','Fendt');
INSERT INTO Ferma.Utilaje (id_utilaj,tip,marca) VALUES (3,'Tractor','New Holland');
INSERT INTO Ferma.Utilaje (id_utilaj,tip,marca) VALUES (4,'Tractor','Claas');
INSERT INTO Ferma.Utilaje (id_utilaj,tip,marca) VALUES (5,'Combina','Claas');
INSERT INTO Ferma.Utilaje (id_utilaj,tip,marca) VALUES (6,'Combina','New Holland');
INSERT INTO Ferma.Utilaje (id_utilaj,tip,marca) VALUES (7,'Semanatoare','Gaspardo');
INSERT INTO Ferma.Utilaje (id_utilaj,tip,marca) VALUES (8,'Semanatoare','Vaderstad');
INSERT INTO Ferma.Utilaje (id_utilaj,tip,marca) VALUES (9,'Heder','Geringhoff');
INSERT INTO Ferma.Utilaje (id_utilaj,tip,marca) VALUES (10,'Camion','Ford');
INSERT INTO Ferma.Utilaje (id_utilaj,tip,marca) VALUES (11,'Camion','Volvo');
INSERT INTO Ferma.Utilaje (id_utilaj,tip,marca) VALUES (12,'UTV','Kawasaki');
INSERT INTO Ferma.Utilaje (id_utilaj,tip,marca) VALUES (13,'UTV','Kawasaki');
INSERT INTO Ferma.Utilaje (id_utilaj,tip,marca) VALUES (14,'UTV','Honda');

INSERT INTO Ferma.Locatie (id_locatie,nume_locatie,judet) VALUES (1,'Zona Braila 1','Braila');
INSERT INTO Ferma.Locatie (id_locatie,nume_locatie,judet) VALUES (2,'Zona Braila 2','Braila');
INSERT INTO Ferma.Locatie (id_locatie,nume_locatie,judet) VALUES (3,'Ferma Sol Bogat','Galati');
INSERT INTO Ferma.Locatie (id_locatie,nume_locatie,judet) VALUES (4,'Ferma Izvor','Tulcea');
INSERT INTO Ferma.Locatie (id_locatie,nume_locatie,judet) VALUES (5,'Zona Constanta','Constanta');
INSERT INTO Ferma.Locatie (id_locatie,nume_locatie,judet) VALUES (6,'Campia Roditoare','Ialomita');

INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (1,5,1);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (2,3,1);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (3,6,1);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (4,10,2);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (5,10,2);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (6,5,2);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (7,5,2);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (8,3,3);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (9,3,3);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (10,4,3);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (11,5,3);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (12,12,3);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (13,2,4);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (14,7,4);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (15,20,4);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (16,10,5);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (17,12,5);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (18,15,5);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (19,7,5);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (20,8,5);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (21,5,5);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (22,13,5);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (23,2,6);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (24,2,6);
INSERT INTO Ferma.Parcele (id_parcela,dimensiune,id_locatie) VALUES (25,3,6);

INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (1,'Popescu','Andrei','Asistent',NULL,1);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (2,'Ionescu','Maria','Sofer Tractor',1,1);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (3,'Dumitru','Alexandru','Sofer Combina',5,1);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (4,'Stoica','Elena','Sofer Tractor',2,2);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (5,'Moldovan','Gabriel','Sofer Combina',6,2);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (6,'Vasilescu','Ioana','Sofer Tractor',4,3);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (7,'Munteanu','Adrian','Sofer Heder',9,3);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (8,'Radu','Ana','Sofer Tractor',3,4);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (9,'Stanciu','Mihai','Sofer Semanatoare',7,4);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (10,'Cristea','Laura','Sofer Semanatoare',8,5);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (11,'Stan','Stefan','Sofer Tractor',4,5);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (12,'Constantinescu','Radu','Sofer Combina',5,6);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (13,'Marinescu','Florin','Sofer Tractor',2,6);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (14,'Gheorghe','Paul','Asistent',NULL,6);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (15,'Popa','Ion','Sofer Tractor',1,7);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (16,'Marin','Cristina','Asistent',NULL,7);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (17,'Ciobanu','Andrei','Sofer Tractor',2,8);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (18,'Tudor','Alina','Sofer Combina',5,8);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (19,'Tudose','Razvan','Sofer Tractor',3,9);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (20,'Neacsu','Maria','Sofer Combina',6,9);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (21,'Iancu','Catalin','Sofer Tractor',4,10);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (22,'Dragomir','Vlad','Sofer Semanatoare',8,10);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (23,'Cojocaru','Andreea','Sofer Heder',9,10);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (24,'Ilie','Mihnea','Sofer Tractor',2,11);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (25,'Popovici','Gabriela','Sofer Combina',6,11);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (26,'Preda','Florin','Sofer Tractor',3,12);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (27,'Petrescu','Dan','Asistent',NULL,12);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (28,'Iordache','Elena','Sofer Tractor',1,13);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (29,'Mihai','Valentin','Asistent',NULL,13);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (30,'Stroe','Bogdan','Sofer Tractor',4,14);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (31,'Pop','Ioana','Sofer Semanatoare',7,14);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (32,'Ungureanu','Marius','Sofer Tractor',2,15);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (33,'Diaconu','Gabriel','Sofer Heder',9,15);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (34,'Mihailescu','Anca','Sofer Tractor',1,16);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (35,'Popescu','Mario','Sofer Combina',6,16);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (36,'Radulescu','Adrian','Sofer Tractor',3,17);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (37,'Nistor','Laurentiu','Sofer Combina',6,17);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (38,'Grigorescu','Andrei','Sofer Camion',10,17);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (39,'Voicu','Ana-Maria','Sofer Tractor',3,18);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (40,'Petre','Andrei','Sofer UTV',12,18);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (41,'Voinea','Mihai','Asistent',NULL,18);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (42,'Dumitrescu','Laura','Sofer Camion',10,18);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (43,'Marinescu','Rares','Sofer Tractor',1,19);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (44,'Popa','Andrei','Sofer Combina',5,19);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (45,'Popescu','Robert','Sofer Camion',11,19);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (46,'Vasile','Elena','Sofer Tractor',4,20);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (47,'Istrate','Maria','Asistent',NULL,20);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (48,'Enache','Bogdan','Sofer Tractor',2,21);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (49,'Tudor','Daria','Sofer Heder',9,21);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (50,'Gavrila','Gabriel','Sofer Tractor',3,22);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (51,'Iliescu','Alexandra','Sofer Tractor',4,22);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (52,'Balan','Silviu','Sofer Semanatoare',8,22);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (53,'Dima','Mihaela','Sofer UTV',13,22);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (54,'Stanescu','Andrei','Sofer Tractor',4,23);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (55,'Moraru','Marius','Sofer Combina',5,23);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (56,'Radu','Adrian','Asistent',NULL,23);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (57,'Barbu','Razvan','Sofer UTV',14,24);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (58,'Popescu','Ioan','Sofer Tractor',2,24);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (59,'Dragomir','Mihai','Sofer Tractor',1,25);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (60,'Ionescu','Cristina','Sofer Tractor',4,25);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (61,'Moldovan','George','Sofer Combina',5,25);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (62,'Dumitru','Adrian','Sofer Camion',10,1);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (63,'Stoica','Ion','Sofer Combina',5,7);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (64,'Gheorghe','Bogdan','Asistent',NULL,8);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (65,'Marian','George','Sofer UTV',13,13);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (66,'Lungu','Andrei','Sofer Semanatoare',8,25);
INSERT INTO Ferma.Angajati (id_angajat,nume,prenume,denumire_job,id_utilaj,id_parcela) VALUES (67,'Neagu','Costel','Sofer Camion',11,25);

INSERT INTO Ferma.Cereale(id_cereale,denumire) VALUES (1,'Porumb');
INSERT INTO Ferma.Cereale(id_cereale,denumire) VALUES (2,'Ovaz');
INSERT INTO Ferma.Cereale(id_cereale,denumire) VALUES (3,'Grau');
INSERT INTO Ferma.Cereale(id_cereale,denumire) VALUES (4,'Secara');
INSERT INTO Ferma.Cereale(id_cereale,denumire) VALUES (5,'Mei');
INSERT INTO Ferma.Cereale(id_cereale,denumire) VALUES (6,'Orz');

INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (1,1,1,'2022-07-15','2023-07-15');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (2,1,2,'2023-07-16',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (3,2,3,'2022-07-20','2023-07-28');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (4,2,2,'2023-07-29',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (5,3,5,'2022-07-10','2023-07-15');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (6,3,6,'2023-07-16',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (7,4,1,'2022-08-10','2023-07-26');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (8,4,5,'2023-07-27',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (9,5,4,'2022-08-02','2023-08-03');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (10,5,2,'2023-08-04',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (11,6,4,'2022-07-15','2023-07-15');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (12,6,3,'2023-07-16',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (13,7,3,'2022-08-10','2023-07-26');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (14,7,1,'2023-07-27',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (15,8,2,'2022-08-07','2023-08-12');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (16,8,1,'2023-08-13',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (17,9,6,'2022-06-28','2023-06-27');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (18,9,5,'2023-06-28',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (19,10,5,'2022-08-02','2023-08-03');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (20,10,2,'2023-08-04',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (21,11,3,'2022-08-05','2023-08-07');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (22,11,4,'2023-08-08',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (23,12,6,'2022-08-10','2023-07-26');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (24,12,2,'2023-07-27',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (25,13,1,'2022-08-01','2023-08-02');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (26,13,2,'2023-08-03',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (27,14,4,'2022-07-20','2023-07-22');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (28,14,5,'2023-07-23',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (29,15,2,'2022-07-21','2023-07-22');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (30,15,6,'2023-07-23',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (31,16,2,'2022-08-02','2023-08-03');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (32,16,5,'2023-08-04',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (33,17,5,'2022-07-15','2023-07-15');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (34,17,2,'2023-07-16',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (35,18,6,'2022-07-20','2023-07-28');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (36,18,1,'2023-07-29',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (37,19,4,'2022-07-26','2023-07-27');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (38,19,3,'2023-07-28',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (39,20,5,'2022-07-21','2023-07-22');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (40,20,2,'2023-07-23',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (41,21,2,'2022-07-19','2023-07-22');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (42,21,4,'2023-07-25',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (43,22,4,'2022-08-07','2023-08-12');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (44,22,6,'2023-08-14',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (45,23,4,'2022-08-09','2023-08-11');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (46,23,2,'2023-08-13',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (47,24,5,'2022-07-20','2023-07-22');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (48,24,1,'2023-07-23',NULL);
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (49,25,3,'2022-07-23','2023-07-24');
INSERT INTO Ferma.IstoricParcele(id_istparc,id_parcela,id_cereale,data_plantare,data_recoltare) VALUES (50,25,6,'2023-07-26',NULL);

INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (1,'Radu','Ana-Maria','Cash');
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (2,'Popescu','Andrei','Cash');
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (3,'Ionescu','Elena',NULL);
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (4,'Stoica','Vlad','Card');
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (5,'Petrescu','Ioana',NULL);
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (6,'Dumitru','Alexandru','Card');
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (7,'Vasilescu','Cristina','Cash');
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (8,'Gheorghe','Mihai',NULL);
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (9,'Marinescu','Gabriel','Card');
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (10,'Neacsu','Florin','Cash');
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (11,'Moldovan','Laura',NULL);
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (12,'Popa','Bogdan',NULL);
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (13,'Constantinescu','Ion',NULL);
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (14,'Dragomir','Marius','Card');
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (15,'Stan','Raluca',NULL);
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (16,'Munteanu','Adrian','Card');
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (17,'Luca','Mihaela',NULL);
INSERT INTO Ferma.Clienti(id_client,nume_cl,prenume_cl,tip_tranzactie) VALUES (18,'Grigore','Marius','Cash');

INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (1,'Vaca',700,7000,2,1);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (2,'Porc',260,4500,1,2);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (3,'Oaie',120,2400,4,NULL);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (4,'Capra',140,2900,5,4);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (5,'Vaca',710,7100,6,4);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (6,'Vaca',680,6800,3,NULL);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (7,'Oaie',135,2700,2,6);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (8,'Porc',300,4800,5,7);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (9,'Capra',125,2600,3,NULL);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (10,'Porc',275,4700,1,9);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (11,'Capra',115,2400,4,10);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (12,'Oaie',155,3100,6,14);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (13,'Vaca',695,6950,3,NULL);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (14,'Porc',280,4550,2,16);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (15,'Porc',310,5000,1,18);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (16,'Capra',110,2300,5,NULL);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (17,'Oaie',160,3200,4,2);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (18,'Oaie',145,2900,6,4);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (19,'Vaca',725,7250,3,9);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (20,'Capra',120,2500,2,16);
INSERT INTO Ferma.Animale(id_animal,nume_animal,greutate,pret,id_locatie,id_client) VALUES (21,'Porc',250,4300,6,NULL);
