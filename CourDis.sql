CREATE DATABASE myzoom;

USE myzoom;

CREATE TABLE Utilisateurs(
    utilisateurID INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(255),
    email VARCHAR(255),
    motDePasse VARCHAR(255),
    dateInscription DATE
);

CREATE TABLE Reunions(
    reunionID INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(255),
    dateHeure DATETIME,
    codeAcces VARCHAR(10),
    dateInscription DATE,
    createurID INT,
    FOREIGN KEY (createurID) REFERENCES Utilisateurs(utilisateurID)
);

CREATE TABLE Participants(
	participantID INT PRIMARY KEY,
    utilisateurID INT,
    reunionID INT,
    estPresent BOOLEAN,
    FOREIGN KEY (utilisateurID) REFERENCES Utilisateurs(utilisateurID),
    FOREIGN KEY (reunionID) REFERENCES Reunions(reunionID)
);

CREATE TABLE Messages(
	messageID INT PRIMARY KEY,
    contenu TEXT,
    dateHeure DATETIME,
    envoyeurID INT,
    reunionID INT,
    FOREIGN KEY (envoyeurID) REFERENCES Utilisateurs(utilisateurID),
    FOREIGN KEY (reunionID) REFERENCES Reunions(reunionID)
);