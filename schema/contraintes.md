# Contraintes d'intégrité (sur le modèle logique)

Les codes de contrainte sont comme suit :

* **(PKxx)**: Clé primaire (PRIMARY KEY).
* **(FKxx)**: Clé étrangère (FOREIGN KEY).
* **(CKxx)**: Vérification statique (CHECK ou d'autres contraintes statiques de type générique).
* **(NNxx)**: Non nul (NOT NULL).
* **(UQxx)**: Unique (UNIQUE).
* **(PLxx)**: Déclencheur, contrainte dynamique (TRIGGER, PL/SQL).

où **xx** est l'identifiant globale de la contrainte dans l'ensemble des contraintes indiquées ici, et valable aussi dans les scripts de création de tables concernant l'implémentation. Ainsi on peut chercher un de ces codes dans les fichiers pour retrouver l'implémentation de la contrainte unique.

## COMPORTE

* **(PK06)**: Le couple `Programme` et `idScore` forment la clé primaire.
* **(FK06)**: `idScore` est une clé étrangère référençant `SCORE`.
* **(PLxx)**: Un programme ne peut pas comporter plusieurs scores associés à un même catégorie.

## DÉPEND DE

* **(PK01)**: Le couple `idTache Fille` et `idTache Mere` forment la clé primaire.
* **(CK01)**: `idTache Fille` est différent de `idTache Mere`. (Pas de dépendance sur soi-même.)
* **(PLxx)**: Il ne doit pas y avoir de cycle dans les dépendances. (Pas d'interdépendance du type (1, 2), (2, 3) et (3, 1)...)
* `idTache Fille` et `idTache Mere`
  * **(FK08)**, **(FK09)**: Ils sont des clés étrangères référençant `TACHE`.
  * **(FK08)**, **(FK09)**: Effacer en cascade les n-uplets si `idTache Fille` ou `idTache Mere` n'existent plus.
  * **(PLxx)**: Au moment de l'insertion les deux attributs doivent référencer tous les deux des tâches non achevées, non dépassées. (Aucun sens de dépendre des tâches déjà passées, aucun sens et aussi illégal de faire dépendre une tâche passée à d'autres tâches potentiellement en cours.)

## EST ASSIGNÉ

* **(PK02)**: Le couple `idUtilisateur` et `idTache` forment la clé primaire.
* **(FK01)**: `idUtilisateur` est une clé étrangère référençant `UTILISATEUR`.
* **(FK01)**: Effacer en cascade les n-uplets si `idUtilisateur` n'existe plus.
* **(FK10)**: `idTache` est une clé étrangère référençant `TACHE`.
* **(FK10)**: Effacer en cascade les n-uplets si `idTache` n'existe plus.
* **(PLxx)**: `idTache` doit référencer une tâche non achevée, non dépassée au moment de l'insertion. (Un utilisateur ne peut assigner et ne peut être assigné à une tâche passée.)
* **(PLxx)**: Il est illégal d'avoir une ligne où `idUtilisateur` est égale à `idUtilisateur` de la tache référencée par `idTache`. (Aucun sens d'être assigné à ses propres tâches en tant qu'utilisateur.)

## LISTE

* **(PK03)**: `idListe` est la clé primaire.
* **(NN01)**: `Nom de projet` non nul.
* `idUtilisateur`
  * **(NN02)**: Non nul.
  * **(FK03)**: Clé étrangère référençant `UTILISATEUR`.
  * **(FK03)**: Effacer en cascade les n-uplets si `idUtilisateur` référencé n'existe plus.
* **(UQ01)**: Le couple `Nom de projet` et `idUtilisateur` doit être unique. (Un utilisateur ne peut pas avoir des listes/projets de même nom.)

## PÉRIODICITÉ

* **(PK07)**: `idPeriodicite` est la clé primaire.
* Les attributs `Date de début`, `Date de fin` et `Intervalle` ne concernent que les tâches périodiques.
  * **(CK04)**: Si `Date de début` est renseignée alors `Intervalle` doit l'être aussi et vice-versa.
  * **(CK05)**: Si `Date de fin` est renseignée alors `Date de début` et `Intervalle` doivent l'être aussi.
  * **(PLxx)**: Chaque instance de tâche périodique a sa `Date d’échéance` calculée et renseignée automatiquement qui est sa `Date de début` ou la `Date d’échéance` de l'instance précédente si celle-ci existe plus son `Intervalle`. (Chaque instance de tâche périodique doit être achevée avant l'instance suivante.)

