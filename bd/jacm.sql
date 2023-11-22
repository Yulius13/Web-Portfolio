-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2023 a las 15:55:07
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jacm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loginen`
--

CREATE TABLE `loginen` (
  `id` int(11) NOT NULL,
  `signInTitle` varchar(255) NOT NULL,
  `signInParagraph` varchar(255) NOT NULL,
  `signInEmail` varchar(255) NOT NULL,
  `signInPw` varchar(255) NOT NULL,
  `signInPw2` varchar(255) NOT NULL,
  `signInBtn` varchar(255) NOT NULL,
  `signInInfTittle` varchar(255) NOT NULL,
  `signInInfParagraph` varchar(255) NOT NULL,
  `signInInfBtn` varchar(255) NOT NULL,
  `signUpTitle` varchar(255) NOT NULL,
  `signUpEmail` varchar(255) NOT NULL,
  `signUpPw` varchar(255) NOT NULL,
  `signUpBtn` varchar(255) NOT NULL,
  `signUpInfTittle` varchar(255) NOT NULL,
  `signUpInfParagraph` varchar(255) NOT NULL,
  `signUpInfBtn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `loginen`
--

INSERT INTO `loginen` (`id`, `signInTitle`, `signInParagraph`, `signInEmail`, `signInPw`, `signInPw2`, `signInBtn`, `signInInfTittle`, `signInInfParagraph`, `signInInfBtn`, `signUpTitle`, `signUpEmail`, `signUpPw`, `signUpBtn`, `signUpInfTittle`, `signUpInfParagraph`, `signUpInfBtn`) VALUES
(1, 'Creat your account', 'With just a little information you can create your account', 'Your email', 'Your password', 'Confirm your password', 'Creat your account', 'Welcome my friend', 'Log in if you are already registered with US', 'Log in to your account', 'Sign in to your account', 'Your email', 'Your password', 'Enter', 'Hi friend', 'To register you only need some personal information', 'Creat your account');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logines`
--

CREATE TABLE `logines` (
  `id` int(11) NOT NULL,
  `signInTitle` varchar(255) NOT NULL,
  `signInParagraph` varchar(255) NOT NULL,
  `signInEmail` varchar(255) NOT NULL,
  `signInPw` varchar(255) NOT NULL,
  `signInPw2` varchar(255) NOT NULL,
  `signInBtn` varchar(255) NOT NULL,
  `signInInfTittle` varchar(255) NOT NULL,
  `signInInfParagraph` varchar(255) NOT NULL,
  `signInInfBtn` varchar(255) NOT NULL,
  `signUpTitle` varchar(255) NOT NULL,
  `signUpEmail` varchar(255) NOT NULL,
  `signUpPw` varchar(255) NOT NULL,
  `signUpBtn` varchar(255) NOT NULL,
  `signUpInfTittle` varchar(255) NOT NULL,
  `signUpInfParagraph` varchar(255) NOT NULL,
  `signUpInfBtn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `logines`
--

INSERT INTO `logines` (`id`, `signInTitle`, `signInParagraph`, `signInEmail`, `signInPw`, `signInPw2`, `signInBtn`, `signInInfTittle`, `signInInfParagraph`, `signInInfBtn`, `signUpTitle`, `signUpEmail`, `signUpPw`, `signUpBtn`, `signUpInfTittle`, `signUpInfParagraph`, `signUpInfBtn`) VALUES
(1, 'Crea tu cuenta', 'Solo con un poco de información puedes crear tu cuenta', 'Tu e-mail', 'Tu contraseña', 'Confirma tu contraseña', 'Crear', 'Bienvenido mi amigo', 'Inicia sesión si ya estás registrado con nosotros', 'Ingresar', 'Ingresa a tu cuenta', 'Tu e-mail', 'Tu contraseña', 'Entrar', 'Holá, Mi amigo', 'Para registrarte solo necesitas pocos datos personales', 'Crea tu cuenta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `loginpt`
--

CREATE TABLE `loginpt` (
  `id` int(11) NOT NULL,
  `signInTitle` varchar(255) NOT NULL,
  `signInParagraph` varchar(255) NOT NULL,
  `signInEmail` varchar(255) NOT NULL,
  `signInPw` varchar(255) NOT NULL,
  `signInPw2` varchar(255) NOT NULL,
  `signInBtn` varchar(255) NOT NULL,
  `signInInfTittle` varchar(255) NOT NULL,
  `signInInfParagraph` varchar(255) NOT NULL,
  `signInInfBtn` varchar(255) NOT NULL,
  `signUpTitle` varchar(255) NOT NULL,
  `signUpEmail` varchar(255) NOT NULL,
  `signUpPw` varchar(255) NOT NULL,
  `signUpBtn` varchar(255) NOT NULL,
  `signUpInfTittle` varchar(255) NOT NULL,
  `signUpInfParagraph` varchar(255) NOT NULL,
  `signUpInfBtn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `loginpt`
--

INSERT INTO `loginpt` (`id`, `signInTitle`, `signInParagraph`, `signInEmail`, `signInPw`, `signInPw2`, `signInBtn`, `signInInfTittle`, `signInInfParagraph`, `signInInfBtn`, `signUpTitle`, `signUpEmail`, `signUpPw`, `signUpBtn`, `signUpInfTittle`, `signUpInfParagraph`, `signUpInfBtn`) VALUES
(1, 'Crie sua conta', 'Com apenas um pouco de informação você pode criar sua conta', 'Teu e-mail', 'Sua Senha', 'Confirme sua senha', 'Crie conta', 'Bem-vindo meu amigo', 'Faça login se você já estiver registrado conosco', 'Entre na sua conta', 'Faça login na sua conta', 'Teu e-mail', 'Sua Senha', 'Entrar', 'Olá, meu amigo', 'Para se registrar você só precisa de alguns dados pessoais', 'Crie sua conta');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `loginen`
--
ALTER TABLE `loginen`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logines`
--
ALTER TABLE `logines`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `loginpt`
--
ALTER TABLE `loginpt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `loginen`
--
ALTER TABLE `loginen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `logines`
--
ALTER TABLE `logines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `loginpt`
--
ALTER TABLE `loginpt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
