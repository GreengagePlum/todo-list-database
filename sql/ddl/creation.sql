------------------------------- Tables ---------------------------------
CREATE TABLE Comporte
(
    Programme VARCHAR2(128),
    Idscore   NUMBER,
    CONSTRAINT Comporte_Pk06 PRIMARY KEY (Programme, Idscore)
);

CREATE TABLE Depend_De
(
    Idtache_Fille NUMBER,
    Idtache_Mere  NUMBER,
    CONSTRAINT Depend_De_Pk01 PRIMARY KEY (Idtache_Fille, Idtache_Mere),
    CONSTRAINT Depend_De_Ck01 CHECK (Idtache_Fille != Idtache_Mere)
);

CREATE TABLE Est_Assigne
(
    Idutilisateur NUMBER,
    Idtache       NUMBER,
    CONSTRAINT Est_Assigne_Pk02 PRIMARY KEY (Idutilisateur, Idtache)
);

CREATE TABLE Liste
(
    Idliste       NUMBER
        CONSTRAINT Liste_Pk03 PRIMARY KEY,
    Nom_Projet    VARCHAR2(128)
        CONSTRAINT Liste_Nn01 NOT NULL,
    Idutilisateur NUMBER
        CONSTRAINT Liste_Nn02 NOT NULL,
    CONSTRAINT Liste_Uq01 UNIQUE (Nom_Projet, Idutilisateur)
);

CREATE TABLE Periodicite
(
    Idperiodicite NUMBER
        CONSTRAINT Periodicite_Pk07 PRIMARY KEY,
    Date_Debut    DATE,
    Date_Fin      DATE,
    Intervalle    INTERVAL DAY TO SECOND,
    CONSTRAINT Periodicite_Ck04 CHECK (
        (
            Date_Debut IS NULL
                AND Intervalle IS NULL
            )
            OR (
            Date_Debut IS NOT NULL
                AND Intervalle IS NOT NULL
            )
        ),
    CONSTRAINT Periodicite_Ck05 CHECK (
        Date_Fin IS NULL
            OR (
            Date_Debut IS NOT NULL
                AND Intervalle IS NOT NULL
            )
        )
);

CREATE TABLE Score
(
    Idscore   NUMBER
        CONSTRAINT Score_Pk08 PRIMARY KEY,
    Points    NUMBER(3)
        CONSTRAINT Score_Nn12 NOT NULL,
    Categorie VARCHAR2(128)
        CONSTRAINT Score_Nn13 NOT NULL,
    CONSTRAINT Score_Ck07 CHECK (Points >= 0)
);

CREATE TABLE Tache
(
    Idtache NUMBER
        CONSTRAINT Tache_Pk04 PRIMARY KEY
);

CREATE TABLE Tache_Actuelle
(
    Idtache          NUMBER
        CONSTRAINT Tache_Actuelle_Pk04 PRIMARY KEY,
    Titre            VARCHAR2(128)
        CONSTRAINT Tache_Actuelle_Nn04 NOT NULL,
    Priorite         NUMBER(1),
    Categorie        VARCHAR2(128)
        CONSTRAINT Tache_Actuelle_Nn11 NOT NULL,
    Lien             VARCHAR2(256),
    Description      VARCHAR2(1024),
    Date_Echeance    DATE,
    Statut           NUMBER(1)
        CONSTRAINT Tache_Actuelle_Nn05 NOT NULL,
    Idperiodicite    NUMBER,
    Date_Realisation DATE,
    Idliste          NUMBER,
    Idutilisateur    NUMBER
        CONSTRAINT Tache_Actuelle_Nn03 NOT NULL,
    CONSTRAINT Tache_Actuelle_Im01 CHECK (
        Statut = 0
            AND Date_Realisation IS NULL
        )
);

CREATE TABLE Tache_Passee
(
    Idtache          NUMBER
        CONSTRAINT Tache_Passee_Pk04 PRIMARY KEY,
    Titre            VARCHAR2(128)
        CONSTRAINT Tache_Passee_Nn04 NOT NULL,
    Priorite         NUMBER(1),
    Categorie        VARCHAR2(128)
        CONSTRAINT Tache_Passee_Nn11 NOT NULL,
    Lien             VARCHAR2(256),
    Description      VARCHAR2(1024),
    Date_Echeance    DATE,
    Statut           NUMBER(1)
        CONSTRAINT Tache_Passee_Nn05 NOT NULL,
    Idperiodicite    NUMBER,
    Date_Realisation DATE,
    Idliste          NUMBER,
    Idutilisateur    NUMBER
        CONSTRAINT Tache_Passee_Nn03 NOT NULL,
    CONSTRAINT Tache_Passee_Im02 CHECK (
        Statut = 0
            OR Statut = 1
        ),
    CONSTRAINT Tache_Passee_Ck02 CHECK (
        (
            Statut = 1
                AND Date_Realisation IS NOT NULL
            )
            OR (
            Statut = 0
                AND Date_Realisation IS NULL
                AND Date_Echeance IS NOT NULL
            )
        ),
    CONSTRAINT Tache_Passee_Ck03 CHECK (
        Date_Realisation IS NULL
            OR Date_Echeance IS NULL
            OR Date_Realisation <= Date_Echeance
        )
);

