- **COMPORTE** (<ins>Programme</ins> : STRING, <ins>_#idScore_</ins> : INT)
- **DÉPEND DE** (<ins>_#idTache Fille_</ins> : INT, <ins>_#idTache Mere_</ins> : INT)
- **EST ASSIGNÉ** (<ins>_#idUtilisateur_</ins> : INT, <ins>_#idTache_</ins> : INT)
- **LISTE** (<ins>idListe</ins> : INT, Nom de projet : STRING, _#idUtilisateur!_ : INT)
- **PÉRIODICITÉ** (<ins>idPériodicité</ins> : INT, Date de début : DATE, Date de fin : DATE, Intervalle : INTERVAL)
- **SCORE** (<ins>idScore</ins> : INT, Points : INT, Catégorie! : STRING)
- **TACHE** (<ins>idTache</ins> : INT, Titre : STRING, Priorité : INT, Lien : STRING, Description : TEXT, Date d'échéance : DATE, _#idListe?_ : INT, _#idUtilisateur!_ : INT, _#idPériodicité?_ : INT, Catégorie! : STRING, Statut! : BOOLEAN, Date de réalisation? : DATE)
- **UTILISATEUR** (<ins>idUtilisateur</ins> : INT, Nom : STRING, Prénom : STRING, Adresse : STRING, Date de naissance : DATE, Date d'inscription : DATE, Login : STRING, Mot de passe : STRING, Score : INT, Programme? : STRING)
<br>

----

**NB.** Les tables _CATÉGORIE_ et _PROGRAMME_ n'ont pas été conservées et transformées en attribut.
