DROP DATABASE IF EXISTS Practica2;
CREATE DATABASE Practica2;
USE Practica2;

CREATE TABLE Actores (
    ID_actor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NombreActor VARCHAR(50) NOT NULL
);

CREATE TABLE Directores (
    ID_Director INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NombreDirector VARCHAR(50) NOT NULL
);

CREATE TABLE Peliculas (
    ID_Pelicula INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(50)
);

INSERT INTO Actores VALUES (NULL, 'Leonardo DiCaprio');
INSERT INTO Actores VALUES (NULL, 'Jason Statham');
INSERT INTO Actores VALUES (NULL, 'Paul Walker');
INSERT INTO Actores VALUES (NULL, 'Vin Diesel');
INSERT INTO Actores VALUES (NULL, 'Emma Watson');

INSERT INTO Directores VALUES (NULL, 'Justin Lin');
INSERT INTO Directores VALUES (NULL, 'Peter Jackson');
INSERT INTO Directores VALUES (NULL, 'Ang Lee');
INSERT INTO Directores VALUES (NULL, 'Zack Snyder');
INSERT INTO Directores VALUES (NULL, 'Michael Mann');

INSERT INTO Peliculas VALUES (NULL, 'The Fast & The Furious');
INSERT INTO Peliculas VALUES (NULL, 'El señor de los Anillos');
INSERT INTO Peliculas VALUES (NULL, 'Brokeback Mountain');
INSERT INTO Peliculas VALUES (NULL, '300');
INSERT INTO Peliculas VALUES (NULL, 'Heat');

