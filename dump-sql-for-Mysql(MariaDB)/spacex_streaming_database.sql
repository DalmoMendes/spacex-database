-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Nov-2021 às 04:22
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.2
-- by Dalmo Mendes
-- dalmosilvamendes@gmail.com
-- https://ceproirr.com.br
-- https://www.ceproirr.com.br/webagency
-- https://facebook.com/ceproirr
-- https://instagram.com/ceproirr
-- https://twitter.com/ceproirr
-- https://www.youtube.com/channel/UC9egIn_Xkg2KFD_55mi_r8w


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `spacex_streaming_database`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `spacex_address`
--

CREATE TABLE `spacex_address` (
  `idAddress` int(10) UNSIGNED NOT NULL,
  `fkClient` int(10) UNSIGNED DEFAULT NULL,
  `address_type` varchar(50) DEFAULT NULL,
  `address_zipcode` varchar(14) DEFAULT NULL,
  `address_street` varchar(100) DEFAULT NULL,
  `address_number` varchar(50) DEFAULT NULL,
  `address_district` varchar(100) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `addres_state` char(2) DEFAULT NULL,
  `address_record` timestamp NULL DEFAULT NULL,
  `address_status` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `spacex_address`
--

INSERT INTO `spacex_address` (`idAddress`, `fkClient`, `address_type`, `address_zipcode`, `address_street`, `address_number`, `address_district`, `address_city`, `addres_state`, `address_record`, `address_status`) VALUES
(2, 1, 'Casa', '123456', 'Rua. das Flores', '45612', 'São Francisco Mota', 'Boa Vista', 'RR', '2021-11-29 01:56:47', 1),
(3, 2, 'Apartamento', '652456', 'Rua. Almerindo Ribeiro', '789', 'Equatorial', 'Manaus', 'AM', '2021-11-29 01:56:47', 1),
(4, 3, 'Casa', '456428', 'Av. Santos Padres', '159', 'Mucajaí', 'Boa Vista', 'RR', '2021-11-29 02:01:51', 1),
(5, 4, 'Casa', '127756', 'Rua. das Marias', '33312', 'Pricumã', 'Boa Vista', 'RR', '2021-11-29 01:56:47', 1),
(6, 5, 'Apartamento', '650452', 'Av. Chico Mendes', '159', 'São Bento', 'São Paulo', 'SP', '2021-11-29 01:56:47', 1),
(7, 6, 'Apartamento', '126666', 'Av. Chaves Gomes', '444', '13 de Setembro', 'Boa Vista', 'RR', '2021-10-01 13:58:43', 1),
(8, 7, 'Casa', '55666', 'Rua. França', '734', 'Pintolandia', 'Boa Vista', 'RR', '2021-10-01 14:05:00', 1),
(9, 8, 'Casa', '45866', 'Rua. Norte', '734', 'Equatorial', 'São Paulo', 'SP', '2021-10-01 14:08:00', 1),
(10, 9, 'Apartamento', '55633', 'Rua. América', '734', 'Minas', 'Boa Vista', 'RR', '2021-11-29 02:01:51', 1),
(11, 10, 'Apartamento', '55666', 'Rua. Nordeste', '734', 'Flamengo', 'Boa Vista', 'RR', '2021-11-29 02:01:51', 1),
(12, 11, 'Casa', '55785', 'Rua. Sudeste', '734', 'Santos', 'Boa Vista', 'RR', '2021-11-29 02:01:51', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `spacex_client`
--

CREATE TABLE `spacex_client` (
  `idClient` int(10) UNSIGNED NOT NULL,
  `cli_first_name` varchar(100) NOT NULL,
  `cli_last_name` varchar(255) NOT NULL,
  `cli_genre` int(10) UNSIGNED DEFAULT NULL,
  `cli_my_color` int(10) UNSIGNED DEFAULT NULL,
  `cli_photo` varchar(255) DEFAULT NULL,
  `cli_cpf` varchar(14) NOT NULL,
  `cli_rg` varchar(20) DEFAULT NULL,
  `cli_number_phone` varchar(14) DEFAULT NULL,
  `cli_number_smartphone` varchar(14) DEFAULT NULL,
  `cli_number_whatsapp` varchar(14) DEFAULT NULL,
  `cli_login_email` varchar(100) NOT NULL,
  `cli_password` varchar(255) NOT NULL,
  `cli_level` int(10) UNSIGNED NOT NULL,
  `cli_record` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cli_date` date NOT NULL,
  `cli_status` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `spacex_client`
--

INSERT INTO `spacex_client` (`idClient`, `cli_first_name`, `cli_last_name`, `cli_genre`, `cli_my_color`, `cli_photo`, `cli_cpf`, `cli_rg`, `cli_number_phone`, `cli_number_smartphone`, `cli_number_whatsapp`, `cli_login_email`, `cli_password`, `cli_level`, `cli_record`, `cli_date`, `cli_status`) VALUES
(1, 'Ricardo', 'Gomes de Paula', 1, 1, 'ricardogp.jpg', '123456123', '159852', '123456789', '123456789', '123456789', 'ricardogp@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-10-01 17:30:58', '1985-11-16', 1),
(2, 'Charles', 'Dayvis Lima', 1, 4, 'charlesdayvis.jpg', '561231999', '852999', '448912345', '448956789', '448956789', 'charlesdayvis@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-11-29 17:33:28', '1999-02-10', 0),
(3, 'Marcos', 'Silva Lima', 1, 1, 'limams.jpg', '123456123', '159852', '123456789', '123456789', '123456789', 'limams@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2, '2021-10-01 13:24:22', '1981-08-06', 1),
(4, 'Maria', 'Francisca do Socorro', 2, 2, 'framaria.jpg', '121233456', '158529', '559956789', '559956789', '559956789', 'framaria@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2, '2021-10-01 13:40:22', '1994-10-22', 1),
(5, 'Ana', 'Marques Santos', 3, 1, 'anamarques.jpg', '883456123', '339852', '337756789', '337756789', '337756789', 'anamarques@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3, '2021-10-01 23:30:32', '1992-12-05', 1),
(6, 'Lana', 'Melo de Assis', 2, 5, 'lanamelo.jpg', '553456123', '159852', '891234567', '891234567', '891234567', 'lanamelo@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3, '2021-10-01 12:24:22', '1985-11-16', 1),
(7, 'David', 'Lima de Melo', 1, 3, 'davidlm.jpg', '123456123', '159852', '123456789', '123456789', '123456789', 'davidlm@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 4, '2021-10-01 13:30:30', '1985-10-18', 1),
(8, 'Kátia', 'Aguiar Souza', 3, 2, 'katiasaza.jpg', '733456123', '159852', '123456789', '123456789', '123456789', 'katiasaza@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 4, '2021-10-01 12:20:52', '1982-01-26', 1),
(9, 'Alison', 'Souza Lima', 1, 2, 'alisouzali.jpg', '883456199', '159852', '123456789', '123456789', '123456789', 'alisouzali@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 4, '2021-10-01 12:10:52', '1987-11-22', 1),
(10, 'Alex', 'de Paula Silva', 1, 3, 'alexdeps.jpg', '123456123', '159852', '123456789', '123456789', '123456789', 'alexdeps@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 5, '2021-10-01 18:30:30', '1988-05-23', 1),
(11, 'Lúcia', 'Maria Maria', 2, 4, 'mariamarialu.jpg', '123456123', '159852', '123456789', '123456789', '123456789', 'mariamarialu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 5, '2021-10-01 19:30:30', '1979-05-22', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `spacex_genre`
--

CREATE TABLE `spacex_genre` (
  `idGenre` int(10) UNSIGNED NOT NULL,
  `fkUser` int(10) UNSIGNED NOT NULL,
  `genre_name` varchar(100) NOT NULL,
  `genre_status` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `spacex_genre`
--

INSERT INTO `spacex_genre` (`idGenre`, `fkUser`, `genre_name`, `genre_status`) VALUES
(1, 1, 'Aventura', 1),
(2, 1, 'Biográfico', 1),
(3, 1, 'Comédia dramática', 1),
(4, 1, 'Comédia romântica', 1),
(5, 1, 'Histórico', 1),
(6, 1, 'Drama', 1),
(7, 1, 'Ação', 1),
(8, 1, 'Comédia', 1),
(9, 1, 'Fantasia', 1),
(10, 1, 'Ficção científica', 1),
(11, 1, 'Musical', 1),
(12, 1, 'Romance', 1),
(13, 1, 'Terror', 1),
(14, 1, 'Terror', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `spacex_logs_cli`
--

CREATE TABLE `spacex_logs_cli` (
  `idLogs_cli` int(10) UNSIGNED NOT NULL,
  `fkClient` int(10) UNSIGNED DEFAULT NULL,
  `logcli_type` int(10) UNSIGNED DEFAULT NULL,
  `logcli_record` timestamp NULL DEFAULT NULL,
  `logcli_ipv4` varchar(32) DEFAULT NULL,
  `logcli_ipv6` varchar(128) DEFAULT NULL,
  `logcli_address` varchar(255) DEFAULT NULL,
  `logcli_status` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `spacex_logs_cli`
--

INSERT INTO `spacex_logs_cli` (`idLogs_cli`, `fkClient`, `logcli_type`, `logcli_record`, `logcli_ipv4`, `logcli_ipv6`, `logcli_address`, `logcli_status`) VALUES
(1, 1, 7, '2021-10-01 13:40:14', '170.82.173.0', '2800:3f0:4004:80f::2000', 'Boa Vista-RR, 13 de Setembro - Brasil', 1),
(2, 1, 8, '2021-10-01 13:55:24', '170.82.173.0', '2800:3f0:4004:80f::2000', 'Boa Vista-RR, Pintolandia - Brasil', 1),
(3, 1, 9, '2021-10-01 13:59:33', '170.82.173.0', '2800:3f0:4004:80f::2000', 'São Paulo-SP, Equatorial - Brasil', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `spacex_logs_user`
--

CREATE TABLE `spacex_logs_user` (
  `idLogs_user` int(10) UNSIGNED NOT NULL,
  `fkUser` int(10) UNSIGNED DEFAULT NULL,
  `loguse_type` int(10) DEFAULT NULL,
  `loguse_record` timestamp NULL DEFAULT NULL,
  `loguse_ipv4` varchar(32) DEFAULT NULL,
  `loguse_ipv6` varchar(128) DEFAULT NULL,
  `loguse_address` varchar(255) DEFAULT NULL,
  `loguse_status` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `spacex_logs_user`
--

INSERT INTO `spacex_logs_user` (`idLogs_user`, `fkUser`, `loguse_type`, `loguse_record`, `loguse_ipv4`, `loguse_ipv6`, `loguse_address`, `loguse_status`) VALUES
(1, 1, 1, '2021-10-01 10:00:14', '170.82.173.0', '2800:3f0:4004:80f::2003', 'Boa Vista-RR, Centro - Brasil', 1),
(2, 1, 2, '2021-10-02 00:50:06', '170.82.173.0', '2800:3f0:4004:80f::2003', 'Boa Vista-RR, Centro - Brasil', 1),
(3, 3, 1, '2021-10-02 10:20:14', '170.82.173.0', '2800:3f0:4004:80f::2003', 'Boa Vista-RR, Centro - Brasil', 1),
(4, 1, 1, '2021-10-02 14:50:14', '170.82.173.0', '2800:3f0:4004:80f::2003', 'Boa Vista-RR, Centro - Brasil', 1),
(5, 3, 2, '2021-10-02 14:30:14', '170.82.173.00', '2800:3f0:4004:80f::2003', 'Boa Vista-RR, Centro - Brasil', 1),
(6, 1, 2, '2021-10-02 22:20:14', '170.82.173.0', '2800:3f0:4004:80f::2003', 'Boa Vista-RR, Centro - Brasil', 1),
(7, 3, 1, '2021-10-03 10:30:44', '170.82.173.0', '2800:3f0:4004:80f::2003', 'Boa Vista-RR, Centro - Brasil', 1),
(8, 3, 2, '2021-10-03 18:00:14', '170.82.100.0', '2800:3f0:4004:80f::2003', 'Boa Vista-RR, Centro - Brasil', 1),
(9, 1, 1, '2021-10-03 09:50:00', '170.82.173.0', '2800:3f0:4004:80f::2003', 'Boa Vista-RR, Centro - Brasil', 1),
(10, 1, 1, '2021-11-03 10:10:14', '170.00.000.60', '2800:3f0:4004:80f::2002', 'Boa Vista-RR, Asa Branca - Brasil', 1),
(11, 3, 1, '2021-11-03 10:30:00', '170.00.000.00', '2800:3f0:4004:80f::2006', 'Boa Vista-RR, Buriti - Brasil', 1),
(12, 1, 2, '2021-11-03 21:00:14', '170.82.000.00', '2800:3f0:4004:80f::2002', 'Boa Vista-RR, Asa Branca - Brasil', 1),
(13, 3, 2, '2021-11-03 23:00:00', '170.82.000.55', '2800:3f0:4004:80f::2006', 'Boa Vista-RR, Buriti - Brasil', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `spacex_movie`
--

CREATE TABLE `spacex_movie` (
  `idMovie` int(10) UNSIGNED NOT NULL,
  `fkPlans` int(10) UNSIGNED NOT NULL,
  `fkUser` int(10) UNSIGNED NOT NULL,
  `fkGenre` int(10) UNSIGNED NOT NULL,
  `movie_type` int(11) NOT NULL,
  `movie_name` varchar(100) DEFAULT NULL,
  `movie_image` text DEFAULT NULL,
  `movie_description` text DEFAULT NULL,
  `movie_age` date DEFAULT NULL,
  `movie_classification` int(10) DEFAULT NULL,
  `movie_season` int(11) DEFAULT NULL,
  `movie_episode` int(10) UNSIGNED DEFAULT NULL,
  `movie_status` int(10) UNSIGNED DEFAULT NULL,
  `movie_record` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `spacex_movie`
--

INSERT INTO `spacex_movie` (`idMovie`, `fkPlans`, `fkUser`, `fkGenre`, `movie_type`, `movie_name`, `movie_image`, `movie_description`, `movie_age`, `movie_classification`, `movie_season`, `movie_episode`, `movie_status`, `movie_record`) VALUES
(1, 1, 1, 7, 1, 'Mad Max: Estrada da Fúria', 'madmax.jpg', 'Mad Max: Estrada da Fúria é o quarto filme da franquia e volta para continuar a história de Max Rockatansky, dessa vez ao lado da Imperatriz Furiosa fugindo da ira de Immortan Joe, que lidera um exército contra os rebeldes e promete fazer os protagonistas acelerarem pelo deserto.', '2015-05-07', 1, 1, 1, 1, '2021-11-29 01:28:33'),
(2, 1, 1, 1, 1, 'Divertida Mente', 'divertida-mente.jpg', 'Divertida Mente nos apresenta Alegria e Tristeza — as emoções da pequena Riley, uma garotinha de onze anos prestes a passar por uma série de mudanças na sua vida. Alegria e Tristeza acabam se perdendo entre os pensamentos de Riley, e enquanto procuram o caminho de volta para a sala de controle, arrancam boas risadas de quem assiste essa aventura.', '2015-06-18', 5, 1, 1, 1, '2021-11-29 01:28:33'),
(3, 1, 1, 8, 1, 'Rango', 'rango.jpg', 'Rango é mais um dos tipos de filmes de animação que carregaram um Oscar para casa, dessa vez em 2012.\r\nEssa divertida comédia é protagonizada por um simpático camaleãozinho de estimação, que por um acidente vai parar no meio de uma cidade do Velho Oeste e agora precisa aprender a lidar com os problemas do reino animal. Entre muitas aventuras e gargalhadas, Rango com certeza invadirá o seu coração.', '2011-03-09', 5, 1, 1, 1, '2021-11-29 01:42:59'),
(4, 2, 1, 9, 2, 'Mestres do Universo', 'mestres-do-universo.jpg', 'He-Man and the Masters of the Universe (No Brasil: He-Man e os Defensores do Universo ou He-Man e os Mestres do Universo, em Portugal: He-Man e os Donos do Universo) é uma série de televisão animada dos Estados Unidos produzida pela Filmation com base na linha de brinquedos Masters of the Universe da Mattel. A série, muitas vezes referido como simplesmente He-Man, foi um das séries animadas mais populares da década de 1980, e é considerada cult até os dias atuais. \r\nO show ocorre no planeta fictício de Eternia, um planeta de magia, mitos e fantasia. Seu personagem principal é o Príncipe Adam, o jovem filho dos governantes de Eternia, o Rei Randor e a Rainha Marlena. Sempre que o Príncipe Adam levanta a Espada do Poder e grita \"Pelos Poderes do Grayskull!\" Ele é dotado de \"fabulosos poderes secretos\" que o transformam em \"He-Man, o homem mais poderoso do universo\". Juntamente com seus aliados próximos, o Gato Guerreiro (que na verdade é a transformação do tigre medroso de Adam, Pacato), a Feiticeira, Teela, Mentor e Gorpo, He-Man usa seus poderes para defender Eternia das forças do mal de Esqueleto. O principal objetivo da Esqueleto é conquistar a misteriosa fortaleza de Castelo de Grayskull, a fonte dos poderes de He-Man. Caso seja bem sucedido, Esqueleto teria poder suficiente para governar Eternia e, possivelmente, o universo inteiro.', '1983-09-26', 1, 13, 130, 1, '2021-11-29 11:46:57'),
(5, 2, 1, 10, 2, 'Os 100', 'os100.jpg', 'Na série The 100, quando uma guerra nuclear destruiu a civilização e o planeta Terra, os únicos sobreviventes foram 400 pessoas que estavam em 12 estações espaciais em órbita. 97 anos e três gerações depois, a população já contava com 4 mil pessoas, mas os recursos já vão escassos.', '2020-03-19', 3, 10, 100, 1, '2021-11-29 11:46:57'),
(6, 3, 1, 7, 1, 'VENOM - TEMPO DE CARNIFICINA', 'venom.jpg', 'Em Venom - Tempo de Carnificina, depois de um ano dos acontecimentos do primeiro filme, Eddie Brock (Tom Hardy) está com problemas para se acostumar na vida com o symbiote Venom. Eddie tenta se restabelecer como jornalista ao entrevistar o serial killer Cletus Kasady, também portando um symbiote chamado Carnage e que acaba escapando da prisão após sua execução falhada.', '2021-10-07', 3, 1, 1, 1, '2021-11-29 12:07:37'),
(7, 2, 1, 13, 2, 'Round 6', 'round6.jpg', 'A série coreana de suspense traz um jogo de sobrevivência com centenas de jogadores falidos que acabam aceitando o convite na esperança de ganhar um prêmio milionário. Só que as apostas são altas e mortais.', '2009-11-30', 3, 13, 6, 1, '2021-11-29 12:07:37'),
(8, 3, 1, 7, 2, 'Teste de Exibição', 'teste-de-exibição.jpg', 'É somente um teste de verificação de uma série que será lançada, mas ainda não está disponível para os assinantes. Vamos testar a exibição desta consulta. É somente um teste de verificação de uma série que será lançada, mas ainda não está disponível para os assinantes. Vamos testar a exibição desta consulta. É somente um teste de verificação de uma série que será lançada, mas ainda não está disponível para os assinantes. Vamos testar a exibição desta consulta. É somente um teste de verificação de uma série que será lançada, mas ainda não está disponível para os assinantes. Vamos testar a exibição desta consulta. É somente um teste de verificação de uma série que será lançada, mas ainda não está disponível para os assinantes. Vamos testar a exibição desta consulta.', '2021-12-01', 5, 5, 50, 2, '2021-11-29 12:19:58');

-- --------------------------------------------------------

--
-- Estrutura da tabela `spacex_payment`
--

CREATE TABLE `spacex_payment` (
  `idPayment` int(10) UNSIGNED NOT NULL,
  `fkClient` int(10) UNSIGNED NOT NULL,
  `fkUser` int(10) UNSIGNED NOT NULL,
  `fkSigned` int(10) UNSIGNED NOT NULL,
  `payment_price` decimal(10,2) NOT NULL,
  `payment_discount` decimal(10,2) DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT NULL,
  `payment_duedate` date NOT NULL,
  `payment_type` int(10) UNSIGNED NOT NULL,
  `payment_status` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `spacex_payment`
--

INSERT INTO `spacex_payment` (`idPayment`, `fkClient`, `fkUser`, `fkSigned`, `payment_price`, `payment_discount`, `payment_date`, `payment_duedate`, `payment_type`, `payment_status`) VALUES
(1, 7, 3, 1, '25.90', '0.00', '2021-10-01 14:18:16', '2021-10-01', 6, 1),
(2, 8, 3, 2, '39.90', '0.00', '2021-10-01 14:18:16', '2021-10-05', 4, 1),
(3, 9, 3, 3, '55.90', '0.00', '2021-10-06 14:32:43', '2021-10-06', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `spacex_plans`
--

CREATE TABLE `spacex_plans` (
  `idPlans` int(10) UNSIGNED NOT NULL,
  `fkUser` int(10) UNSIGNED NOT NULL,
  `plans_cod` int(10) UNSIGNED DEFAULT NULL,
  `plans_type` int(10) UNSIGNED DEFAULT NULL,
  `plans_price` decimal(10,2) DEFAULT NULL,
  `plans_subscriber` int(10) UNSIGNED DEFAULT NULL,
  `plans_status` int(10) UNSIGNED DEFAULT NULL,
  `plans_record` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `spacex_plans`
--

INSERT INTO `spacex_plans` (`idPlans`, `fkUser`, `plans_cod`, `plans_type`, `plans_price`, `plans_subscriber`, `plans_status`, `plans_record`) VALUES
(1, 1, 0, 1, '25.90', 1, 1, '2021-11-29 01:02:14'),
(2, 1, 0, 2, '39.90', 2, 1, '2021-11-29 01:02:14'),
(3, 1, 0, 3, '55.90', 2, 1, '2021-11-29 01:09:55');

-- --------------------------------------------------------

--
-- Estrutura da tabela `spacex_signed`
--

CREATE TABLE `spacex_signed` (
  `idSigned` int(10) UNSIGNED NOT NULL,
  `fkPlans` int(10) UNSIGNED NOT NULL,
  `fkClient` int(10) UNSIGNED NOT NULL,
  `signed_cpf` int(10) UNSIGNED NOT NULL,
  `signed_email` varchar(100) NOT NULL,
  `signed_record` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `signed_status` int(10) UNSIGNED NOT NULL,
  `signed_confirmation` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `spacex_signed`
--

INSERT INTO `spacex_signed` (`idSigned`, `fkPlans`, `fkClient`, `signed_cpf`, `signed_email`, `signed_record`, `signed_status`, `signed_confirmation`) VALUES
(1, 1, 7, 123456123, 'davidlm@gmail.com', '2021-10-01 14:10:07', 1, 1),
(2, 2, 8, 733456123, 'katiasaza@gmail.com', '2021-10-01 14:20:07', 1, 1),
(3, 3, 9, 883456199, 'alisouzali@gmail.com', '2021-10-01 14:20:25', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `spacex_user`
--

CREATE TABLE `spacex_user` (
  `idUser` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_photo` varchar(255) DEFAULT NULL,
  `user_cpf` varchar(14) DEFAULT NULL,
  `user_rg` varchar(50) DEFAULT NULL,
  `user_whatsapp` varchar(20) DEFAULT NULL,
  `user_login` varchar(100) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_level` int(10) DEFAULT NULL,
  `user_record` timestamp NULL DEFAULT NULL,
  `user_status` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `spacex_user`
--

INSERT INTO `spacex_user` (`idUser`, `user_name`, `user_address`, `user_photo`, `user_cpf`, `user_rg`, `user_whatsapp`, `user_login`, `user_password`, `user_level`, `user_record`, `user_status`) VALUES
(1, 'Dalmo', 'Rua: Das Uvas, nº 125, Buriti - Boa Vista-RR', 'dalmo.jpg', '123456159', '123456321', '123456789', 'dalmo-teste@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-11-29 02:31:58', 1),
(2, 'Deyvid', 'Av: XP, nº 12, São Carlos - Manaus-AM', 'deyvid', '789456123', '789456128', '123456789', 'deyvid-test@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2, '2021-11-29 02:31:58', 0),
(3, 'Sandra Souza', 'Av: Brasil, nº 2236, Rio Negro - Manaus-AM', 'deyvid', '789556122', '617894528', '127893456', 'financeiro-test@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', 2, '2021-11-28 23:31:58', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `spacex_views`
--

CREATE TABLE `spacex_views` (
  `idViews` int(10) UNSIGNED NOT NULL,
  `fkMovie` int(10) UNSIGNED NOT NULL,
  `fkClient` int(10) UNSIGNED NOT NULL,
  `view_record` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `view_episode` int(10) UNSIGNED NOT NULL,
  `view_status` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `spacex_views`
--

INSERT INTO `spacex_views` (`idViews`, `fkMovie`, `fkClient`, `view_record`, `view_episode`, `view_status`) VALUES
(1, 1, 7, '2021-10-20 15:10:25', 1, 1),
(2, 3, 7, '2021-10-20 15:10:25', 1, 1),
(3, 5, 8, '2021-10-20 16:34:34', 1, 1),
(4, 5, 8, '2021-10-20 17:34:34', 2, 1),
(5, 6, 9, '2021-10-24 01:37:40', 1, 1),
(6, 4, 9, '2021-10-12 21:38:26', 1, 1),
(7, 7, 9, '2021-10-30 16:41:21', 1, 1),
(8, 1, 9, '2021-11-01 16:41:21', 1, 1),
(9, 7, 9, '2021-10-30 16:41:21', 2, 1),
(10, 7, 9, '2021-11-01 17:30:21', 3, 1),
(11, 7, 9, '2021-11-01 18:10:21', 4, 1),
(12, 7, 9, '2021-11-01 18:55:21', 5, 1),
(13, 7, 9, '2021-11-01 19:40:21', 6, 1),
(14, 1, 8, '2021-11-02 11:30:21', 1, 1),
(15, 2, 8, '2021-11-02 12:10:21', 1, 1),
(16, 3, 8, '2021-11-02 13:20:21', 1, 1),
(17, 5, 7, '2021-11-02 19:30:21', 1, 1),
(18, 5, 7, '2021-11-02 20:55:21', 2, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `spacex_address`
--
ALTER TABLE `spacex_address`
  ADD PRIMARY KEY (`idAddress`),
  ADD KEY `spacex_address_FKIndex1` (`fkClient`);

--
-- Índices para tabela `spacex_client`
--
ALTER TABLE `spacex_client`
  ADD PRIMARY KEY (`idClient`);

--
-- Índices para tabela `spacex_genre`
--
ALTER TABLE `spacex_genre`
  ADD PRIMARY KEY (`idGenre`),
  ADD KEY `store_category_FKIndex1` (`fkUser`);

--
-- Índices para tabela `spacex_logs_cli`
--
ALTER TABLE `spacex_logs_cli`
  ADD PRIMARY KEY (`idLogs_cli`),
  ADD KEY `spacex_logs_cli_FKIndex1` (`fkClient`);

--
-- Índices para tabela `spacex_logs_user`
--
ALTER TABLE `spacex_logs_user`
  ADD PRIMARY KEY (`idLogs_user`),
  ADD KEY `spacex_logs_FKIndex1` (`fkUser`);

--
-- Índices para tabela `spacex_movie`
--
ALTER TABLE `spacex_movie`
  ADD PRIMARY KEY (`idMovie`),
  ADD KEY `spacex_movie_FKIndex1` (`fkUser`),
  ADD KEY `spacex_movie_FKIndex2` (`fkGenre`),
  ADD KEY `spacex_movie_FKIndex3` (`fkPlans`);

--
-- Índices para tabela `spacex_payment`
--
ALTER TABLE `spacex_payment`
  ADD PRIMARY KEY (`idPayment`),
  ADD KEY `spacex_payment_FKIndex1` (`fkUser`),
  ADD KEY `spacex_payment_FKIndex2` (`fkClient`),
  ADD KEY `spacex_payment_FKIndex3` (`fkSigned`);

--
-- Índices para tabela `spacex_plans`
--
ALTER TABLE `spacex_plans`
  ADD PRIMARY KEY (`idPlans`),
  ADD KEY `spacex_plans_FKIndex1` (`fkUser`);

--
-- Índices para tabela `spacex_signed`
--
ALTER TABLE `spacex_signed`
  ADD PRIMARY KEY (`idSigned`),
  ADD KEY `spacex_signed_FKIndex1` (`fkClient`),
  ADD KEY `spacex_signed_FKIndex2` (`fkPlans`);

--
-- Índices para tabela `spacex_user`
--
ALTER TABLE `spacex_user`
  ADD PRIMARY KEY (`idUser`);

--
-- Índices para tabela `spacex_views`
--
ALTER TABLE `spacex_views`
  ADD PRIMARY KEY (`idViews`),
  ADD KEY `spacex_views_FKIndex1` (`fkMovie`),
  ADD KEY `spacex_views_FKIndex2` (`fkClient`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `spacex_address`
--
ALTER TABLE `spacex_address`
  MODIFY `idAddress` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `spacex_client`
--
ALTER TABLE `spacex_client`
  MODIFY `idClient` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `spacex_genre`
--
ALTER TABLE `spacex_genre`
  MODIFY `idGenre` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `spacex_logs_cli`
--
ALTER TABLE `spacex_logs_cli`
  MODIFY `idLogs_cli` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `spacex_logs_user`
--
ALTER TABLE `spacex_logs_user`
  MODIFY `idLogs_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `spacex_movie`
--
ALTER TABLE `spacex_movie`
  MODIFY `idMovie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `spacex_payment`
--
ALTER TABLE `spacex_payment`
  MODIFY `idPayment` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `spacex_plans`
--
ALTER TABLE `spacex_plans`
  MODIFY `idPlans` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `spacex_signed`
--
ALTER TABLE `spacex_signed`
  MODIFY `idSigned` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `spacex_user`
--
ALTER TABLE `spacex_user`
  MODIFY `idUser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `spacex_views`
--
ALTER TABLE `spacex_views`
  MODIFY `idViews` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `spacex_address`
--
ALTER TABLE `spacex_address`
  ADD CONSTRAINT `spacex_address_ibfk_1` FOREIGN KEY (`fkClient`) REFERENCES `spacex_client` (`idClient`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `spacex_genre`
--
ALTER TABLE `spacex_genre`
  ADD CONSTRAINT `spacex_genre_ibfk_1` FOREIGN KEY (`fkUser`) REFERENCES `spacex_user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `spacex_logs_cli`
--
ALTER TABLE `spacex_logs_cli`
  ADD CONSTRAINT `spacex_logs_cli_ibfk_1` FOREIGN KEY (`fkClient`) REFERENCES `spacex_client` (`idClient`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `spacex_logs_user`
--
ALTER TABLE `spacex_logs_user`
  ADD CONSTRAINT `spacex_logs_user_ibfk_1` FOREIGN KEY (`fkUser`) REFERENCES `spacex_user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `spacex_movie`
--
ALTER TABLE `spacex_movie`
  ADD CONSTRAINT `spacex_movie_ibfk_1` FOREIGN KEY (`fkUser`) REFERENCES `spacex_user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `spacex_movie_ibfk_2` FOREIGN KEY (`fkGenre`) REFERENCES `spacex_genre` (`idGenre`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `spacex_movie_ibfk_3` FOREIGN KEY (`fkPlans`) REFERENCES `spacex_plans` (`idPlans`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `spacex_payment`
--
ALTER TABLE `spacex_payment`
  ADD CONSTRAINT `spacex_payment_ibfk_1` FOREIGN KEY (`fkUser`) REFERENCES `spacex_user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `spacex_payment_ibfk_2` FOREIGN KEY (`fkClient`) REFERENCES `spacex_client` (`idClient`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `spacex_payment_ibfk_3` FOREIGN KEY (`fkSigned`) REFERENCES `spacex_signed` (`idSigned`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `spacex_plans`
--
ALTER TABLE `spacex_plans`
  ADD CONSTRAINT `spacex_plans_ibfk_1` FOREIGN KEY (`fkUser`) REFERENCES `spacex_user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `spacex_signed`
--
ALTER TABLE `spacex_signed`
  ADD CONSTRAINT `spacex_signed_ibfk_1` FOREIGN KEY (`fkClient`) REFERENCES `spacex_client` (`idClient`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `spacex_signed_ibfk_2` FOREIGN KEY (`fkPlans`) REFERENCES `spacex_plans` (`idPlans`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Limitadores para a tabela `spacex_views`
--
ALTER TABLE `spacex_views`
  ADD CONSTRAINT `spacex_views_ibfk_1` FOREIGN KEY (`fkMovie`) REFERENCES `spacex_movie` (`idMovie`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `spacex_views_ibfk_2` FOREIGN KEY (`fkClient`) REFERENCES `spacex_client` (`idClient`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
