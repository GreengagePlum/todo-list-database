---------------------- Procédures et fonctions -------------------------
-- 1
-- Pour un utilisateur donné, sortie dans la console
BEGIN
    -- idUtilisateur => [1; 5]
    -- Perdu => 1 ou 0
    Dbms_Output.Put_Line(Points_Semaine(2, 0));
END;
/

-- Utilisation dans une requête
SELECT U.Idutilisateur, Points_Semaine(U.Idutilisateur, 0)
FROM Utilisateur U;

-- On insère une tâche bien accomplie
INSERT INTO Tache (Idtache)
VALUES (102);

INSERT INTO Tache_Passee (Idtache,
                          Titre,
                          Priorite,
                          Categorie,
                          Lien,
                          Description,
                          Date_Echeance,
                          Statut,
                          Idperiodicite,
                          Date_Realisation,
                          Idliste,
                          Idutilisateur)
VALUES (102,
        'Scrumptious',
        NULL,
        'Cringe',
        'http://facebook.com/site?ad=115',
        NULL,
        TO_DATE('2024-05-07', 'YYYY-MM-DD'),
        1,
        NULL,
        TO_DATE('2024-01-05', 'YYYY-MM-DD'), -- Mettez ici une date dans les 7 derniers jours
        NULL,
        2);

-- On vérifie que la tâche ajoutée existe bien là où il faut
SELECT *
FROM Taches T
WHERE T.Idtache = 102;

-- Si nécessaire pour que l'insértion se présente partout
COMMIT;

-- 2
-- Vérifier que l'enregistrement de l'execution périodique tous les lundis à 8h s'est bien effectué
SELECT Job, Next_Date, Interval, What
FROM User_Jobs;

-- Le nombre de tâches dans chacune des deux tables
-- Cela va changer avec l'ajout ou le déplacement d'une tâche
SELECT *
FROM (SELECT COUNT(Ta.Idtache) FROM Tache_Actuelle Ta),
     (SELECT COUNT(Tp.Idtache) FROM Tache_Passee Tp);

-- Initialement pas de tâche dépassée donc la procédure ne fait rien
BEGIN
    Archiver_Taches();
END;
/

-- On insère une tâche dépassée non accomplie
INSERT INTO Tache (Idtache)
VALUES (101);

INSERT INTO Tache_Actuelle (Idtache,
                            Titre,
                            Priorite,
                            Categorie,
                            Lien,
                            Description,
                            Date_Echeance,
                            Statut,
                            Idperiodicite,
                            Date_Realisation,
                            Idliste,
                            Idutilisateur)
VALUES (101,
        'Scrumptious',
        NULL,
        'Cringe',
        'http://facebook.com/site?ad=115',
        NULL,
        TO_DATE('2022-05-07', 'YYYY-MM-DD'), -- La date d'écheance est bien dans le passé
        0,
        NULL,
        NULL,
        NULL,
        3);

-- On vérifie que la tâche ajoutée existe bien là où il faut
SELECT *
FROM Taches T
WHERE T.Idtache = 101;

SELECT *
FROM Tache_Actuelle T
WHERE T.Idtache = 101;

SELECT *
FROM Tache_Passee T
WHERE T.Idtache = 101;

-- Si nécessaire pour que l'insértion se présente partout
COMMIT;

-- 3
DECLARE
    -- Declare variables to hold column values
    Tache              NUMBER;

    -- Declare a cursor variable to hold the result set
    Suggestions_Cursor SYS_REFCURSOR;

BEGIN
    -- Call your function and get the cursor
    Suggestions_Cursor := Generer_Suggestions(2, 5, 1, 1);
    -- Suggestions_Cursor := Generer_Suggestions(2); -- Utilisation des valeurs par défaut

    Dbms_Output.Put_Line('Taches suggerees');

    -- Loop through the result set
    LOOP
        -- Fetch a row from the cursor into variables
        FETCH Suggestions_Cursor INTO Tache;

        -- Exit the loop if no more rows
        EXIT WHEN Suggestions_Cursor%NOTFOUND;

        -- Print the values on the screen or use them as needed
        Dbms_Output.Put_Line('Tache : ' || Tache);
    END LOOP;

    -- Close the cursor
    CLOSE Suggestions_Cursor;

END;
/