CREATE TABLE Utilisateur
(
    Idutilisateur    NUMBER
        CONSTRAINT Utilisateur_Pk05 PRIMARY KEY,
    Nom              VARCHAR2(128)
        CONSTRAINT Utilisateur_Nn06 NOT NULL,
    Prenom           VARCHAR2(128)
        CONSTRAINT Utilisateur_Nn07 NOT NULL,
    Adresse          VARCHAR2(256),
    Date_Naissance   DATE,
    Date_Inscription DATE
        CONSTRAINT Utilisateur_Nn08 NOT NULL,
    Login            VARCHAR2(10)
        CONSTRAINT Utilisateur_Uq02_Nn09 UNIQUE NOT NULL,
    Mot_De_Passe     VARCHAR2(128)
        CONSTRAINT Utilisateur_Nn10 NOT NULL,
    Score            NUMBER,
    Programme        VARCHAR2(128)
);

--------------------------------- Vues ---------------------------------
CREATE OR REPLACE VIEW Taches AS
SELECT *
FROM Tache_Actuelle
UNION ALL
SELECT *
FROM Tache_Passee;

------------------------- Index pour la requête 1 ----------------------
CREATE INDEX Idx_Liste_Utilisateur_Adresse ON Liste (Idutilisateur, Idliste);

CREATE INDEX Idx_Utilisateur_Adresse ON Utilisateur (Adresse);

CREATE INDEX Idx_Taches_Actuelle_Liste ON Tache_Actuelle (Idliste);

CREATE INDEX Idx_Taches_Passee_Liste ON Tache_Passee (Idliste);

------------------------- Index pour la requête 2 ----------------------
CREATE INDEX Idx_Comporte_Score ON Comporte (Idscore);

CREATE INDEX Idx_Score_Programme ON Score (Categorie);

------------------------- Index pour la requête 3 ----------------------
CREATE INDEX Idx_Utilisateur_Tache_Actuelle ON Tache_Actuelle (
                                                               Idutilisateur,
                                                               Statut,
                                                               Date_Echeance,
                                                               Idperiodicite
    );

CREATE INDEX Idx_Utilisateur_Tache_Passee ON Tache_Passee (
                                                           Idutilisateur,
                                                           Statut,
                                                           Date_Echeance,
                                                           Idperiodicite
    );

------------------------- Index pour la requête 4 ----------------------
CREATE INDEX Idx_Tache_Actuelle_Statut_Dateecheance ON Tache_Actuelle (Statut, Date_Echeance);

CREATE INDEX Idx_Tache_Passee_Statut_Dateecheance ON Tache_Passee (Statut, Date_Echeance);

------------------------- Index pour la requête 5 ----------------------
CREATE INDEX Idx_Tache_Actuelle_Utilisateur_Statut_Daterealisation ON Tache_Actuelle (
                                                                                      Idutilisateur,
                                                                                      Statut,
                                                                                      Date_Realisation,
                                                                                      Date_Echeance
    );

CREATE INDEX Idx_Tache_Passee_Utilisateur_Statut_Daterealisation ON Tache_Passee (
                                                                                  Idutilisateur,
                                                                                  Statut,
                                                                                  Date_Realisation,
                                                                                  Date_Echeance
    );

---------------------- Contraintes supplémentaires ---------------------
ALTER TABLE Comporte
    ADD CONSTRAINT Comporte_Fk06 FOREIGN KEY (Idscore) REFERENCES Score (Idscore);

ALTER TABLE Depend_De
    ADD CONSTRAINT Depend_De_Fk08 FOREIGN KEY (Idtache_Fille) REFERENCES Tache (Idtache) ON DELETE CASCADE;

ALTER TABLE Depend_De
    ADD CONSTRAINT Depend_De_Fk09 FOREIGN KEY (Idtache_Mere) REFERENCES Tache (Idtache) ON DELETE CASCADE;

ALTER TABLE Est_Assigne
    ADD CONSTRAINT Est_Assigne_Fk01 FOREIGN KEY (Idutilisateur) REFERENCES Utilisateur (Idutilisateur) ON DELETE CASCADE;

ALTER TABLE Est_Assigne
    ADD CONSTRAINT Est_Assigne_Fk10 FOREIGN KEY (Idtache) REFERENCES Tache (Idtache) ON DELETE CASCADE;

