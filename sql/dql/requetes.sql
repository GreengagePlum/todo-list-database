-- Les index pour optimiser ces requêtes se trouvent dans
-- le fichier de création des tables.
------------------------- Requête 1 ----------------------
SELECT
  l.idListe
FROM
  LISTE l,
  UTILISATEUR u,
  TACHES t
WHERE
  l.idUtilisateur = u.idUtilisateur
  AND l.idListe = t.idListe
  AND lower(u.Adresse) = 'france'
GROUP BY
  l.idListe
HAVING
  COUNT(l.idListe) >= 5;

------------------------- Requête 2 ----------------------
SELECT
  c.PROGRAMME
FROM
  COMPORTE c
  JOIN SCORE s ON c.idScore = s.idScore
GROUP BY
  c.Programme
HAVING
  SUM(s.Points) = (
    SELECT
      MAX(totale_points)
    FROM
      (
        SELECT
          SUM(s.Points) AS totale_points
        FROM
          COMPORTE c
          JOIN SCORE s ON c.idScore = s.idScore
        GROUP BY
          c.Programme
      )
  );

------------------------- Requête 3 ----------------------
-- Ici, j'ai interprété la question comme afficher le compte
-- des tâches en cours (statut non accompli et la date d'écheance non dépassé).
--
-- Je n'ai pas inclus dans le compte les tâches assignées à l'utilisateur
-- mais seulement les tâches possedées c'est à dire créées par l'utilisateur.
SELECT
  u.Login,
  u.Nom,
  u.Prenom,
  u.Adresse,
  q1.taches_total,
  q2.taches_periodiques_total
FROM
  UTILISATEUR u,
  (
    -- Compte des tâches non accomplies par utilisateur
    SELECT
      u.idUtilisateur,
      COUNT(t.idTache) AS taches_total
    FROM
      UTILISATEUR u,
      TACHES t
    WHERE
      u.idUtilisateur = t.idUtilisateur
      AND t.Statut = 0
      AND (
        t.Date_Echeance IS NULL
        OR t.Date_Echeance >= SYSDATE
      )
    GROUP BY
      u.idUtilisateur
  ) q1,
  (
    -- Compte des tâches périodiques non accomplies par utilisateur.
    -- Une tâche périodique avec de multiples instances n'est compté
    -- qu'une seule fois donc comme une seule tâche.
    SELECT
      u.idUtilisateur,
      COUNT(DISTINCT (t.idPeriodicite)) AS taches_periodiques_total
    FROM
      UTILISATEUR u,
      TACHES t
    WHERE
      u.idUtilisateur = t.idUtilisateur
      AND t.Statut = 0
      AND (
        t.Date_Echeance IS NULL
        OR t.Date_Echeance >= SYSDATE
      )
      AND t.idPeriodicite IS NOT NULL
    GROUP BY
      u.idUtilisateur
  ) q2
WHERE
  u.idUtilisateur = q1.idUtilisateur
  AND u.idUtilisateur = q2.idUtilisateur;

------------------------- Requête 4 ----------------------
-- Ici, j'ai interprété la question comme afficher toutes les tâches
-- non accomplies et non dépassé et pour chacune le nombre de tâches
-- à effectuer auparavant comme dépendance qui ne sont elles-mêmes
-- non plus accomplies. (Je n'inclus pas les dépendances déjà
-- achevées dans le compte)
SELECT
  t.idTache,
  COUNT(q1.idTache_Mere) AS dependances_anterieures
FROM
  TACHES t
  LEFT OUTER JOIN (
    -- Taches mères non accomplies
    SELECT
      d.idTache_Mere,
      d.idTache_Fille
    FROM
      TACHES t
      JOIN DEPEND_DE d ON t.idTache = d.idTache_Mere
    WHERE
      t.Statut = 0
  ) q1 ON t.idTache = q1.idTache_Fille
WHERE
  t.Statut = 0
  AND (
    t.Date_Echeance IS NULL
    OR t.Date_Echeance >= SYSDATE
  )
GROUP BY
  t.idTache;

------------------------- Requête 5 ----------------------
-- Dans cette requête j'ai inclus les tâches crées par l'utilisateur
-- ainsi que les tâches qui lui sont assignées pour bien calculer
-- le bilan de la somme des points remportés ou perdues.
-- 
-- J'ai choisi de faire un bilan où je calcule les points positifs et
-- les points négatifs pendant les 7 derniers jours pour chaque utilisateur 
-- pour obtenir l'évolution totale de leur score et présenter les 10
-- utilisateurs qui ont le plus avancés (l'évolution la plus positive).
SELECT
  u.idUtilisateur,
  (
    COALESCE(tp_pp.tp_points_positifs, 0) + COALESCE(ta_pp.ta_points_positifs, 0)
  ) - (
    COALESCE(tp_pn.tp_points_negatifs, 0) + COALESCE(ta_pn.ta_points_negatifs, 0)
  ) AS bilan_points
FROM
  UTILISATEUR u
  LEFT JOIN (
    -- Somme des points pour les tâches crées par l'utilisateur qui sont bien terminées.
    SELECT
      u.idUtilisateur,
      SUM(s.Points) AS tp_points_positifs
    FROM
      UTILISATEUR u
      JOIN COMPORTE c ON u.Programme = c.Programme
      JOIN SCORE s ON c.idScore = s.idScore
      JOIN TACHES t ON u.idUtilisateur = t.idUtilisateur
      AND s.Categorie = t.Categorie
    WHERE
      t.Statut = 1
      AND (SYSDATE - 7) < t.Date_Realisation
    GROUP BY
      u.idUtilisateur
  ) tp_pp ON u.idUtilisateur = tp_pp.idUtilisateur
  LEFT JOIN (
    -- Somme des points pour les tâches assignées à l'utilisateur qui sont bien terminées.
    SELECT
      u.idUtilisateur,
      SUM(s.Points) AS ta_points_positifs
    FROM
      UTILISATEUR u
      JOIN COMPORTE c ON u.Programme = c.Programme
      JOIN SCORE s ON c.idScore = s.idScore
      JOIN EST_ASSIGNE a ON u.idUtilisateur = a.idUtilisateur
      JOIN TACHES t ON a.idTache = t.idTache
      AND s.Categorie = t.Categorie
    WHERE
      t.Statut = 1
      AND (SYSDATE - 7) < t.Date_Realisation
    GROUP BY
      u.idUtilisateur
  ) ta_pp ON u.idUtilisateur = ta_pp.idUtilisateur
  LEFT JOIN (
    -- Somme des points pour les tâches crées par l'utilisateur qui sont dépassées.
    SELECT
      u.idUtilisateur,
      SUM(s.Points) AS tp_points_negatifs
    FROM
      UTILISATEUR u
      JOIN COMPORTE c ON u.Programme = c.Programme
      JOIN SCORE s ON c.idScore = s.idScore
      JOIN TACHES t ON u.idUtilisateur = t.idUtilisateur
      AND s.Categorie = t.Categorie
    WHERE
      t.Statut = 0
      AND (SYSDATE - 7) < t.Date_Echeance
      AND t.Date_Echeance < SYSDATE
    GROUP BY
      u.idUtilisateur
  ) tp_pn ON u.idUtilisateur = tp_pn.idUtilisateur
  LEFT JOIN (
    -- Somme des points pour les tâches assignées à l'utilisateur qui sont dépassées.
    SELECT
      u.idUtilisateur,
      SUM(s.Points) AS ta_points_negatifs
    FROM
      UTILISATEUR u
      JOIN COMPORTE c ON u.Programme = c.Programme
      JOIN SCORE s ON c.idScore = s.idScore
      JOIN EST_ASSIGNE a ON u.idUtilisateur = a.idUtilisateur
      JOIN TACHES t ON a.idTache = t.idTache
      AND s.Categorie = t.Categorie
    WHERE
      t.Statut = 0
      AND (SYSDATE - 7) < t.Date_Echeance
      AND t.Date_Echeance < SYSDATE
    GROUP BY
      u.idUtilisateur
  ) ta_pn ON u.idUtilisateur = ta_pn.idUtilisateur
ORDER BY
  bilan_points DESC,
  u.idUtilisateur
FETCH NEXT
  10 ROWS ONLY;
