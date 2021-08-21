-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Sam 21 Août 2021 à 19:29
-- Version du serveur :  5.7.35-0ubuntu0.18.04.1
-- Version de PHP :  7.3.29-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `e-mmobilier`
--

-- --------------------------------------------------------

--
-- Structure de la table `bien`
--

CREATE TABLE `bien` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `localisation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL,
  `pieces` int(11) NOT NULL,
  `surface_h` double NOT NULL,
  `surface_t` double DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `energie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `bien`
--

INSERT INTO `bien` (`id`, `type`, `localisation`, `prix`, `pieces`, `surface_h`, `surface_t`, `description`, `etat`, `photo`, `energie_id`) VALUES

(2, 'maison', 'Tours, 86300', 158000, 4, 92, 1300, 'Maison de 130 m2 habitable \r\nAvec une toiture mono pente \r\nComprenant\r\nUne entrée indépendante \r\ntrois chambre de 11 12et 14 m2\r\nUne salle de douche\r\n\r\nPièce de vie avec cuisine américaine comprenant de nombreux rangements \r\nUne suite parentale avec dressing ,douche et baignoire \r\n\r\nSuivie d une pièce technique de 25 m2 \r\n(Atelier ou arrière cuisine )\r\net pour terminer sur un préau de 68m2 \r\nDonnant sur la rue à l aide d une porte de garage de 4,8m motorisée ', 'Ancien', 'https://img.leboncoin.fr/api/v1/lbcpb1/images/fe/dd/89/fedd89e3e5d100bb25ab97e56eeef2be633030ed.jpg?rule=ad-large', 1),

(3, 'appartement', 'Arnicase, 56450', 179000, 1, 26, 1500, 'En exclusivité sur Longjumeau, COUP DE CŒUR assuré pour cet appartement de 74m2 environ situé au dernier étage résidence calme et arborée,proche gare et écoles ainsi que toutes commodités.  Cet appartement vous séduira par son DOUBLE séjour LUMINEUX donnant sur un balcon et sa cuisine ouverte équipée et aménagée, trois belle chambres, un espace bureau, une salle de bain, cellier et WC indépendant.\r\nVient s ajouté une cave en sous sol.\r\nLes + de cet appartement : AUCUN vis-à-vis, VUE dégagée, DOUBLE VITRAGE,    isolation extérieure, le ravalement, le balcon et les volets ont été votés et payer.\r\n\r\nmontant de charges environ 250 € par mois (soit 3000 € annuel) déclaré par le vendeur.Honoraires agence à la charge du vendeur.Information affichage énergétique sur ce bien : classe ENERGIE D indice 222 et classe CLIMAT E indice 52\r\nA visiter sans tarder!!\r\n\r\n', 'Ancien', 'https://img.leboncoin.fr/api/v1/lbcpb1/images/ef/92/f6/ef92f6d34e14ca7019b78fa705b2b1e246387647.jpg?rule=ad-large', 5),

(4, 'maison', 'Toulon, 83500', 485900, 6, 150, 2350, 'En exclusivité sur Longjumeau, COUP DE CŒUR assuré pour cet appartement de 74m2 environ situé au dernier étage une résidence calme et arborée,proche gare et écoles ainsi que toutes commodités.  Cet appartement vous séduira par son DOUBLE séjour LUMINEUX donnant sur un balcon et sa cuisine ouverte équipée et aménagée, trois belle chambres, un espace bureau, une salle de bain, cellier et WC indépendant.\r\nVient s ajouté une cave en sous sol.\r\nLes + de cet appartement : AUCUN vis-à-vis, VUE dégagée, DOUBLE VITRAGE,    isolation extérieure, le ravalement, le balcon et les volets ont été votés et payer.\r\n\r\nmontant de charges environ 250 € par mois (soit 3000 € annuel) déclaré par le vendeur.Honoraires agence à la charge du vendeur.Information affichage énergétique sur ce bien : classe ENERGIE D indice 222 et classe CLIMAT E indice 52\r\nA visiter sans tarder!!\r\n\r\n', 'Ancien', 'https://img.leboncoin.fr/api/v1/lbcpb1/images/61/b8/4f/61b84f027ac60f250b6d78489260dc3c2d681996.jpg?rule=ad-large', 6),

