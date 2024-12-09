-- Création de la table Robot
CREATE TABLE Robot (
    id_robot INT PRIMARY KEY,
    modele VARCHAR(255),
    nom VARCHAR(255),
    etat ENUM('actif', 'en réparation', 'décommissionné', 'disparu')
);

-- Création de la table Humain
CREATE TABLE Humain (
    id_humain INT PRIMARY KEY,
    nom VARCHAR(255),
    poste VARCHAR(255),
    anciennete INT
);

-- Création de la table Membre
CREATE TABLE Membre (
    id_membre INT PRIMARY KEY,
    id_humain INT NULL,
    id_robot INT NULL,
    FOREIGN KEY (id_humain) REFERENCES Humain(id_humain),
    FOREIGN KEY (id_robot) REFERENCES Robot(id_robot)
);

-- Création de la table Action
CREATE TABLE Action (
    id_action INT PRIMARY KEY,
    description VARCHAR(255),
    date_debut DATETIME,
    date_fin DATETIME,
    id_rapport INT NULL,
    FOREIGN KEY (id_rapport) REFERENCES Rapport(id_rapport)
);

-- Création de la table Rapport
CREATE TABLE Rapport (
    id_rapport INT PRIMARY KEY,
    type_loi VARCHAR(255),
    description TEXT
);

-- Création de la table Participent (table de liaison)
CREATE TABLE Participent (
    id_membre INT,
    id_action INT,
    PRIMARY KEY (id_membre, id_action),
    FOREIGN KEY (id_membre) REFERENCES Membre(id_membre),
    FOREIGN KEY (id_action) REFERENCES Action(id_action)
);
