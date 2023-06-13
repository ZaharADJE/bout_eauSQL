DROP DATABASE IF EXISTS bout_eau;
CREATE DATABASE IF NOT EXISTS bout_eau;
USE bout_eau;
-- Structure de la table `bouteille`

DROP TABLE IF EXISTS bouteille;
CREATE TABLE IF NOT EXISTS bouteille
(
  id_bouteille INT NOT NULL AUTO_INCREMENT,
  nom_bouteille VARCHAR(50) NOT NULL,
  id_matiere INT NOT NULL,
  id_quantite INT NOT NULL,
  id_couleur INT NOT NULL,
  id_marque INT NOT NULL,
  PRIMARY KEY (id_bouteille),
  KEY id_matiere(id_matiere),
  KEY id_quantite(id_quantite),
  KEY id_couleur(id_couleur),
  KEY id_marque(id_marque)
)ENGINE=InnoDB AUTO_INCREMENT=1;

-- Structure de la table `matiere`

DROP TABLE IF EXISTS matiere;
CREATE TABLE IF NOT EXISTS matiere(
 id_matiere int NOT NULL AUTO_INCREMENT,
 nom_matiere varchar(50),
 PRIMARY KEY(id_matiere)
)ENGINE=InnoDB AUTO_INCREMENT=1;

-- Structure de la table `quantite`

DROP TABLE IF EXISTS quantite;
CREATE TABLE IF NOT EXISTS quantite(
 id_quantite int NOT NULL AUTO_INCREMENT,
 quantite varchar(50),
 PRIMARY KEY(id_quantite)
)ENGINE=InnoDB AUTO_INCREMENT=1;

-- Structure de la table `couleur`

DROP TABLE IF EXISTS couleur;
CREATE TABLE IF NOT EXISTS couleur(
 id_couleur int NOT NULL AUTO_INCREMENT,
 nom_couleur  varchar(50),
 PRIMARY KEY(id_couleur)
)ENGINE=InnoDB AUTO_INCREMENT=1;

-- Structure de la table `marque`

DROP TABLE IF EXISTS marque;
CREATE TABLE IF NOT EXISTS marque(
 id_marque int NOT NULL AUTO_INCREMENT,
 nom_marque varchar(50),
 PRIMARY KEY(id_marque)
)ENGINE=InnoDB AUTO_INCREMENT=1;

-- Structure de la table `eau`

DROP TABLE IF EXISTS eau;
CREATE TABLE IF NOT EXISTS eau(
id_eau int NOT NULL AUTO_INCREMENT,
nom_eau varchar(50),
id_provnance int NOT NULL,
id_gout int NOT NULL,
id_composition_chimique int NOT NULL,
PRIMARY KEY(id_eau),
KEY id_provnance (id_provnance),
KEY id_gout(id_gout)

)ENGINE=InnoDB AUTO_INCREMENT=1;

-- Structure de la table `provnance`

DROP TABLE IF EXISTS provnance;
CREATE TABLE IF NOT EXISTS provnance(
 id_provnance int NOT NULL AUTO_INCREMENT,
 nom_provnance varchar(50),
 PRIMARY KEY(id_provnance)
)ENGINE=InnoDB AUTO_INCREMENT=1;

-- Structure de la table `gout`

DROP TABLE IF EXISTS gout;
CREATE TABLE IF NOT EXISTS gout(
id_gout int NOT NULL AUTO_INCREMENT,
nom_gout varchar(50),
PRIMARY KEY(id_gout)
)ENGINE=InnoDB AUTO_INCREMENT=1;

-- Structure de la table `composition_chimique`

DROP TABLE IF EXISTS composition_chimique;
CREATE TABLE IF NOT EXISTS composition_chimique(
id_composition_chimique int NOT NULL AUTO_INCREMENT,
nom_composition_chimique varchar(50),
PRIMARY KEY(id_composition_chimique)
)ENGINE=InnoDB AUTO_INCREMENT=1;



-- Contraintes pour la table `bouteille`
ALTER TABLE `bouteille`
  ADD CONSTRAINT `bouteille_ibfk_1` FOREIGN KEY (`id_matiere`) REFERENCES `matiere` (`id_matiere`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `bouteille_ibfk_2` FOREIGN KEY (`id_quantite`) REFERENCES `quantite` (`id_quantite`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `bouteille_ibfk_3` FOREIGN KEY (`id_couleur`) REFERENCES `couleur` (`id_couleur`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `bouteille_ibfk_4` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`) ON DELETE RESTRICT ON UPDATE RESTRICT;

-- Contraintes pour la table `eau`
ALTER TABLE `eau`
  ADD CONSTRAINT `eau_ibfk_1` FOREIGN KEY (`id_provnance`) REFERENCES `provnance` (`id_provnance`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `eau_ibfk_2` FOREIGN KEY (`id_gout`) REFERENCES `gout` (`id_gout`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `eau_ibfk_3` FOREIGN KEY (`id_composition_chimique`) REFERENCES `composition_chimique` (`id_composition_chimique`) ON DELETE RESTRICT ON UPDATE RESTRICT;