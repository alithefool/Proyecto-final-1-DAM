-- Creamos base de datos
Create database if not exists JuegoDeMesa;
-- Usamos la base de datos
use JuegoDeMesa;
-- Creamos tablas

Create table Cartas( 
Nombre varchar (30) not null ,
Id_Carta int  not null primary key ,
coste decimal not null ,
coste_cultural decimal not null ,
Supertipo varchar (30) not null ,
Reglas_De_Texto varchar (30) not null ,
PT varchar (5) not null ,
Set_ varchar (5) not null 
);

Create table Iberians(
Nombre varchar (30) not null ,
Id_Carta int  not null primary key ,
coste decimal not null ,
coste_cultural decimal not null ,
Supertipo varchar (30) not null ,
Reglas_De_Texto varchar (30) not null ,
PT varchar (5) not null ,
Set_ varchar (5) not null 
);

Create table Celtas(
Nombre varchar (30) not null ,
Id_Carta int  not null primary key ,
coste decimal not null ,
coste_cultural decimal not null ,
Supertipo varchar (30) not null ,
Reglas_De_Texto varchar (30) not null ,
PT varchar (5) not null ,
Set_ varchar (5) not null 
);

Create table Etruscans(
Nombre varchar (30) not null ,
Id_Carta int  not null primary key ,
coste decimal not null ,
coste_cultural decimal not null ,
Supertipo varchar (30) not null ,
Reglas_De_Texto varchar (30) not null ,
PT varchar (5) not null ,
Set_ varchar (5) not null 
);

Create table Micenaens(
Nombre varchar (30) not null ,
Id_Carta int  not null primary key ,
coste decimal not null ,
coste_cultural decimal not null ,
Supertipo varchar (30) not null ,
Reglas_De_Texto varchar (30) not null ,
PT varchar (5) not null ,
Set_ varchar (5) not null 
);

Create table Phoenicians(
Nombre varchar (30) not null ,
Id_Carta int  not null primary key ,
coste decimal not null ,
coste_cultural decimal not null ,
Supertipo varchar (30) not null ,
Reglas_De_Texto varchar (30) not null ,
PT varchar (5) not null ,
Set_ varchar (5) not null 
);

Create table Hitties(
Nombre varchar (30) not null ,
Id_Carta int  not null primary key ,
coste decimal not null ,
coste_cultural decimal not null ,
Supertipo varchar (30) not null ,
Reglas_De_Texto varchar (30) not null ,
PT varchar (5) not null ,
Set_ varchar (5) not null 
);

Create table Mercenarios(
Nombre varchar (30) not null ,
Id_Carta int  not null primary key ,
coste decimal not null ,
coste_cultural decimal not null ,
Supertipo varchar (30) not null ,
Reglas_De_Texto varchar (30) not null ,
PT varchar (5) not null ,
Set_ varchar (5) not null 
);

Create table Lands(
Nombre varchar (30) not null ,
Id_Carta int  not null primary key ,
coste decimal not null ,
coste_cultural decimal not null ,
Supertipo varchar (30) not null ,
Reglas_De_Texto varchar (30) not null ,
PT varchar (5) not null ,
Set_ varchar (5) not null 
);

Create table GameLog(
Id_Juego int primary key not null ,
Contador_Jugador int not null ,
Contador_Turno int not null ,
FOREIGN KEY (Id_Usuario) REFERENCES Usuarios(Id_Usuario) ON UPDATE CASCADE ,
FOREIGN KEY (Id_Mazo) REFERENCES Mazos(Id_Mazo) ON UPDATE CASCADE
);

Create table Usuarios(
Id_Usuario int primary key not null ,
Nombre_Usuario varchar (20) not null ,
Contraseña varchar (20) not null ,
Mazos_Creados int not null
);

Create table Mazos(
Id_Mazo int primary key not null ,
Nombre varchar (15) not null ,
Cartas_Totales int not null ,
 FOREIGN KEY (Contenidos) REFERENCES Contenidos(Contenidos) ON UPDATE CASCADE

);

Create table Impresion(
Id_Impresion int primary key not null ,
 FOREIGN KEY (Id_Mazo) REFERENCES Mazos(Id_Mazo) ON UPDATE CASCADE

);

Create table Contenidos( 
Contenidos varchar (30) primary key not null ,
FOREIGN KEY (id_polideportivo) REFERENCES Polideportivo(id_polideportivo) ON UPDATE CASCADE ,
 FOREIGN KEY (Id_Carta) REFERENCES Cartas(Id_Carta) ON UPDATE CASCADE
--  (id carta x100)
);

Create table ConsultaDeBusqueda(
Id_Consulta int primary key not null ,  
Detalles_De_Consulta varchar (20) not null ,
TiempoPedido int not null ,
FOREIGN KEY (Id_Usuario) REFERENCES Usuario(Id_Usuario) ON UPDATE CASCADE
-- Crear clave foranea id usuario
);

-- Faltaria cambiar algun nombre de tabla que no sabia traduccion, crear id clave foranea carta x100 , poner si queremos algun campo con restricciones o uniques o checks y poner inserts into



 
