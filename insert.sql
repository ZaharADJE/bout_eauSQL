USE bout_eau;

-- Déchargement des données de la table `matiere`

INSERT INTO matiere (nom_matiere) VALUES
('plastique'),
('verre'),
('metal');

-- Déchargement des données de la table `quantite`

INSERT INTO quantite (quantite) VALUES
('25cl'),
('33cl'),
('50cl'),
('1l'),
('1.5l'),
('2l');

-- Déchargement des données de la table `couleur`

INSERT INTO couleur(nom_couleur) VALUES
('transparent'),
('vert'),
('bleu'),
('rouge');

-- Déchargement des données de la table `marque`

INSERT INTO marque( nom_marque) VALUES
('evian'),
('cristaline'),
('mont blanc'),
('courmayeur');


-- Déchargement des données de la table `bouteille`
INSERT INTO bouteille (id_matiere, id_quantite, id_couleur,id_marque) VALUES
(1, 5,1,4);


-- Déchargement des données de la table `provnance`
INSERT INTO provnance(nom_provnance) VALUES
('alpes françaises'),
('Mont Blanc'),
('fonte youla'),
('françaises');

-- Déchargement des données de la table `gout`
INSERT INTO gout(nom_gout) VALUES
('sans gout'),
('citran'),
('fraise'),
('myrtille');


-- Déchargement des données de la table`eau`
INSERT INTO eau(nom_eau,id_provnance,id_gout,id_composition_chimique, id_bouteille) VALUES 
('evian',1,1,3,1);




