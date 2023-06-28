CREATE TABLE pais(
    idPais int NOT NULL AUTO_INCREMENT,
    nombrePais varchar(50) NOT NULL,
    CONSTRAINT pk_pais PRIMARY KEY (idPais)
);

CREATE TABLE departamento(
    idDep int NOT NULL AUTO_INCREMENT,
    nombreDep varchar(50) NOT NULL,
    idPais int(11),
    CONSTRAINT pk_departamento PRIMARY KEY (idDep),
    CONSTRAINT fk PaisDep FOREIGN KEY (idPais) REFERENCES pais(idPais)
);

CREATE TABLE region(
    idReg int NOT NULL AUTO_INCREMENT,
    nombreReg varchar(50) NOT NULL,
    idDep int(11),
    CONSTRAINT pk_region PRIMARY KEY (idReg),
    CONSTRAINT fk_DepRegion FOREIGN KEY (idDep) REFERENCES departamento (idDep)
);

ALTER TABLE cliente ADD idRegion int(11);
ALTER TABLE CLIENTE ADD CONSTRAINT FK_ClienteReg FOREIGN KEY (idRegion) REFERENCES region (idRegion);


