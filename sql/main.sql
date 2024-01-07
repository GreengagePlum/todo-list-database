-- La création des tables, vues, procédures, fonctions, contraintes, index et déclancheurs
@include ddl/suppression.sql
@include ddl/creation.sql

-- L'insertion des données de test
@include dml/score.sql
@include dml/comporte.sql
@include dml/utilisateur.sql
@include dml/liste.sql
@include dml/periodicite.sql
@include dml/tache.sql
@include dml/tache_actuelle.sql
@include dml/tache_passee.sql
@include dml/est_assigne.sql
@include dml/depend_de.sql
