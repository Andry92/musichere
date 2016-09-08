-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 08, 2016 at 03:15 
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musichere`
--

-- --------------------------------------------------------

--
-- Table structure for table `acquisto`
--

CREATE TABLE `acquisto` (
  `id` int(11) NOT NULL,
  `id_utente` int(11) NOT NULL,
  `id_traccia` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `prezzo` float(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acquisto`
--

INSERT INTO `acquisto` (`id`, `id_utente`, `id_traccia`, `data`, `prezzo`) VALUES
(25, 1, 1, '2016-09-05 07:33:40', 5.20),
(26, 1, 2, '2016-09-05 07:34:40', 1.20),
(27, 1, 18, '2016-09-05 07:34:40', 1.20),
(29, 1, 95, '2016-09-05 08:08:15', 1.20),
(30, 1, 96, '2016-09-05 08:08:15', 1.20),
(31, 1, 97, '2016-09-05 08:08:15', 1.20),
(32, 1, 98, '2016-09-05 08:08:15', 1.20),
(33, 1, 99, '2016-09-05 08:08:15', 1.20),
(34, 1, 100, '2016-09-05 08:08:15', 1.20),
(35, 1, 101, '2016-09-05 08:08:15', 1.20),
(36, 1, 102, '2016-09-05 08:08:15', 1.20),
(37, 1, 103, '2016-09-05 08:08:15', 1.20),
(38, 29, 113, '2016-09-06 10:58:08', 1.20),
(39, 1, 136, '2016-09-06 03:13:21', 5.70),
(41, 1, 138, '2016-09-07 05:41:19', 2.00),
(42, 1, 109, '2016-09-08 09:40:09', 5.20),
(43, 1, 130, '2016-09-08 02:47:58', 1.20);

-- --------------------------------------------------------

--
-- Table structure for table `carrello`
--

