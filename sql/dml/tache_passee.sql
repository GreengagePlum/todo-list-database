DELETE FROM TACHE_PASSEE;

INSERT INTO
  TACHE_PASSEE (
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
    3,
    'quis turpis vitae purus gravida sagittis.',
    0,
    'sed',
    NULL,
    NULL,
    TO_DATE ('2024-06-13', 'YYYY-MM-DD'),
    1,
    TO_DATE ('2024-10-03', 'YYYY-MM-DD'),
    NULL,
    INTERVAL '12' DAY,
    TO_DATE ('2022-06-13', 'YYYY-MM-DD'),
    4,
    1
  );

INSERT INTO
  TACHE_PASSEE (
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
    4,
    'nunc',
    NULL,
    'cubilia',
    'https://zoom.us/settings?q=4',
    'diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet,',
    TO_DATE ('2024-07-15', 'YYYY-MM-DD'),
    1,
    TO_DATE ('2024-06-14', 'YYYY-MM-DD'),
    TO_DATE ('2025-06-14', 'YYYY-MM-DD'),
    INTERVAL '27' DAY,
    TO_DATE ('2022-07-15', 'YYYY-MM-DD'),
    4,
    1
  );

INSERT INTO
  TACHE_PASSEE (
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
    30,
    'Vivamus rhoncus. Donec est.',
    8,
    'lacus.',
    NULL,
    NULL,
    TO_DATE ('2024-07-03', 'YYYY-MM-DD'),
    1,
    TO_DATE ('2022-12-18', 'YYYY-MM-DD'),
    TO_DATE ('2023-12-18', 'YYYY-MM-DD'),
    INTERVAL '5' DAY,
    TO_DATE ('2022-07-03', 'YYYY-MM-DD'),
    4,
    1
  );

INSERT INTO
  TACHE_PASSEE (
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
    31,
    'nec urna et',
    NULL,
    'Duis',
    'http://reddit.com/group/9?gi=100',
    'pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus',
    TO_DATE ('2024-10-13', 'YYYY-MM-DD'),
    1,
    TO_DATE ('2024-05-06', 'YYYY-MM-DD'),
    TO_DATE ('2025-05-06', 'YYYY-MM-DD'),
    INTERVAL '26' DAY,
    TO_DATE ('2022-10-13', 'YYYY-MM-DD'),
    4,
    1
  );

INSERT INTO
  TACHE_PASSEE (
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
    32,
    'leo. Vivamus',
    7,
    'non,',
    NULL,
    'ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue',
    TO_DATE ('2024-05-07', 'YYYY-MM-DD'),
    1,
    TO_DATE ('2023-09-09', 'YYYY-MM-DD'),
    TO_DATE ('2024-09-09', 'YYYY-MM-DD'),
    INTERVAL '9' DAY,
    TO_DATE ('2022-05-07', 'YYYY-MM-DD'),
    4,
    1
  );

INSERT INTO
  TACHE_PASSEE (
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
    33,
    'aliquet, metus',
    NULL,
    'Proin',
    'https://zoom.us/group/9?q=test',
    'Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi',
    TO_DATE ('2024-11-23', 'YYYY-MM-DD'),
    1,
    TO_DATE ('2024-03-15', 'YYYY-MM-DD'),
    TO_DATE ('2025-03-15', 'YYYY-MM-DD'),
    INTERVAL '15' DAY,
    TO_DATE ('2022-11-23', 'YYYY-MM-DD'),
    4,
    1
  );

INSERT INTO
  TACHE_PASSEE (
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
    34,
    'pellentesque. Sed',
    2,
    'consectetuer',
    NULL,
    'at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac',
    TO_DATE ('2024-06-01', 'YYYY-MM-DD'),
    1,
    TO_DATE ('2024-03-14', 'YYYY-MM-DD'),
    TO_DATE ('2025-03-14', 'YYYY-MM-DD'),
    INTERVAL '16' DAY,
    TO_DATE ('2022-06-01', 'YYYY-MM-DD'),
    4,
    1
  );

INSERT INTO
  TACHE_PASSEE (
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
    35,
    'scelerisque scelerisque dui. Suspendisse',
    NULL,
    NULL,
    'https://youtube.com/settings?q=11',
    'mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non',
    TO_DATE ('2024-05-19', 'YYYY-MM-DD'),
    1,
    TO_DATE ('2024-05-22', 'YYYY-MM-DD'),
    TO_DATE ('2025-05-22', 'YYYY-MM-DD'),
    INTERVAL '30' DAY,
    TO_DATE ('2022-05-19', 'YYYY-MM-DD'),
    4,
    1
  );

