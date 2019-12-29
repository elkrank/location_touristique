-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 29 déc. 2019 à 16:55
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `location_saisoniere`
--

-- --------------------------------------------------------

--
-- Structure de la table `bien`
--

CREATE TABLE `bien` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `localisation` text NOT NULL,
  `personne_max` int(11) NOT NULL,
  `prix_basse_saison` int(11) NOT NULL,
  `prix_haute_saison` int(11) NOT NULL,
  `bien_description` text NOT NULL,
  `chemin_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bien`
--

INSERT INTO `bien` (`id`, `nom`, `localisation`, `personne_max`, `prix_basse_saison`, `prix_haute_saison`, `bien_description`, `chemin_photo`) VALUES
(1, 'LA VILLA BLEU', 'saint-françois', 4, 1500, 3000, 'la superbe villa sur les colline \r\nvue sur mer\r\nkayak', ''),
(2, 'villa rouge ', 'Gosier', 2, 500, 750, 'petite cabane de bord de plage', ''),
(3, 'villa verte', 'sainte-anne', 4, 750, 1500, 'villa sur le bord de la route à proximité de la plage de la caravelle', ''),
(4, 'villa jaune', 'lamentin', 12, 1000, 2000, 'sodmifh%ZIFH%PIF', ''),
(5, '', '', 0, 0, 0, '', ''),
(6, '', '', 0, 0, 0, '', ''),
(7, '', '', 0, 0, 0, '', ''),
(8, '', '', 0, 0, 0, '', ''),
(9, '', '', 0, 0, 0, '', ''),
(10, '', '', 0, 0, 0, '', ''),
(11, '', '', 0, 0, 0, '', ''),
(12, '', '', 0, 0, 0, '', ''),
(13, '', '', 0, 0, 0, '', ''),
(14, 'test', 'moncul', 12, 5684, 684654, 'qmeoufh', 'uploads/61591368_316447132582796_8512255538606637056_n.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `mdp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `bien` varchar(255) NOT NULL,
  `prix_semaine` int(11) NOT NULL,
  `nb_de_pers` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prix_total` int(11) NOT NULL,
  `regler` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bien`
--
ALTER TABLE `bien`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bien`
--
ALTER TABLE `bien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
