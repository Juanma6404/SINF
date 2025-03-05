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
    Titulo VARCHAR(50),
    ID_Director INT NOT NULL,
    FOREIGN KEY (ID_Director) REFERENCES Directores(ID_Director)
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

INSERT INTO Peliculas VALUES (NULL, 'The Fast & The Furious', 1);
INSERT INTO Peliculas VALUES (NULL, 'El señor de los Anillos', 2);
INSERT INTO Peliculas VALUES (NULL, 'Brokeback Mountain', 2);
INSERT INTO Peliculas VALUES (NULL, '300', 4);
INSERT INTO Peliculas VALUES (NULL, 'Heat', 5);

