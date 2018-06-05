-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mar 05 Juin 2018 à 16:54
-- Version du serveur :  5.7.22-0ubuntu18.04.1
-- Version de PHP :  7.2.5-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `hotel`
--

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `superficie` varchar(255) NOT NULL,
  `etage` varchar(255) NOT NULL,
  `handicap` varchar(255) NOT NULL,
  `lit` varchar(255) NOT NULL,
  `douche` varchar(255) NOT NULL,
  `baignoire` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `chambre`
--

INSERT INTO `chambre` (`id`, `nom`, `superficie`, `etage`, `handicap`, `lit`, `douche`, `baignoire`, `prix`) VALUES
(1, 'Chambre 001', '15', 'Rez de chaussez', 'oui', 'simple', 'oui', 'non', '30'),
(2, 'Chambre 101', '25', '1er etage', 'non', 'double', 'oui', 'oui', '60euros'),
(3, 'Chambre 201', '50', '2eme etage', 'non', 'double', 'oui', 'oui', '120euros');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `adresse`, `tel`, `mail`) VALUES
(1, 'Lefrançais', 'François', 'Cahors 46000 ', '06.09.07.77.88', 'françois@monmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `date_reservation`
--

CREATE TABLE `date_reservation` (
  `id` int(11) NOT NULL,
  `date_arr` varchar(45) NOT NULL,
  `date_dep` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `gerant`
--

CREATE TABLE `gerant` (
  `id` int(11) NOT NULL,
  `id_gerant_reservation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id_reservation` int(11) NOT NULL,
  `id_chambre` int(11) NOT NULL,
  `id_suite` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `petit_dej` varchar(255) NOT NULL,
  `mini_bar` varchar(255) NOT NULL,
  `champagne` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `suite`
--

CREATE TABLE `suite` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `superficie` varchar(255) NOT NULL,
  `etage` varchar(255) NOT NULL,
  `handicap` varchar(255) NOT NULL,
  `lit` varchar(255) NOT NULL,
  `douche` varchar(255) NOT NULL,
  `baignoire` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `suite`
--

INSERT INTO `suite` (`id`, `nom`, `superficie`, `etage`, `handicap`, `lit`, `douche`, `baignoire`, `prix`) VALUES
(1, 'Suite Bronze', '25m', '3', 'oui', 'double', 'oui', 'oui', '150eurso'),
(2, 'Suite Silver', '50m', '3', 'non', 'double', 'non', 'oui', '200euros'),
(3, 'Suite Silver', '50m', '3', 'non', 'double', 'non', 'oui', '200euros');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `date_reservation`
--
ALTER TABLE `date_reservation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `suite`
--
ALTER TABLE `suite`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `date_reservation`
--
ALTER TABLE `date_reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `suite`
--
ALTER TABLE `suite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
