-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2016 at 07:05 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

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
-- Table structure for table `artisti`
--

CREATE TABLE `artisti` (
  `id_artista` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `biografia` text,
  `sfondo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artisti`
--

INSERT INTO `artisti` (`id_artista`, `nome`, `biografia`, `sfondo`) VALUES
(1, 'Caparezza', 'Michele Salvemini, in arte Caparezza (Molfetta, 9 ottobre 1973), è un cantautore e \r\nrapper italiano.\r\nIniziò la sua carriera come rapper col nome di "Mikimix", componendo canzoni melodiche \r\ne musica minimalista, ma con scarsa valenza artistica e con poco successo. \r\nConduce in televisione Segnali di fumo, programma musicale di Videomusic in compagnia \r\ndi Paola Maugeri. Dopo alcune serate nei locali di Milano esordì al Festival di Castrocaro.\r\nPartecipò al Sanremo Giovani 1995 con la canzone Succede solo nei film ed al Festival \r\ndi Sanremo 1997, nella categoria "Nuove proposte" con E la notte se ne va, \r\npubblicando successivamente un album dal nome La mia buona stella, prodotto dalla casa \r\ndiscografica Sony.\r\nCaparezza divenne famoso per aver composto alcuni brani quali Il secondo secondo me \r\ne Fuori dal tunnel (2003), Vengo dalla Luna e Jodellavitanonhocapitouncazzo (2004) \r\n(anche se il primo singolo estratto è Follie preferenziali che è passato quasi inosservato \r\npresso i principali canali di musica), che sono tutti singoli estratti dall''album Verità \r\nsupposte (2003).', 'Sfondo/caparezza.jpg'),
(2, 'Nickelback', 'I Nickelback sono un gruppo rock canadese, formatosi nel 1995 ad Hanna (Alberta). \r\nHanno venduto più di 35 milioni di copie dei loro dischi in tutto il mondo. Hanno vinto \r\n11 Juno Awards, 1 American Music Award, 2 Video Music Awards ed un premio su MTV per il \r\n"Miglior Video da un Film" (Hero). Nel 2006 ottengono il prestigioso World Music Award \r\ncome miglior gruppo rock. Sono stati lanciati nel 2001 dal singolo How You Remind Me, \r\nche fa parte del loro terzo album Silver Side Up.', 'Sfondo/nickelback.jpg'),
(3, 'Coldplay', 'I Coldplay sono un gruppo alternative rock britannico formatosi a Londra nel 1997.\r\nLa band è composta da Chris Martin (voce, tastiere, chitarra), Jonny Buckland (chitarra), \r\nGuy Berryman (basso) e Will Champion (batteria). I Coldplay raggiunsero la fama mondiale \r\ncon il loro singolo Yellow, contenuto nel loro album di debutto Parachutes (2000). \r\nIl brano diventò presto una hit e nel luglio 2000 arrivò a piazzarsi alla quarta posizione \r\ndella classfica dei singoli britannica. Il loro secondo album A Rush of Blood to the Head \r\n(2002) segna la loro consacrazione e consente alla band di acquisire notorietà in tutto \r\nil mondo. L''album si piazzò direttamente al 1º posto della UK Albums Chart e al 5º posto \r\ndella Billboard 200. La loro successiva pubblicazione, X&Y (2005) ricevette una \r\nfredda accoglienza da parte della critica, ma riuscì comunque a tenere i ritmi di \r\nvendita dei precedenti album. Con il loro quarto album in studio Viva la Vida or Death \r\nand All His Friends, trainato dalla hit Viva la Vida e prodotto da Brian Eno, \r\nla band ottenne numerose recensioni favorevoli, oltre alla vittoria di tre Grammy.\r\nI Coldplay con il loro quarto album in studio hanno raggiunto il traguardo dei \r\n50 milioni totali di dischi venduti.', 'Sfondo/coldplay.jpg'),
(4, 'Eminem', 'bla bla', NULL),
(5, 'Green Day', 'I Green Day sono un gruppo musicale pop punk statunitense, formatosi a Berkeley nel 1987 \r\ne composto da tre membri: Billie Joe Armstrong (chitarra e voce), Mike Dirnt \r\n(basso e voce secondaria) e Tre Cool (batteria).\r\nTra i gruppi di punta della scena punk revival, hanno anche contribuito al successo \r\ndel loro genere negli anni novanta, insieme a blink-182, Offspring e Rancid.', 'Sfondo/greenday.jpg'),
(6, 'Jimi Hendrix', 'James Marshall "Jimi" Hendrix (Seattle, 27 novembre 1942 – Londra, 18 settembre 1970) è stato un chitarrista e cantautore statunitense. È stato uno dei maggiori innovatori nell''ambito della chitarra elettrica: durante la sua parabola artistica, tanto breve quanto intensa, si è reso precursore di molte strutture e del sound di quelle che sarebbero state le future evoluzioni del rock attraverso un''inedita fusione di blues, rhythm and blues/soul, hard rock, psichedelia e funky.\r\nSecondo la classifica stilata nel 2011, dalla rivista Rolling Stone, è stato il più grande chitarrista di tutti i tempi, precedendo in questa speciale classifica Eric Clapton e Jimmy Page.\r\nLa sua esibizione in chiusura del festival di Woodstock del 1969 è divenuta un vero e proprio simbolo: l''immagine del chitarrista che, con dissacrante visionarietà artistica, suona l''inno nazionale statunitense in modo provocatoriamente distorto è entrata di prepotenza nell''immaginario collettivo musicale.\r\nHendrix è stato introdotto nella Rock and Roll Hall of Fame nel 1992.', 'Sfondo/jimihendrix.jpg'),
(7, 'Led Zeppelin', 'bla bla', NULL),
(8, 'Linkin Park', 'bla bla', NULL),
(9, 'Litfiba', 'bla bla', NULL),
(10, 'Lucio Battisti', 'bla bla', NULL),
(11, 'Michael Bublè', 'bla bla', NULL),
(12, 'Michael Jackson', 'bla bla', NULL),
(13, 'Muse', 'I Muse sono un gruppo musicale alternative rock britannico di Teignmouth (Devon).\r\nLe loro esibizioni dal vivo sono molto energiche e stravaganti. Sono riconosciuti per \r\nuno stile musicale molto eclettico che raccoglie influenze di più generi come elettronica, \r\nprogressive rock, spesso segnati da una vena sinfonica e orchestrale. La maggior parte \r\ndei testi delle loro canzoni, composte principalmente dal frontman Matthew Bellamy, \r\ntrattano temi riguardanti apocalisse, ufo, guerra, vita, universo, politica e religione.', 'Sfondo/muse.jpg'),
(14, 'Nirvana', 'bla bla', NULL),
(15, 'Pink Floyd', 'I Pink Floyd sono stati una rock band britannica formatasi nella seconda metà degli \r\nanni sessanta che, nel corso di una lunga e travagliata carriera, è riuscita a \r\nriscrivere le tendenze musicali della propria epoca e a diventare uno dei gruppi \r\npiù importanti della storia.\r\nSebbene agli inizi siano stati influenzati prevalentemente dal rock psichedelico \r\ne dallo space rock, il genere che meglio rappresenta la maggior parte dell''opera \r\ndei Pink Floyd, caratterizzata da testi filosofici, esperimenti sonori, grafiche \r\ninnovative e spettacolari concerti, è il rock progressivo.\r\nNel 2008 si è stimato che abbiano venduto circa 250 milioni di dischi in tutto il \r\nmondo, di cui 74,5 milioni nei soli Stati Uniti d''America.', 'Sfondo/pinkfloyd.jpg'),
(16, 'Red Hot Chili Peppers', 'I Red Hot Chili Peppers (talvolta abbreviato semplicemente in RHCP) sono un gruppo rock \r\nstatunitense, formatosi a Los Angeles nel 1983. Sono stati introdotti nella Rock and Roll \r\nHall of Fame nel 2012.\r\nNella loro carriera hanno mescolato con successo vari generi, \r\ntra cui soprattutto funk, rap, hard rock, heavy metal, punk rock e successivamente \r\nalternative rock e pop rock. Hanno venduto più di 70 milioni di dischi, di cui 22 milioni \r\nnei soli Stati Uniti; inoltre detengono il record per il maggior numero di singoli \r\nal primo posto della Modern Rock Tracks, classifica stilata dalla rivista Billboard.', 'Sfondo/redhotchilipeppers.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `carrello`
--

CREATE TABLE `carrello` (
  `id_utente` int(2) NOT NULL,
  `id_traccia` int(2) NOT NULL,
  `quantità` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `Canzoni` varchar(100) DEFAULT NULL,
  `copertina` varchar(90) DEFAULT NULL,
  `testo` text,
  `prezzo` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracce`
--

INSERT INTO `tracce` (`id_traccia`, `album`, `titolo`, `artista`, `num_traccia`, `anno`, `genere`, `Canzoni`, `copertina`, `testo`, `prezzo`) VALUES
(1, 'Il Sogno Eretico', 'Chi se ne frega della musica', 'Caparezza', 3, '2011', 'Alternative Rap', 'Tracce/Caparezza/Chi Se Ne Frega Della Musica.mp3', 'Copertine/Il Sogno Eretico.jpg', 'E chi se ne frega della musica, <br>\r\ndi tutti \r\nquesti libri sulla musica, <br>\r\ndi tutte \r\nle interviste, di tutte le riviste, <br>\r\ndi \r\ntutti gli arrivisti, gli arrivisti, <br>\r\ngli arrivisti. <br> <br>\r\n \r\nIo con la musica non \r\nc''entro niente <br>\r\ncome il mio pene davanti \r\nal wc, a luci spente <br>\r\nmi contraddico \r\nfacilmente <br>\r\nma lo faccio cosi'' spesso \r\nche questo fa di me una persona coerente  <br> \r\ned \r\nho tanto da dire <br> perche'' ho poco da \r\nfare, \r\ntu mi invidi, sorridi, mi proponi \r\nun affare: <br>\r\ncominciare con i temi di \r\ncui parla Faber <br>\r\ne finire per un mese \r\nsull''isola a far la fame. <br>\r\nQualsiasi \r\ncosa faccia mi viene riconosciuta? <br>\r\nNo \r\ne'' la mia faccia che viene riconosciuta!<br> \r\nMolti \r\ndei mie fan che fanno la schiuma <br>\r\nhanno \r\nla doppia faccia come il barone Ashura! <br>\r\nParlano \r\ncon me come con un fratello grande \r\ne \r\nmi riprendono in mutande come nel Grande \r\nFratello. <br>\r\nIl video che mi fanno mentre \r\nlecco un orinale <br>\r\ne'' cliccato piu'' del \r\nvideo ufficiale della mia label <br> <br>\r\n\r\ne \r\nchi se ne frega della musica, \r\ndi tutti \r\nquesti libri sulla musica, <br>\r\ndi tutte \r\nle interviste, di tutte le riviste \r\ndi <br>\r\ntutti gli arrivisti gli arrivisti, \r\ngli arrivisti <br>\r\nsi ma chi se ne frega \r\ndella musica <br>\r\nora che tutti parlano \r\ndi musica, <br>\r\ndi tutti questi artisti, <br>\r\ndi tutti questi dischi <br>\r\ndi tutti questi \r\nfischi, questi fischi, questi fischi! \r\n<br><br>\r\n\r\nNon \r\nho mai capito questi social network <br>\r\nper \r\nme servono solo a fare i porci a letto. <br>\r\nOgni \r\nvolta che nasce una nuova piattaforma <br>\r\nmi \r\nfa l''effetto di un libro che ho gia'' \r\nletto <br>\r\ne poi non ho tutti sti amici \r\nma molti meno <br>\r\nmi danno affetto ma poi \r\nm''affettano come Ghemon. <br>\r\nTu! E'' due \r\nore che mi parli, io sono fan di Ghandi <br> \r\ned \r\ne'' solo per questo che non ti meno! <br>\r\nIl \r\nmio cellulare squilla ogni 2 minuti,<br> \r\ngente \r\nche mi assilla e mi chiede se ho 2 \r\nminuti, <br>\r\nassessori, collettivi, sindacati, \r\ngiornalisti, <br>\r\npassa un giorno e i miei \r\ntesticoli non sono piu'' minuti. <br>\r\nMi stupisco, <br>\r\npubblico un disco <br>\r\ne mi fanno le foto \r\nin pubblico, perche''? non capisco! <br>\r\nOh, \r\nnon vi interessano le note che registro<br> \r\nvi \r\ninteressano le mie note sul registro! <br><br>\r\n\r\ne \r\nchi se ne frega della musica... <br><br>\r\n\r\nIo \r\nnon faccio musica ma il cacchio che \r\nmi pare <br>\r\nfaccio rosicare chi ama il \r\ngenere musicale, <br>\r\nnon parlo male di \r\nun collega o di un presunto tale <br>\r\nma \r\nriciclo il suo cd come regalo di Natale.<br> \r\nNon \r\nmi faccio i flash come Syd Barret, <br>\r\nnon \r\nmi piacciono i flash sul red carpet <br>\r\ne \r\nme ne frego degli artisti veri, <br>\r\ntanto \r\ngli artisti veri sono veri come i muppet.. <br>\r\nIn \r\nquesto meccanismo che non posso inceppare <br>\r\nla \r\nrete non e'' Che Guevara anche se si \r\nfinge tale, <br>\r\nal primo posto nella classifica \r\ndigitale <br>\r\nche tu ci creda o meno c''e'' \r\nsolo chi vince i talent <br>\r\ned io non so \r\ncantare, gia'', ma soprattutto non so \r\npiangere <br>\r\nin pubblico per bucare lo schermo <br> \r\ntoglimi\r\ntutto questo che magari mi fermo <br>\r\ndi \r\ncerto non mi freddo in una stanza d''albergo <br> <br>\r\n\r\ne \r\nchi se ne frega della musica, <br>\r\ndi tutti \r\nquesti libri sulla musica, <br>\r\ndi tutte \r\nle interviste, di tutte le riviste <br>\r\ndi \r\ntutti gli arrivisti, gli arrivisti,\r\ngli arrivisti <br>\r\nsi ma chi se ne frega \r\ndella musica <br>\r\nora che tutti parlano \r\ndi musica <br>\r\ndi tutti i mercenari della \r\nmusica <br>\r\nin queste trasmissioni sulla \r\nmusica <br>\r\ndi tutti questi artisti, <br>\r\ndella \r\nPizzi, di Battisti <br>\r\ndi Zanicchi, di \r\nStravinskij <br>\r\nThin Lizzy, Limp Bizkin <br>\r\ndei \r\nBeastie, degli Extreme \r\ndei Lipps inc, <br>\r\ndi Springsteen <br>\r\nma si.. Chi se ne frega \r\ndella musica!', '1.20'),
(2, 'Il Sogno Eretico', 'La fine di Gaia', 'Caparezza', 9, '2011', 'Alternative Rap', 'Tracce/Caparezza/La Fine Di Gaia.mp3', 'Copertine/Il Sogno Eretico.jpg', 'Povera Gaia \r\nanche i Maya vogliono la tua taglia \r\npure la massaia lo sa, per la fifa tartaglia \r\ndecifra una sterpaglia di codici ma il 20-12 \r\nnon incide se non nei cinematografi. \r\nUomini retti che sono uomini rettili \r\ncon pupille da serpenti \r\npiù spille da sergenti \r\nvogliono la tua muta, Gaia \r\nti vogliono muta, Gaia \r\nla bomba è venuta a galla adesso esploderà. \r\n\r\nReti di rettiliani, andirivieni d'' alieni \r\nvelivoli di veleni, tutti in cerca di ripari ma \r\n\r\nLa fine di Gaia non arriverà \r\nla gente si sbaglia \r\nin fondo che ne sa. \r\nE'' un fuoco di paglia \r\nalla faccia dei Maya e di Cinecittà. \r\nLa fine di Gaia non arriverà! \r\nLa fine di Gaia non arriverà! \r\n\r\nAnche E.T. è qui, mamma che condanna! \r\nE'' un pervertito, ha rapito Gaia per fecondarla \r\ncon alieni adepti che scuoiano coniglietti \r\ne li mostrano alle TV spacciandoli per feti extraterrestri. \r\nC''è chi vuole farsi Gaia con fumi sparsi in aria \r\nda un aereo che la ingabbia come all''Asinara. \r\nSi narra che gaia sniffi, \r\nabbaia anche Brian Griffin. \r\nE'' Clyro come i Biffy che gaia Gaia non è. \r\nTra San Giovanni, Nostradamus e millennium bug \r\nsulla sua bara chiunque metterebbe una tag. \r\n\r\nMa la fine di Gaia non arriverà \r\nla gente si sbaglia \r\nin fondo che ne sa. \r\nE'' un fuoco di paglia \r\nalla faccia dei Maya e di Cinecittà. \r\nLa fine di Gaia non arriverà! \r\nLa fine di Gaia non arriverà! \r\n\r\nNé con i passi di Godzilla né coi passi della Bibbia, \r\nGaia sopravviverà \r\na questi cazzo di asteroidi che non hanno mai schiacciato \r\nneanche una farfalla. \r\nSei tu che tratti Gaia come una recluta a naja \r\nami il petrolio ma la baia non è una caldaia \r\nla tua mannaia lima l''aria mica l''Himalaia! \r\nGaia si salverà, chi salverà il soldato Ryan? \r\n\r\nNon i marziani ma te dovrò respingere \r\nnon i marziani ma te dovrò respingere e vedrai.. \r\n\r\nLa fine di Gaia non arriverà \r\nla gente si sbaglia \r\nin fondo che ne sa. \r\nE'' un fuoco di paglia \r\nalla faccia dei Maya e di Cinecittà. \r\nLa fine di Gaia non arriverà! \r\nLa fine di Gaia non arriverà! \r\nLa fine di Gaia non arriverà! \r\n2012: nemmeno un temporale!', '1.20'),
(3, 'Verita'' Supposte', 'Jodellavitanonhocapitouncazzo', 'Caparezza', 14, '2005', 'Alternative Rap', 'Tracce/Caparezza/Jodellavitanonhocapitouncazzo.mp3', 'Copertine/verita supposte.jpg', NULL, '1.20'),
(4, 'Dark Horse', 'Something In Your Mouth', 'Nickelback', 1, '2008', 'Alternative Metal', 'Tracce/Nickelback/Something In Your Mouth.mp3', 'Copertine/dark horse.jpg', NULL, '1.20'),
(5, 'A Rush Of Blood To The Head', 'The Scientist', 'Coldplay', 4, '2002', 'Alternative Rock', 'Tracce/Coldplay/The Scientist.mp3', 'Copertine/a rush of blood to the head.jpg', NULL, '1.20'),
(6, 'A Rush Of Blood To The Head', 'Clocks', 'Coldplay', 5, '2002', 'Alternative Rock', 'Tracce/Coldplay/Clocks.mp3', 'Copertine/a rush of blood to the head.jpg', NULL, '1.20'),
(7, 'American Idiot', 'American Idiot', 'Green Day', 1, '2004', 'Punk Rock', 'Tracce/Green Day/American Idiot.mp3', 'Copertine/american idiot.jpg', NULL, '1.20'),
(8, 'American Idiot', 'Holiday', 'Green Day', 3, '2004', 'Punk Rock', 'Tracce/Green Day/Holiday.mp3', 'Copertine/american idiot.jpg', NULL, '1.20'),
(9, 'Black Holes And Revelations', 'Take a Bow', 'Muse', 1, '2006', 'Alternative Rock', 'Tracce/Muse/Take A Bow.mp3', 'Copertine/black holes & revelations.jpg', NULL, '1.20'),
(10, 'Black Holes And Revelations', 'Supermassive Black Hole', 'Muse', 3, '2006', 'Alternative Rock', 'Tracce/Muse/Supermassive Black Hole.mp3', 'Copertine/black holes & revelations.jpg', NULL, '1.20'),
(11, 'Dark Horse', 'Burn It To The Ground', 'Nickelback', 2, '2008', 'Alternative Metal', 'Tracce/Nickelback/Burn It To The Ground.mp3', 'Copertine/dark horse.jpg', NULL, '1.20'),
(12, 'Do We Need This (B-Sides and Rarities)', 'In Your World', 'Muse', 1, '2005', 'Alternative Rock', 'Tracce/Muse/In Your World.mp3', 'Copertine/do we need this.jpg', NULL, '1.20'),
(13, 'Do We Need This (B-Sides and Rarities)', 'Fury', 'Muse', 13, '2005', 'Alternative Rock', 'Tracce/Muse/Fury.mp3', 'Copertine/do we need this.jpg', NULL, '1.20'),
(14, 'Dookie', 'Longview', 'Green Day', 4, '1994', 'Punk', 'Tracce/Green Day/Longview.mp3', 'Copertine/dookie.jpg', NULL, '1.20'),
(15, 'Dookie', 'Basket Case', 'Green Day', 7, '1994', 'Punk', 'Tracce/Green Day/Basket Case.mp3', 'Copertine/dookie.jpg', NULL, '1.20'),
(16, 'I''m With You', 'Look Around', 'Red Hot Chili Peppers', 6, '2011', 'Rock', 'Tracce/Red Hot Chili Peppers/Look Around.mp3', 'Copertine/im with you.jpg', NULL, '1.20'),
(17, 'I''m With You', 'The Adventures Of Rain Dance Maggie', 'Red Hot Chili Peppers', 7, '2011', 'Rock', 'Tracce/Red Hot Chili Peppers/The Adventures Of Rain Dance Maggie.mp3', 'Copertine/im with you.jpg', NULL, '1.20'),
(18, 'Le Dimensioni Del Mio Caos', 'Vieni A Ballare in Puglia', 'Caparezza', 7, '2008', 'Alternative Rap', 'Tracce/Caparezza/Vieni a ballare in Puglia.mp3', 'Copertine/le dimensioni del mio caos.jpg', NULL, '1.20'),
(19, 'Le Dimensioni Del Mio Caos', 'Abiura Di Me', 'Caparezza', 8, '2008', 'Alternative Rap', 'Tracce/Caparezza/Abiura di me.mp3', 'Copertine/le dimensioni del mio caos.jpg', NULL, '1.20'),
(20, 'Mylo Xyloto', 'Paradise', 'Coldplay', 3, '2011', 'Pop', 'Tracce/Coldplay/Paradise.mp3', 'Copertine/mylo xyloto.jpg', NULL, '1.20'),
(21, 'Mylo Xyloto', 'Charlie Brown', 'Coldplay', 4, '2011', 'Pop', 'Tracce/Coldplay/Charlie Brown.mp3', 'Copertine/mylo xyloto.jpg', NULL, '1.20'),
(22, 'Nimrod', 'Nice Guys Finish Last', 'Green Day', 1, '1997', 'Punk Rock', 'Tracce/Green Day/Nice Guys Finish Last.mp3', 'Copertine/nimrod.jpg', NULL, '1.20'),
(23, 'Nimrod', 'Hitchin'' a Ride', 'Green Day', 2, '1997', 'Punk Rock', 'Tracce/Green Day/Hitchin a Ride.mp3', 'Copertine/nimrod.jpg', NULL, '1.20'),
(24, 'Parachutes', 'Don''t Panic', 'Coldplay', 1, '2000', 'Pop', 'Tracce/Coldplay/Dont Panic.mp3', 'Copertine/parachutes.jpg', NULL, '1.20'),
(31, 'Dark Horse', 'Gotta Be Somebody', 'Nickelback', 3, '2008', 'Alternative Metal', 'Tracce/Nickelback/Gotta Be Somebody.mp3', 'Copertine/dark horse.jpg', NULL, '1.20'),
(51, 'Dark Horse', 'I''d Come For You', 'Nickelback', 4, '2008', 'Alternative Metal', 'Tracce/Nickelback/Id Come For You.mp3', 'Copertine/dark horse.jpg', NULL, '1.20'),
(71, 'Dark Horse', 'Next Go Round', 'Nickelback', 5, '2008', 'Alternative Metal', 'Tracce/Nickelback/Next Go Round.mp3', 'Copertine/dark horse.jpg', NULL, '1.20'),
(85, 'Parachutes', 'Yellow', 'Coldplay', 5, '2000', 'Pop', 'Tracce/Coldplay/Yellow.mp3', 'Copertine/parachutes.jpg', NULL, '1.20'),
(86, 'The Resistance', 'Uprising', 'Muse', 1, '2009', 'Progressive Rock', 'Tracce/Muse/uprising.mp3', 'Copertine/the resistance.jpg', NULL, '1.20'),
(87, 'The Resistance', 'Resistance', 'Muse', 2, '2009', 'Progressive Rock', 'Tracce/Muse/resistance.mp3', 'Copertine/the resistance.jpg', NULL, '1.20'),
(88, 'Here And Now', 'This Means War', 'Nickelback', 1, '2011', 'Rock', 'Tracce/Nickelback/This Means War.mp3', 'Copertine/this means war.jpg', NULL, '1.20'),
(89, 'Here And Now', 'When We Stand Together', 'Nickelback', 3, '2011', 'Rock', 'Tracce/Nickelback/When We Stand Together.mp3', 'Copertine/this means war.jpg', NULL, '1.20'),
(90, 'Verita'' Supposte', 'Il Secondo Secondo me', 'Caparezza', 1, '2003', 'Alternative Rap', 'Tracce/Caparezza/Il secondo secondo me.mp3', 'Copertine/verita supposte.jpg', NULL, '1.20'),
(91, 'Viva La Vida or Death and All His Friends', 'Viva La Vida', 'Coldplay', 7, '2008', 'Alternative', 'Tracce/Coldplay/Viva La Vida.mp3', 'Copertine/viva la vida.jpg', NULL, '1.20'),
(92, 'Viva La Vida or Death and All His Friends', 'Violet Hill', 'Coldplay', 8, '2008', 'Alternative', 'Tracce/Coldplay/Violet Hill.mp3', 'Copertine/viva la vida.jpg', NULL, '1.20'),
(93, 'Warning', 'Warning', 'Green Day', 1, '2000', 'Rock', 'Tracce/Green Day/Warning.mp3', 'Copertine/warning.jpg', NULL, '1.20'),
(94, 'Warning', 'Waiting', 'Green Day', 10, '2000', 'Rock', 'Tracce/Green Day/Waiting.mp3', 'Copertine/warning.jpg', NULL, '1.20'),
(95, 'Dark Side Of The Moon', 'Speak To Me - Breathe', 'Pink Floyd', 1, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/01 - Speak To Me - Breathe.mp3', 'Copertine/dark side of the moon.jpg', NULL, '1.20'),
(96, 'Dark Side Of The Moon', 'On The Run', 'Pink Floyd', 2, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/02 - On The Run.mp3', 'Copertine/dark side of the moon.jpg', NULL, '1.20'),
(97, 'Dark Side Of The Moon', 'Time', 'Pink Floyd', 3, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/03 - Time.mp3', 'Copertine/dark side of the moon.jpg', NULL, '1.20'),
(98, 'Dark Side Of The Moon', 'The Great Gig In The Sky', 'Pink Floyd', 4, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/04 - The Great Gig In The Sky.mp3', 'Copertine/dark side of the moon.jpg', NULL, '1.20'),
(99, 'Dark Side Of The Moon', 'Money', 'Pink Floyd', 5, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/05 - Money.mp3', 'Copertine/dark side of the moon.jpg', NULL, '1.20'),
(100, 'Dark Side Of The Moon', 'Us And Them', 'Pink Floyd', 6, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/06 - Us And Them.mp3', 'Copertine/dark side of the moon.jpg', NULL, '1.20'),
(101, 'Dark Side Of The Moon', 'Any Colour You Like', 'Pink Floyd', 7, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/07 - Any Colour You Like.mp3', 'Copertine/dark side of the moon.jpg', NULL, '1.20'),
(102, 'Dark Side Of The Moon', 'Brain Damage', 'Pink Floyd', 8, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/08 - Brain Damage.mp3', 'Copertine/dark side of the moon.jpg', NULL, '1.20'),
(103, 'Dark Side Of The Moon', 'Eclipse', 'Pink Floyd', 9, '1973', 'Rock', 'Tracce/Pink Floyd/Dark Side Of The Moon/09 - Eclipse.mp3', 'Copertine/dark side of the moon.jpg', NULL, '1.20'),
(104, 'The Wall', 'In The Flesh', 'Pink Floyd', 1, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 01 - In The Flesh.mp3', 'Copertine/the wall.jpg', NULL, '1.20'),
(105, 'The Wall', 'The Thin Ice', 'Pink Floyd', 2, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 02 - The Thin Ice.mp3', 'Copertine/the wall.jpg', NULL, '1.20'),
(106, 'The Wall', 'Another Brick In The Wall, Pt.1', 'Pink Floyd', 3, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 03 - Another Brick In The Wall, Pt.1.mp3', 'Copertine/the wall.jpg', NULL, '1.20'),
(107, 'The Wall', 'The Happiest Days Of Our Lives', 'Pink Floyd', 4, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 04 - The Happiest Days Of Our Lives.mp3', 'Copertine/the wall.jpg', NULL, '1.20'),
(108, 'The Wall', 'Another Brick In The Wall, Pt.2', 'Pink Floyd', 5, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 05 - Another Brick In The Wall, Pt.2.mp3', 'Copertine/the wall.jpg', 'We don''t need no education <br>\r\nWe don''t need no thought control <br> \r\nNo dark sarcasm in the classroom <br>\r\nTeachers leave the kids alone <br>\r\nHey teacher leave us kids alone <br>\r\nAll in all it''s just another brick in <br> the wall <br> \r\nAll in all you''re just another brick in <br> the wall <br>\r\n\r\nWe don''t need no education <br>\r\nWe don''t need no thought control <br> \r\nNo dark sarcasm in the classroom <br>\r\nTeachers leave the kids alone <br>\r\nHey teacher leave us kids alone <br>\r\nAll in all you''re just another brick in <br> the wall <br> \r\nAll in all you''re just another brick in <br> the wall. <br>', '1.20'),
(109, 'The Wall', 'Mother', 'Pink Floyd', 6, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 06 - Mother.mp3', 'Copertine/the wall.jpg', NULL, '1.20'),
(110, 'The Wall', 'Goodbye Blue Sky', 'Pink Floyd', 7, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 07 - Goodbye Blue Sky.mp3', 'Copertine/the wall.jpg', NULL, '1.20'),
(111, 'The Wall', 'Empty Spaces', 'Pink Floyd', 8, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 08 - Empty Spaces.mp3', 'Copertine/the wall.jpg', NULL, '1.20'),
(112, 'The Wall', 'Young Lust', 'Pink Floyd', 9, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 09 - Young Lust.mp3', 'Copertine/the wall.jpg', NULL, '1.20'),
(113, 'The Wall', 'One Of My Turns', 'Pink Floyd', 10, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 10 - One Of My Turns.mp3', 'Copertine/the wall.jpg', NULL, '1.20'),
(114, 'The Wall', 'Don''t Leave Me Now', 'Pink Floyd', 11, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 11 - Dont Leave Me Now.mp3', 'Copertine/the wall.jpg', NULL, '1.20'),
(115, 'The Wall', 'Another Brick In The Wall, Pt.3', 'Pink Floyd', 12, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 12 - Another Brick in the Wall, Pt.3.mp3', 'Copertine/the wall.jpg', NULL, '1.20'),
(116, 'The Wall', 'Goodbye Cruel World', 'Pink Floyd', 13, '1979', 'Rock', 'Tracce/Pink Floyd/The Wall/1 - 13 - Goodbye Cruel World.mp3', 'Copertine/the wall.jpg', NULL, '1.20'),
(118, 'Are You Experienced', 'Purple Haze', 'Jimi Hendrix', 1, '1967', 'Blues Rock', 'Tracce/Jimi Hendrix/Purple Haze.mp3', 'Copertine/jimi hendrix.jpg', NULL, '1.20'),
(119, 'Are You Experienced', 'Manic Depression', 'Jimi Hendrix', 2, '1967', 'Blues Rock', 'Tracce/Jimi Hendrix/Manic Depression.mp3', 'Copertine/jimi hendrix.jpg', NULL, '1.20'),
(120, 'Are You Experienced', 'Red House', 'Jimi Hendrix', 3, '1967', 'Blues Rock', 'Tracce/Jimi Hendrix/Red House.mp3', 'Copertine/jimi hendrix.jpg', NULL, '1.20'),
(121, 'Are You Experienced', 'Can You See Me*', 'Jimi Hendrix', 4, '1967', 'Blues Rock', '', 'Copertine/jimi hendrix.jpg', NULL, '1.20'),
(122, 'Are You Experienced', 'Love Or Confusion*', 'Jimi Hendrix', 5, '1967', 'Blues Rock', NULL, 'Copertine/jimi hendrix.jpg', NULL, '1.20'),
(123, 'Are You Experienced', 'I Don''t Live Today*', 'Jimi Hendrix', 6, '1967', 'Blues Rock', NULL, 'Copertine/jimi hendrix.jpg', NULL, '1.20'),
(124, 'Are You Experienced', 'May This Be Love*', 'Jimi Hendrix', 7, '1967', 'Blues Rock', NULL, 'Copertine/jimi hendrix.jpg', NULL, '1.20'),
(125, 'Are You Experienced', 'Fire', 'Jimi Hendrix', 8, '1967', 'Blues Rock', 'Tracce/Jimi Hendrix/Fire.mp3', 'Copertine/jimi hendrix.jpg', NULL, '1.20'),
(126, 'Are You Experienced', 'Third Stone From The Sun*', 'Jimi Hendrix', 9, '1967', 'Blues Rock', '', 'Copertine/jimi hendrix.jpg', NULL, '1.20'),
(127, 'Are You Experienced', 'Foxy Lady', 'Jimi Hendrix', 10, '1967', 'Blues Rock', 'Tracce/Jimi Hendrix/Foxy Lady.mp3', 'Copertine/jimi hendrix.jpg', NULL, '1.20'),
(128, 'Are You Experienced', 'Are You Experienced?', 'Jimi Hendrix', 11, '1967', 'Blues Rock', 'Tracce/Jimi Hendrix/Are You Experienced.mp3', 'Copertine/jimi hendrix.jpg', NULL, '1.20'),
(129, 'Are You Experienced', 'Stone Free', 'Jimi Hendrix', 12, '1967', 'Blues Rock', 'Tracce/Jimi Hendrix/Stone Free.mp3', 'Copertine/jimi hendrix.jpg', NULL, '1.20'),
(130, 'Are You Experienced', '51st Anniversary*', 'Jimi Hendrix', 13, '1967', 'Blues Rock', NULL, 'Copertine/jimi hendrix.jpg', NULL, '1.20'),
(131, 'Are You Experienced', 'Highway Chile*', 'Jimi Hendrix', 14, '1967', 'Blues Rock', NULL, 'Copertine/jimi hendrix.jpg', NULL, '1.20'),
(133, 'Are You Experienced', 'Remember*', 'Jimi Hendrix', 15, '1967', 'Blues Rock', NULL, 'Copertine/jimi hendrix.jpg', NULL, '1.20');

-- --------------------------------------------------------

--
-- Table structure for table `utenti`
--

CREATE TABLE `utenti` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utenti`
--

INSERT INTO `utenti` (`id`, `nome`, `cognome`, `email`, `password`) VALUES
(1, 'Andrea', 'Di Benedetto', 'andrydbn@hotmail.it', 'eutanasia'),
(2, 'Fabrizio', 'Di Benedetto', 'fabridbn@hotmail.it', 'asd'),
(3, 'marco', 'pazzo', '34ds', 'ciao'),
(19, 'Silvio', 'Valenti', 'valenti1091@gmail.com', 'ciao'),
(20, '', '', '', ''),
(21, 'pinco', 'pallino', 'ciaosuca@hotmail.it', 'ciao');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artisti`
--
ALTER TABLE `artisti`
  ADD PRIMARY KEY (`id_artista`);

--
-- Indexes for table `carrello`
--
ALTER TABLE `carrello`
  ADD PRIMARY KEY (`id_utente`,`id_traccia`);

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
-- AUTO_INCREMENT for table `artisti`
--
ALTER TABLE `artisti`
  MODIFY `id_artista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tracce`
--
ALTER TABLE `tracce`
  MODIFY `id_traccia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `utenti`
--
ALTER TABLE `utenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
