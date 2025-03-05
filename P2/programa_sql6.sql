DROP DATABASE IF EXISTS Practica2;
CREATE DATABASE Practica2;
USE Practica2;

CREATE TABLE Actores (
    ID_actor int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NombreActor varchar(50) NOT NULL,
    IMBD int UNIQUE,
    Edad int NOT NULL,
    CONSTRAINT chk_edad_Actores CHECK (Edad >= 0 AND Edad <= 120)
);

CREATE TABLE Directores (
    ID_Director int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NombreDirector varchar(50) NOT NULL,
    IMBD int UNIQUE,
    Edad int NOT NULL,
    CONSTRAINT chk_edad_Directores CHECK (Edad >= 0 AND Edad <= 120)
);

CREATE TABLE Peliculas (
    ID_Pelicula int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Titulo varchar(50) NOT NULL,
    ID_Director int NOT NULL,
    IMBD int UNIQUE,
    FOREIGN KEY (ID_Director) REFERENCES Directores(ID_Director)
);

CREATE TABLE actuaEn (
    ID_Actor int NOT NULL,
    ID_Pelicula int NOT NULL,
    FOREIGN KEY (ID_Actor) REFERENCES Actores(ID_Actor),
    FOREIGN KEY (ID_Pelicula) REFERENCES Peliculas(ID_Pelicula)
);

-- Ahora insertamos los datos, asegurándonos de que las edades sean válidas
INSERT INTO Actores VALUES (NULL, 'Leonardo DiCaprio', 0000138, 50);
INSERT INTO Actores VALUES (NULL, 'Jason Statham', 0005458, 60);  -- Edad corregida
INSERT INTO Actores VALUES (NULL, 'Paul Walker', 0908094, 40);   -- Edad corregida
INSERT INTO Actores VALUES (NULL, 'Vin Diesel', 0004874, 50);    -- Edad corregida
INSERT INTO Actores VALUES (NULL, 'Emma Watson', 0914612, 30);  -- Edad corregida

INSERT INTO Directores VALUES (NULL, 'Justin Lin', 0510912, 47);
INSERT INTO Directores VALUES (NULL, 'Peter Jackson', 0001392, 65);
INSERT INTO Directores VALUES (NULL, 'Ang Lee', 0000487, 78);
INSERT INTO Directores VALUES (NULL, 'Zack Snyder', 0811583, 63);
INSERT INTO Directores VALUES (NULL, 'Michael Mann', 0000520, 74);

INSERT INTO Peliculas VALUES (NULL, 'The Fast & The Furious', 1, 0232500);
INSERT INTO Peliculas VALUES (NULL, 'El señor de los Anillos', 2, 0120737);
INSERT INTO Peliculas VALUES (NULL, 'Brokebark Mountain', 2, 0388795);
INSERT INTO Peliculas VALUES (NULL, '300', 4, 0416449);
INSERT INTO Peliculas VALUES (NULL, 'Heat', 5, 0113277);

INSERT INTO actuaEn VALUES (2, 1);
INSERT INTO actuaEn VALUES (3, 1);
INSERT INTO actuaEn VALUES (4, 1);
INSERT INTO actuaEn VALUES (1, 5);
INSERT INTO actuaEn VALUES (5, 4);

