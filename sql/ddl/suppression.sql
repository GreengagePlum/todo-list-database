-- DROP FUNCTION Generer_Suggestions;
-- DROP PROCEDURE Archiver_Taches; -- N'oubliez pas de supprimer d'abord l'execution périodique de cette procédure comme indiqué plus en bas
-- DROP FUNCTION POINTS_SEMAINE;
-- DROP INDEX idx_liste_utilisateur_adresse;
-- DROP INDEX idx_utilisateur_adresse;
-- DROP INDEX idx_taches_actuelle_liste;
-- DROP INDEX idx_taches_passee_liste;
-- DROP INDEX idx_comporte_score;
-- DROP INDEX idx_score_programme;
-- DROP INDEX idx_utilisateur_tache_actuelle;
-- DROP INDEX idx_utilisateur_tache_passee;
-- DROP INDEX idx_tache_actuelle_statut_dateecheance;
-- DROP INDEX idx_tache_passee_statut_dateecheance;
-- DROP INDEX idx_tache_actuelle_utilisateur_statut_daterealisation;
-- DROP INDEX idx_tache_passee_utilisateur_statut_daterealisation;
-- DROP VIEW TACHES;
-- DROP TABLE COMPORTE CASCADE CONSTRAINTS;
-- DROP TABLE DEPEND_DE CASCADE CONSTRAINTS;
-- DROP TABLE EST_ASSIGNE CASCADE CONSTRAINTS;
-- DROP TABLE LISTE CASCADE CONSTRAINTS;
-- DROP TABLE PERIODICITE CASCADE CONSTRAINTS;
-- DROP TABLE SCORE CASCADE CONSTRAINTS;
-- DROP TABLE TACHE CASCADE CONSTRAINTS;
-- DROP TABLE TACHE_ACTUELLE CASCADE CONSTRAINTS;
-- DROP TABLE TACHE_PASSEE CASCADE CONSTRAINTS;
-- DROP TABLE UTILISATEUR CASCADE CONSTRAINTS;
-- /
--
-- Reference for the DROP blocks with error handling below
-- https://stackoverflow.com/questions/1799128/oracle-if-table-exists
--
BEGIN
    EXECUTE IMMEDIATE 'DROP FUNCTION Generer_Suggestions';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -4043 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    FOR Rec IN (SELECT Job FROM User_Jobs WHERE LOWER(What) LIKE '%archiver_taches%')
        LOOP
            Dbms_Job.Remove(Rec.Job);
        END LOOP;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP PROCEDURE Archiver_Taches';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -4043 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP FUNCTION Points_Semaine';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -4043 THEN
            RAISE;
        END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX Idx_Liste_Utilisateur_Adresse';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -1418 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX Idx_Utilisateur_Adresse';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -1418 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX Idx_Taches_Actuelle_Liste';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -1418 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX Idx_Taches_Passee_Liste';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -1418 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX Idx_Comporte_Score';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -1418 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX Idx_Score_Programme';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -1418 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX Idx_Utilisateur_Tache_Actuelle';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -1418 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX Idx_Utilisateur_Tache_Passee';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -1418 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX Idx_Tache_Actuelle_Statut_Dateecheance';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -1418 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX Idx_Tache_Passee_Statut_Dateecheance';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -1418 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX Idx_Tache_Actuelle_Utilisateur_Statut_Daterealisation';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -1418 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX Idx_Tache_Passee_Utilisateur_Statut_Daterealisation';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -1418 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP VIEW Taches';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -942 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Comporte CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -942 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Depend_De CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -942 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Est_Assigne CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -942 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Liste CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -942 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Periodicite CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -942 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Score CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -942 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Tache CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -942 THEN
        RAISE;
    END IF;

END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Tache_Actuelle CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -942 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Tache_Passee CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -942 THEN
        RAISE;
    END IF;
END;
/

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE Utilisateur CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN IF SQLCODE != -942 THEN
        RAISE;
    END IF;
END;
/
