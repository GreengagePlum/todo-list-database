DELETE FROM TACHE_ACTUELLE;

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    1,
    'Donec feugiat metus sit amet ante.',
    NULL,
    'fames',
    'http://facebook.com/site?ad=115',
    NULL,
    TO_DATE ('2024-05-07', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2023-08-14', 'YYYY-MM-DD'),
    TO_DATE ('2025-08-14', 'YYYY-MM-DD'),
    INTERVAL '5' DAY,
    NULL,
    1,
    1
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    2,
    'Curabitur',
    5,
    NULL,
    'https://walmart.com/group/9?page=1&offset=1',
    'semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui,',
    TO_DATE ('2024-08-16', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2024-06-22', 'YYYY-MM-DD'),
    TO_DATE ('2025-06-22', 'YYYY-MM-DD'),
    INTERVAL '7' DAY,
    NULL,
    1,
    1
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    5,
    'ligula. Donec luctus aliquet',
    2,
    NULL,
    NULL,
    NULL,
    TO_DATE ('2024-02-15', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2022-12-20', 'YYYY-MM-DD'),
    NULL,
    INTERVAL '19' DAY,
    NULL,
    1,
    1
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    6,
    'Integer eu lacus.',
    NULL,
    'ut,',
    'https://naver.com/one?ab=441&aad=2',
    'Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat',
    TO_DATE ('2024-05-10', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2023-06-30', 'YYYY-MM-DD'),
    TO_DATE ('2024-06-30', 'YYYY-MM-DD'),
    INTERVAL '1' DAY,
    NULL,
    1,
    1
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    7,
    'ac urna. Ut tincidunt vehicula risus. Nulla',
    6,
    NULL,
    NULL,
    NULL,
    TO_DATE ('2024-10-05', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2023-01-11', 'YYYY-MM-DD'),
    NULL,
    INTERVAL '13' DAY,
    NULL,
    1,
    1
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    8,
    'erat, eget tincidunt dui augue eu',
    NULL,
    'diam.',
    'http://ebay.com/user/110?k=0',
    'sociis natoque penatibus et magnis dis parturient',
    TO_DATE ('2024-09-15', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2024-08-09', 'YYYY-MM-DD'),
    TO_DATE ('2025-08-09', 'YYYY-MM-DD'),
    INTERVAL '22' DAY,
    NULL,
    1,
    2
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    9,
    'erat. Etiam vestibulum massa rutrum',
    8,
    NULL,
    NULL,
    NULL,
    TO_DATE ('2025-01-02', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2024-09-16', 'YYYY-MM-DD'),
    NULL,
    INTERVAL '9' DAY,
    NULL,
    1,
    2
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    10,
    'ridiculus mus.',
    NULL,
    'Aenean',
    'http://instagram.com/group/9?search=1',
    'molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus',
    TO_DATE ('2024-10-24', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2024-11-01', 'YYYY-MM-DD'),
    TO_DATE ('2025-11-01', 'YYYY-MM-DD'),
    INTERVAL '12' DAY,
    NULL,
    1,
    2
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    11,
    'fermentum fermentum arcu. Vestibulum',
    5,
    NULL,
    NULL,
    NULL,
    TO_DATE ('2024-10-15', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2023-11-29', 'YYYY-MM-DD'),
    NULL,
    INTERVAL '7' DAY,
    NULL,
    1,
    2
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    12,
    'est arcu ac orci.',
    NULL,
    'dictum',
    'https://ebay.com/one?g=1',
    'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia',
    TO_DATE ('2024-07-21', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2024-02-17', 'YYYY-MM-DD'),
    TO_DATE ('2025-02-17', 'YYYY-MM-DD'),
    INTERVAL '19' DAY,
    NULL,
    1,
    2
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    13,
    'sed, facilisis vitae, orci. Phasellus dapibus',
    9,
    NULL,
    NULL,
    NULL,
    TO_DATE ('2024-08-19', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2023-01-17', 'YYYY-MM-DD'),
    NULL,
    INTERVAL '27' DAY,
    NULL,
    5,
    2
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    14,
    'accumsan laoreet',
    NULL,
    'Nunc',
    'http://reddit.com/en-ca?search=1',
    'a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci.',
    TO_DATE ('2024-03-18', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2023-05-18', 'YYYY-MM-DD'),
    TO_DATE ('2024-05-18', 'YYYY-MM-DD'),
    INTERVAL '6' DAY,
    NULL,
    5,
    2
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    15,
    'Suspendisse tristique neque venenatis lacus.',
    1,
    NULL,
    NULL,
    'cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet',
    TO_DATE ('2024-09-03', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2022-11-27', 'YYYY-MM-DD'),
    NULL,
    INTERVAL '27' DAY,
    NULL,
    5,
    2
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    16,
    'metus. In nec orci. Donec',
    NULL,
    'elit',
    'https://bbc.co.uk/sub?client=g',
    NULL,
    TO_DATE ('2024-05-28', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2023-08-12', 'YYYY-MM-DD'),
    TO_DATE ('2024-08-12', 'YYYY-MM-DD'),
    INTERVAL '25' DAY,
    NULL,
    5,
    2
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    17,
    'sed orci lobortis augue',
    8,
    NULL,
    'http://twitter.com/group/9?k=0',
    'turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus',
    TO_DATE ('2024-11-10', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2024-03-20', 'YYYY-MM-DD'),
    NULL,
    INTERVAL '16' DAY,
    NULL,
    5,
    2
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    18,
    'bibendum fermentum metus.',
    NULL,
    'pede,',
    'http://ebay.com/sub/cars?gi=100',
    NULL,
    TO_DATE ('2024-07-09', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2024-05-20', 'YYYY-MM-DD'),
    TO_DATE ('2025-05-20', 'YYYY-MM-DD'),
    INTERVAL '24' DAY,
    NULL,
    2,
    3
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    19,
    'velit. Sed malesuada augue ut lacus.',
    4,
    NULL,
    'https://zoom.us/sub?k=0',
    'ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec,',
    TO_DATE ('2024-09-05', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2023-08-15', 'YYYY-MM-DD'),
    TO_DATE ('2024-08-15', 'YYYY-MM-DD'),
    INTERVAL '12' DAY,
    NULL,
    2,
    3
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    20,
    'risus. Morbi metus. Vivamus euismod urna.',
    7,
    'tortor,',
    NULL,
    NULL,
    TO_DATE ('2024-06-09', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2023-01-13', 'YYYY-MM-DD'),
    TO_DATE ('2024-01-13', 'YYYY-MM-DD'),
    INTERVAL '10' DAY,
    NULL,
    2,
    3
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    21,
    'est mauris, rhoncus id, mollis',
    5,
    'vitae',
    'https://whatsapp.com/settings?k=0',
    'risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc',
    TO_DATE ('2024-06-01', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2023-06-21', 'YYYY-MM-DD'),
    TO_DATE ('2024-06-21', 'YYYY-MM-DD'),
    INTERVAL '29' DAY,
    NULL,
    2,
    3
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    22,
    'dictum. Phasellus in felis. Nulla',
    3,
    'sem',
    NULL,
    NULL,
    TO_DATE ('2024-04-12', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2023-10-29', 'YYYY-MM-DD'),
    TO_DATE ('2024-10-29', 'YYYY-MM-DD'),
    INTERVAL '9' DAY,
    NULL,
    2,
    3
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    23,
    'Nullam vitae diam. Proin dolor. Nulla',
    1,
    'at,',
    'http://naver.com/settings?gi=100',
    'at auctor ullamcorper, nisl arcu iaculis enim, sit',
    TO_DATE ('2024-11-30', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2024-06-20', 'YYYY-MM-DD'),
    TO_DATE ('2025-06-20', 'YYYY-MM-DD'),
    INTERVAL '13' DAY,
    NULL,
    2,
    3
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    24,
    'neque venenatis lacus. Etiam',
    9,
    'mi,',
    NULL,
    NULL,
    TO_DATE ('2024-09-25', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2022-12-30', 'YYYY-MM-DD'),
    TO_DATE ('2023-12-30', 'YYYY-MM-DD'),
    INTERVAL '14' DAY,
    NULL,
    2,
    3
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    25,
    'tempor lorem, eget mollis lectus pede',
    NULL,
    'eget',
    'http://twitter.com/user/110?search=1&q=de',
    'convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc',
    TO_DATE ('2024-11-14', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2024-11-04', 'YYYY-MM-DD'),
    TO_DATE ('2025-11-04', 'YYYY-MM-DD'),
    INTERVAL '7' DAY,
    NULL,
    2,
    3
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    26,
    'nascetur',
    8,
    'congue',
    NULL,
    NULL,
    TO_DATE ('2024-12-31', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2024-05-08', 'YYYY-MM-DD'),
    TO_DATE ('2025-05-08', 'YYYY-MM-DD'),
    INTERVAL '18' DAY,
    NULL,
    2,
    3
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    27,
    'malesuada fringilla est. Mauris eu turpis.',
    NULL,
    'augue,',
    'http://wikipedia.org/sub?q=11',
    'sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum,',
    TO_DATE ('2024-04-19', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2023-06-07', 'YYYY-MM-DD'),
    TO_DATE ('2024-06-07', 'YYYY-MM-DD'),
    INTERVAL '11' DAY,
    NULL,
    2,
    3
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    28,
    'elit. Curabitur sed tortor. Integer aliquam adipiscing',
    1,
    'et',
    NULL,
    NULL,
    TO_DATE ('2024-10-25', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2024-02-13', 'YYYY-MM-DD'),
    TO_DATE ('2025-02-13', 'YYYY-MM-DD'),
    INTERVAL '15' DAY,
    NULL,
    2,
    3
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    29,
    'dui, nec tempus mauris erat',
    NULL,
    'tempor',
    'https://zoom.us/user/110?q=4',
    'eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus',
    TO_DATE ('2024-07-25', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2024-05-09', 'YYYY-MM-DD'),
    TO_DATE ('2025-05-09', 'YYYY-MM-DD'),
    INTERVAL '5' DAY,
    NULL,
    2,
    3
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    47,
    'metus. Aliquam erat',
    3,
    NULL,
    'https://wikipedia.org/en-us?gi=100',
    'sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo',
    TO_DATE ('2024-04-17', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2024-10-16', 'YYYY-MM-DD'),
    TO_DATE ('2025-10-16', 'YYYY-MM-DD'),
    INTERVAL '11' DAY,
    NULL,
    2,
    3
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    48,
    'tristique pellentesque, tellus sem',
    1,
    'nisi',
    NULL,
    'felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum',
    TO_DATE ('2024-10-15', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    2,
    3
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    49,
    'et, rutrum eu, ultrices sit amet,',
    8,
    NULL,
    'https://facebook.com/sub?q=4',
    'sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam.',
    TO_DATE ('2024-04-06', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2023-06-17', 'YYYY-MM-DD'),
    TO_DATE ('2024-06-17', 'YYYY-MM-DD'),
    INTERVAL '27' DAY,
    NULL,
    2,
    3
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    50,
    'Quisque tincidunt pede ac urna. Ut tincidunt',
    4,
    'Nunc',
    NULL,
    'eleifend nec, malesuada ut, sem.',
    TO_DATE ('2024-07-23', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    2,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    51,
    'metus. Vivamus euismod',
    4,
    'sit',
    'https://pinterest.com/sub?g=1',
    'semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus',
    TO_DATE ('2024-04-06', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2023-06-18', 'YYYY-MM-DD'),
    TO_DATE ('2024-06-18', 'YYYY-MM-DD'),
    INTERVAL '22' DAY,
    NULL,
    2,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    52,
    'odio. Etiam ligula tortor, dictum eu,',
    2,
    'auctor',
    NULL,
    'metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam',
    TO_DATE ('2024-08-16', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    2,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    53,
    'amet lorem semper auctor. Mauris vel',
    2,
    'mi,',
    'http://naver.com/en-ca?search=1&q=de',
    'pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus',
    TO_DATE ('2025-02-01', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2024-02-10', 'YYYY-MM-DD'),
    TO_DATE ('2025-02-10', 'YYYY-MM-DD'),
    INTERVAL '14' DAY,
    NULL,
    2,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    54,
    'in, cursus et,',
    2,
    'elementum',
    NULL,
    'magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus.',
    TO_DATE ('2025-01-22', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    2,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    55,
    'augue id ante',
    3,
    'sem',
    'http://nytimes.com/settings?q=0',
    'tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero.',
    TO_DATE ('2025-01-08', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    56,
    'sapien,',
    8,
    'sed,',
    'https://baidu.com/sub/cars?ab=441&aad=2',
    'dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius.',
    TO_DATE ('2024-02-21', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    57,
    'vel quam dignissim pharetra. Nam',
    3,
    'nec',
    'http://cnn.com/user/110?page=1&offset=1',
    'nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi',
    TO_DATE ('2025-01-19', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    58,
    'Nam ligula elit, pretium et,',
    9,
    'at',
    NULL,
    'ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus',
    TO_DATE ('2024-06-02', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    59,
    'rhoncus. Proin',
    5,
    'euismod',
    'https://twitter.com/sub/cars?ab=441&aad=2',
    'montes, nascetur ridiculus mus. Aenean eget',
    TO_DATE ('2024-04-12', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    60,
    'eget tincidunt dui augue eu',
    5,
    'Fusce',
    NULL,
    'mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem',
    TO_DATE ('2024-02-26', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    61,
    'mattis ornare, lectus ante dictum mi,',
    2,
    'Mauris',
    'http://naver.com/sub?gi=100',
    'nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede.',
    TO_DATE ('2024-10-01', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    62,
    'elit, pretium et,',
    4,
    'rutrum,',
    NULL,
    'dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a',
    TO_DATE ('2024-07-19', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    63,
    'eu, accumsan sed, facilisis vitae,',
    4,
    'est,',
    'https://yahoo.com/en-us?ad=115',
    'Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor',
    TO_DATE ('2024-09-15', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    64,
    'magna, malesuada vel,',
    1,
    'natoque',
    'http://cnn.com/en-ca?p=8',
    'neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus',
    TO_DATE ('2024-08-17', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    65,
    'ut aliquam iaculis, lacus pede',
    4,
    'lectus',
    'https://instagram.com/settings?str=se',
    'non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum',
    TO_DATE ('2024-07-24', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    66,
    'quam. Pellentesque habitant morbi tristique senectus',
    2,
    'nibh.',
    'https://whatsapp.com/fr?p=8',
    'Mauris eu turpis. Nulla aliquet. Proin velit.',
    TO_DATE ('2024-07-15', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    67,
    'urna suscipit nonummy. Fusce fermentum fermentum',
    0,
    'vulputate,',
    NULL,
    'nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus.',
    TO_DATE ('2024-11-04', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    68,
    'facilisis lorem',
    6,
    'fringilla',
    'https://naver.com/site?q=4',
    'Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin',
    TO_DATE ('2024-06-15', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    69,
    'montes, nascetur ridiculus mus. Aenean eget',
    8,
    'lorem,',
    NULL,
    'fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy',
    TO_DATE ('2024-05-16', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    4
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    70,
    'Maecenas ornare egestas ligula.',
    7,
    'massa.',
    'https://yahoo.com/user/110?search=1',
    'lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec',
    TO_DATE ('2025-01-16', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    5
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    71,
    'a, arcu. Sed et',
    7,
    'non',
    NULL,
    'luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem',
    TO_DATE ('2024-05-22', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    5
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    72,
    'Maecenas iaculis aliquet diam. Sed diam lorem,',
    5,
    'Quisque',
    'http://pinterest.com/group/9?ad=115',
    'magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non',
    TO_DATE ('2024-05-20', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    5
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    73,
    'quis arcu vel quam dignissim',
    6,
    'magna.',
    NULL,
    'placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus',
    TO_DATE ('2024-12-04', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    5
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    74,
    'vestibulum nec, euismod in, dolor. Fusce',
    2,
    'Donec',
    'https://instagram.com/settings?str=se',
    'sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus',
    TO_DATE ('2024-09-15', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    5
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    75,
    'luctus et ultrices posuere cubilia Curae Donec',
    7,
    'a',
    'http://cnn.com/fr?str=se',
    'diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi.',
    TO_DATE ('2024-05-30', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    5
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    76,
    'vel, faucibus id,',
    6,
    'nec,',
    'https://walmart.com/site?search=1&q=de',
    'gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque',
    TO_DATE ('2024-02-12', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    5
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    77,
    'ultricies adipiscing, enim mi tempor lorem, eget',
    3,
    'fringilla',
    'https://google.com/sub/cars?q=11',
    'Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla',
    TO_DATE ('2024-05-15', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    5
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    95,
    'laoreet posuere, enim nisl',
    3,
    'sit',
    'https://cnn.com/settings?search=1&q=de',
    'molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy.',
    TO_DATE ('2025-01-30', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    5
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    96,
    'aliquet libero. Integer in magna. Phasellus dolor',
    7,
    'justo.',
    'http://pinterest.com/en-us?q=0',
    'eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper',
    TO_DATE ('2024-10-23', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    5
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    97,
    'luctus et',
    1,
    'Proin',
    'https://whatsapp.com/site?search=1&q=de',
    'malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis.',
    TO_DATE ('2024-11-23', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    4,
    5
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    98,
    'nulla. Cras eu',
    2,
    NULL,
    'https://bbc.co.uk/group/9?p=8',
    'tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem,',
    TO_DATE ('2024-11-22', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2023-08-08', 'YYYY-MM-DD'),
    TO_DATE ('2024-08-08', 'YYYY-MM-DD'),
    INTERVAL '23' DAY,
    NULL,
    4,
    5
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    99,
    'netus et malesuada fames',
    8,
    'sem',
    'http://whatsapp.com/group/9?str=se',
    'adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in',
    TO_DATE ('2024-05-23', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    4,
    5
  );

INSERT INTO
  TACHE_ACTUELLE (
    idTache,
    Titre,
    Priorite,
    Categorie,
    Lien,
    Description,
    Date_Echeance,
    Status,
    Date_Debut,
    Date_Fin,
    Intervalle,
    Date_Realisation,
    idListe,
    idUtilisateur
  )
VALUES
  (
    100,
    'enim nisl',
    2,
    NULL,
    'https://zoom.us/user/110?search=1&q=de',
    'augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non',
    TO_DATE ('2024-05-14', 'YYYY-MM-DD'),
    0,
    TO_DATE ('2023-12-31', 'YYYY-MM-DD'),
    TO_DATE ('2024-12-31', 'YYYY-MM-DD'),
    INTERVAL '17' DAY,
    NULL,
    4,
    5
  );
