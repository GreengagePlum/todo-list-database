DELETE FROM UTILISATEUR;

INSERT INTO
  UTILISATEUR (
    idUtilisateur,
    Nom,
    Prenom,
    Adresse,
    Date_Naissance,
    Date_Inscription,
    Login,
    Mot_de_passe,
    Score,
    Programme
  )
VALUES
  (
    1,
    'Dillard',
    'Xena',
    NULL,
    TO_DATE ('1996-07-11', 'YYYY-MM-DD'),
    TO_DATE ('2023-09-24', 'YYYY-MM-DD'),
    'XDillard01',
    'FsI2_1BrP8H_M',
    NULL,
    NULL
  );

INSERT INTO
  UTILISATEUR (
    idUtilisateur,
    Nom,
    Prenom,
    Adresse,
    Date_Naissance,
    Date_Inscription,
    Login,
    Mot_de_passe,
    Score,
    Programme
  )
VALUES
  (
    2,
    'Leonard',
    'Idola',
    'États-Unis',
    TO_DATE ('2003-01-27', 'YYYY-MM-DD'),
    TO_DATE ('2023-02-05', 'YYYY-MM-DD'),
    'ILeonard02',
    'UyG1_1KtD2L_O',
    15,
    'Eagle'
  );

INSERT INTO
  UTILISATEUR (
    idUtilisateur,
    Nom,
    Prenom,
    Adresse,
    Date_Naissance,
    Date_Inscription,
    Login,
    Mot_de_passe,
    Score,
    Programme
  )
VALUES
  (
    3,
    'Michael',
    'Cassidy',
    'France',
    NULL,
    TO_DATE ('2023-01-28', 'YYYY-MM-DD'),
    'CMichael03',
    'LsE1_2BuQ1C_P',
    150,
    'Ram'
  );

INSERT INTO
  UTILISATEUR (
    idUtilisateur,
    Nom,
    Prenom,
    Adresse,
    Date_Naissance,
    Date_Inscription,
    Login,
    Mot_de_passe,
    Score,
    Programme
  )
VALUES
  (
    4,
    'Riddle',
    'Lars',
    NULL,
    TO_DATE ('1998-10-27', 'YYYY-MM-DD'),
    TO_DATE ('2023-06-05', 'YYYY-MM-DD'),
    'LRiddle04',
    'VwA6_6YyC7S_V',
    NULL,
    NULL
  );

INSERT INTO
  UTILISATEUR (
    idUtilisateur,
    Nom,
    Prenom,
    Adresse,
    Date_Naissance,
    Date_Inscription,
    Login,
    Mot_de_passe,
    Score,
    Programme
  )
VALUES
  (
    5,
    'Blair',
    'Fitzgerald',
    'Allemagne',
    NULL,
    TO_DATE ('2023-04-13', 'YYYY-MM-DD'),
    'FBlair05',
    'UmD5_2UpY4E_I',
    NULL,
    NULL
  );
