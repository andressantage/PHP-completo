mysql> CREATE TABLE pais(

-> idPais int NOT NULL AUTO_INCREMENT,

nombrePais varchar(50) NOT NULL,

-> CONSTRAINT pk_pais PRIMARY KEY (idPais)

-> ); Query OK, 0 rows affected (0.01 sec)

mysql> CREATE TABLE departamento(

-> idDep int NOT NULL AUTO_INCREMENT,

nombreDep varchar(50) NOT NULL,

-> idPais int(11),

CONSTRAINT pk_departamento PRIMARY KEY (idDep),

->

CONSTRAINT fk PaisDep FOREIGN KEY (idPais) REFERENCES pais(idPais)

-> );

Query OK, 0 rows affected, 1 warning (0.01 sec)

mysql> CREATE TABLE region(

idReg int NOT NULL AUTO_INCREMENT,

-> nombreReg varchar(50) NOT NULL,

-> idDep int(11),

CONSTRAINT pk_region PRIMARY KEY (idReg),

);

CONSTRAINT fk_DepRegion FOREIGN KEY (idDep) REFERENCES departamento (i

Query OK, 0 rows affected, 1 warning (0.01 sec)