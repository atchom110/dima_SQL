-- Création de la table "Clients"
CREATE TABLE dima.Clients (
    ClientID INT PRIMARY KEY,
    Nom VARCHAR(50),
    Prenom VARCHAR(50),
    Adresse VARCHAR(100),
    Email VARCHAR(100),
    NumeroTelephone VARCHAR(15)
);

ALTER TABLE dima.Clients ADD zipCode DECIMAL;
ALTER TABLE dima.Clients DROP COLUMN zipCode;

-- Afficher la structure de la Table Clients -- 
DESCRIBE dima.Clients;

--  Nom VARCHAR(40) UNIQUE,  Unique permet de specifier qu'un seul enregistrement doit porter ce nom ---

-- Création de la table "Fournisseurs"
CREATE TABLE dima.Fournisseurs (
	FournisseurID INT PRIMARY KEY,
    NomFournisseur VARCHAR(200),
    Adresse VARCHAR(100),
    Email VARCHAR(200),
    NumeroTelephone VARCHAR(200)
    ) ;
    
-- Création de la table "Produits"
CREATE TABLE dima.Produits (
    ProduitID INT PRIMARY KEY,
    NomProduit VARCHAR(50),
    Description TEXT,
    PrixUnitaire DECIMAL(10, 2)
);
-- Création de la table "Employes"
 CREATE TABLE dima.Employes (
	EmployeID INT,
    Nom VARCHAR(200),
    Prenom VARCHAR(200),
    Fonction VARCHAR(200),
    Email VARCHAR(200),
    NuméroTelephone VARCHAR(200),
    PRIMARY KEY (EmployeID)
    ) ;
    
-- Création de la table "Ventes"
CREATE TABLE dima.Ventes (
    VenteID INT PRIMARY KEY,
    DateVente DATE,
	EmployeID INT,
    ClientID INT REFERENCES Clients(ClientID),
    ProduitID INT REFERENCES Produits(ProduitID),
    FOREIGN KEY (EmployeID) REFERENCES Employes(EmployeID),
	FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    QuantiteVendue INT,
    MontantTotal DECIMAL(10, 2)
);
-- ajout de la Colonne FournisseurID dans la table Produits --
Alter table dima.Produits ADD Column FournisseurID int;
-- ajout de la cle etrangere du fourniseur dans la table produit --
Alter table dima.Produits ADD CONSTRAINT FOREIGN KEY (FournisseurID) REFERENCES Fournisseurs(FournisseurID);

   
-- Ajout de la cle etrangere "produitID " sur la table Ventes --
Alter table dima.Ventes ADD CONSTRAINT FOREIGN KEY (ProduitID) REFERENCES Produits(ProduitID);

  -- Vider le contenu de la table Ventes --
    TRUNCATE TABLE dima.Ventes;
