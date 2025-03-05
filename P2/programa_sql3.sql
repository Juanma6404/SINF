DROP DATABASE Practica2;
CREATE DATABASE Practica2;
USE Practica2;

CREATE TABLE Actores (
    ID_actor int not null PRIMARY KEY auto_increment,
    NombreActor varchar(50) not null
);

CREATE TABLE Directores (
    ID_Director int not null PRIMARY KEY auto_increment,
    NombreDirector varchar(50) not null
);

CREATE TABLE Peliculas (
    ID_Pelicula int not null PRIMARY KEY auto_increment,
    Titulo varchar(50),
    ID_Director int not null,
    FOREIGN KEY (ID_Director) REFERENCES Directores(ID_Director)
);

CREATE TABLE actuaEn (
    ID_Actor int not null,
    ID_Pelicula int not null,
    FOREIGN KEY (ID_actor) REFERENCES Actores(ID_Actor),
    FOREIGN KEY (ID_Pelicula) REFERENCES Peliculas(ID_Pelicula)
);

INSERT Actores VALUES(NULL, 'Leonardo DiCaprio');
INSERT Actores VALUES(NULL, 'Jason Statham');
INSERT Actores VALUES(NULL, 'Paul Walker');
INSERT Actores VALUES(NULL, 'Vin Diesel');
INSERT Actores VALUES(NULL, 'Emma Watson');

INSERT Directores VALUES(NULL, 'Justin Lin');
INSERT Directores VALUES(NULL, 'Peter Jackson');
INSERT Directores VALUES(NULL, 'Ang Lee');
INSERT Directores VALUES(NULL, 'Zack Snyder');
INSERT Directores VALUES(NULL, 'Michael Mann');

INSERT Peliculas VALUES(NULL, 'The Fast & The Furious', 1);
INSERT Peliculas VALUES(NULL, 'El señor de los Anillos', 2);
INSERT Peliculas VALUES(NULL, 'Brokebark Mountain', 2);
INSERT Peliculas VALUES(NULL, '300', 4);
INSERT Peliculas VALUES(NULL, 'Heat', 5);

INSERT actuaEn VALUES(2, 1);
INSERT actuaEn VALUES(3, 1);
INSERT actuaEn VALUES(4, 1);
INSERT actuaEn VALUES(1, 5);
INSERT actuaEn VALUES(5, 4);

