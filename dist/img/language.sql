-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2023 a las 10:53:05
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
-- Estructura de tabla para la tabla `language`
--

CREATE TABLE `language` (
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `language`
--

INSERT INTO `language` (`data`) VALUES
('[\r\n  {\r\n    \"language\": {\r\n      \"pt\": {\r\n        \"login\": {\r\n          \"form\": {\r\n            \"left\": {\r\n              \"signUp-title\": \"Faça login na sua conta\",\r\n              \"signUp-email\": \"Teu e-mail\",\r\n              \"signUp-pw\": \"Sua Senha\",\r\n              \"signUp-btn\": \"Entrar\"\r\n            },\r\n            \"right\": {\r\n              \"signIn-title\": \"Crie sua conta\",\r\n              \"signIn-paragraph\": \"Com apenas um pouco de informação você pode criar sua conta\",\r\n              \"signIn-email\": \"Teu e-mail\",\r\n              \"signIn-pw\": \"Sua Senha\",\r\n              \"signIn-pw2\": \"Confirme sua senha\",\r\n              \"signIn-btn\": \"Crie conta\"\r\n            }\r\n          },\r\n          \"inf\": {\r\n            \"left\": {\r\n              \"inf-tittle\": \"Bem-vindo meu amigo\",\r\n              \"inf-paragraph\": \"Faça login se você já estiver registrado conosco\",\r\n              \"inf-btn\": \"Entre na sua conta\"\r\n            },\r\n            \"right\": {\r\n              \"inf-tittle\": \"Olá, meu amigo\",\r\n              \"inf-paragraph\": \"Para se registrar você só precisa de alguns dados pessoais\",\r\n              \"inf-btn\": \"Crie sua conta\"\r\n            }\r\n          }\r\n        }\r\n      },\r\n      \"es\": {\r\n        \"login\": {\r\n          \"form\": {\r\n            \"left\": {\r\n              \"signUp-title\": \"Inicia sesión en tu cuenta\",\r\n              \"signUp-email\": \"Tu e-mail\",\r\n              \"signUp-pw\": \"Tu contraseña\",\r\n              \"signUp-btn\": \"Entra\"\r\n            },\r\n            \"right\": {\r\n              \"signIn-title\": \"Crea tu cuenta\",\r\n              \"signIn-paragraph\": \"Solo con un poco de información puedes crear tu cuenta\",\r\n              \"signIn-email\": \"Tu e-mail\",\r\n              \"signIn-pw\": \"Tu contraseña\",\r\n              \"signIn-pw2\": \"Confirma tu contraseña\",\r\n              \"signIn-btn\": \"Crea tu cuenta\"\r\n            }\r\n          },\r\n          \"inf\": {\r\n            \"left\": {\r\n              \"inf-tittle\": \"Bienvenido mi amigo\",\r\n              \"inf-paragraph\": \"Inicia sesión si ya estás registrado con nosotros\",\r\n              \"inf-btn\": \"Entra a tu cuenta\"\r\n            },\r\n            \"right\": {\r\n              \"inf-tittle\": \"Holá, Mi amigo\",\r\n              \"inf-paragraph\": \"Para registrarte sólo necesitas algunos datos personales\",\r\n              \"inf-btn\": \"Crea tu cuenta\"\r\n            }\r\n          }\r\n        }\r\n      },\r\n      \"en\": {\r\n        \"login\": {\r\n          \"form\": {\r\n            \"left\": {\r\n              \"signUp-title\": \"Sign in to your account\",\r\n              \"signUp-email\": \"Your email\",\r\n              \"signUp-pw\": \"Your password\",\r\n              \"signUp-btn\": \"Enter\"\r\n            },\r\n            \"right\": {\r\n              \"signIn-title\": \"creat your account\",\r\n              \"signIn-paragraph\": \"With just a little information you can create your account\",\r\n              \"signIn-email\": \"Your email\",\r\n              \"signIn-pw\": \"Your password\",\r\n              \"signIn-pw2\": \"Confirm Your password\",\r\n              \"signIn-btn\": \"Creat your account\"\r\n            }\r\n          },\r\n          \"inf\": {\r\n            \"left\": {\r\n              \"inf-tittle\": \"Welcome my friend\",\r\n              \"inf-paragraph\": \"Log in if you are already registered with us\",\r\n              \"inf-btn\": \"Log in to your account\"\r\n            },\r\n            \"right\": {\r\n              \"inf-tittle\": \"Hi friend\",\r\n              \"inf-paragraph\": \"To register you only need some personal information\",\r\n              \"inf-btn\": \"Creat your account\"\r\n            }\r\n          }\r\n        }\r\n      }\r\n    }\r\n  }\r\n]\r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
