--requête 1--
SELECT * FROM film WHERE date_sortie>'1960-01-01'
--requête 2--
UPDATE film SET `description`='changement de description' WHERE id = 35
--requête 3--
INSERT INTO film (`titre`,`slug`,`image`,`prix`,`description`,`date_sortie`) VALUES ('Doctor Strange in the Multiverse of Madness',
'doc-strange-2','https://fr.web.img5.acsta.net/pictures/22/04/08/10/30/1779137.jpg','200',
'Le Docteur Stephen Strange continue ses recherches sur la Pierre du Temps. 
Cependant, un vieil ami devenu ennemi tente de détruire tous les sorciers de la Terre, ce qui perturbe le plan de Strange.',
DATE'2022-05-04')
INSERT INTO films_categs(id_film,id_categorie) VALUES (44,49),(44,52),(44,51)
--requête 4--
SELECT * FROM commentaire INNER JOIN user ON commentaire.id_user=user.id INNER JOIN film ON commentaire.id_film=film.id WHERE film.id=43
--requête 5--
DELETE FROM `film` WHERE slug LIKE 't%'
--requête 6--
SELECT DISTINCT user.* FROM `user` INNER JOIN commentaire ON commentaire.id_user=user.id
--requête 7--
SELECT * FROM film INNER JOIN films_categs ON film.id=films_categs.id_film WHERE films_categs.id_categorie=51
--requête 8--
SELECT AVG(note) FROM commentaire
--requête 9--
SELECT * FROM `film` WHERE MONTH(date_sortie)=06
--requête 10--
SELECT DISTINCT user.* FROM user INNER JOIN commentaire ON commentaire.id_user=user.id WHERE user.role=1