(5, 'appartement', 'Cugnaux, 31400', 154000, 4, 74, 1460, 'En exclusivité sur Longjumeau, COUP DE CŒUR assuré pour cet appartement de 74m2 environ situé au dernier étage une résidence calme et arborée,proche gare et écoles ainsi que toutes commodités.  Cet appartement vous séduira par son DOUBLE séjour LUMINEUX donnant sur un balcon et sa cuisine ouverte équipée et aménagée, trois belle chambres, un espace bureau, une salle de bain, cellier et WC indépendant.\r\nVient s ajouté une cave en sous sol.\r\nLes + de cet appartement : AUCUN vis-à-vis, VUE dégagée, DOUBLE VITRAGE,    isolation extérieure, le ravalement, le balcon et les volets ont été votés et payer.\r\n\r\nmontant de charges environ 250 € par mois (soit 3000 € annuel) déclaré par le vendeur.Honoraires agence à la charge du vendeur.Information affichage énergétique sur ce bien : classe ENERGIE D indice 222 et classe CLIMAT E indice 52\r\nA visiter sans tarder!!\r\n\r\n', 'Ancien', 'https://img.leboncoin.fr/api/v1/lbcpb1/images/e6/b4/90/e6b490a3e9d7d168de6af3bdd1a2a799594ddf1c.jpg?rule=ad-large', 7),

(6, 'maison', 'Mazeres, 09270', 112500, 5, 92, 200, 'En exclusivité sur Longjumeau, COUP DE CŒUR assuré pour cet appartement de 74m2 environ situé au dernier étage une résidence calme et arborée,proche gare et écoles ainsi que toutes commodités.  Cet appartement vous séduira par son DOUBLE séjour LUMINEUX donnant sur un balcon et sa cuisine ouverte équipée et aménagée, trois belle chambres, un espace bureau, une salle de bain, cellier et WC indépendant.\r\nVient s ajouté une cave en sous sol.\r\nLes + de cet appartement : AUCUN vis-à-vis, VUE dégagée, DOUBLE VITRAGE,    isolation extérieure, le ravalement, le balcon et les volets ont été votés et payer.\r\n\r\nmontant de charges environ 250 € par mois (soit 3000 € annuel) déclaré par le vendeur.Honoraires agence à la charge du vendeur.Information affichage énergétique sur ce bien : classe ENERGIE D indice 222 et classe CLIMAT E indice 52\r\nA visiter sans tarder!!\r\n\r\n', 'Ancien', 'https://img.leboncoin.fr/api/v1/lbcpb1/images/65/a6/c3/65a6c39b6c16a5733d46553602042d9a8f3fb05b.jpg?rule=ad-large', 1),

(7, 'appartement', 'Longjumeau, 91160', 82600, 3, 104, 650, 'En exclusivité sur Longjumeau, COUP DE CŒUR assuré pour cet appartement de 74m2 environ situé au dernier étage une résidence calme et arborée,proche gare et écoles ainsi que toutes commodités.  Cet appartement vous séduira par son DOUBLE séjour LUMINEUX donnant sur un balcon et sa cuisine ouverte équipée et aménagée, trois belle chambres, un espace bureau, une salle de bain, cellier et WC indépendant.\r\nVient s ajouté une cave en sous sol.\r\nLes + de cet appartement : AUCUN vis-à-vis, VUE dégagée, DOUBLE VITRAGE,    isolation extérieure, le ravalement, le balcon et les volets ont été votés et payer.\r\n\r\nmontant de charges environ 250 € par mois (soit 3000 € annuel) déclaré par le vendeur.Honoraires agence à la charge du vendeur.Information affichage énergétique sur ce bien : classe ENERGIE D indice 222 et classe CLIMAT E indice 52\r\nA visiter sans tarder!!\r\n\r\n', 'Ancien', 'https://img.leboncoin.fr/api/v1/lbcpb1/images/ff/29/fa/ff29facc5070d4fd246a77d9b64cd1c0bac18cd2.jpg?rule=ad-large', 8),

(8, 'maison', 'Dartau, 11300', 382000, 4, 101, 5000, 'En exclusivité sur Longjumeau, COUP DE CŒUR assuré pour cet appartement de 74m2 environ situé au dernier étage une résidence calme et arborée,proche gare et écoles ainsi que toutes commodités.  Cet appartement vous séduira par son DOUBLE séjour LUMINEUX donnant sur un balcon et sa cuisine ouverte équipée et aménagée, trois belle chambres, un espace bureau, une salle de bain, cellier et WC indépendant.\r\nVient s ajouté une cave en sous sol.\r\nLes + de cet appartement : AUCUN vis-à-vis, VUE dégagée, DOUBLE VITRAGE,    isolation extérieure, le ravalement, le balcon et les volets ont été votés et payer.\r\n\r\nmontant de charges environ 250 € par mois (soit 3000 € annuel) déclaré par le vendeur.Honoraires agence à la charge du vendeur.Information affichage énergétique sur ce bien : classe ENERGIE D indice 222 et classe CLIMAT E indice 52\r\nA visiter sans tarder!!\r\n\r\n', 'Ancien', 'https://img.leboncoin.fr/api/v1/lbcpb1/images/f7/e7/9a/f7e79a9ebc9d0976244222bb94c6ab31096e41ff.jpg?rule=ad-large', 3),