ALTER TABLE Liste
    ADD CONSTRAINT Liste_Fk03 FOREIGN KEY (Idutilisateur) REFERENCES Utilisateur (Idutilisateur) ON DELETE CASCADE;

ALTER TABLE Tache_Actuelle
    ADD CONSTRAINT Tache_Actuelle_Fk11 FOREIGN KEY (Idtache) REFERENCES Tache (Idtache) ON DELETE CASCADE;

ALTER TABLE Tache_Actuelle
    ADD CONSTRAINT Tache_Actuelle_Fk05 FOREIGN KEY (Idliste) REFERENCES Liste (Idliste) ON DELETE SET NULL;

ALTER TABLE Tache_Actuelle
    ADD CONSTRAINT Tache_Actuelle_Fk04 FOREIGN KEY (Idutilisateur) REFERENCES Utilisateur (Idutilisateur) ON DELETE CASCADE;

ALTER TABLE Tache_Actuelle
    ADD CONSTRAINT Tache_Actuelle_Fk07 FOREIGN KEY (Idperiodicite) REFERENCES Periodicite (Idperiodicite);

ALTER TABLE Tache_Passee
    ADD CONSTRAINT Tache_Passee_Fk11 FOREIGN KEY (Idtache) REFERENCES Tache (Idtache) ON DELETE CASCADE;

ALTER TABLE Tache_Passee
    ADD CONSTRAINT Tache_Passee_Fk05 FOREIGN KEY (Idliste) REFERENCES Liste (Idliste) ON DELETE SET NULL;

ALTER TABLE Tache_Passee
    ADD CONSTRAINT Tache_Passee_Fk04 FOREIGN KEY (Idutilisateur) REFERENCES Utilisateur (Idutilisateur) ON DELETE CASCADE;

ALTER TABLE Tache_Passee
    ADD CONSTRAINT Tache_Passee_Fk07 FOREIGN KEY (Idperiodicite) REFERENCES Periodicite (Idperiodicite);

---------------------- Procédures et fonctions -------------------------
-- 1
-- Renvoie NULL si l'utilisateur n'utilise pas de programme
-- Sinon renvoie la somme des points concerné (dont 0 si pas de tâche concernée dans la semaine courante)
-- en fonction du deuxième argument: 0 pour nombre de points gagnés, 1 pour nombre de points perdus.
CREATE OR REPLACE FUNCTION Points_Semaine(Idutilisateur IN NUMBER, Perdu IN NUMBER) RETURN NUMBER IS
    Points            NUMBER := 0;
    Contrainte        VARCHAR2(128);
    Utilise_Programme Utilisateur.Programme%TYPE;

BEGIN

    SELECT U.Programme
    INTO Utilise_Programme
    FROM Utilisateur U
    WHERE U.Idutilisateur = Points_Semaine.Idutilisateur;

    IF Utilise_Programme IS NULL THEN
        RETURN NULL;
    END IF;

    IF Perdu IS NULL OR Perdu = 0 THEN
        Contrainte := 'tac.Statut = 1 AND (SYSDATE - 7) <= tac.Date_Realisation';
    ELSE
        Contrainte := 'tac.Statut = 0 AND (SYSDATE - 7) <= tac.Date_Echeance AND tac.Date_Echeance < SYSDATE';
    END IF;

    EXECUTE IMMEDIATE 'SELECT COALESCE((SELECT SUM(cat.Points)
    FROM (SELECT u.idUtilisateur, s.Categorie, s.Points
    FROM UTILISATEUR u,
        COMPORTE c,
        SCORE s
    WHERE u.Programme = c.Programme
        AND c.idScore = s.idScore) cat
        JOIN

        (SELECT u.idUtilisateur, t.Categorie, t.Statut, t.Date_Echeance, t.Date_Realisation
    FROM UTILISATEUR u,
        Taches t
    WHERE u.idUtilisateur = t.idUtilisateur

    UNION ALL
    SELECT u.idUtilisateur, t.Categorie, t.Statut, t.Date_Echeance, t.Date_Realisation
    FROM UTILISATEUR u,
        EST_ASSIGNE a,
        Taches t
    WHERE u.idUtilisateur = a.idUtilisateur
        AND a.idTache = t.idTache) tac ON cat.idUtilisateur = tac.idUtilisateur AND cat.Categorie = tac.Categorie
    WHERE cat.idUtilisateur = ' || Idutilisateur || ' AND ' || Contrainte ||
                      ' GROUP by cat.idUtilisateur), 0) AS bilan_points FROM DUAL' INTO Points;

    RETURN Points;

END Points_Semaine;