INSERT INTO
  TACHE_PASSEE (
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
    36,
    'venenatis lacus. Etiam',
    9,
    'est.',
    'http://naver.com/group/9?k=0',
    'ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu',
    TO_DATE ('2024-06-08', 'YYYY-MM-DD'),
    1,
    TO_DATE ('2023-12-29', 'YYYY-MM-DD'),
    TO_DATE ('2024-12-29', 'YYYY-MM-DD'),
    INTERVAL '3' DAY,
    TO_DATE ('2022-06-08', 'YYYY-MM-DD'),
    4,
    1
  );

INSERT INTO
  TACHE_PASSEE (
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
    37,
    'Quisque fringilla',
    NULL,
    NULL,
    'http://facebook.com/site?page=1&offset=1',
    'nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim',
    TO_DATE ('2024-12-20', 'YYYY-MM-DD'),
    1,
    TO_DATE ('2023-03-12', 'YYYY-MM-DD'),
    TO_DATE ('2024-03-12', 'YYYY-MM-DD'),
    INTERVAL '22' DAY,
    TO_DATE ('2022-12-20', 'YYYY-MM-DD'),
    4,
    1
  );

INSERT INTO
  TACHE_PASSEE (
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
    38,
    'eu neque pellentesque massa lobortis',
    9,
    'dictum.',
    'https://facebook.com/one?k=0',
    'sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper',
    TO_DATE ('2025-01-05', 'YYYY-MM-DD'),
    1,
    NULL,
    NULL,
    NULL,
    TO_DATE ('2022-01-05', 'YYYY-MM-DD'),
    2,
    1
  );

INSERT INTO
  TACHE_PASSEE (
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
    39,
    'leo elementum sem, vitae aliquam eros',
    NULL,
    NULL,
    'https://guardian.co.uk/user/110?p=8',
    'non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes,',
    TO_DATE ('2024-03-13', 'YYYY-MM-DD'),
    1,
    TO_DATE ('2024-09-19', 'YYYY-MM-DD'),
    TO_DATE ('2025-09-19', 'YYYY-MM-DD'),
    INTERVAL '15' DAY,
    TO_DATE ('2022-03-13', 'YYYY-MM-DD'),
    2,
    1
  );

INSERT INTO
  TACHE_PASSEE (
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
    40,
    'aliquet. Phasellus fermentum',
    7,
    'tempor',
    NULL,
    'quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante',
    TO_DATE ('2024-11-27', 'YYYY-MM-DD'),
    1,
    NULL,
    NULL,
    NULL,
    TO_DATE ('2022-11-27', 'YYYY-MM-DD'),
    2,
    1
  );

INSERT INTO
  TACHE_PASSEE (
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
    41,
    'urna et',
    8,
    NULL,
    'https://yahoo.com/settings?q=4',
    'ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras',
    TO_DATE ('2025-01-23', 'YYYY-MM-DD'),
    1,
    TO_DATE ('2024-06-26', 'YYYY-MM-DD'),
    TO_DATE ('2025-06-26', 'YYYY-MM-DD'),
    INTERVAL '21' DAY,
    TO_DATE ('2022-01-23', 'YYYY-MM-DD'),
    2,
    1
  );

INSERT INTO
  TACHE_PASSEE (
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
    42,
    'aliquam, enim nec',
    2,
    'sagittis',
    NULL,
    'Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu.',
    TO_DATE ('2024-10-14', 'YYYY-MM-DD'),
    1,
    NULL,
    NULL,
    NULL,
    TO_DATE ('2022-10-14', 'YYYY-MM-DD'),
    2,
    1
  );

INSERT INTO
  TACHE_PASSEE (
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
    43,
    'amet',
    6,
    NULL,
    'https://bbc.co.uk/one?page=1&offset=1',
    'mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec',
    TO_DATE ('2024-09-13', 'YYYY-MM-DD'),
    1,
    TO_DATE ('2024-05-10', 'YYYY-MM-DD'),
    TO_DATE ('2025-05-10', 'YYYY-MM-DD'),
    INTERVAL '4' DAY,
    TO_DATE ('2022-09-13', 'YYYY-MM-DD'),
    2,
    2
  );

INSERT INTO
  TACHE_PASSEE (
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
    44,
    'felis. Nulla tempor augue ac',
    8,
    'Nunc',
    NULL,
    'tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus.',
    TO_DATE ('2025-01-16', 'YYYY-MM-DD'),
    1,
    NULL,
    NULL,
    NULL,
    TO_DATE ('2022-01-16', 'YYYY-MM-DD'),
    3,
    2
  );

INSERT INTO
  TACHE_PASSEE (
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
    45,
    'felis. Donec tempor, est ac mattis',
    2,
    NULL,
    'https://whatsapp.com/sub/cars?q=4',
    'pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec',
    TO_DATE ('2024-06-17', 'YYYY-MM-DD'),
    1,
    TO_DATE ('2023-04-25', 'YYYY-MM-DD'),
    TO_DATE ('2024-04-25', 'YYYY-MM-DD'),
    INTERVAL '20' DAY,
    TO_DATE ('2022-06-17', 'YYYY-MM-DD'),
    3,
    2
  );

