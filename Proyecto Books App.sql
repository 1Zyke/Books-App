-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2023 at 07:33 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_libreria`
--

-- --------------------------------------------------------

--
-- Table structure for table `carreras`
--

CREATE TABLE `carreras` (
  `id_carrera` int(3) NOT NULL,
  `nombre_carrera` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `carreras`
--

INSERT INTO `carreras` (`id_carrera`, `nombre_carrera`) VALUES
(489, 'Ambiental'),
(571, 'Energía'),
(638, 'PyMES'),
(783, 'Software'),
(892, 'Inglés');

-- --------------------------------------------------------

--
-- Table structure for table `libros`
--

CREATE TABLE `libros` (
  `ISBN` varchar(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `editorial` varchar(100) DEFAULT NULL,
  `carrera` int(3) NOT NULL DEFAULT 0,
  `ubicacion` varchar(10) DEFAULT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `libros`
--

INSERT INTO `libros` (`ISBN`, `nombre`, `editorial`, `carrera`, `ubicacion`, `estado`) VALUES
('8273646', 'The Matrix of Software', 'Ave Maria', 783, 'STO DGO', 0),
('8401921015', 'Compiladores', 'Pearson', 783, 'B2', 1),
('8402086969', 'Como programar en c++', 'Deitel', 783, 'A4', 0),
('8403083910', 'Ecological restoration', 'Island Press', 489, 'D2', 0),
('8412123101', 'Advanced grammar in use', 'Cambridge', 892, 'A2', 1),
('8412340082', 'Energía mediante vapor, aire o gas', 'Reverté', 571, 'B3', 0),
('8420617040', 'Análisis y diseño de algoritmos', 'Alfaomega', 783, 'A3', 0),
('8421348901', 'Nociones de derecho civil y mercantil', 'ISBN', 638, 'B1', 0),
('8421349800', 'Manual de climatización', 'IPN', 489, 'C1', 0),
('8428930012', 'Ingeniería de software', 'Sommerville', 783, 'C2', 0),
('8430504737', 'Alternative energy systems', 'CRC Press', 571, 'A1', 0),
('8437283781', 'Diseños experimentales', 'Trillas', 783, 'C4', 1),
('8453561911', 'Introduction to java programming', 'Pearson', 783, 'C4', 0),
('8456278901', 'Derechos del consumidor', 'IPN', 638, 'B3', 0),
('8456289002', 'Interchange', 'Cambridge', 892, 'B3', 0),
('8456382021', 'De las palabras a los hechos', 'Tirant', 638, 'C3', 0),
('8456782901', 'Wind energy', 'CRC Press', 571, 'C2', 1),
('8457802148', 'Ciencia ambiental preservemos la tierra', 'Thomson Learning', 489, 'A2', 0),
('8462198312', 'Fundamentos de ecología', 'Cengage', 489, 'C2', 1),
('8463557901', 'Oleohidráulica básica', 'Alfaomega', 571, 'B3', 0),
('8463737290', 'English grammar in use', 'Cambridge', 892, 'C1', 0),
('8466528152', 'Face2Face', 'Cambridge', 892, 'A3', 0),
('8467289011', 'Teoría de autómatas, lenguajes y computación', 'Pearson', 783, 'B3', 0),
('8467289122', 'World view 2', 'Longman', 892, 'B1', 0),
('8467299100', 'Ética', 'IPN', 638, 'A2', 0),
('8467381923', 'Know how', 'Oxford', 892, 'A1', 0),
('8467829129', 'Photovoltaic systems engineering', 'CRC Press', 571, 'A2', 0),
('8469101189', 'How to teach writting', 'Longman', 892, 'A2', 0),
('8469696912', 'Fundamentos generales de programación', 'MC Hill', 783, 'A1', 0),
('8471891469', 'Agenda ecológica federal', 'ISEF', 489, 'A1', 0),
('8473789190', 'Reading keys', 'Macmillan', 892, 'B3', 0),
('8477200399', 'Energías e impacto ambiental', 'Milenium', 489, 'A4', 0),
('8477212345', 'La enseñanza como puente a la vida', 'IPN', 638, 'C2', 0),
('8478200012', 'Economía del medio ambiente', 'Alfaomega', 489, 'A1', 0),
('8478289921', 'Ingeniería del software', 'MC Hill', 783, 'A1', 0),
('8478290982', 'Tratado de climatología aplicada', 'Mundi-Prensa', 489, 'B3', 0),
('8478292010', 'Energy conservation guidebook', 'ISBN', 571, 'A1', 0),
('8478371929', 'Ecología y medio ambiente', 'Pearson', 489, 'B3', 0),
('8479083492', 'Banco central y tasas de interés', 'IPN', 638, 'B1', 0),
('8479802092', 'Curso de energía solar', 'ISBN', 571, 'B1', 0),
('8482892902', 'Contabilidad', 'IPN', 638, 'A2', 0),
('8482911091', 'Hydrogen fuel', 'CRC Press', 571, 'A2', 0),
('8483982947', 'Dispersión de contaminantes en la atmosfera', 'Alfaomega', 489, 'C2', 0),
('8487890212', 'La presidencia interina de Victoriano Huerta', 'IPN', 638, 'A3', 0),
('8489391002', 'Simple solutions to energy calculations', 'CRC Press', 571, 'C2', 0),
('8493012309', 'Energía solar fotovoltaica', 'Marcombo', 571, 'C3', 0),
('8493909100', 'Objetive pet', 'Cambridge', 892, 'C2', 0),
('8499209899', 'Estructura de datos con C++', 'MC Hill', 783, 'B2', 0),
('8499838781', 'Enterprise 1', 'Express', 892, 'C1', 0),
('8499928211', 'Derechos de los usuarios de los servicios de salud', 'IPN', 638, 'A1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(50) NOT NULL,
  `correo` varchar(200) DEFAULT NULL,
  `contrasena` varchar(50) NOT NULL,
  `permiso` varchar(20) NOT NULL,
  `nombre` varchar(90) NOT NULL,
  `imagen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `correo`, `contrasena`, `permiso`, `nombre`, `imagen`) VALUES
('admin', 'loronf19@gmail.com', 'root', 'admin', 'Lorenzo Hugo Núñez Franco', 'admin.png'),
('hiram', 'hiram@gmail.com', 'hiram', 'admin', 'Hiram Culebro', 'admin-eb405861.png'),
('key', 'key@gmail.com', 'key123', 'admin', 'Keyla Sosa', 'key.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id_carrera`);

--
-- Indexes for table `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`ISBN`),
  ADD KEY `FK_carreras` (`carrera`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`),
  ADD UNIQUE KEY `email` (`correo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `FK_carreras` FOREIGN KEY (`carrera`) REFERENCES `carreras` (`id_carrera`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
