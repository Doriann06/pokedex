-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 17 mars 2025 à 15:40
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pokedex`
--

-- --------------------------------------------------------

--
-- Structure de la table `assopokemontype`
--

DROP TABLE IF EXISTS `assopokemontype`;
CREATE TABLE IF NOT EXISTS `assopokemontype` (
  `idPok` int(11) NOT NULL,
  `idType` int(11) NOT NULL,
  PRIMARY KEY (`idPok`,`idType`),
  KEY `idType` (`idType`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `assopokemontype`
--

INSERT INTO `assopokemontype` (`idPok`, `idType`) VALUES
(1, 5),
(1, 8),
(2, 5),
(2, 8),
(3, 5),
(3, 8),
(4, 2),
(5, 2),
(6, 2),
(6, 10),
(7, 3),
(8, 3),
(9, 3),
(10, 12),
(11, 12),
(12, 10),
(12, 12);

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
CREATE TABLE IF NOT EXISTS `pokemon` (
  `idPok` int(11) NOT NULL,
  `nomPok` varchar(50) DEFAULT NULL,
  `taillePok` decimal(15,2) DEFAULT NULL,
  `poidPok` decimal(15,2) DEFAULT NULL,
  `descPok` varchar(255) DEFAULT NULL,
  `imgPok` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`idPok`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`idPok`, `nomPok`, `taillePok`, `poidPok`, `descPok`, `imgPok`) VALUES
(1, 'Bulbizarre', '0.70', '6.90', 'Au début de sa vie, il se nourrit des nutriments accumulés dans la graine sur son dos. Cela lui permet de grandir.', '../img/001.png'),
(2, 'Herbizarre', '1.00', '13.00', 'Plus il s’expose au soleil, plus il emmagasine d’énergie, ce qui permet au bourgeon sur son dos de se développer.', '../img/002.png'),
(3, 'Florizarre', '2.00', '100.00', 'Ce Pokémon est capable de transformer la lumière du soleil en énergie. Il est donc encore plus fort en été.', '../img/003.png'),
(4, 'Salameche', '0.60', '8.50', 'La flamme au bout de sa queue représente sa vitalité. Quand Salamèche n’est pas au meilleur de sa forme, elle faiblit.', '../img/004.png'),
(5, 'Reptincel', '1.10', '19.00', 'En agitant sa queue enflammée, il peut élever la température ambiante de manière exponentielle et ainsi tourmenter ses adversaires.', '../img/005.png'),
(6, 'Dracaufeu', '1.70', '90.50', 'Quand Dracaufeu s’énerve réellement, la flamme au bout de sa queue devient bleue.', '../img/006.png'),
(7, 'Carapuce', '0.50', '9.00', 'Ce Pokémon crache une écume redoutable. Après sa naissance, son dos gonfle et durcit pour former une carapace.', '../img/007.png'),
(8, 'Carabaffe', '1.00', '22.50', 'Sa longue queue touffue est un symbole de longévité. Les personnes âgées apprécient donc particulièrement ce Pokémon.', '../img/008.png'),
(9, 'Tortank', '1.60', '85.50', 'Il augmente délibérément sa masse corporelle pour contrer le recul de ses puissants jets d’eau.', '../img/009.png'),
(10, 'Chenipan', '0.30', '2.90', 'Pour se protéger, il émet par ses antennes une odeur nauséabonde qui fait fuir ses ennemis.', '../img/010.png'),
(11, 'Chrysacier', '0.70', '9.90', 'En attendant sa prochaine évolution, il ne peut que durcir sa carapace et rester immobile pour éviter de se faire attaquer.', '../img/011.png'),
(12, 'Papilusion', '1.10', '32.00', 'Ce Pokémon raffole du nectar des fleurs. Il est capable de dénicher des champs fleuris même s’ils n’ont qu’une quantité infime de pollen.', '../img/012.png'),
(0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `idType` int(11) NOT NULL,
  `nomType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idType`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`idType`, `nomType`) VALUES
(1, 'Normal'),
(2, 'feu'),
(3, 'eau'),
(4, 'electique'),
(5, 'plante'),
(6, 'glace'),
(7, 'combat'),
(8, 'poison'),
(9, 'sol'),
(10, 'vol'),
(11, 'psy'),
(12, 'insecte'),
(13, 'roche'),
(14, 'spectre'),
(15, 'dragon'),
(16, 'tenebre'),
(17, 'fée'),
(18, 'acier');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