INSERT INTO
  TACHE_PASSEE (
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
    46,
    'mattis',
    8,
    'mattis.',
    NULL,
    'velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt,',
    TO_DATE ('2022-11-14', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    2
  );

INSERT INTO
  TACHE_PASSEE (
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
    78,
    'montes, nascetur ridiculus mus.',
    NULL,
    'amet,',
    'http://youtube.com/fr?q=test',
    'litora torquent per conubia nostra,',
    TO_DATE ('2022-04-21', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    2
  );

INSERT INTO
  TACHE_PASSEE (
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
    79,
    'volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh.',
    8,
    'dolor.',
    'https://netflix.com/settings?q=0',
    'nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus',
    TO_DATE ('2022-05-02', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    2
  );

INSERT INTO
  TACHE_PASSEE (
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
    80,
    'sem semper',
    NULL,
    'est',
    'https://pinterest.com/fr?search=1&q=de',
    'rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit',
    TO_DATE ('2022-06-30', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    2
  );

INSERT INTO
  TACHE_PASSEE (
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
    81,
    'sagittis augue, eu tempor',
    8,
    'dui.',
    'https://wikipedia.org/en-us?page=1&offset=1',
    'sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus.',
    TO_DATE ('2022-07-30', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    2
  );

INSERT INTO
  TACHE_PASSEE (
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
    82,
    'imperdiet nec, leo. Morbi neque',
    NULL,
    'Nunc',
    'http://naver.com/en-us?p=8',
    'Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac',
    TO_DATE ('2022-12-15', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    2
  );

INSERT INTO
  TACHE_PASSEE (
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
    83,
    'amet, faucibus ut, nulla. Cras',
    7,
    'sed,',
    'http://google.com/one?q=11',
    'sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla',
    TO_DATE ('2022-09-10', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    2
  );

INSERT INTO
  TACHE_PASSEE (
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
    84,
    'Sed molestie. Sed id',
    NULL,
    'ridiculus',
    'https://zoom.us/user/110?k=0',
    'Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie',
    TO_DATE ('2022-05-01', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    3,
    3
  );

INSERT INTO
  TACHE_PASSEE (
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
    85,
    'a tortor. Nunc commodo auctor velit.',
    7,
    'id',
    'https://guardian.co.uk/en-us?q=11',
    NULL,
    TO_DATE ('2022-03-12', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    3
  );

INSERT INTO
  TACHE_PASSEE (
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
    86,
    'magna sed dui.',
    NULL,
    'turpis',
    'https://facebook.com/en-ca?gi=100',
    'porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu.',
    TO_DATE ('2022-05-13', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    3
  );

INSERT INTO
  TACHE_PASSEE (
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
    87,
    'dui. Suspendisse ac',
    4,
    'Sed',
    'https://reddit.com/one?q=0',
    NULL,
    TO_DATE ('2022-12-06', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    3
  );

INSERT INTO
  TACHE_PASSEE (
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
    88,
    'ornare, facilisis eget,',
    NULL,
    'id,',
    'https://netflix.com/user/110?q=11',
    'litora torquent per conubia nostra, per inceptos',
    TO_DATE ('2022-07-19', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    3
  );

INSERT INTO
  TACHE_PASSEE (
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
    89,
    'nonummy ut, molestie in,',
    7,
    'Cum',
    'http://wikipedia.org/sub?str=se',
    NULL,
    TO_DATE ('2022-11-27', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    5,
    4
  );

INSERT INTO
  TACHE_PASSEE (
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
    90,
    'enim. Etiam imperdiet',
    NULL,
    'Donec',
    'https://twitter.com/settings?str=se',
    'varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit',
    TO_DATE ('2022-12-21', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    5,
    4
  );

INSERT INTO
  TACHE_PASSEE (
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
    91,
    'adipiscing. Mauris molestie pharetra nibh.',
    7,
    'laoreet',
    'https://pinterest.com/group/9?g=1',
    NULL,
    TO_DATE ('2022-02-03', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    5,
    4
  );

INSERT INTO
  TACHE_PASSEE (
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
    92,
    'eleifend non,',
    NULL,
    'metus',
    'https://walmart.com/fr?client=g',
    'libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam',
    TO_DATE ('2022-04-18', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    5,
    4
  );

INSERT INTO
  TACHE_PASSEE (
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
    93,
    'et, eros. Proin',
    8,
    'Nullam',
    'http://netflix.com/en-us?client=g',
    'libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et',
    TO_DATE ('2022-07-12', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    5,
    5
  );

INSERT INTO
  TACHE_PASSEE (
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
    94,
    'purus gravida sagittis. Duis gravida. Praesent',
    4,
    'magna.',
    'https://cnn.com/en-us?str=se',
    'Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui.',
    TO_DATE ('2022-03-31', 'YYYY-MM-DD'),
    0,
    NULL,
    NULL,
    NULL,
    NULL,
    5,
    5
  );
