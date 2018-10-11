-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        5.7.23-log - MySQL Community Server (GPL)
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- ohmovie 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `ohmovie` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ohmovie`;

-- 테이블 ohmovie.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `u_idx` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(100) NOT NULL,
  `u_pw` varchar(100) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `enabled` char(1) DEFAULT '1',
  PRIMARY KEY (`u_idx`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ohmovie.member:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`u_idx`, `u_id`, `u_pw`, `u_name`, `regdate`, `updatedate`, `enabled`) VALUES
	(1, 'admin00', '1234', '관리자1', '2018-10-11 14:11:05', '2018-10-11 22:32:13', '1'),
	(2, 'user00', '1234', '유저1', '2018-10-11 22:32:07', '2018-10-11 22:32:07', '1'),
	(3, 'member00', '1234', '운영자1', '2018-10-11 22:32:30', '2018-10-11 22:32:30', '1');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- 테이블 ohmovie.member_auth 구조 내보내기
CREATE TABLE IF NOT EXISTS `member_auth` (
  `u_idx` int(11) NOT NULL,
  `auth` varchar(50) NOT NULL,
  KEY `fk_member_auth` (`u_idx`),
  CONSTRAINT `fk_member_auth` FOREIGN KEY (`u_idx`) REFERENCES `member` (`u_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ohmovie.member_auth:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member_auth` DISABLE KEYS */;
INSERT INTO `member_auth` (`u_idx`, `auth`) VALUES
	(1, 'ROLE_ADMIN'),
	(2, 'ROLE_USER'),
	(3, 'ROLE_MANAGER'),
	(1, 'ROLE_MANAGER');
/*!40000 ALTER TABLE `member_auth` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
