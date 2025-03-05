DROP DATABASE Practica2;
CREATE DATABASE Practica2;
USE Practica2;

-- Crear tabla Actores
CREATE TABLE Actores (
    ID_actor int not null PRIMARY KEY auto_increment,
    NombreActor varchar(50) not null,
    IMBD int unique -- Atributo IMBD con restricción de unicidad
);

-- Crear tabla Directores
CREATE TABLE Directores (
    ID_Director int not null PRIMARY KEY auto_increment,
    NombreDirector varchar(50) not null,
    IMBD int unique -- Atributo IMBD con restricción de unicidad
);

-- Crear tabla Peliculas
CREATE TABLE Peliculas (
    ID_Pelicula int not null PRIMARY KEY auto_increment,
    Titulo varchar(50) not null,
    ID_Director int not null,
    IMBD int unique, -- Atributo IMBD con restricción de unicidad
    FOREIGN KEY (ID_Director) REFERENCES Directores(ID_Director)
);

-- Crear tabla intermedia actuaEn (relación M:N entre Actores y Peliculas)
CREATE TABLE actuaEn (
    ID_Actor int not null,
    ID_Pelicula int not null,
    FOREIGN KEY (ID_actor) references Actores(ID_Actor),
    FOREIGN KEY (ID_Pelicula) references Peliculas(ID_Pelicula)
);

-- Insertar datos en la tabla Actores
INSERT Actores VALUES(NULL, 'Leonardo DiCaprio', 0000138);
INSERT Actores VALUES(NULL, 'Jason Statham', 0005458);
INSERT Actores VALUES(NULL, 'Paul Walker', 0908094);
INSERT Actores VALUES(NULL, 'Vin Diesel', 0004874);
INSERT Actores VALUES(NULL, 'Emma Watson', 0914612);

-- Insertar datos en la tabla Directores
INSERT Directores VALUES(NULL, 'Justin Lin', 0510912);
INSERT Directores VALUES(NULL, 'Peter Jackson', 0001392);
INSERT Directores VALUES(NULL, 'Ang Lee', 0000487);
INSERT Directores VALUES(NULL, 'Zack Snyder', 0811583);
INSERT Directores VALUES(NULL, 'Michael Mann', 0000520);

-- Insertar datos en la tabla Peliculas
INSERT Peliculas VALUES(NULL, 'The Fast & The Furious', 1, 0232500);
INSERT Peliculas VALUES(NULL, 'El señor de los Anillos', 2, 0120737);
INSERT Peliculas VALUES(NULL, 'Brokebark Mountain', 2, 0388795);
INSERT Peliculas VALUES(NULL, '300', 4, 0416449);
INSERT Peliculas VALUES(NULL, 'Heat', 5, 0113277);

-- Insertar datos en la tabla intermedia actuaEn (relación M:N entre Actores y Peliculas)
INSERT actuaEn VALUES(2, 1);
INSERT actuaEn VALUES(3, 1);
INSERT actuaEn VALUES(4, 1);
INSERT actuaEn VALUES(1, 5);
INSERT actuaEn VALUES(5, 4);