(9, 'appartement', 'Mirail, 31100', 298500, 3, 86, 10000, 'En exclusivité sur Longjumeau, COUP DE CŒUR assuré pour cet appartement de 74m2 environ situé au dernier étage une résidence calme et arborée,proche gare et écoles ainsi que toutes commodités.  Cet appartement vous séduira par son DOUBLE séjour LUMINEUX donnant sur un balcon et sa cuisine ouverte équipée et aménagée, trois belle chambres, un espace bureau, une salle de bain, cellier et WC indépendant.\r\nVient s ajouté une cave en sous sol.\r\nLes + de cet appartement : AUCUN vis-à-vis, VUE dégagée, DOUBLE VITRAGE,    isolation extérieure, le ravalement, le balcon et les volets ont été votés et payer.\r\n\r\nmontant de charges environ 250 € par mois (soit 3000 € annuel) déclaré par le vendeur.Honoraires agence à la charge du vendeur.Information affichage énergétique sur ce bien : classe ENERGIE D indice 222 et classe CLIMAT E indice 52\r\nA visiter sans tarder!!\r\n\r\n', 'Ancien', 'https://img.leboncoin.fr/api/v1/lbcpb1/images/01/f6/c8/01f6c86892e53af8530adb319e3670195984743f.jpg?rule=ad-large', 6),

(10, 'maison', 'Puteaux, 93250', 235000, 4, 98, 900, 'En exclusivité sur Longjumeau, COUP DE CŒUR assuré pour cet appartement de 74m2 environ situé au dernier étage une résidence calme et arborée,proche gare et écoles ainsi que toutes commodités.  Cet appartement vous séduira par son DOUBLE séjour LUMINEUX donnant sur un balcon et sa cuisine ouverte équipée et aménagée, trois belle chambres, un espace bureau, une salle de bain, cellier et WC indépendant.\r\nVient s ajouté une cave en sous sol.\r\nLes + de cet appartement : AUCUN vis-à-vis, VUE dégagée, DOUBLE VITRAGE,    isolation extérieure, le ravalement, le balcon et les volets ont été votés et payer.\r\n\r\nmontant de charges environ 250 € par mois (soit 3000 € annuel) déclaré par le vendeur.Honoraires agence à la charge du vendeur.Information affichage énergétique sur ce bien : classe ENERGIE D indice 222 et classe CLIMAT E indice 52\r\nA visiter sans tarder!!\r\n\r\n', 'Ancien', 'https://img.leboncoin.fr/api/v1/lbcpb1/images/97/0a/60/970a6067c4128fe12ab97e4509e40ddb833dddf3.jpg?rule=ad-large', 5);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210821080002', '2021-08-21 10:01:12', 121),
('DoctrineMigrations\\Version20210821082855', '2021-08-21 10:29:06', 64),
('DoctrineMigrations\\Version20210821164240', '2021-08-21 18:42:52', 24),
('DoctrineMigrations\\Version20210821170047', '2021-08-21 19:01:09', 146);

-- --------------------------------------------------------

--
-- Structure de la table `energie`
--

CREATE TABLE `energie` (
  `id` int(11) NOT NULL,
  `color_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hex` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `energie`
--

INSERT INTO `energie` (`id`, `color_name`, `hex`) VALUES
(1, 'A', '#008735'),
(2, 'B', '#4cac27'),
(3, 'C', '#b2db11'),
(4, 'D', '#f7e902'),
(5, 'E', '#ffb301'),
(6, 'F', '#ff4d0a'),
(7, 'G', '#e3302c'),
(8, 'non renseigner', null);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `bien`
--
ALTER TABLE `bien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_45EDC386B732A364` (`energie_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `energie`
--
ALTER TABLE `energie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `bien`
--
ALTER TABLE `bien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `energie`
--
ALTER TABLE `energie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `bien`
--
ALTER TABLE `bien`
  ADD CONSTRAINT `FK_45EDC386B732A364` FOREIGN KEY (`energie_id`) REFERENCES `energie` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
