-- Ce script a quelques soucis depuis la deuxième partie du projet car DBeaver coupe
-- les blocs de création de fonctions et de procédures PL/SQL en plusieurs morceaux
-- avant d'envoyer à la BDD Oracle ce qui donc produit des erreurs coté BDD (expressions
-- invalides). DBeaver ne parse pas bien les blocs PL/SQL donc il faut les supprimer ou
-- mettre en commentaire pour après les executer à la main en les séléctionnant en
-- entier en tant que bloc et executer la séléction avec DBeaver.
-- Sauf des parties de PL/SQL DBeaver gère tout le reste très bien :)

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
