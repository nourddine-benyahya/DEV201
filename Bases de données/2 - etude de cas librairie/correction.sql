# 1.	Liste des noms des éditeurs situés à Paris triés 
#par ordre alphabétique. 

select * from  editeur 
where villeed = 'paris'
order by nomed asc ;



#2.	Liste des écrivains de (tous les champs)  langue française, triés par ordre alphabétique sur le nom et le prénom.

select nomecr, prenomecr 
from ecrivain 
where LANGUECR  like "francais" 
order by nomecr, prenomecr Asc;

#3.	Liste des titres des ouvrages (NOMOUVR) ayant été
# édités entre (ANNEEPARU) 1986 et 1987.

select nomouvr 
from ouvrage
where  ANNEEPARU between 1986 and 1987;

#4.	Liste des éditeurs dont le n° de téléphone est inconnu
select nomed
from editeur
where teled is null; 
#5.	Liste des auteurs (nom + prénom) dont le nom contient un ‘C’.
select nomecr,prenomecr
from ecrivain
where nomecr like '%C%'; 
#6.	Liste des titres d’ouvrages contenant  le mot "banque" (éditer une liste triée par n° d'ouvrage croissant). 
select nomouvr
from ouvrage
where NOMOUVR like "%banque%"
order by NUMOUVR;
#7.	Liste des dépôts (nom) situés à Grenoble ou à Lyon. 
select nomdep , villedep 
from depot 
where  villedep in ("Grenoble" ,"Lyon");

#8.	Liste des écrivains (nom + prénom) américains
# ou de langue française. 
select nomecr,prenomecr 
from ecrivain 
where LANGUECR="francais" 
or PAYSECR="usa";
#9.	Liste des auteurs (nom + prénom) de langue française dont le nom ou le prénom commence par un ‘H’. 
#10.	Titres des ouvrages en stock au dépôt n°2. 
#11.	Liste des auteurs (nom + prénom) ayant écrit des livres coûtant au moins 30 € au 1/10/2002. 
#12.	Ecrivains (nom + prénom) ayant écrit des livres sur le thème (LIBRUB) des « finances publiques ». 
#13.	Idem R12 mais on veut seulement les auteurs dont le nom contient un ‘A’. 
#14.	En supposant l’attribut PRIXVENTE dans TARIFER comme un prix TTC et un taux de TVA égal à 15,5% sur les ouvrages, donner le prix HT de chaque ouvrage. 
#15.	Nombre d'écrivains dont la langue est l’anglais ou l’allemand. 
#16.	Nombre total d'exemplaires d’ouvrages sur la « gestion de portefeuilles » (LIBRUB) stockés dans les dépôts Grenoblois. 
#17.	Titre de l’ouvrage ayant le prix le plus élevé - faire deux requêtes. (réponse: Le Contr ôle de gestion dans la banque.)
#18.	Liste des écrivains avec pour chacun le nombre d’ouvrages qu’il a écrits. 
#19.	Liste des rubriques de classification avec, pour chacune, le nombre d'exemplaires en stock dans les dépôts grenoblois. 
#20.	Liste des rubriques de classification avec leur état de stock dans les dépôts grenoblois: ‘élevé’ s’il y a plus de 1000 exemplaires dans cette rubrique, ‘faible’ sinon. (réutiliser la requête 19). 
#21.	Liste des auteurs (nom + prénom) ayant écrit des livres sur le thème (LIBRUB) des « finances publiques » ou bien ayant écrit des livres coûtant au moins 30 € au 1/10/2002 - réutiliser les requêtes 11 et 12. 
#22.	Liste des écrivains (nom et prénom) n’ayant écrit aucun des ouvrages présents dans la base. 
#23.	Mettre à 0 le stock de l’ouvrage n°6 dans le dépôt Lyon2. 
#24.	Supprimer tous les ouvrages de chez Vuibert de la table OUVRAGE.
#25.	créer une table contenant les éditeurs situés à Paris et leur n° de tel.