## SCORE

* **(PK08)**: `idScore` est la clé primaire.
* `Points`
  * **(NN12)**: Non nul.
  * **(CK07)**: `Points` indique le nombre de points ajoutés ou retirés en fonction de si la tâche associée est terminé à l'heure ou pas. De ce fait il doit être positif ou zéro.
* `Categorie`
* **(NN13)**: L'attribut `Catégorie` renseigne la catégorie à laquelle est associé le score et doit être non nul. Un score est forcément associé à une catégorie.

## TACHE

* **(PK04)**, **(FK11)**, **(PLxx)**: `idTache` est la clé primaire.
* `idUtilisateur`
  * **(NN03)**: Non nul.
  * **(FK04)**: Clé étrangère référençant `UTILISATEUR`.
  * **(FK04)**: Effacer en cascade les n-uplets si `idUtilisateur` référencé n'existe plus.
* `idListe`
  * **(FK05)**: Clé étrangère référençant `LISTE`.
  * **(FK05)**: Mettre à nul en cascade l'attribut si `idListe` référencé n'existe plus.
* **(NN04)**: `Titre` non nul.
* `Statut`
  * **(NN05)**: Non nul.
  * **(PLxx)**, **(IM01)**: `Statut` = non achevé au moment de l'insertion. (Pas de création de tâche déjà achevée.)
  * **(IM01)**, **(IM02)**, **(PLxx)**: Soit 1, soit 0 pour indiquer si la tâche est achevée ou pas respectivement.
  * **(PLxx)**: Ne peut plus être modifié si la `Date d’échéance` est dépassée.
* `Date de réalisation`
  * **(IM01)**, **(PLxx)**: Elle est nulle lors de l'insertion.
  * **(IM01)**, **(CK02)**: Elle est nulle tant que `Statut` = non achevé.
  * **(CK02)**: Elle est renseignée tant que `Statut` = achevé.
  * **(PLxx)**, **(CK03)**: Si elle est renseignée, elle doit être inférieure ou égale à la date courante et à la `Date d’échéance` si celle-ci est présente.
  * **(PLxx)**: Ne peut plus être modifiée tant que `Statut` = achevé.
* `Date d’échéance`
  * **(PLxx)**: Si elle est renseignée, elle doit être supérieure ou égale à la date courante.
  * **(PLxx)**: Ne peut plus être modifiée si cette date est dépassée.
* **(NN11)**: L'attribut `Catégorie` renseigne la catégorie de la tâche et doit être non nul. Une tâche a forcément une catégorie.
* **(FK07)**: `idPeriodicite` est une clé étrangère référençant `PERIODICITE`.

## UTILISATEUR

* **(PK05)**: `idUtilisateur` est la clé primaire.
* **(NN06)**, **(NN07)**: `Nom` et `Prénom` non nul.
* `Date d’inscription`
  * **(NN08)**: Non nulle.
  * **(PLxx)**: Calculé automatiquement lors de l'insertion, doit être inférieure ou égale à la date courante.
  * **(PLxx)**: Ne peut plus être modifié une fois renseignée. (Constante.)
* `Login`
  * **(UQ02)**, **(NN09)**: Unique et non nul.
  * **(PLxx)**: Calculé automatiquement lors de l'insertion. (Composé de la première lettre du prénom et des 7 premières lettres du nom (en minuscules) suivies de deux chiffres.)
* **(NN10)**, **(PLxx)**: `Mot de passe` non nul. (Ne peut contenir que des lettres (minuscules/majuscules), des chiffres et le caractère `_`.)
* `Score`
  * **(PLxx)**: Ne peut être manuellement renseignée, il est calculé et renseigné automatiquement.
