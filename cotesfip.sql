-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 05 déc. 2024 à 17:31
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cotesfip`
--

-- --------------------------------------------------------

--
-- Structure de la table `affectation_province_utilisateur`
--

CREATE TABLE `affectation_province_utilisateur` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_province` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `affectation_province_utilisateur`
--

INSERT INTO `affectation_province_utilisateur` (`id`, `id_utilisateur`, `id_province`) VALUES
(1, 1, 14);

-- --------------------------------------------------------

--
-- Structure de la table `configuration_province`
--

CREATE TABLE `configuration_province` (
  `id` int(11) NOT NULL,
  `libelle_configuration_province` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `configuration_province`
--

INSERT INTO `configuration_province` (`id`, `libelle_configuration_province`) VALUES
(1, 'Ancienne'),
(2, 'Nouvelle');

-- --------------------------------------------------------

--
-- Structure de la table `dgi_affectation_centre_perception`
--

CREATE TABLE `dgi_affectation_centre_perception` (
  `id` int(11) NOT NULL,
  `id_centre_perception` int(11) NOT NULL,
  `id_province` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dgi_categorie_nature_impot`
--

CREATE TABLE `dgi_categorie_nature_impot` (
  `id` int(11) NOT NULL,
  `libelle_categorie_nature_impot` text NOT NULL,
  `id_type_nature_impot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `dgi_categorie_nature_impot`
--

INSERT INTO `dgi_categorie_nature_impot` (`id`, `libelle_categorie_nature_impot`, `id_type_nature_impot`) VALUES
(1, 'IMPÔTS SUR LES REMUNERATIONS', 1),
(2, 'IMPÔTS SUR LES BENEFICES ET PROFITS ET SUR LES REVENUS DES CAPITAUX MOBILIERS', 1),
(3, 'IMPOTS ET TAXES SUR LES BIENS ET SERVICES', 1),
(4, 'AUTRES RECETTES', 1);

-- --------------------------------------------------------

--
-- Structure de la table `dgi_centre_perception`
--

CREATE TABLE `dgi_centre_perception` (
  `id` int(11) NOT NULL,
  `libelle_centre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dgi_nature_impot`
--

CREATE TABLE `dgi_nature_impot` (
  `id` int(11) NOT NULL,
  `code_nature_impot` varchar(50) DEFAULT NULL,
  `libelle_nature_impot` text NOT NULL,
  `id_type_nature_impot` int(11) DEFAULT NULL,
  `id_categorie_nature_impot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `dgi_nature_impot`
--

INSERT INTO `dgi_nature_impot` (`id`, `code_nature_impot`, `libelle_nature_impot`, `id_type_nature_impot`, `id_categorie_nature_impot`) VALUES
(1, '171 111 10', 'Impôt sur les revenus salariaux des Nationaux/Hors membres des Institutions politiques et fonctionnaires et agents publics', 1, 1),
(2, '171 111 20', 'Impôt sur les revenus salariaux des Nationaux/Membres des Institutions Politiques', 1, 1),
(3, '171 111 30', 'Impôt sur les revenus salariaux des Nationaux/Fonctionnaires et Agents publics', 1, 1),
(4, '171 111 31', 'Impôt sur les revenus salariaux des Nationaux/Autres fonctionnaires et Agents publics', 1, 1),
(5, '171 111 32', 'Impôt sur les revenus salariaux des Nationaux/Agents des Régies financières', 1, 1),
(6, '171 112 00', 'Impôt sur les revenus salariaux des  Expatriés', 1, 1),
(7, '171 114 00', 'Impôt Exceptionnel sur les rémunérations versées aux Expatriés (IERE)', 1, 1),
(8, '171 121 00', 'Impôt sur les bénéfices et profits des grandes et moyennes entreprises non pétrolières de production', 1, 2),
(9, NULL, 'impôt spécial sur les profits excédentaires', 1, 2),
(10, NULL, 'Impôt Spécial sur les Plus-Values de cessions d\'actions ou de parts sociales', 1, 2),
(11, '171 123 00', 'Impôt sur les bénéfices et profits des entreprises  de petite taille', 1, 2),
(12, '171 123 10/171 123 20', 'Impôt sur les bénéfices et profits des petites entreprises', 1, 2),
(13, '171 123 30', 'Impôt sur les bénéfices et profits des micro-entreprises', 1, 2),
(14, '171 124 00', 'Impôt professionnel sur les prestations  de services des non résidents', 1, 2),
(15, '171 130 00', 'Impôt sur les revenus des capitaux mobiliers', 1, 2),
(16, NULL, 'Impôt sur le Chiffre d\'Affaires à l\'Intérieur', 1, 3),
(17, '171 341 10', 'Immatriculation des véhicules', 1, 3),
(18, '270 122 29', 'Vente des imprimés', 1, 3),
(19, '371 370 00', 'Amendes et pénalités', 1, 3),
(20, '171 311 00', 'TAXE SUR LA VALEUR AJOUTEE SUR DECLARATIONS', 2, NULL),
(21, NULL, 'TAXE SUR LA VALEUR AJOUTEE RECOUVREE SUR AMR A', 2, NULL),
(22, NULL, 'IBP DES PETROLIERS PRODUCTEURS', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `dgi_statistique`
--

CREATE TABLE `dgi_statistique` (
  `id` int(11) NOT NULL,
  `id_province` int(11) NOT NULL,
  `id_centre_perception` int(11) NOT NULL,
  `id_nature_impot` int(11) NOT NULL,
  `id_mois` int(11) NOT NULL,
  `année` varchar(4) NOT NULL,
  `prevision` decimal(15,2) NOT NULL,
  `realisation` decimal(15,2) NOT NULL,
  `date_ajout` date NOT NULL,
  `date_validation` date NOT NULL,
  `id_etat_donnee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dgi_type_nature_impot`
--

CREATE TABLE `dgi_type_nature_impot` (
  `id` int(11) NOT NULL,
  `libelle_nature_impot` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `dgi_type_nature_impot`
--

INSERT INTO `dgi_type_nature_impot` (`id`, `libelle_nature_impot`) VALUES
(1, 'HORS TVA'),
(2, 'TVA');

-- --------------------------------------------------------

--
-- Structure de la table `dgi_utilisateur_centre_perception`
--

CREATE TABLE `dgi_utilisateur_centre_perception` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_centre_perception` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etat_donnee`
--

CREATE TABLE `etat_donnee` (
  `id` int(11) NOT NULL,
  `libelle_etat_donnee` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etat_donnee`
--

INSERT INTO `etat_donnee` (`id`, `libelle_etat_donnee`) VALUES
(1, 'En attente'),
(2, 'Validée');

-- --------------------------------------------------------

--
-- Structure de la table `etat_utilisateur`
--

CREATE TABLE `etat_utilisateur` (
  `id` int(11) NOT NULL,
  `libelle_etat` varchar(50) NOT NULL,
  `description_etat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etat_utilisateur`
--

INSERT INTO `etat_utilisateur` (`id`, `libelle_etat`, `description_etat`) VALUES
(1, 'Activé', NULL),
(2, 'Désactivé', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `mois`
--

CREATE TABLE `mois` (
  `id` int(11) NOT NULL,
  `libelle_mois` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `mois`
--

INSERT INTO `mois` (`id`, `libelle_mois`) VALUES
(1, 'JANVIER'),
(2, 'FEVRIER'),
(3, 'MARS'),
(4, 'AVRIL'),
(5, 'MAI'),
(6, 'JUIN'),
(7, 'JUILLET'),
(8, 'AOUT'),
(9, 'SEPTEMBRE'),
(10, 'OCTOBRE'),
(11, 'NOVEMBRE'),
(12, 'DECEMBRE');

-- --------------------------------------------------------

--
-- Structure de la table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `libelle_province` text NOT NULL,
  `id_configuration` int(1) NOT NULL COMMENT 'Configuration des provinces (Anciennes et nouvelles)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `province`
--

INSERT INTO `province` (`id`, `libelle_province`, `id_configuration`) VALUES
(1, 'KINSHASA', 2),
(2, 'BAS-UELE', 2),
(3, 'EQUATEUR', 2),
(4, 'HAUT- KATANGA', 2),
(5, 'HAUT-LOMAMI', 2),
(6, 'HAUT-UELE', 2),
(7, 'ITURI', 2),
(8, 'KASAI', 2),
(9, 'KASAI CENTRAL', 2),
(10, 'KASAI-ORIENTAL', 2),
(11, 'KONGO CENTRAL', 2),
(12, 'KWANGO', 2),
(13, 'KWILU', 2),
(14, 'LOMAMI', 2),
(15, 'LUALABA', 2),
(16, 'MAI-NDOMBE', 2),
(17, 'MANIEMA', 2),
(18, 'MONGALA', 2),
(19, 'NORD-KIVU', 2),
(20, 'NORD-UBANGI', 2),
(21, 'SANKURU', 2),
(22, 'SUD-KIVU', 2),
(23, 'SUD-UBANGI', 2),
(24, 'TANGANYIKA', 2),
(25, 'TSHOPO', 2),
(26, 'TSHUAPA', 2);

-- --------------------------------------------------------

--
-- Structure de la table `role_utilisateur`
--

CREATE TABLE `role_utilisateur` (
  `id` int(11) NOT NULL,
  `libelle_role` varchar(50) NOT NULL,
  `description_role` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `role_utilisateur`
--

INSERT INTO `role_utilisateur` (`id`, `libelle_role`, `description_role`) VALUES
(1, 'Administrateur Service', NULL),
(2, 'Validateur', NULL),
(3, 'Opérateur des saisies', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `service_pourvoyeur`
--

CREATE TABLE `service_pourvoyeur` (
  `id` int(11) NOT NULL,
  `libelle_service` text NOT NULL,
  `abreviation` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `service_pourvoyeur`
--

INSERT INTO `service_pourvoyeur` (`id`, `libelle_service`, `abreviation`) VALUES
(1, 'Direction Générale des Impôts', 'DGI');

-- --------------------------------------------------------

--
-- Structure de la table `service_province`
--

CREATE TABLE `service_province` (
  `id` int(11) NOT NULL,
  `id_service_pourvoyeur` int(11) NOT NULL,
  `id_province` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `motdepasse` varchar(255) NOT NULL,
  `id_service_pourvoyeur` int(4) DEFAULT NULL COMMENT 'Le service pourvoyeur des données (DGI, DGRAD, etc...)',
  `id_role` int(1) NOT NULL COMMENT 'Role de l''utilisateur dans le système(OPS, validateur, Admin)',
  `id_etat_utilisateur` int(1) NOT NULL COMMENT 'L''état de l''utilisateur dans le système ',
  `token_utilisateur` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `pseudo`, `motdepasse`, `id_service_pourvoyeur`, `id_role`, `id_etat_utilisateur`, `token_utilisateur`) VALUES
(1, 'KKDAN', '7c222fb2927d828af22f592134e8932480637c0d', 1, 1, 1, '564dd5c64e9b78c13ddc9dcaef7052c54789982e');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `affectation_province_utilisateur`
--
ALTER TABLE `affectation_province_utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_province` (`id_province`);

--
-- Index pour la table `configuration_province`
--
ALTER TABLE `configuration_province`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dgi_affectation_centre_perception`
--
ALTER TABLE `dgi_affectation_centre_perception`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_centre_perception` (`id_centre_perception`),
  ADD KEY `id_province` (`id_province`);

--
-- Index pour la table `dgi_categorie_nature_impot`
--
ALTER TABLE `dgi_categorie_nature_impot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_nature_impot` (`id_type_nature_impot`);

--
-- Index pour la table `dgi_centre_perception`
--
ALTER TABLE `dgi_centre_perception`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dgi_nature_impot`
--
ALTER TABLE `dgi_nature_impot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_nature_impot` (`id_type_nature_impot`),
  ADD KEY `id_categorie_nature_impot` (`id_categorie_nature_impot`);

--
-- Index pour la table `dgi_statistique`
--
ALTER TABLE `dgi_statistique`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_province` (`id_province`),
  ADD KEY `id_centre_perception` (`id_centre_perception`),
  ADD KEY `id_nature_impot` (`id_nature_impot`),
  ADD KEY `id_mois` (`id_mois`),
  ADD KEY `id_etat_donnee` (`id_etat_donnee`);

--
-- Index pour la table `dgi_type_nature_impot`
--
ALTER TABLE `dgi_type_nature_impot`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dgi_utilisateur_centre_perception`
--
ALTER TABLE `dgi_utilisateur_centre_perception`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_centre_perception` (`id_centre_perception`);

--
-- Index pour la table `etat_donnee`
--
ALTER TABLE `etat_donnee`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etat_utilisateur`
--
ALTER TABLE `etat_utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mois`
--
ALTER TABLE `mois`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_configuration` (`id_configuration`);

--
-- Index pour la table `role_utilisateur`
--
ALTER TABLE `role_utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service_pourvoyeur`
--
ALTER TABLE `service_pourvoyeur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service_province`
--
ALTER TABLE `service_province`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_service_pourvoyeur` (`id_service_pourvoyeur`),
  ADD KEY `id_province` (`id_province`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service pourvoyeur des données (DGI, DGRAD, etc...)` (`id_service_pourvoyeur`),
  ADD KEY `Role de l'utilisateur dans le système(OPS, validateur, Admin)` (`id_role`),
  ADD KEY `id_etat_utilisateur` (`id_etat_utilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `affectation_province_utilisateur`
--
ALTER TABLE `affectation_province_utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `configuration_province`
--
ALTER TABLE `configuration_province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `dgi_affectation_centre_perception`
--
ALTER TABLE `dgi_affectation_centre_perception`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dgi_categorie_nature_impot`
--
ALTER TABLE `dgi_categorie_nature_impot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `dgi_centre_perception`
--
ALTER TABLE `dgi_centre_perception`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dgi_nature_impot`
--
ALTER TABLE `dgi_nature_impot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `dgi_statistique`
--
ALTER TABLE `dgi_statistique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dgi_type_nature_impot`
--
ALTER TABLE `dgi_type_nature_impot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `dgi_utilisateur_centre_perception`
--
ALTER TABLE `dgi_utilisateur_centre_perception`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `etat_donnee`
--
ALTER TABLE `etat_donnee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `etat_utilisateur`
--
ALTER TABLE `etat_utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `mois`
--
ALTER TABLE `mois`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `role_utilisateur`
--
ALTER TABLE `role_utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `service_pourvoyeur`
--
ALTER TABLE `service_pourvoyeur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `service_province`
--
ALTER TABLE `service_province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `affectation_province_utilisateur`
--
ALTER TABLE `affectation_province_utilisateur`
  ADD CONSTRAINT `affectation_province_utilisateur_ibfk_1` FOREIGN KEY (`id_province`) REFERENCES `province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `affectation_province_utilisateur_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `dgi_affectation_centre_perception`
--
ALTER TABLE `dgi_affectation_centre_perception`
  ADD CONSTRAINT `dgi_affectation_centre_perception_ibfk_1` FOREIGN KEY (`id_centre_perception`) REFERENCES `dgi_centre_perception` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dgi_affectation_centre_perception_ibfk_2` FOREIGN KEY (`id_province`) REFERENCES `province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `dgi_categorie_nature_impot`
--
ALTER TABLE `dgi_categorie_nature_impot`
  ADD CONSTRAINT `dgi_categorie_nature_impot_ibfk_1` FOREIGN KEY (`id_type_nature_impot`) REFERENCES `dgi_type_nature_impot` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `dgi_nature_impot`
--
ALTER TABLE `dgi_nature_impot`
  ADD CONSTRAINT `dgi_nature_impot_ibfk_1` FOREIGN KEY (`id_type_nature_impot`) REFERENCES `dgi_type_nature_impot` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dgi_nature_impot_ibfk_2` FOREIGN KEY (`id_categorie_nature_impot`) REFERENCES `dgi_categorie_nature_impot` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `dgi_statistique`
--
ALTER TABLE `dgi_statistique`
  ADD CONSTRAINT `dgi_statistique_ibfk_1` FOREIGN KEY (`id_centre_perception`) REFERENCES `dgi_centre_perception` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dgi_statistique_ibfk_2` FOREIGN KEY (`id_mois`) REFERENCES `mois` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dgi_statistique_ibfk_3` FOREIGN KEY (`id_nature_impot`) REFERENCES `dgi_nature_impot` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dgi_statistique_ibfk_4` FOREIGN KEY (`id_province`) REFERENCES `province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dgi_statistique_ibfk_5` FOREIGN KEY (`id_etat_donnee`) REFERENCES `etat_donnee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `dgi_utilisateur_centre_perception`
--
ALTER TABLE `dgi_utilisateur_centre_perception`
  ADD CONSTRAINT `dgi_utilisateur_centre_perception_ibfk_1` FOREIGN KEY (`id_centre_perception`) REFERENCES `dgi_centre_perception` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dgi_utilisateur_centre_perception_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `province`
--
ALTER TABLE `province`
  ADD CONSTRAINT `province_ibfk_1` FOREIGN KEY (`id_configuration`) REFERENCES `configuration_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `service_province`
--
ALTER TABLE `service_province`
  ADD CONSTRAINT `service_province_ibfk_1` FOREIGN KEY (`id_province`) REFERENCES `province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `service_province_ibfk_2` FOREIGN KEY (`id_service_pourvoyeur`) REFERENCES `service_pourvoyeur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`id_etat_utilisateur`) REFERENCES `etat_utilisateur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `utilisateur_ibfk_2` FOREIGN KEY (`id_role`) REFERENCES `role_utilisateur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `utilisateur_ibfk_3` FOREIGN KEY (`id_service_pourvoyeur`) REFERENCES `service_pourvoyeur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
