set define off
set serveroutput on
set echo on
set termout on
set errorlog on truncate

-- La création des tables, vues, procédures, fonctions, contraintes, index et déclancheurs
@ddl/suppression.sql
@ddl/creation.sql

-- L'insertion des données de test
@dml/score.sql
@dml/comporte.sql
@dml/utilisateur.sql
@dml/liste.sql
@dml/periodicite.sql
@dml/tache.sql
@dml/tache_actuelle.sql
@dml/tache_passee.sql
@dml/est_assigne.sql
@dml/depend_de.sql
