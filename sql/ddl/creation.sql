CREATE
OR REPLACE TYPE PROGRAMME AS OBJECT (Point_Ajoute NUMBER (3), Point_Retire NUMBER (3));

CREATE TABLE
  DEPENDRE (
    idTache_Fille NUMBER,
    idTache_Mere NUMBER,
    CONSTRAINT DEPENDRE_PK01 PRIMARY KEY (idTache_Fille, idTache_Mere),
    CONSTRAINT DEPENDRE_CK01 CHECK (idTache_Fille != idTache_Mere)
  );

CREATE TABLE
  ETRE_ASSIGNE (
    idUtilisateur NUMBER,
    idTache NUMBER,
    CONSTRAINT ETRE_ASSIGNE_PK02 PRIMARY KEY (idUtilisateur, idTache)
  );

CREATE TABLE
  LISTE (
    idListe NUMBER CONSTRAINT LISTE_PK03 PRIMARY KEY,
    Nom_Projet VARCHAR2 (128) CONSTRAINT LISTE_NN01 NOT NULL,
    idUtilisateur NUMBER CONSTRAINT LISTE_NN02 NOT NULL,
    CONSTRAINT LISTE_UQ01 UNIQUE (Nom_Projet, idUtilisateur)
  );

CREATE TABLE
  TACHE_ACTUELLE (
    idTache NUMBER CONSTRAINT TACHE_ACTUELLE_PK04 PRIMARY KEY,
    Titre VARCHAR2 (128) CONSTRAINT TACHE_ACTUELLE_NN04 NOT NULL,
    Priorite NUMBER (1),
    Categorie VARCHAR2 (128),
    Lien VARCHAR2 (256),
    Description VARCHAR2 (1024),
    Date_Echeance DATE,
    Status NUMBER (1) CONSTRAINT TACHE_ACTUELLE_NN05 NOT NULL,
    Date_Debut DATE,
    Date_Fin DATE,
    Intervalle INTERVAL DAY TO SECOND,
    Date_Realisation DATE,
    idListe NUMBER,
    idUtilisateur NUMBER CONSTRAINT TACHE_ACTUELLE_NN03 NOT NULL,
    CONSTRAINT TACHE_ACTUELLE_IM01 CHECK (
      Status = 0
      AND Date_Realisation IS NULL
    ),
    CONSTRAINT TACHE_ACTUELLE_CK04 CHECK (
      (
        Date_Debut IS NULL
        AND Intervalle IS NULL
      )
      OR (
        Date_Debut IS NOT NULL
        AND Intervalle IS NOT NULL
      )
    ),
    CONSTRAINT TACHE_ACTUELLE_CK05 CHECK (
      Date_Fin IS NULL
      OR (
        Date_Debut IS NOT NULL
        AND Intervalle IS NOT NULL
      )
    ),
    CONSTRAINT TACHE_ACTUELLE_CK06 CHECK (
      Date_Debut IS NULL
      OR Date_Echeance IS NOT NULL
    )
  );

