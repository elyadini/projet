-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 27 Avril 2017 à 00:57
-- Version du serveur :  5.7.17-0ubuntu0.16.04.1
-- Version de PHP :  7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mydb`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `login` varchar(45) NOT NULL,
  `passe` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `admins`
--

INSERT INTO `admins` (`id`, `login`, `passe`) VALUES
(1, 'said', 'said');

-- --------------------------------------------------------

--
-- Structure de la table `candudature`
--

CREATE TABLE `candudature` (
  `idC` int(11) NOT NULL,
  `etudiant.idetudiant` int(11) NOT NULL,
  `offre.idoffre` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `identreprise` int(11) NOT NULL,
  `entrepriseNom` varchar(45) DEFAULT NULL,
  `secteur` varchar(45) DEFAULT NULL,
  `numrue` varchar(100) DEFAULT NULL,
  `codeP` int(11) DEFAULT NULL,
  `ville` varchar(45) NOT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `entreprise`
--

INSERT INTO `entreprise` (`identreprise`, `entrepriseNom`, `secteur`, `numrue`, `codeP`, `ville`, `mail`, `tel`) VALUES
(6, 'euihyfrbv', 'eroijfr,v', 'jk', 98, 'ik', 'rfoij', 'rfijo'),
(8, 'Barca', 'madrid', '23  test', 23435, 'barca', 'barca@gmail', '3-2'),
(9, 'INfo com', 'info', '23 k', 1234, 'KENI', 'info@gmail.com', '09876543'),
(10, 'FCB', 'info', '3 h', 4444, 'kkk', 'fcb@', '344656');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `idetudiant` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `age` varchar(20) NOT NULL,
  `filierre` varchar(25) NOT NULL,
  `anneeu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`idetudiant`, `nom`, `prenom`, `age`, `filierre`, `anneeu`) VALUES
(1, 'SA', 'yad', '2', 'f', '2312'),
(2, 'said', 'said', '23', 'miage', '2017'),
(3, 'omar', 'omar', '12', 'maige', '2017');

-- --------------------------------------------------------

--
-- Structure de la table `etudiantcompte`
--

CREATE TABLE `etudiantcompte` (
  `id` int(11) NOT NULL,
  `mail` varchar(25) NOT NULL,
  `motdepasse` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `etudiantcompte`
--

INSERT INTO `etudiantcompte` (`id`, `mail`, `motdepasse`) VALUES
(1, 'said', 'said'),
(2, 'omar', 'omar'),
(3, 'ayob', 'ayob'),
(4, 'MAIL1', 'SAID'),
(5, 'saidd', 'saidd');

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE `offre` (
  `idoffre` int(11) NOT NULL,
  `libelle` varchar(45) DEFAULT NULL,
  `dateD` varchar(25) DEFAULT NULL,
  `durre` varchar(25) DEFAULT NULL,
  `descriptif` varchar(200) DEFAULT NULL,
  `domaine` varchar(45) DEFAULT NULL,
  `entrepriseNom` varchar(25) NOT NULL,
  `mailentreprise` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `offre`
--

INSERT INTO `offre` (`idoffre`, `libelle`, `dateD`, `durre`, `descriptif`, `domaine`, `entrepriseNom`, `mailentreprise`) VALUES
(1, 'INformatique', '12/12/2017', '12 mois', 'test test ', 'info', 'PSG', 'psg@gmail.com'),
(2, 'INformatique', '12/12/2017', '12 mois', 'TEST TEST TEST TEST TEST TEST TEST TESTTEST TESTTEST TESTTEST TESTVTEST TESTTEST TEST', 'info', 'PSG', 'psg@gmail.com'),
(3, 'STATISTIQUE', '12/01/2016', '23 mois', 'TEST TEST TEST TEST TEST TEST TEST TESTTEST TESTTEST TESTTEST TESTVTEST TESTTEST TEST222', 'stat', 'FCB', 'fcb@gmail.com');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`identreprise`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`idetudiant`);

--
-- Index pour la table `etudiantcompte`
--
ALTER TABLE `etudiantcompte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `offre`
--
ALTER TABLE `offre`
  ADD PRIMARY KEY (`idoffre`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `entreprise`
--
ALTER TABLE `entreprise`
  MODIFY `identreprise` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `idetudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `etudiantcompte`
--
ALTER TABLE `etudiantcompte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `offre`
--
ALTER TABLE `offre`
  MODIFY `idoffre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
