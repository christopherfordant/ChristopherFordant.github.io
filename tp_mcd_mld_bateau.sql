DROP TABLE IF EXISTS CROISIERE;
CREATE TABLE CROISIERE (
  ref_Croisiere_CROISIERE INT(10) AUTO_INCREMENT NOT NULL,
  designation_Croisiere_CROISIERE VARCHAR(50),
  PRIMARY KEY (ref_Croisiere_CROISIERE)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS DATE_CROISIERE;
CREATE TABLE DATE_CROISIERE (
  id_Date_DATE_CROISIERE INT(10) AUTO_INCREMENT NOT NULL,
  dateDebut_Croisiere_DATE_CROISIERE DATE,
  dateFin_Croisiere_DATE_CROISIERE DATE,
  id_Tarif_TARIF_CROISIERE INT(10),
  PRIMARY KEY (id_Date_DATE_CROISIERE)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS TARIF_CROISIERE;
CREATE TABLE TARIF_CROISIERE (
  id_Tarif_TARIF_CROISIERE INT(10) AUTO_INCREMENT NOT NULL,
  periode_Tarifaire_TARIF_CROISIERE VARCHAR(50),
  prix_Croisiere_TARIF_CROISIERE INT(4),
  PRIMARY KEY (id_Tarif_TARIF_CROISIERE)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS CLIENT;
CREATE TABLE CLIENT (
  id_Client_CLIENT INT(10) AUTO_INCREMENT NOT NULL,
  nom_Client_CLIENT VARCHAR(50),
  prenom_Client_CLIENT VARCHAR(50),
  nbDePlaceDemandee INT(5),
  PRIMARY KEY (id_Client_CLIENT)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS BROCHURE;
CREATE TABLE BROCHURE (
  id_Brochure_BROCHURE INT(10) AUTO_INCREMENT NOT NULL,
  PRIMARY KEY (id_Brochure_BROCHURE)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS AGENCE_DE_VOYAGE;
CREATE TABLE AGENCE_DE_VOYAGE (
  id_Agence_AGENCE_DE_VOYAGE INT(10) AUTO_INCREMENT NOT NULL,
  nomAgence_AGENCE_DE_VOYAGE VARCHAR(50),
  PRIMARY KEY (id_Agence_AGENCE_DE_VOYAGE)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS CARNET_ADRESSE;
CREATE TABLE CARNET_ADRESSE (
  id_Repertoire_REPERTOIRE_CONTACT INT(10) AUTO_INCREMENT NOT NULL,
  numeroRue_REPERTOIRE_CONTACT INT(4),
  Adresse_REPERTOIRE_CONTACT VARCHAR(50),
  cp_REPERTOIRE_CONTACT INT(5),
  Ville_REPERTOIRE_CONTACT VARCHAR(50),
  telephone_REPERTOIRE_CONTACT INT(10),
  pays_REPERTOIRE_CONTACT VARCHAR(25),
  siret_AGENCE_DE_VOYAGE INT(14),
  PRIMARY KEY (id_Repertoire_REPERTOIRE_CONTACT)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS CLUB_DE_VACANCES;
CREATE TABLE CLUB_DE_VACANCES (
  id_Club_CLUB_DE_VACANCES INT(10) AUTO_INCREMENT NOT NULL,
  nom_Club_CLUB_DE_VACANCES VARCHAR(25),
  PRIMARY KEY (id_Club_CLUB_DE_VACANCES)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS PAIEMENT;
CREATE TABLE PAIEMENT (
  id_paiement_PAIEMENT INT(10) AUTO_INCREMENT NOT NULL,
  date_paiement_PAIEMENT DATE,
  somme_PAIEMENT INT(5),
  id_Client_CLIENT INT(10),
  id_Reservation_RESERVATION INT(10),
  PRIMARY KEY (id_paiement_PAIEMENT)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS RESERVATION;
CREATE TABLE RESERVATION (
  id_Reservation_RESERVATION INT(10) AUTO_INCREMENT NOT NULL,
  nbDePlaceCommandee_RESERVATION INT(10),
  groupementParticipant BOOL,
  id_Enregistrement_ENREGISTREMENT INT(10),
  PRIMARY KEY (id_Reservation_RESERVATION)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS ENREGISTREMENT;
CREATE TABLE ENREGISTREMENT (
  id_Enregistrement_ENREGISTREMENT INT(10) AUTO_INCREMENT NOT NULL,
  nbParticipant_ENREGISTREMENT INT(10),
  ref_Croisiere_CROISIERE INT(10),
  PRIMARY KEY (id_Enregistrement_ENREGISTREMENT)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS BATEAU;
CREATE TABLE BATEAU (
  immatriculation_BATEAU INT(10) AUTO_INCREMENT NOT NULL,
  nomBateau_BATEAU VARCHAR(50),
  id_TypeBateau_CARACTERISTIQUE INT(10),
  PRIMARY KEY (immatriculation_BATEAU)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS CARACTERISTIQUE;
CREATE TABLE CARACTERISTIQUE (
  id_TypeBateau_CARACTERISTIQUE INT(10) AUTO_INCREMENT NOT NULL,
  typeBateau_CARACTERISTIQUE VARCHAR(25),
  nbPlaceBateau_CARACTERISTIQUE INT(10),
  PRIMARY KEY (id_TypeBateau_CARACTERISTIQUE)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS Se_Deroule;
CREATE TABLE Se_Deroule (
  id_Date_DATE_CROISIERE INT(10) AUTO_INCREMENT NOT NULL,
  ref_Croisiere_CROISIERE INT(10) NOT NULL,
  PRIMARY KEY (id_Date_DATE_CROISIERE, ref_Croisiere_CROISIERE)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS Lister;
CREATE TABLE Lister (
  ref_Croisiere_CROISIERE INT(10) AUTO_INCREMENT NOT NULL,
  id_Brochure_BROCHURE INT(10) NOT NULL,
  PRIMARY KEY (ref_Croisiere_CROISIERE, id_Brochure_BROCHURE)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS Spécifier;
CREATE TABLE Spécifier (
  id_Date_DATE_CROISIERE INT(10) AUTO_INCREMENT NOT NULL,
  id_Brochure_BROCHURE INT(10) NOT NULL,
  PRIMARY KEY (id_Date_DATE_CROISIERE, id_Brochure_BROCHURE)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS Indiquer;
CREATE TABLE Indiquer (
  id_Tarif_TARIF_CROISIERE INT(10) AUTO_INCREMENT NOT NULL,
  id_Brochure_BROCHURE INT(10) NOT NULL,
  PRIMARY KEY (id_Tarif_TARIF_CROISIERE, id_Brochure_BROCHURE)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS Inscription;
CREATE TABLE Inscription (
  id_Client_CLIENT INT(10) AUTO_INCREMENT NOT NULL,
  id_Agence_AGENCE_DE_VOYAGE INT(10) NOT NULL,
  NomCroisiere_Inscription VARCHAR(50),
  DateCroisiere_Inscription DATE,
  PRIMARY KEY (id_Client_CLIENT, id_Agence_AGENCE_DE_VOYAGE)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS Transmet;
CREATE TABLE Transmet (
  id_Agence_AGENCE_DE_VOYAGE INT(10) AUTO_INCREMENT NOT NULL,
  id_Club_CLUB_DE_VACANCES INT(10) NOT NULL,
  PRIMARY KEY (
    id_Agence_AGENCE_DE_VOYAGE,
    id_Club_CLUB_DE_VACANCES
  )
) ENGINE = InnoDB;
DROP TABLE IF EXISTS Lu;
CREATE TABLE Lu (
  id_Client_CLIENT INT(10) AUTO_INCREMENT NOT NULL,
  id_Brochure_BROCHURE INT(10) NOT NULL,
  PRIMARY KEY (id_Client_CLIENT, id_Brochure_BROCHURE)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS Reside;
CREATE TABLE Reside (
  id_Client_CLIENT INT(10) AUTO_INCREMENT NOT NULL,
  id_Repertoire_REPERTOIRE_CONTACT INT(10) NOT NULL,
  PRIMARY KEY (
    id_Client_CLIENT,
    id_Repertoire_REPERTOIRE_CONTACT
  )
) ENGINE = InnoDB;
DROP TABLE IF EXISTS Se_situe;
CREATE TABLE Se_situe (
  id_Agence_AGENCE_DE_VOYAGE INT(10) AUTO_INCREMENT NOT NULL,
  id_Repertoire_REPERTOIRE_CONTACT INT(10) NOT NULL,
  PRIMARY KEY (
    id_Agence_AGENCE_DE_VOYAGE,
    id_Repertoire_REPERTOIRE_CONTACT
  )
) ENGINE = InnoDB;
DROP TABLE IF EXISTS Est_Implante;
CREATE TABLE Est_Implante (
  id_Club_CLUB_DE_VACANCES INT(10) AUTO_INCREMENT NOT NULL,
  id_Repertoire_REPERTOIRE_CONTACT INT(10) NOT NULL,
  PRIMARY KEY (
    id_Club_CLUB_DE_VACANCES,
    id_Repertoire_REPERTOIRE_CONTACT
  )
) ENGINE = InnoDB;
DROP TABLE IF EXISTS Effectuer;
CREATE TABLE Effectuer (
  id_Club_CLUB_DE_VACANCES INT(10) AUTO_INCREMENT NOT NULL,
  id_Reservation_RESERVATION INT(10) NOT NULL,
  PRIMARY KEY (
    id_Club_CLUB_DE_VACANCES,
    id_Reservation_RESERVATION
  )
) ENGINE = InnoDB;
DROP TABLE IF EXISTS Confirmation;
CREATE TABLE Confirmation (
  id_Client_CLIENT INT(10) AUTO_INCREMENT NOT NULL,
  id_Club_CLUB_DE_VACANCES INT(10) NOT NULL,
  Reponse BOOL,
  PRIMARY KEY (id_Client_CLIENT, id_Club_CLUB_DE_VACANCES)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS Controle;
CREATE TABLE Controle (
  id_Club_CLUB_DE_VACANCES INT(10) AUTO_INCREMENT NOT NULL,
  id_paiement_PAIEMENT INT(10) NOT NULL,
  PRIMARY KEY (id_Club_CLUB_DE_VACANCES, id_paiement_PAIEMENT)
) ENGINE = InnoDB;
DROP TABLE IF EXISTS affecter;
CREATE TABLE affecter (
  immatriculation_BATEAU INT(10) AUTO_INCREMENT NOT NULL,
  id_Enregistrement_ENREGISTREMENT INT(10) NOT NULL,
  nbDeBateau INT(10),
  PRIMARY KEY (
    immatriculation_BATEAU,
    id_Enregistrement_ENREGISTREMENT
  )
) ENGINE = InnoDB;
ALTER TABLE DATE_CROISIERE
ADD CONSTRAINT FK_DATE_CROISIERE_id_Tarif_TARIF_CROISIERE FOREIGN KEY (id_Tarif_TARIF_CROISIERE) REFERENCES TARIF_CROISIERE (id_Tarif_TARIF_CROISIERE);
ALTER TABLE PAIEMENT
ADD CONSTRAINT FK_PAIEMENT_id_Client_CLIENT FOREIGN KEY (id_Client_CLIENT) REFERENCES CLIENT (id_Client_CLIENT);
ALTER TABLE PAIEMENT
ADD CONSTRAINT FK_PAIEMENT_id_Reservation_RESERVATION FOREIGN KEY (id_Reservation_RESERVATION) REFERENCES RESERVATION (id_Reservation_RESERVATION);
ALTER TABLE RESERVATION
ADD CONSTRAINT FK_RESERVATION_id_Enregistrement_ENREGISTREMENT FOREIGN KEY (id_Enregistrement_ENREGISTREMENT) REFERENCES ENREGISTREMENT (id_Enregistrement_ENREGISTREMENT);
ALTER TABLE ENREGISTREMENT
ADD CONSTRAINT FK_ENREGISTREMENT_ref_Croisiere_CROISIERE FOREIGN KEY (ref_Croisiere_CROISIERE) REFERENCES CROISIERE (ref_Croisiere_CROISIERE);
ALTER TABLE BATEAU
ADD CONSTRAINT FK_BATEAU_id_TypeBateau_CARACTERISTIQUE FOREIGN KEY (id_TypeBateau_CARACTERISTIQUE) REFERENCES CARACTERISTIQUE (id_TypeBateau_CARACTERISTIQUE);
ALTER TABLE Se_Deroule
ADD CONSTRAINT FK_Se_Deroule_id_Date_DATE_CROISIERE FOREIGN KEY (id_Date_DATE_CROISIERE) REFERENCES DATE_CROISIERE (id_Date_DATE_CROISIERE);
ALTER TABLE Se_Deroule
ADD CONSTRAINT FK_Se_Deroule_ref_Croisiere_CROISIERE FOREIGN KEY (ref_Croisiere_CROISIERE) REFERENCES CROISIERE (ref_Croisiere_CROISIERE);
ALTER TABLE Lister
ADD CONSTRAINT FK_Lister_ref_Croisiere_CROISIERE FOREIGN KEY (ref_Croisiere_CROISIERE) REFERENCES CROISIERE (ref_Croisiere_CROISIERE);
ALTER TABLE Lister
ADD CONSTRAINT FK_Lister_id_Brochure_BROCHURE FOREIGN KEY (id_Brochure_BROCHURE) REFERENCES BROCHURE (id_Brochure_BROCHURE);
ALTER TABLE Spécifier
ADD CONSTRAINT FK_Spécifier_id_Date_DATE_CROISIERE FOREIGN KEY (id_Date_DATE_CROISIERE) REFERENCES DATE_CROISIERE (id_Date_DATE_CROISIERE);
ALTER TABLE Spécifier
ADD CONSTRAINT FK_Spécifier_id_Brochure_BROCHURE FOREIGN KEY (id_Brochure_BROCHURE) REFERENCES BROCHURE (id_Brochure_BROCHURE);
ALTER TABLE Indiquer
ADD CONSTRAINT FK_Indiquer_id_Tarif_TARIF_CROISIERE FOREIGN KEY (id_Tarif_TARIF_CROISIERE) REFERENCES TARIF_CROISIERE (id_Tarif_TARIF_CROISIERE);
ALTER TABLE Indiquer
ADD CONSTRAINT FK_Indiquer_id_Brochure_BROCHURE FOREIGN KEY (id_Brochure_BROCHURE) REFERENCES BROCHURE (id_Brochure_BROCHURE);
ALTER TABLE Inscription
ADD CONSTRAINT FK_Inscription_id_Client_CLIENT FOREIGN KEY (id_Client_CLIENT) REFERENCES CLIENT (id_Client_CLIENT);
ALTER TABLE Inscription
ADD CONSTRAINT FK_Inscription_id_Agence_AGENCE_DE_VOYAGE FOREIGN KEY (id_Agence_AGENCE_DE_VOYAGE) REFERENCES AGENCE_DE_VOYAGE (id_Agence_AGENCE_DE_VOYAGE);
ALTER TABLE Transmet
ADD CONSTRAINT FK_Transmet_id_Agence_AGENCE_DE_VOYAGE FOREIGN KEY (id_Agence_AGENCE_DE_VOYAGE) REFERENCES AGENCE_DE_VOYAGE (id_Agence_AGENCE_DE_VOYAGE);
ALTER TABLE Transmet
ADD CONSTRAINT FK_Transmet_id_Club_CLUB_DE_VACANCES FOREIGN KEY (id_Club_CLUB_DE_VACANCES) REFERENCES CLUB_DE_VACANCES (id_Club_CLUB_DE_VACANCES);
ALTER TABLE Lu
ADD CONSTRAINT FK_Lu_id_Client_CLIENT FOREIGN KEY (id_Client_CLIENT) REFERENCES CLIENT (id_Client_CLIENT);
ALTER TABLE Lu
ADD CONSTRAINT FK_Lu_id_Brochure_BROCHURE FOREIGN KEY (id_Brochure_BROCHURE) REFERENCES BROCHURE (id_Brochure_BROCHURE);
ALTER TABLE Reside
ADD CONSTRAINT FK_Reside_id_Client_CLIENT FOREIGN KEY (id_Client_CLIENT) REFERENCES CLIENT (id_Client_CLIENT);
ALTER TABLE Reside
ADD CONSTRAINT FK_Reside_id_Repertoire_REPERTOIRE_CONTACT FOREIGN KEY (id_Repertoire_REPERTOIRE_CONTACT) REFERENCES CARNET_ADRESSE (id_Repertoire_REPERTOIRE_CONTACT);
ALTER TABLE Se_situe
ADD CONSTRAINT FK_Se_situe_id_Agence_AGENCE_DE_VOYAGE FOREIGN KEY (id_Agence_AGENCE_DE_VOYAGE) REFERENCES AGENCE_DE_VOYAGE (id_Agence_AGENCE_DE_VOYAGE);
ALTER TABLE Se_situe
ADD CONSTRAINT FK_Se_situe_id_Repertoire_REPERTOIRE_CONTACT FOREIGN KEY (id_Repertoire_REPERTOIRE_CONTACT) REFERENCES CARNET_ADRESSE (id_Repertoire_REPERTOIRE_CONTACT);
ALTER TABLE Est_Implante
ADD CONSTRAINT FK_Est_Implante_id_Club_CLUB_DE_VACANCES FOREIGN KEY (id_Club_CLUB_DE_VACANCES) REFERENCES CLUB_DE_VACANCES (id_Club_CLUB_DE_VACANCES);
ALTER TABLE Est_Implante
ADD CONSTRAINT FK_Est_Implante_id_Repertoire_REPERTOIRE_CONTACT FOREIGN KEY (id_Repertoire_REPERTOIRE_CONTACT) REFERENCES CARNET_ADRESSE (id_Repertoire_REPERTOIRE_CONTACT);
ALTER TABLE Effectuer
ADD CONSTRAINT FK_Effectuer_id_Club_CLUB_DE_VACANCES FOREIGN KEY (id_Club_CLUB_DE_VACANCES) REFERENCES CLUB_DE_VACANCES (id_Club_CLUB_DE_VACANCES);
ALTER TABLE Effectuer
ADD CONSTRAINT FK_Effectuer_id_Reservation_RESERVATION FOREIGN KEY (id_Reservation_RESERVATION) REFERENCES RESERVATION (id_Reservation_RESERVATION);
ALTER TABLE Confirmation
ADD CONSTRAINT FK_Confirmation_id_Client_CLIENT FOREIGN KEY (id_Client_CLIENT) REFERENCES CLIENT (id_Client_CLIENT);
ALTER TABLE Confirmation
ADD CONSTRAINT FK_Confirmation_id_Club_CLUB_DE_VACANCES FOREIGN KEY (id_Club_CLUB_DE_VACANCES) REFERENCES CLUB_DE_VACANCES (id_Club_CLUB_DE_VACANCES);
ALTER TABLE Controle
ADD CONSTRAINT FK_Controle_id_Club_CLUB_DE_VACANCES FOREIGN KEY (id_Club_CLUB_DE_VACANCES) REFERENCES CLUB_DE_VACANCES (id_Club_CLUB_DE_VACANCES);
ALTER TABLE Controle
ADD CONSTRAINT FK_Controle_id_paiement_PAIEMENT FOREIGN KEY (id_paiement_PAIEMENT) REFERENCES PAIEMENT (id_paiement_PAIEMENT);
ALTER TABLE affecter
ADD CONSTRAINT FK_affecter_immatriculation_BATEAU FOREIGN KEY (immatriculation_BATEAU) REFERENCES BATEAU (immatriculation_BATEAU);
ALTER TABLE affecter
ADD CONSTRAINT FK_affecter_id_Enregistrement_ENREGISTREMENT FOREIGN KEY (id_Enregistrement_ENREGISTREMENT) REFERENCES ENREGISTREMENT (id_Enregistrement_ENREGISTREMENT);