CREATE TABLE
  TACHE_PASSEE (
    idTache NUMBER CONSTRAINT TACHE_PASSEE_PK04 PRIMARY KEY,
    Titre VARCHAR2 (128) CONSTRAINT TACHE_PASSEE_NN04 NOT NULL,
    Priorite NUMBER (1),
    Categorie VARCHAR2 (128),
    Lien VARCHAR2 (256),
    Description VARCHAR2 (1024),
    Date_Echeance DATE,
    Status NUMBER (1) CONSTRAINT TACHE_PASSEE_NN05 NOT NULL,
    Date_Debut DATE,
    Date_Fin DATE,
    Intervalle INTERVAL DAY TO SECOND,
    Date_Realisation DATE,
    idListe NUMBER,
    idUtilisateur NUMBER CONSTRAINT TACHE_PASSEE_NN03 NOT NULL,
    CONSTRAINT TACHE_PASSEE_IM02 CHECK (
      Status = 0
      OR Status = 1
    ),
    CONSTRAINT TACHE_PASSEE_CK02 CHECK (
      (
        Status = 1
        AND Date_Realisation IS NOT NULL
      )
      OR (
        Status = 0
        AND Date_Realisation IS NULL
        AND Date_Echeance IS NOT NULL
      )
    ),
    CONSTRAINT TACHE_PASSEE_CK03 CHECK (
      Date_Realisation IS NULL
      OR Date_Echeance IS NULL
      OR Date_Realisation <= Date_Echeance
    ),
    CONSTRAINT TACHE_PASSEE_CK04 CHECK (
      (
        Date_Debut IS NULL
        AND Intervalle IS NULL
      )
      OR (
        Date_Debut IS NOT NULL
        AND Intervalle IS NOT NULL
      )
    ),
    CONSTRAINT TACHE_PASSEE_CK05 CHECK (
      Date_Fin IS NULL
      OR (
        Date_Debut IS NOT NULL
        AND Intervalle IS NOT NULL
      )
    ),
    CONSTRAINT TACHE_PASSEE_CK06 CHECK (
      Date_Debut IS NULL
      OR Date_Echeance IS NOT NULL
    )
  );

CREATE TABLE
  UTILISATEUR (
    idUtilisateur NUMBER CONSTRAINT UTILISATEUR_PK05 PRIMARY KEY,
    Nom VARCHAR2 (128) CONSTRAINT UTILISATEUR_NN06 NOT NULL,
    Prenom VARCHAR2 (128) CONSTRAINT UTILISATEUR_NN07 NOT NULL,
    Adresse VARCHAR2 (256),
    Date_Naissance DATE,
    Date_Inscription DATE CONSTRAINT UTILISATEUR_NN08 NOT NULL,
    Login VARCHAR2 (10) CONSTRAINT UTILISATEUR_UQ02_NN09 UNIQUE NOT NULL,
    Mot_de_passe VARCHAR2 (128) CONSTRAINT UTILISATEUR_NN10 NOT NULL,
    Score NUMBER,
    Programme PROGRAMME,
    CONSTRAINT UTILISATEUR_CK07 CHECK (
      Score IS NULL
      OR Programme IS NOT NULL
    )
  );

CREATE
OR REPLACE VIEW TACHE AS
SELECT
  *
FROM
  TACHE_ACTUELLE
UNION ALL
SELECT
  *
FROM
  TACHE_PASSEE;

ALTER TABLE ETRE_ASSIGNE ADD CONSTRAINT ETRE_ASSIGNE_FK01 FOREIGN KEY (idUtilisateur) REFERENCES UTILISATEUR (idUtilisateur) ON DELETE CASCADE;

ALTER TABLE LISTE ADD CONSTRAINT LISTE_FK03 FOREIGN KEY (idUtilisateur) REFERENCES UTILISATEUR (idUtilisateur) ON DELETE CASCADE;

ALTER TABLE TACHE_ACTUELLE ADD CONSTRAINT TACHE_ACTUELLE_FK05 FOREIGN KEY (idListe) REFERENCES LISTE (idListe) ON DELETE SET NULL;

ALTER TABLE TACHE_ACTUELLE ADD CONSTRAINT TACHE_ACTUELLE_FK04 FOREIGN KEY (idUtilisateur) REFERENCES UTILISATEUR (idUtilisateur) ON DELETE CASCADE;

ALTER TABLE TACHE_PASSEE ADD CONSTRAINT TACHE_PASSEE_FK05 FOREIGN KEY (idListe) REFERENCES LISTE (idListe) ON DELETE SET NULL;

ALTER TABLE TACHE_PASSEE ADD CONSTRAINT TACHE_PASSEE_FK04 FOREIGN KEY (idUtilisateur) REFERENCES UTILISATEUR (idUtilisateur) ON DELETE CASCADE;