-- 2
-- Je copie les lignes affectées dans une variable pour ne pas avoir de problèmes
-- de concurrence lors de l'opération de transfert à cause d'un changement
-- dans les données qui arrive entre l'insertion et la suppression qui fait
-- qu'il y a plus de données supprimées alors que celles ci n'étaient pas prises
-- en compte lors de l'insertion auparavant et donc il peut y avoir de données perdues.
CREATE OR REPLACE PROCEDURE Archiver_Taches IS
    PRAGMA AUTONOMOUS_TRANSACTION;
    TYPE Rowtype IS TABLE OF Taches%ROWTYPE;
    Lignes_A_Deplacer Rowtype := Rowtype();
BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE Tache_Actuelle DISABLE ALL TRIGGERS';
    EXECUTE IMMEDIATE 'ALTER TABLE Tache_Passee DISABLE ALL TRIGGERS';

    SELECT * BULK COLLECT
    INTO Lignes_A_Deplacer
    FROM Tache_Actuelle Ta
    WHERE Ta.Statut = 0
      AND Ta.Date_Echeance < SYSDATE;

    FOR I IN 1..Lignes_A_Deplacer.Count
        LOOP
            INSERT INTO Tache_Passee VALUES Lignes_A_Deplacer(I);
        END LOOP;

    FOR I IN 1..Lignes_A_Deplacer.Count
        LOOP
            DELETE FROM Tache_Actuelle WHERE Idtache = Lignes_A_Deplacer(I).Idtache;
        END LOOP;

    EXECUTE IMMEDIATE 'ALTER TABLE Tache_Actuelle ENABLE ALL TRIGGERS';
    EXECUTE IMMEDIATE 'ALTER TABLE Tache_Passee ENABLE ALL TRIGGERS';

    COMMIT;
END Archiver_Taches;

ALTER SESSION SET NLS_DATE_LANGUAGE = 'ENGLISH';

DECLARE
    V_Travail_No NUMBER;
BEGIN
    Dbms_Job.Submit(Job => V_Travail_No,
                    What => 'Archiver_Taches;',
                    Next_Date => TRUNC(NEXT_DAY(SYSDATE, 'MONDAY')) + 8 / 24,
                    Interval => 'TRUNC(NEXT_DAY(SYSDATE, ''MONDAY'')) + 8 / 24 + 7');
    COMMIT;
    Dbms_Output.Put_Line('Le numéro du travail ' || V_Travail_No);
END;

-- 3
-- Je ne vais même pas tenter ça en PL/SQL. Java, ça aurait pu le faire, mais ici ce n'est pas le but.
CREATE OR REPLACE FUNCTION Generer_Suggestions(
    P_Idutilisateur IN NUMBER,
    P_N IN             NUMBER DEFAULT 5,
    P_X IN             NUMBER DEFAULT 3,
    P_Y IN             NUMBER DEFAULT 1
) RETURN SYS_REFCURSOR
    IS
    -- Declare a cursor variable to hold the result set
    Suggestions_Cursor SYS_REFCURSOR;

BEGIN
    -- Use a common table expression (CTE) to find similar users and their common tasks
    OPEN Suggestions_Cursor FOR
        WITH Usertasks AS (
            -- Select tasks of the target user
            SELECT DISTINCT T.Idtache
            FROM Taches T
            WHERE T.Idutilisateur = P_Idutilisateur)
           , Similarusers AS (
            -- Identify users with at least X similar tasks
            SELECT E.Idutilisateur, COUNT(E.Idtache) AS Commontasks
            FROM Est_Assigne E
            WHERE E.Idtache IN (SELECT Idtache FROM Usertasks)
              AND E.Idutilisateur != P_Idutilisateur
            GROUP BY E.Idutilisateur
            HAVING COUNT(E.Idtache) >= P_X)
           , Commontasks AS (
            -- Identify common tasks among similar users
            SELECT E.Idtache
            FROM Est_Assigne E
            WHERE E.Idutilisateur IN (SELECT Idutilisateur FROM Similarusers)
              AND E.Idtache NOT IN (SELECT Idtache FROM Usertasks)
            GROUP BY E.Idtache
            HAVING COUNT(E.Idtache) >= P_Y)
           , Taskfrequency AS (
            -- Rank common tasks by frequency
            SELECT T.Idtache, COUNT(T.Idtache) AS Frequency
            FROM Est_Assigne T
            WHERE T.Idtache IN (SELECT Idtache FROM Commontasks)
            GROUP BY T.Idtache
            ORDER BY COUNT(T.Idtache) DESC)
        -- Select the top N tasks as suggestions
        SELECT Idtache
        FROM Taskfrequency
        WHERE Rownum <= P_N;

    -- Return the cursor variable
    RETURN Suggestions_Cursor;
END Generer_Suggestions;
