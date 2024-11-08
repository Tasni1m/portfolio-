USE tas;


DROP TABLE TAS_MESSAGE;

DROP TABLE TAS_PROJET;

DROP TABLE TAS_PERSONNE;


CREATE TABLE TAS_PERSONNE (
    TAS_ID_PERSONNE INT NOT NULL AUTO_INCREMENT,
    TAS_NOM VARCHAR(50) NOT NULL,
    TAS_PRENOM VARCHAR(50) NOT NULL,
    TAS_EMAIL VARCHAR(100) NOT NULL UNIQUE,
    TAS_TELEPHONE VARCHAR(15),
    TAS_DATE_NAISSANCE DATE,
    PRIMARY KEY (TAS_ID_PERSONNE)
);
CREATE TABLE TAS_ADMIN (
    TAS_ID_ADMIN INT NOT NULL,
    PRIMARY KEY (TAS_ID_ADMIN),
    FOREIGN KEY (TAS_ID_ADMIN) REFERENCES TAS_PERSONNE (TAS_ID_PERSONNE)
);
CREATE TABLE TAS_PROJET ( 
    TAS_ID_PROJET INT NOT NULL AUTO_INCREMENT,
    TAS_NOM_PROJET VARCHAR(100) NOT NULL,
    TAS_DESCRIPTION_PROJET VARCHAR(1500) NOT NULL,
    PRIMARY KEY (TAS_ID_PROJET)
);

CREATE TABLE TAS_MESSAGE (
    TAS_ID_MESSAGE INT NOT NULL AUTO_INCREMENT,
    TAS_ID_PERSO_MESSAGE INT NOT NULL,
    TAS_CONTENU_MESSAGE VARCHAR(100) NOT NULL,
    TAS_DATE_MESSAGE DATE NOT NULL,
    PRIMARY KEY (TAS_ID_MESSAGE),
    FOREIGN KEY (TAS_ID_PERSO_MESSAGE) REFERENCES TAS_PERSONNE (TAS_ID_PERSONNE)
); 