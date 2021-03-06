/*Comentar*/
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- Tabla Carreras
CREATE TABLE Carreras(
	IdCarrera int,
	Nombre VARCHAR(100),
	PRIMARY KEY (IdCarrera)
);

-- Tabla Usuarios
CREATE TABLE Usuarios(
	IdUsuario 	VARCHAR(7), /*serial*/
	Nombre	 	VARCHAR(20),
	Correo 		VARCHAR(100),
	Password 	VARCHAR(20),
	Carrera 	int,
	Foto 		VARCHAR(100), /*blob*/
	PRIMARY KEY (IdUsuario),
	FOREIGN KEY (Carrera) REFERENCES Carreras(IdCarrera)
);

-- Tabla Comentario
CREATE TABLE Comentario(
	Contenido 		VARCHAR(500) NOT NULL, /*text*/
	Fecha			date NOT NULL,
	IdComentario	int NOT NULL, /*serial*/
	IdEmisor 		int NOT NULL,	--Quien hace el comentario. foreign_key
	IdReceptor 		int NOT NULL,	--Quien recibe el comentario. foreign_key
	MeGusta			int NOT NULL, /*Nope*/
	PRIMARY KEY (IdComentario)
);

INSERT INTO Comentario (Contenido, Fecha, IdComentario, IdEmisor, IdReceptor, MeGusta) VALUES ('Qué buena pregunta, ¿alguien conoce la respuesta?', CURRENT_TIMESTAMP, 1, 1, 1, 1);
INSERT INTO Comentario (Contenido, Fecha, IdComentario, IdEmisor, IdReceptor, MeGusta) VALUES ('Tengo entendido que no se pueden meter más de 6 materias', CURRENT_TIMESTAMP, 2, 2, 2, 2);
INSERT INTO Comentario (Contenido, Fecha, IdComentario, IdEmisor, IdReceptor, MeGusta) VALUES ('La forma más común de titulación es la tésis', CURRENT_TIMESTAMP, 3, 3, 3, 3);

/*Preguntar*/

-- Tabla Preguntas
CREATE TABLE Preguntas(
    IdPregunta  int, /*serial*/
    IdUsuario   VARCHAR(7), /*serial*/
    Titulo      VARCHAR(50),
    Categoria   VARCHAR(30), /*foreign_key*/
    Descripcion VARCHAR(500), /*text*/
    PRIMARY KEY (IdPregunta),
    FOREIGN KEY (IdUsuario) REFERENCES Usuarios(IdUsuario)
);

INSERT INTO Preguntas (IdPregunta, IdUsuario, Titulo, Categoria, Descripcion) VALUES (1, 1, 'Qué buena pregunta, ¿alguien conoce la respuesta?', "Inscripciones", "");
INSERT INTO Preguntas (IdPregunta, IdUsuario, Titulo, Categoria, Descripcion) VALUES (2, 1, 'Tengo entendido que no se pueden meter más de 6 materias', "Inscripciones", "");
INSERT INTO Preguntas (IdPregunta, IdUsuario, Titulo, Categoria, Descripcion) VALUES (3, 1, 'La forma más común de titulación es la tésis', "Inscripciones", "");