CREATE TABLE `carrello` (
  `id_utente` int(2) NOT NULL,
  `id_traccia` int(2) NOT NULL,
  `flag` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carrello`
--

INSERT INTO `carrello` (`id_utente`, `id_traccia`, `flag`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 18, 1),
(1, 95, 1),
(1, 96, 1),
(1, 97, 1),
(1, 98, 1),
(1, 99, 1),
(1, 100, 1),
(1, 101, 1),
(1, 102, 1),
(1, 103, 1),
(1, 109, 1),
(1, 130, 1),
(1, 136, 1),
(1, 138, 1),
(29, 113, 1);

-- --------------------------------------------------------

--
-- Table structure for table `commenti`
--

CREATE TABLE `commenti` (
  `id` int(5) UNSIGNED NOT NULL,
  `commento` varchar(200) DEFAULT NULL,
  `data` varchar(10) DEFAULT NULL,
  `ora` time NOT NULL,
  `id_utente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commenti`
--

INSERT INTO `commenti` (`id`, `commento`, `data`, `ora`, `id_utente`) VALUES
(36, 'Non male ''sto sito dai', '2016/08/12', '05:27:15', 2),
(37, 'Va bene ok, forse cafudda ma senza fudda', '2016/08/12', '05:27:44', 1),
(38, 'Apposto!', '2016/08/16', '05:07:27', 1),
(39, 'jbubu', '2016/08/30', '08:54:24', 1),
(40, 'Manca Nino D''Angelo\r\n', '2016/09/01', '10:30:07', 23),
(41, 'Yo quiero El Nino D''Angelo. Â¿por quÃ© no estÃ¡s ahÃ­?', '2016/09/01', '10:31:36', 23),
(42, 'No puedo ver la Fattura. Yo tengo un cuggino en la Policia!! VI DENUNCIO.', '2016/09/01', '10:39:07', 23),
(43, 'HHHHHHHHMMMHHHH!!!', '2016/09/07', '05:57:19', 22);

-- --------------------------------------------------------

--
-- Table structure for table `fattura`
--

CREATE TABLE `fattura` (
  `id` int(11) NOT NULL,
  `id_utente` int(11) NOT NULL,
  `metodo` varchar(20) NOT NULL,
  `totale` float(4,2) NOT NULL,
  `data` datetime NOT NULL,
  `cod_carta` char(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fattura`
--

INSERT INTO `fattura` (`id`, `id_utente`, `metodo`, `totale`, `data`, `cod_carta`) VALUES
(128, 1, 'Paypal', 5.20, '2016-09-05 07:33:40', ''),
(129, 1, 'Paypal', 2.40, '2016-09-05 07:34:40', ''),
(130, 1, 'Carta di credito', 10.80, '2016-09-05 08:08:15', '5675777777777777'),
(131, 29, 'Paypal', 1.20, '2016-09-06 10:58:08', ''),
(132, 1, 'Paypal', 5.70, '2016-09-06 03:13:21', ''),
(133, 1, 'Carta di credito', 3.20, '2016-09-07 05:41:19', '3200939302930392'),
(134, 1, 'Paypal', 5.20, '2016-09-08 09:40:09', ''),
(135, 1, 'Carta di credito', 1.20, '2016-09-08 02:47:58', '5675777777777777');

-- --------------------------------------------------------

--
-- Table structure for table `tracce`
--

CREATE TABLE `tracce` (
  `id_traccia` int(11) NOT NULL,
  `album` varchar(80) DEFAULT NULL,
  `titolo` varchar(50) DEFAULT NULL,
  `artista` varchar(30) DEFAULT NULL,
  `num_traccia` int(11) DEFAULT NULL,
  `anno` char(10) DEFAULT NULL,
  `genere` varchar(30) DEFAULT NULL,
  `Canzoni` varchar(300) DEFAULT NULL,
  `copertina` varchar(90) DEFAULT NULL,
  `testo` text,
  `prezzo` float(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracce`
--

INSERT INTO `tracce` (`id_traccia`, `album`, `titolo`, `artista`, `num_traccia`, `anno`, `genere`, `Canzoni`, `copertina`, `testo`, `prezzo`) VALUES
(1, 'Il Sogno Eretico', 'Chi se ne frega della musica', 'Caparezza', 3, '2011', 'Alternative Rap', 'Tracce/Caparezza/Chi Se Ne Frega Della Musica.mp3', 'Copertine/Il Sogno Eretico.jpg', 'E chi se ne frega della musica, <br>\ndi tutti \nquesti libri sulla musica, <br>\ndi tutte \nle interviste, di tutte le riviste, <br>\ndi \ntutti gli arrivisti, gli arrivisti, <br>\ngli arrivisti. <br> <br>\n \nIo con la musica non \nc''entro niente <br>\ncome il mio pene davanti \nal wc, a luci spente <br>\nmi contraddico \nfacilmente <br>\nma lo faccio cosi'' spesso \nche questo fa di me una persona coerente  <br> \ned \nho tanto da dire <br> perche'' ho poco da \nfare, \ntu mi invidi, sorridi, mi proponi \nun affare: <br>\ncominciare con i temi di \ncui parla Faber <br>\ne finire per un mese \nsull''isola a far la fame. <br>\nQualsiasi \ncosa faccia mi viene riconosciuta? <br>\nNo \ne'' la mia faccia che viene riconosciuta!<br> \nMolti \ndei mie fan che fanno la schiuma <br>\nhanno \nla doppia faccia come il barone Ashura! <br>\nParlano \ncon me come con un fratello grande \ne \nmi riprendono in mutande come nel Grande \nFratello. <br>\nIl video che mi fanno mentre \nlecco un orinale <br>\ne'' cliccato piu'' del \nvideo ufficiale della mia label <br> <br>\n\ne \nchi se ne frega della musica, \ndi tutti \nquesti libri sulla musica, <br>\ndi tutte \nle interviste, di tutte le riviste \ndi <br>\ntutti gli arrivisti gli arrivisti, \ngli arrivisti <br>\nsi ma chi se ne frega \ndella musica <br>\nora che tutti parlano \ndi musica, <br>\ndi tutti questi artisti, <br>\ndi tutti questi dischi <br>\ndi tutti questi \nfischi, questi fischi, questi fischi! \n<br><br>\n\nNon \nho mai capito questi social network <br>\nper \nme servono solo a fare i porci a letto. <br>\nOgni \nvolta che nasce una nuova piattaforma <br>\nmi \nfa l''effetto di un libro che ho gia'' \nletto <br>\ne poi non ho tutti sti amici \nma molti meno <br>\nmi danno affetto ma poi \nm''affettano come Ghemon. <br>\nTu! E'' due \nore che mi parli, io sono fan di Ghandi <br> \ned \ne'' solo per questo che non ti meno! <br>\nIl \nmio cellulare squilla ogni 2 minuti,<br> \ngente \nche mi assilla e mi chiede se ho 2 \nminuti, <br>\nassessori, collettivi, sindacati, \ngiornalisti, <br>\npassa un giorno e i miei \ntesticoli non sono piu'' minuti. <br>\nMi stupisco, <br>\npubblico un disco <br>\ne mi fanno le foto \nin pubblico, perche''? non capisco! <br>\nOh, \nnon vi interessano le note che registro<br> \nvi \ninteressano le mie note sul registro! <br><br>\n\ne \nchi se ne frega della musica... <br><br>\n\nIo \nnon faccio musica ma il cacchio che \nmi pare <br>\nfaccio rosicare chi ama il \ngenere musicale, <br>\nnon parlo male di \nun collega o di un presunto tale <br>\nma \nriciclo il suo cd come regalo di Natale.<br> \nNon \nmi faccio i flash come Syd Barret, <br>\nnon \nmi piacciono i flash sul red carpet <br>\ne \nme ne frego degli artisti veri, <br>\ntanto \ngli artisti veri sono veri come i muppet.. <br>\nIn \nquesto meccanismo che non posso inceppare <br>\nla \nrete non e'' Che Guevara anche se si \nfinge tale, <br>\nal primo posto nella classifica \ndigitale <br>\nche tu ci creda o meno c''e'' \nsolo chi vince i talent <br>\ned io non so \ncantare, gia'', ma soprattutto non so \npiangere <br>\nin pubblico per bucare lo schermo <br> \ntoglimi\ntutto questo che magari mi fermo <br>\ndi \ncerto non mi freddo in una stanza d''albergo <br> <br>\n\ne \nchi se ne frega della musica, <br>\ndi tutti \nquesti libri sulla musica, <br>\ndi tutte \nle interviste, di tutte le riviste <br>\ndi \ntutti gli arrivisti, gli arrivisti,\ngli arrivisti <br>\nsi ma chi se ne frega \ndella musica <br>\nora che tutti parlano \ndi musica <br>\ndi tutti i mercenari della \nmusica <br>\nin queste trasmissioni sulla \nmusica <br>\ndi tutti questi artisti, <br>\ndella \nPizzi, di Battisti <br>\ndi Zanicchi, di \nStravinskij <br>\nThin Lizzy, Limp Bizkin <br>\ndei \nBeastie, degli Extreme \ndei Lipps inc, <br>\ndi Springsteen <br>\nma si.. Chi se ne frega \ndella musica!', 2.10),
(2, 'Il Sogno Eretico', 'La fine di Gaia', 'Caparezza', 9, '2011', 'Alternative Rap', 'Tracce/Caparezza/La Fine Di Gaia.mp3', 'Copertine/Il Sogno Eretico.jpg', 'Povera Gaia \r\nanche i Maya vogliono la tua taglia \r\npure la massaia lo sa, per la fifa tartaglia \r\ndecifra una sterpaglia di codici ma il 20-12 \r\nnon incide se non nei cinematografi. \r\nUomini retti che sono uomini rettili \r\ncon pupille da serpenti \r\npiù spille da sergenti \r\nvogliono la tua muta, Gaia \r\nti vogliono muta, Gaia \r\nla bomba è venuta a galla adesso esploderà. \r\n\r\nReti di rettiliani, andirivieni d'' alieni \r\nvelivoli di veleni, tutti in cerca di ripari ma \r\n\r\nLa fine di Gaia non arriverà \r\nla gente si sbaglia \r\nin fondo che ne sa. \r\nE'' un fuoco di paglia \r\nalla faccia dei Maya e di Cinecittà. \r\nLa fine di Gaia non arriverà! \r\nLa fine di Gaia non arriverà! \r\n\r\nAnche E.T. è qui, mamma che condanna! \r\nE'' un pervertito, ha rapito Gaia per fecondarla \r\ncon alieni adepti che scuoiano coniglietti \r\ne li mostrano alle TV spacciandoli per feti extraterrestri. \r\nC''è chi vuole farsi Gaia con fumi sparsi in aria \r\nda un aereo che la ingabbia come all''Asinara. \r\nSi narra che gaia sniffi, \r\nabbaia anche Brian Griffin. \r\nE'' Clyro come i Biffy che gaia Gaia non è. \r\nTra San Giovanni, Nostradamus e millennium bug \r\nsulla sua bara chiunque metterebbe una tag. \r\n\r\nMa la fine di Gaia non arriverà \r\nla gente si sbaglia \r\nin fondo che ne sa. \r\nE'' un fuoco di paglia \r\nalla faccia dei Maya e di Cinecittà. \r\nLa fine di Gaia non arriverà! \r\nLa fine di Gaia non arriverà! \r\n\r\nNé con i passi di Godzilla né coi passi della Bibbia, \r\nGaia sopravviverà \r\na questi cazzo di asteroidi che non hanno mai schiacciato \r\nneanche una farfalla. \r\nSei tu che tratti Gaia come una recluta a naja \r\nami il petrolio ma la baia non è una caldaia \r\nla tua mannaia lima l''aria mica l''Himalaia! \r\nGaia si salverà, chi salverà il soldato Ryan? \r\n\r\nNon i marziani ma te dovrò respingere \r\nnon i marziani ma te dovrò respingere e vedrai.. \r\n\r\nLa fine di Gaia non arriverà \r\nla gente si sbaglia \r\nin fondo che ne sa. \r\nE'' un fuoco di paglia \r\nalla faccia dei Maya e di Cinecittà. \r\nLa fine di Gaia non arriverà! \r\nLa fine di Gaia non arriverà! \r\nLa fine di Gaia non arriverà! \r\n2012: nemmeno un temporale!', 1.20),
(4, 'Dark Horse', 'Something In Your Mouth', 'Nickelback', 1, '2008', 'Alternative Metal', 'Tracce/Nickelback/Something In Your Mouth.mp3', 'Copertine/dark horse.jpg', NULL, 3.20),
(5, 'A Rush Of Blood To The Head', 'The Scientist', 'Coldplay', 4, '2002', 'Alternative Rock', 'Tracce/Coldplay/The Scientist.mp3', 'Copertine/a rush of blood to the head.jpg', NULL, 1.20),
(6, 'A Rush Of Blood To The Head', 'Clocks', 'Coldplay', 5, '2002', 'Alternative Rock', 'Tracce/Coldplay/Clocks.mp3', 'Copertine/a rush of blood to the head.jpg', NULL, 1.20),
(7, 'American Idiot', 'American Idiot', 'Green Day', 1, '2004', 'Punk Rock', 'Tracce/Green Day/American Idiot.mp3', 'Copertine/american idiot.jpg', NULL, 1.20),
(8, 'American Idiot', 'Holiday', 'Green Day', 3, '2004', 'Punk Rock', 'Tracce/Green Day/Holiday.mp3', 'Copertine/american idiot.jpg', NULL, 1.20),
(9, 'Black Holes And Revelations', 'Take a Bow', 'Muse', 1, '2006', 'Alternative Rock', 'Tracce/Muse/Take A Bow.mp3', 'Copertine/black holes & revelations.jpg', NULL, 1.20),
(10, 'Black Holes And Revelations', 'Supermassive Black Hole', 'Muse', 3, '2006', 'Alternative Rock', 'Tracce/Muse/Supermassive Black Hole.mp3', 'Copertine/black holes & revelations.jpg', NULL, 1.20),
(11, 'Dark Horse', 'Burn It To The Ground', 'Nickelback', 2, '2008', 'Alternative Metal', 'Tracce/Nickelback/Burn It To The Ground.mp3', 'Copertine/dark horse.jpg', NULL, 1.20),
(12, 'Do We Need This (B-Sides and Rarities)', 'In Your World', 'Muse', 1, '2005', 'Alternative Rock', 'Tracce/Muse/In Your World.mp3', 'Copertine/do we need this.jpg', NULL, 1.20),
(13, 'Do We Need This (B-Sides and Rarities)', 'Fury', 'Muse', 13, '2005', 'Alternative Rock', 'Tracce/Muse/Fury.mp3', 'Copertine/do we need this.jpg', NULL, 1.20),
(14, 'Dookie', 'Longview', 'Green Day', 4, '1994', 'Punk', 'Tracce/Green Day/Longview.mp3', 'Copertine/dookie.jpg', NULL, 1.20),
(15, 'Dookie', 'Basket Case', 'Green Day', 7, '1994', 'Punk', 'Tracce/Green Day/Basket Case.mp3', 'Copertine/dookie.jpg', NULL, 1.20),
(16, 'I''m With You', 'Look Around', 'Red Hot Chili Peppers', 6, '2011', 'Rock', 'Tracce/Red Hot Chili Peppers/Look Around.mp3', 'Copertine/im with you.jpg', NULL, 1.20),
(17, 'I''m With You', 'The Adventures Of Rain Dance Maggie', 'Red Hot Chili Peppers', 7, '2011', 'Rock', 'Tracce/Red Hot Chili Peppers/The Adventures Of Rain Dance Maggie.mp3', 'Copertine/im with you.jpg', NULL, 1.20),
(18, 'Le Dimensioni Del Mio Caos', 'Vieni A Ballare in Puglia', 'Caparezza', 7, '2008', 'Alternative Rap', 'Tracce/Caparezza/Vieni a ballare in Puglia.mp3', 'Copertine/le dimensioni del mio caos.jpg', NULL, 1.20),
(19, 'Le Dimensioni Del Mio Caos', 'Abiura Di Me', 'Caparezza', 8, '2008', 'Alternative Rap', 'Tracce/Caparezza/Abiura di me.mp3', 'Copertine/le dimensioni del mio caos.jpg', NULL, 1.20),
(20, 'Mylo Xyloto', 'Paradise', 'Coldplay', 3, '2011', 'Pop', 'Tracce/Coldplay/Paradise.mp3', 'Copertine/mylo xyloto.jpg', NULL, 1.20),
(21, 'Mylo Xyloto', 'Charlie Brown', 'Coldplay', 4, '2011', 'Pop', 'Tracce/Coldplay/Charlie Brown.mp3', 'Copertine/mylo xyloto.jpg', NULL, 1.20),
(22, 'Nimrod', 'Nice Guys Finish Last', 'Green Day', 1, '1997', 'Punk Rock', 'Tracce/Green Day/Nice Guys Finish Last.mp3', 'Copertine/nimrod.jpg', NULL, 1.20),
(23, 'Nimrod', 'Hitchin'' a Ride', 'Green Day', 2, '1997', 'Punk Rock', 'Tracce/Green Day/Hitchin a Ride.mp3', 'Copertine/nimrod.jpg', NULL, 1.20),
(24, 'Parachutes', 'Don''t Panic', 'Coldplay', 1, '2000', 'Pop', 'Tracce/Coldplay/Dont Panic.mp3', 'Copertine/parachutes.jpg', NULL, 1.20),
(31, 'Dark Horse', 'Gotta Be Somebody', 'Nickelback', 3, '2008', 'Alternative Metal', 'Tracce/Nickelback/Gotta Be Somebody.mp3', 'Copertine/dark horse.jpg', NULL, 1.20),
(51, 'Dark Horse', 'I''d Come For You', 'Nickelback', 4, '2008', 'Alternative Metal', 'Tracce/Nickelback/Id Come For You.mp3', 'Copertine/dark horse.jpg', NULL, 1.20),
(71, 'Dark Horse', 'Next Go Round', 'Nickelback', 5, '2008', 'Alternative Metal', 'Tracce/Nickelback/Next Go Round.mp3', 'Copertine/dark horse.jpg', NULL, 1.20),
(85, 'Parachutes', 'Yellow', 'Coldplay', 5, '2000', 'Pop', 'Tracce/Coldplay/Yellow.mp3', 'Copertine/parachutes.jpg', NULL, 1.20),
(86, 'The Resistance', 'Uprising', 'Muse', 1, '2009', 'Progressive Rock', 'Tracce/Muse/uprising.mp3', 'Copertine/the resistance.jpg', NULL, 1.20),
(87, 'The Resistance', 'Resistance', 'Muse', 2, '2009', 'Progressive Rock', 'Tracce/Muse/resistance.mp3', 'Copertine/the resistance.jpg', NULL, 1.20),
(88, 'Here And Now', 'This Means War', 'Nickelback', 1, '2011', 'Rock', 'Tracce/Nickelback/This Means War.mp3', 'Copertine/this means war.jpg', NULL, 1.20),
(89, 'Here And Now', 'When We Stand Together', 'Nickelback', 3, '2011', 'Rock', 'Tracce/Nickelback/When We Stand Together.mp3', 'Copertine/this means war.jpg', NULL, 1.20),
(91, 'Viva La Vida or Death and All His Friends', 'Viva La Vida', 'Coldplay', 7, '2008', 'Alternative', 'Tracce/Coldplay/Viva La Vida.mp3', 'Copertine/viva la vida.jpg', NULL, 1.20),
(92, 'Viva La Vida or Death and All His Friends', 'Violet Hill', 'Coldplay', 8, '2008', 'Alternative', 'Tracce/Coldplay/Violet Hill.mp3', 'Copertine/viva la vida.jpg', NULL, 1.20),
(93, 'Warning', 'Warning', 'Green Day', 1, '2000', 'Rock', 'Tracce/Green Day/Warning.mp3', 'Copertine/warning.jpg', NULL, 1.20),
(94, 'Warning', 'Waiting', 'Green Day', 10, '2000', 'Rock', 'Tracce/Green Day/Waiting.mp3', 'Copertine/warning.jpg', NULL, 1.20),
(95, 'Dark Side Of The Moon', 'Speak To Me - Breathe', 'Pink Floyd', 1, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/01 - Speak To Me - Breathe.mp3', 'Copertine/dark side of the moon.jpg', NULL, 1.20),
(96, 'Dark Side Of The Moon', 'On The Run', 'Pink Floyd', 2, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/02 - On The Run.mp3', 'Copertine/dark side of the moon.jpg', NULL, 4.00),
(97, 'Dark Side Of The Moon', 'Time', 'Pink Floyd', 3, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/03 - Time.mp3', 'Copertine/dark side of the moon.jpg', NULL, 1.20),
(98, 'Dark Side Of The Moon', 'The Great Gig In The Sky', 'Pink Floyd', 4, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/04 - The Great Gig In The Sky.mp3', 'Copertine/dark side of the moon.jpg', NULL, 1.20),
(99, 'Dark Side Of The Moon', 'Money', 'Pink Floyd', 5, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/05 - Money.mp3', 'Copertine/dark side of the moon.jpg', NULL, 1.20),
(100, 'Dark Side Of The Moon', 'Us And Them', 'Pink Floyd', 6, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/06 - Us And Them.mp3', 'Copertine/dark side of the moon.jpg', NULL, 1.20),
(101, 'Dark Side Of The Moon', 'Any Colour You Like', 'Pink Floyd', 7, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/07 - Any Colour You Like.mp3', 'Copertine/dark side of the moon.jpg', NULL, 1.20),
(102, 'Dark Side Of The Moon', 'Brain Damage', 'Pink Floyd', 8, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/08 - Brain Damage.mp3', 'Copertine/dark side of the moon.jpg', NULL, 1.20),
(103, 'Dark Side Of The Moon', 'Eclipse', 'Pink Floyd', 9, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/09 - Eclipse.mp3', 'Copertine/dark side of the moon.jpg', NULL, 1.20),
(104, 'The Wall', 'In The Flesh', 'Pink Floyd', 1, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 01 - In The Flesh.mp3', 'Copertine/the wall.jpg', NULL, 1.20),
(105, 'The Wall', 'The Thin Ice', 'Pink Floyd', 2, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 02 - The Thin Ice.mp3', 'Copertine/the wall.jpg', NULL, 1.20),
(106, 'The Wall', 'Another Brick In The Wall, Pt.1', 'Pink Floyd', 3, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 03 - Another Brick in the Wall, Pt.1.mp3', 'Copertine/the wall.jpg', NULL, 1.20),
(107, 'The Wall', 'The Happiest Days Of Our Lives', 'Pink Floyd', 4, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 04 - The Happiest Days Of Our Lives.mp3', 'Copertine/the wall.jpg', NULL, 1.20),
(108, 'The Wall', 'Another Brick In The Wall, Pt.2', 'Pink Floyd', 5, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 05 - Another Brick in the Wall, Pt.2.mp3', 'Copertine/the wall.jpg', 'We don''t need no education <br>\r\nWe don''t need no thought control <br> \r\nNo dark sarcasm in the classroom <br>\r\nTeachers leave the kids alone <br>\r\nHey teacher leave us kids alone <br>\r\nAll in all it''s just another brick in <br> the wall <br> \r\nAll in all you''re just another brick in <br> the wall <br>\r\n\r\nWe don''t need no education <br>\r\nWe don''t need no thought control <br> \r\nNo dark sarcasm in the classroom <br>\r\nTeachers leave the kids alone <br>\r\nHey teacher leave us kids alone <br>\r\nAll in all you''re just another brick in <br> the wall <br> \r\nAll in all you''re just another brick in <br> the wall. <br>', 1.20),
(109, 'The Wall', 'Mother', 'Pink Floyd', 6, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 06 - Mother.mp3', 'Copertine/the wall.jpg', NULL, 5.20),
(110, 'The Wall', 'Goodbye Blue Sky', 'Pink Floyd', 7, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 07 - Goodbye Blue Sky.mp3', 'Copertine/the wall.jpg', NULL, 1.20),
(111, 'The Wall', 'Empty Spaces', 'Pink Floyd', 8, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 08 - Empty Spaces.mp3', 'Copertine/the wall.jpg', NULL, 1.20),
(112, 'The Wall', 'Young Lust', 'Pink Floyd', 9, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 09 - Young Lust.mp3', 'Copertine/the wall.jpg', NULL, 1.20),
(113, 'The Wall', 'One Of My Turns', 'Pink Floyd', 10, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 10 - One Of My Turns.mp3', 'Copertine/the wall.jpg', NULL, 1.20),
(114, 'The Wall', 'Don''t Leave Me Now', 'Pink Floyd', 11, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 11 - Dont Leave Me Now.mp3', 'Copertine/the wall.jpg', NULL, 1.20),
(115, 'The Wall', 'Another Brick In The Wall, Pt.3', 'Pink Floyd', 12, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 12 - Another Brick in the Wall, Pt.3.mp3', 'Copertine/the wall.jpg', NULL, 1.20),
(116, 'The Wall', 'Goodbye Cruel World', 'Pink Floyd', 13, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 13 - Goodbye Cruel World.mp3', 'Copertine/the wall.jpg', NULL, 1.20),
(118, 'Are You Experienced', 'Purple Haze', 'Jimi Hendrix', 1, '1967', 'Blues Rock', 'Tracce/Jimi Hendrix/Purple Haze.mp3', 'Copertine/jimi hendrix.jpg', NULL, 1.20),
(119, 'Are You Experienced', 'Manic Depression', 'Jimi Hendrix', 2, '1967', 'Blues Rock', 'Tracce/Jimi Hendrix/Manic Depression.mp3', 'Copertine/jimi hendrix.jpg', NULL, 1.20),
(120, 'Are You Experienced', 'Red House', 'Jimi Hendrix', 3, '1967', 'Blues Rock', 'Tracce/Jimi Hendrix/Red House.mp3', 'Copertine/jimi hendrix.jpg', NULL, 1.20),
(121, 'Are You Experienced', 'Can You See Me*', 'Jimi Hendrix', 4, '1967', 'Blues Rock', '', 'Copertine/jimi hendrix.jpg', NULL, 1.20),
(122, 'Are You Experienced', 'Love Or Confusion*', 'Jimi Hendrix', 5, '1967', 'Blues Rock', NULL, 'Copertine/jimi hendrix.jpg', NULL, 1.20),
(123, 'Are You Experienced', 'I Don''t Live Today*', 'Jimi Hendrix', 6, '1967', 'Blues Rock', NULL, 'Copertine/jimi hendrix.jpg', NULL, 1.20),
(124, 'Are You Experienced', 'May This Be Love*', 'Jimi Hendrix', 7, '1967', 'Blues Rock', NULL, 'Copertine/jimi hendrix.jpg', NULL, 1.20),
(125, 'Are You Experienced', 'Fire', 'Jimi Hendrix', 8, '1967', 'Blues Rock', 'Tracce/Jimi Hendrix/Fire.mp3', 'Copertine/jimi hendrix.jpg', NULL, 1.20),
(126, 'Are You Experienced', 'Third Stone From The Sun*', 'Jimi Hendrix', 9, '1967', 'Blues Rock', '', 'Copertine/jimi hendrix.jpg', NULL, 1.20),
(127, 'Are You Experienced', 'Foxy Lady', 'Jimi Hendrix', 10, '1967', 'Blues Rock', 'Tracce/Jimi Hendrix/Foxy Lady.mp3', 'Copertine/jimi hendrix.jpg', NULL, 1.20),
(128, 'Are You Experienced', 'Are You Experienced?', 'Jimi Hendrix', 11, '1967', 'Blues Rock', 'Tracce/Jimi Hendrix/Are You Experienced.mp3', 'Copertine/jimi hendrix.jpg', NULL, 1.20),
(129, 'Are You Experienced', 'Stone Free', 'Jimi Hendrix', 12, '1967', 'Blues Rock', 'Tracce/Jimi Hendrix/Stone Free.mp3', 'Copertine/jimi hendrix.jpg', NULL, 1.20),
(130, 'Are You Experienced', '51st Anniversary*', 'Jimi Hendrix', 13, '1967', 'Blues Rock', NULL, 'Copertine/jimi hendrix.jpg', NULL, 1.20),
(131, 'Are You Experienced', 'Highway Chile*', 'Jimi Hendrix', 14, '1967', 'Blues Rock', NULL, 'Copertine/jimi hendrix.jpg', NULL, 1.20),
(133, 'Are You Experienced', 'Remember*', 'Jimi Hendrix', 15, '1967', 'Blues Rock', NULL, 'Copertine/jimi hendrix.jpg', NULL, 1.20),
(136, 'Hypnotize', 'Hypnotize', 'System of a down', 4, '2005', 'Alternative Metal', 'Tracce/System of a down/Hypnotize/(04) Hypnotize.mp3', 'Copertine/System_Of_A_Down-Hypnotize.jpeg', 'Why don''t you ask the kids at Tiananmen square? \r\nWas Fashion the reason why they were there? \r\n\r\nThey disguise it, Hypnotize it \r\nTelevision made you buy it \r\n\r\nI''m just sitting in my car and waiting for my... \r\n\r\nShe''s scared that I will take her away from there \r\nDreams that her country left with no one there\r\n\r\nMezmerize the simple minded \r\nPropaganda leaves us blinded \r\n\r\nI''m just sitting in my car and waiting for my girl\r\nI''m just sitting in my car and waiting for my girl\r\n\r\nI''m just sitting in my car and waiting for my girl\r\nI''m just sitting in my car and waiting for my \r\n\r\nGirl', 5.70),
(138, 'Wednesday Morning, 3 A.M.', 'Sound of Silence', 'Simon & Garfunkel', 1, '1966', 'Folk Rock', 'Tracce/Simon & Garfunkel/Wednesday Morning, 3 A.M./The sound of silence - Paul Simon and Art Garfunkel.mp3', 'Copertine/Simon_&_Garfunkel,_Wednesday_Morning,_3_A.M._(1964).png', 'Hello darkness, my old friend\r\nI''ve come to talk with you again\r\nBecause a vision softly creeping\r\nLeft its seeds while I was sleeping\r\nAnd the vision that was planted in my brain\r\nStill remains\r\nWithin the sound of silence\r\n\r\nIn restless dreams I walked alone\r\nNarrow streets of cobblestone\r\nâ€˜Neath the halo of a streetlamp\r\nI turned my collar to the cold and damp\r\nWhen my eyes were stabbed by the flash of a neon light\r\nThat split the night\r\nAnd touched the sound of silence\r\n\r\nAnd in the naked light I saw\r\nTen thousand people, maybe more\r\nPeople talking without speaking\r\nPeople hearing without listening\r\nPeople writing songs that voices never share\r\nNo one dare\r\nDisturb the sound of silence\r\n\r\nâ€œFoolsâ€ said I, â€œYou do not know\r\nSilence like a cancer grows\r\nHear my words that I might teach you\r\nTake my arms that I might reach youâ€\r\nBut my words like silent raindrops fell\r\nAnd echoed in the wells of silence\r\n\r\nAnd the people bowed and prayed\r\nTo the neon god they made\r\nAnd the sign flashed out its warning\r\nIn the words that it was forming\r\nAnd the sign said â€œThe words of the prophets\r\nAre written on subway walls\r\nAnd tenement halls\r\nAnd whispered in the sounds of silenceâ€', 2.50);

-- --------------------------------------------------------

--
-- Table structure for table `utenti`
--

CREATE TABLE `utenti` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utenti`
--

INSERT INTO `utenti` (`id`, `nome`, `cognome`, `email`, `password`, `admin`) VALUES
(1, 'Andrea', 'Di Benedetto', 'andrydbn@hotmail.it', 'ciao', 1),
(2, 'Fabrizio', 'Di Benedetto', 'fabridbn@hotmail.it', 'asd', 0),
(19, 'Silvio', 'Valenti', 'valenti1091@gmail.com', 'ciao', 1),
(22, 'Andrea', 'Di Benedetto', 'andreadibenedetto92@gmail.com', 'ciao', 0),
(23, 'Miguel Alberto Juan', 'De la Roca y Fernando Lorena y', 'email.email@email.email.com', 'Peto', 0),
(24, 'Giovanni', 'Battisti', 'giova@mh.it', 'ciao', 1),
(26, 'Marco', 'Pronni', 'pron@pronni.it', 'ciao', 0),
(29, 'Gianna', 'Crasto', 'crasto@cra.it', 'crasto', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acquisto`
--
ALTER TABLE `acquisto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utente` (`id_utente`),
  ADD KEY `id_traccia` (`id_traccia`);

--
-- Indexes for table `carrello`
--
ALTER TABLE `carrello`
  ADD PRIMARY KEY (`id_utente`,`id_traccia`),
  ADD KEY `link_track` (`id_traccia`);

--
-- Indexes for table `commenti`
--
ALTER TABLE `commenti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index` (`id_utente`);

--
-- Indexes for table `fattura`
--
ALTER TABLE `fattura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utente` (`id_utente`);

--
-- Indexes for table `tracce`
--
ALTER TABLE `tracce`
  ADD PRIMARY KEY (`id_traccia`);

--
-- Indexes for table `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acquisto`
--
ALTER TABLE `acquisto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `commenti`
--
ALTER TABLE `commenti`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `fattura`
--
ALTER TABLE `fattura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `tracce`
--
ALTER TABLE `tracce`
  MODIFY `id_traccia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `utenti`
--
ALTER TABLE `utenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `acquisto`
--
ALTER TABLE `acquisto`
  ADD CONSTRAINT `acquisto_ibfk_1` FOREIGN KEY (`id_traccia`) REFERENCES `carrello` (`id_traccia`),
  ADD CONSTRAINT `acquisto_ibfk_2` FOREIGN KEY (`id_utente`) REFERENCES `fattura` (`id_utente`);

--
-- Constraints for table `carrello`
--
ALTER TABLE `carrello`
  ADD CONSTRAINT `link_track` FOREIGN KEY (`id_traccia`) REFERENCES `tracce` (`id_traccia`),
  ADD CONSTRAINT `link_user` FOREIGN KEY (`id_utente`) REFERENCES `utenti` (`id`);

--
-- Constraints for table `commenti`
--
ALTER TABLE `commenti`
  ADD CONSTRAINT `commenti_ibfk_1` FOREIGN KEY (`id_utente`) REFERENCES `utenti` (`id`);

--
-- Constraints for table `fattura`
--
ALTER TABLE `fattura`
  ADD CONSTRAINT `fattura_ibfk_1` FOREIGN KEY (`id_utente`) REFERENCES `utenti` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
