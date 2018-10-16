-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        5.7.22-log - MySQL Community Server (GPL)
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- ohmovie 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `ohmovie` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ohmovie`;

-- 테이블 ohmovie.interest 구조 내보내기
CREATE TABLE IF NOT EXISTS `interest` (
  `u_idx` int(11) DEFAULT NULL,
  `m_idx` int(11) DEFAULT NULL,
  `favorite` tinyint(1) NOT NULL DEFAULT '0',
  `rated` int(11) NOT NULL DEFAULT '0',
  `wishlist` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ohmovie.interest:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `interest` DISABLE KEYS */;
/*!40000 ALTER TABLE `interest` ENABLE KEYS */;

-- 테이블 ohmovie.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `u_idx` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` varchar(100) NOT NULL,
  `u_pw` varchar(100) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `enabled` char(1) DEFAULT '1',
  PRIMARY KEY (`u_idx`),
  UNIQUE KEY `u_id` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- 테이블 데이터 ohmovie.member:~100 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`u_idx`, `u_id`, `u_pw`, `u_name`, `regdate`, `lastdate`, `enabled`) VALUES
	(1, 'user0@gmail.com', '$2a$10$r9UaaHy1skJES1cQwZTJcev.Y7ZPY1l8OyNjDbizE9m0.peeN74uu', '일반사용자0', '2018-10-15 08:49:20', '2018-10-15 08:49:20', '1'),
	(2, 'user1@gmail.com', '$2a$10$5tvn.XBZyVgXVk1UI9sIMuDw4eLYYeEygq5VNpNFKowq5VZYN6ObK', '일반사용자1', '2018-10-15 08:49:20', '2018-10-15 08:49:20', '1'),
	(3, 'user2@gmail.com', '$2a$10$6hURAexufonKCK4LHL4oeelpSHwe9cYaKrgAKbnJEzP0E5LL47EYq', '일반사용자2', '2018-10-15 08:49:20', '2018-10-15 08:49:20', '1'),
	(4, 'user3@gmail.com', '$2a$10$alsZhusmJw4R.NqNQzZf1udDkcLO6zne5LxkhbeLu8Si0RPT2xmZ6', '일반사용자3', '2018-10-15 08:49:20', '2018-10-15 08:49:20', '1'),
	(5, 'user4@gmail.com', '$2a$10$gz0dh9NZxO8IkCh4//DkF.6R.nCF.eZHZlzU4OfeK0yRDnkTJOEUi', '일반사용자4', '2018-10-15 08:49:20', '2018-10-15 08:49:20', '1'),
	(6, 'user5@gmail.com', '$2a$10$9mE/QKCsUml9l5RQAPUcL.RGkK/CU77EE4VcevGXeNkgv1QmzdI9S', '일반사용자5', '2018-10-15 08:49:20', '2018-10-15 08:49:20', '1'),
	(7, 'user6@gmail.com', '$2a$10$Vwd/MGgp.LpT0cITlFV29e1b1YZT7cDp.GdiANYVhRLph68h2M7DG', '일반사용자6', '2018-10-15 08:49:21', '2018-10-15 08:49:21', '1'),
	(8, 'user7@gmail.com', '$2a$10$slKb5ZZqmuJp3krNwJdC2OB2YuXSTQFTCBvkwiWhJrQmDw4F.pYQq', '일반사용자7', '2018-10-15 08:49:21', '2018-10-15 08:49:21', '1'),
	(9, 'user8@gmail.com', '$2a$10$xUsVlakd/g/J4Rn6Yg.Bju.5N1notNBEKiOhSzLPcZQ9XSyrwbz86', '일반사용자8', '2018-10-15 08:49:21', '2018-10-15 08:49:21', '1'),
	(10, 'user9@gmail.com', '$2a$10$We8oWvLSW4TwPofJ0X04qeBd21fnUYGQ07LEIRHcFiLMoJyYy9Jp6', '일반사용자9', '2018-10-15 08:49:21', '2018-10-15 08:49:21', '1'),
	(11, 'user10@gmail.com', '$2a$10$D1IoKIJeL9vQFm14zszALOSrPuvjnhVB3s9N5KervsXGemjbg3ste', '일반사용자10', '2018-10-15 08:49:21', '2018-10-15 08:49:21', '1'),
	(12, 'user11@gmail.com', '$2a$10$RX5k/HQuzXbBQxppWOjEoeUJX3Lo0rF7CYO3vgbRQ5QbMGKnXfchK', '일반사용자11', '2018-10-15 08:49:21', '2018-10-15 08:49:21', '1'),
	(13, 'user12@gmail.com', '$2a$10$aI5Q1fyXoKOVbN6J4d1qnuO8xlaRqiVO0ICkYUh1CyashNYF58aFm', '일반사용자12', '2018-10-15 08:49:21', '2018-10-15 08:49:21', '1'),
	(14, 'user13@gmail.com', '$2a$10$OUxx243S5xfO.ynaPkzOIu/vNuSn7QQ.BlVK8b64b/RFynMMercvO', '일반사용자13', '2018-10-15 08:49:21', '2018-10-15 08:49:21', '1'),
	(15, 'user14@gmail.com', '$2a$10$SHOUVHBzYiPO40K6SjsU7.7oBqBVIPwjvVtE78BYM7mSsZbmYi83C', '일반사용자14', '2018-10-15 08:49:21', '2018-10-15 08:49:21', '1'),
	(16, 'user15@gmail.com', '$2a$10$3LoJ3C/omyurMsDo5hxqT.vKU0bWewMVS/vgroukmgvx2b47enyx.', '일반사용자15', '2018-10-15 08:49:21', '2018-10-15 08:49:21', '1'),
	(17, 'user16@gmail.com', '$2a$10$wkm9RXs8l3WghxWTNtUt1ehrQFKyc53LVvwJ/5s8IwT3p4kbwZu9W', '일반사용자16', '2018-10-15 08:49:21', '2018-10-15 08:49:21', '1'),
	(18, 'user17@gmail.com', '$2a$10$4wwh/0Oq2.r8rwGmh9yCDuL4C6WprnsX67m4uKATMmOj0.Jv0/wdq', '일반사용자17', '2018-10-15 08:49:21', '2018-10-15 08:49:21', '1'),
	(19, 'user18@gmail.com', '$2a$10$s.FB5Stb4/d65MyQ3sDopOaqc2.4hqBz8dO2tg0urOso9f/zUAUa.', '일반사용자18', '2018-10-15 08:49:22', '2018-10-15 08:49:22', '1'),
	(20, 'user19@gmail.com', '$2a$10$krik6Aaj0MB/YnodSpW0EO8/hshM2Tm3SpEHExAS3099EygpGFKlW', '일반사용자19', '2018-10-15 08:49:22', '2018-10-15 08:49:22', '1'),
	(21, 'user20@gmail.com', '$2a$10$rUCR0QSdMgt.5l.P2DbIxuBuCuK7ogwUFJvouXWCcv46YXtyFfDJO', '일반사용자20', '2018-10-15 08:49:22', '2018-10-15 08:49:22', '1'),
	(22, 'user21@gmail.com', '$2a$10$s7z99qF7RfDNFy4tgr66hOww.miw0beVi1ePQeSOQ6CdfHcFakDp.', '일반사용자21', '2018-10-15 08:49:22', '2018-10-15 08:49:22', '1'),
	(23, 'user22@gmail.com', '$2a$10$GK7qxRC.cfC7V00RtJ7zre.IwXN38nSFkWyJz/krLQRJEov/2sC9a', '일반사용자22', '2018-10-15 08:49:22', '2018-10-15 08:49:22', '1'),
	(24, 'user23@gmail.com', '$2a$10$xXs7fhMBR7AX8IZygISiCuvhBp5/sDr9jgItEOsXTzhRnZuVt.G3W', '일반사용자23', '2018-10-15 08:49:22', '2018-10-15 08:49:22', '1'),
	(25, 'user24@gmail.com', '$2a$10$U.NGvrZwGvL4A.N.ZeE0GeXwQLqUgnTyDnO3lRJLTdNjmPfpo3qTO', '일반사용자24', '2018-10-15 08:49:22', '2018-10-15 08:49:22', '1'),
	(26, 'user25@gmail.com', '$2a$10$fmLApS/UnA7CVRung842nu8JUEDa8pb0AIs41bxxkW1DgvZLPujoG', '일반사용자25', '2018-10-15 08:49:22', '2018-10-15 08:49:22', '1'),
	(27, 'user26@gmail.com', '$2a$10$55Cb6J4djRBJFA44edezJ.mlkQffFDzAiYspGSTgViRIrHbJmRyrq', '일반사용자26', '2018-10-15 08:49:22', '2018-10-15 08:49:22', '1'),
	(28, 'user27@gmail.com', '$2a$10$WPuZEY8kJQPWko1hfVQKEOt3zKUeZCIMjfjxbzuDV3EwM8a3u58/a', '일반사용자27', '2018-10-15 08:49:22', '2018-10-15 08:49:22', '1'),
	(29, 'user28@gmail.com', '$2a$10$.GIH4i2xUhpNdAcN/Qxjmu4MoQn.5jVwuL/KSxXHGJ8A4u1dqeY3m', '일반사용자28', '2018-10-15 08:49:22', '2018-10-15 08:49:22', '1'),
	(30, 'user29@gmail.com', '$2a$10$VUka7SI8Qa5jxykVcElmjuJPG5c9L589I1NwA4bvP.DAH2pmf6.4G', '일반사용자29', '2018-10-15 08:49:22', '2018-10-15 08:49:22', '1'),
	(31, 'user30@gmail.com', '$2a$10$JaXwUlwzXWUn9VvyW3Ajbu2Tdt7cHPIBeD/nCUi5N4kA4XiKxSncW', '일반사용자30', '2018-10-15 08:49:23', '2018-10-15 08:49:23', '1'),
	(32, 'user31@gmail.com', '$2a$10$CIm8VYc.QOTlf/ENcci0PeysfJ33PkzcIgF3IX59j/Ydk0ZgCSpS2', '일반사용자31', '2018-10-15 08:49:23', '2018-10-15 08:49:23', '1'),
	(33, 'user32@gmail.com', '$2a$10$GqYKIjoqvTnR3xphmAhuXeQmah6o5JQtug5AuXYOF.eMD0/PCkC.6', '일반사용자32', '2018-10-15 08:49:23', '2018-10-15 08:49:23', '1'),
	(34, 'user33@gmail.com', '$2a$10$ela0naNyKbucsd0jhfeBN.vrSqaqU.bZ/ljVlB8Z2UAk8K/Q.f6YO', '일반사용자33', '2018-10-15 08:49:23', '2018-10-15 08:49:23', '1'),
	(35, 'user34@gmail.com', '$2a$10$n6zOGEzT8PLDQqsDqWFM3OGT8ZixrqF7vIHQNsSzxKrrnezsvd2Ry', '일반사용자34', '2018-10-15 08:49:23', '2018-10-15 08:49:23', '1'),
	(36, 'user35@gmail.com', '$2a$10$yzfSq1PpwcDpw0Xv8110sO6pBqJFebt9ctuKiTr4abgqyhIg4I.Qy', '일반사용자35', '2018-10-15 08:49:23', '2018-10-15 08:49:23', '1'),
	(37, 'user36@gmail.com', '$2a$10$PEO402IpQc8CfkAog69/iOQaZiMYDJybM7g9ubWKSyvYdZoLRKNoC', '일반사용자36', '2018-10-15 08:49:23', '2018-10-15 08:49:23', '1'),
	(38, 'user37@gmail.com', '$2a$10$6e0ebEjz1pIv7j62ZAw.DOg370fAytE.ohSfgp2DNXkDGvOUxPNVe', '일반사용자37', '2018-10-15 08:49:23', '2018-10-15 08:49:23', '1'),
	(39, 'user38@gmail.com', '$2a$10$wka13WSrhA2bJddB.IXHOOsEjqedUQQu6PGBCAJ9DAGas2RdFKL1m', '일반사용자38', '2018-10-15 08:49:23', '2018-10-15 08:49:23', '1'),
	(40, 'user39@gmail.com', '$2a$10$eUH2x/PHrREjdtXX8UWbSubqFGW0gIIXvJzN6w6w7OiRdI5x7gIU6', '일반사용자39', '2018-10-15 08:49:23', '2018-10-15 08:49:23', '1'),
	(41, 'user40@gmail.com', '$2a$10$eU6g9RQ6G4f64cHFDa/jw.vDgf2ZG7j2fWN/BjQSUz/xusGmalOPq', '일반사용자40', '2018-10-15 08:49:23', '2018-10-15 08:49:23', '1'),
	(42, 'user41@gmail.com', '$2a$10$29PpAAlNMZ.PwdwEBJ1RfOhgduTYWOgS9yImdCu1d6RFhZULJc7x2', '일반사용자41', '2018-10-15 08:49:23', '2018-10-15 08:49:23', '1'),
	(43, 'user42@gmail.com', '$2a$10$Il.8BLs9P4lVDhf9hhEohePJYgJEhoXOrRm7A/5vo99/kYa.xDski', '일반사용자42', '2018-10-15 08:49:23', '2018-10-15 08:49:23', '1'),
	(44, 'user43@gmail.com', '$2a$10$DTpEpev6KNrV4v4je/CmPOwWw.7OWQccqDLTrGsUucsjRZso4lW4u', '일반사용자43', '2018-10-15 08:49:24', '2018-10-15 08:49:24', '1'),
	(45, 'user44@gmail.com', '$2a$10$ONhd/mC7Z96LCiUV5wHp8OmsQefSAlzi0qxWU4dHnqkcs1x.yr/iu', '일반사용자44', '2018-10-15 08:49:24', '2018-10-15 08:49:24', '1'),
	(46, 'user45@gmail.com', '$2a$10$up/nXOYHa/OHtF2K64hfHOW.45HfSUZWXHDM9FlVjb0oiKJUxOzQG', '일반사용자45', '2018-10-15 08:49:24', '2018-10-15 08:49:24', '1'),
	(47, 'user46@gmail.com', '$2a$10$6AAyBcStTrt.je/BcOXGaOhDtCwOGRtgzDIRLImJI3MZaUbcAxwa2', '일반사용자46', '2018-10-15 08:49:24', '2018-10-15 08:49:24', '1'),
	(48, 'user47@gmail.com', '$2a$10$BIHEN90v1LzJtvQT2B/pHO2HAK6AGxVtbOT1QGkPf0jkF52GHNMra', '일반사용자47', '2018-10-15 08:49:24', '2018-10-15 08:49:24', '1'),
	(49, 'user48@gmail.com', '$2a$10$OW2p6JhlwpVMn5dCBUPO4Ol1WvWjq9hSYQ8nKoyb0gE/dyHhMAHPq', '일반사용자48', '2018-10-15 08:49:24', '2018-10-15 08:49:24', '1'),
	(50, 'user49@gmail.com', '$2a$10$sr6174A/QrJR/vvEzGeCCuQ/5Mzj0CgWBa/JC0gl1nl1JBtKJKpXC', '일반사용자49', '2018-10-15 08:49:24', '2018-10-15 08:49:24', '1'),
	(51, 'user50@gmail.com', '$2a$10$Yrcsf95fb4hCFz8E.ayyyuGF2a2GmPzWRhS96KK7uf4NBA3x4wHFG', '일반사용자50', '2018-10-15 08:49:24', '2018-10-15 08:49:24', '1'),
	(52, 'user51@gmail.com', '$2a$10$hdHiy9WeycSZo5T9qg0mve0JBkRoiJ9r/EMTwoCTsTBonH8BpD53K', '일반사용자51', '2018-10-15 08:49:24', '2018-10-15 08:49:24', '1'),
	(53, 'user52@gmail.com', '$2a$10$0fQk7Gm1gjB.PZ/QjN9ie.UTCh22rnsPr3s2KNWcuLxnBV7S4EhA.', '일반사용자52', '2018-10-15 08:49:24', '2018-10-15 08:49:24', '1'),
	(54, 'user53@gmail.com', '$2a$10$sqBlpDLGynPdQJwZSGTAauWfUlVMFtjLJKrJYmuw8USyq0BMgoX6G', '일반사용자53', '2018-10-15 08:49:24', '2018-10-15 08:49:24', '1'),
	(55, 'user54@gmail.com', '$2a$10$TbK4/2cavQzv07GoiCtn0udQ6zewPwk7BkZiDJzI1B5N/Z5tSqbGm', '일반사용자54', '2018-10-15 08:49:24', '2018-10-15 08:49:24', '1'),
	(56, 'user55@gmail.com', '$2a$10$HSRXHnU7FmC7IrIabhZeEu0y.xBwH9ybhVHw.Y0OWOoQCpa4f.ove', '일반사용자55', '2018-10-15 08:49:25', '2018-10-15 08:49:25', '1'),
	(57, 'user56@gmail.com', '$2a$10$6iODZsDPHN1lLwIGJwAa.eIHZOXSEFCcGNOAL04lIzr5wk3.IgaQm', '일반사용자56', '2018-10-15 08:49:25', '2018-10-15 08:49:25', '1'),
	(58, 'user57@gmail.com', '$2a$10$XYeqVD1I4hiBPc2yDo7Kiez0g26NF0BWHQteW7V13aibBXYygjA8W', '일반사용자57', '2018-10-15 08:49:25', '2018-10-15 08:49:25', '1'),
	(59, 'user58@gmail.com', '$2a$10$UvBXHK1sUgk.MiskMEdqau.i.IDBN.B9ndr35p1lQJUnTBFkF7qPm', '일반사용자58', '2018-10-15 08:49:25', '2018-10-15 08:49:25', '1'),
	(60, 'user59@gmail.com', '$2a$10$dVLqpRdTCugaqqUwFFAiEu1tviRTYO6Chf3k/bOMA0xGDhq9R0IT6', '일반사용자59', '2018-10-15 08:49:25', '2018-10-15 08:49:25', '1'),
	(61, 'user60@gmail.com', '$2a$10$Fv8Q9QGiPZvlaZT5hTt.VelVWgyRy8LgViZMmarVNzr7GnBnW/oWO', '일반사용자60', '2018-10-15 08:49:25', '2018-10-15 08:49:25', '1'),
	(62, 'user61@gmail.com', '$2a$10$qiBzrsjEL64sN61nMIgifewBLX2QBopuXxLqDF/9HPnnH54g7FBTK', '일반사용자61', '2018-10-15 08:49:25', '2018-10-15 08:49:25', '1'),
	(63, 'user62@gmail.com', '$2a$10$nzqYX4L4Z/mTbUV5hlz4L.QPaq8uEfjxniTYb4FElWGLi7yZn9Nty', '일반사용자62', '2018-10-15 08:49:25', '2018-10-15 08:49:25', '1'),
	(64, 'user63@gmail.com', '$2a$10$Sxw7t9Ln0T8Gmo8z7UMx4eaTieEvx4Tus7y.IhUWM3DDztzzfj5ga', '일반사용자63', '2018-10-15 08:49:25', '2018-10-15 08:49:25', '1'),
	(65, 'user64@gmail.com', '$2a$10$cIzVQQ.KB8hhxsQhz02sMuudVieH9opv6ZZEkOvt1iRtpnSnQSahS', '일반사용자64', '2018-10-15 08:49:25', '2018-10-15 08:49:25', '1'),
	(66, 'user65@gmail.com', '$2a$10$.8utFVu9L2v6Q.nz/O9yFu5qLnP2lqiLe4nqPjo9.ozHwUv8fQxge', '일반사용자65', '2018-10-15 08:49:25', '2018-10-15 08:49:25', '1'),
	(67, 'user66@gmail.com', '$2a$10$FT79Or83rEiq8/JOyP6q1eHb5VishbvhH/PFfOD1fVkn0iMIOSbW.', '일반사용자66', '2018-10-15 08:49:25', '2018-10-15 08:49:25', '1'),
	(68, 'user67@gmail.com', '$2a$10$VWstX58LNO7WzQ9EF3JKxutJoGsNasCsneUh32vCGhmkF/Ey.t0cO', '일반사용자67', '2018-10-15 08:49:25', '2018-10-15 08:49:25', '1'),
	(69, 'user68@gmail.com', '$2a$10$MTTnuiXK2S0gW1FF/O8eYuAnxU.1i4MQm7eTn2pt1Ofn9yfvnUyz6', '일반사용자68', '2018-10-15 08:49:26', '2018-10-15 08:49:26', '1'),
	(70, 'user69@gmail.com', '$2a$10$7F9x1tSZjnzRwqKx45rlle.4EJq1abxGDsS5FtCVvSdADmnbVl.0a', '일반사용자69', '2018-10-15 08:49:26', '2018-10-15 08:49:26', '1'),
	(71, 'user70@gmail.com', '$2a$10$4IQ/eJTv8GBpGmaYRhU6jeY.Ztyi8gueWPQD6BfmTLX6g7i5IWk3W', '일반사용자70', '2018-10-15 08:49:26', '2018-10-15 08:49:26', '1'),
	(72, 'user71@gmail.com', '$2a$10$OwdYC8UjShf8GOXy/LDoSuL07W200inT.BtjNQDEIhuXKLEgUvjm.', '일반사용자71', '2018-10-15 08:49:26', '2018-10-15 08:49:26', '1'),
	(73, 'user72@gmail.com', '$2a$10$uu3d/b73/yTRve6Irb/HW.ctAtiQCwYNGo2mw7ouJb09d3.rut3Ae', '일반사용자72', '2018-10-15 08:49:26', '2018-10-15 08:49:26', '1'),
	(74, 'user73@gmail.com', '$2a$10$sr5lSY.Z593GQhbISJAtTuEJP2uPuJXwHHj3sHfHKnZ6Zjj/0VhsO', '일반사용자73', '2018-10-15 08:49:26', '2018-10-15 08:49:26', '1'),
	(75, 'user74@gmail.com', '$2a$10$GYW8kUt8aKP5s9kz4DaWk.oKvtHW9dFQZ46OSEPt31XeUKNuq27Em', '일반사용자74', '2018-10-15 08:49:26', '2018-10-15 08:49:26', '1'),
	(76, 'user75@gmail.com', '$2a$10$prC.FydVHg29SeOVhV9TC.99vO0qobFd9iIzN51Mi.PWfpaQyOzBa', '일반사용자75', '2018-10-15 08:49:26', '2018-10-15 08:49:26', '1'),
	(77, 'user76@gmail.com', '$2a$10$6hZttxeNeyltKt2LwiQ2yOc6j7MxDPk59r3sfeu22uzypB7oElkby', '일반사용자76', '2018-10-15 08:49:26', '2018-10-15 08:49:26', '1'),
	(78, 'user77@gmail.com', '$2a$10$uY2ObBHBuUaUEFMoZPYlS.GsyS3VlIWm0DQ4V7VwkeOHMMvjxRDui', '일반사용자77', '2018-10-15 08:49:26', '2018-10-15 08:49:26', '1'),
	(79, 'user78@gmail.com', '$2a$10$IYFcGKG6Fa5oaUdMW1UP5ut/0WcwWJP7skvx1BceEd3Lm4m8pDFYG', '일반사용자78', '2018-10-15 08:49:26', '2018-10-15 08:49:26', '1'),
	(80, 'user79@gmail.com', '$2a$10$cnAxLsqAqtmD6ynGGbALbOyP94vqCNnA9ZfLItIeqW6R9FOYN.KAu', '일반사용자79', '2018-10-15 08:49:26', '2018-10-15 08:49:26', '1'),
	(81, 'manager80@gmail.com', '$2a$10$cK5g47WS4s2HALjfixWavu.ZNve2dvAj7X5.XDKtihsA8rst/7y96', '운영자80', '2018-10-15 08:49:27', '2018-10-15 08:49:27', '1'),
	(82, 'manager81@gmail.com', '$2a$10$Pjt84Z2SkzHBnW4YS.Neme.YMPGx.nHoRG4xJxKzIbC9u91D7tvfu', '운영자81', '2018-10-15 08:49:27', '2018-10-15 08:49:27', '1'),
	(83, 'manager82@gmail.com', '$2a$10$IeI0fTowkGBu681p9DnMcePjcoorKs7FJ6KpvfjJgFN9ltQLEPMaO', '운영자82', '2018-10-15 08:49:27', '2018-10-15 08:49:27', '1'),
	(84, 'manager83@gmail.com', '$2a$10$E2G8bPqH3qrZ5j.MO6Yl..zZXy//rw0tuK2/jUfVDYMW41HOAQT0G', '운영자83', '2018-10-15 08:49:27', '2018-10-15 08:49:27', '1'),
	(85, 'manager84@gmail.com', '$2a$10$st.cQ/7OIIHjF7Tv98yqI.Dd4hyJDhUxZBNO4ZuGdnfueD3SSH/wK', '운영자84', '2018-10-15 08:49:27', '2018-10-15 08:49:27', '1'),
	(86, 'manager85@gmail.com', '$2a$10$Hi.GefoAR2uNJ8sKQ9usOu2gJXFFxOSHRvL103v56HBZLl.udPb8i', '운영자85', '2018-10-15 08:49:27', '2018-10-15 08:49:27', '1'),
	(87, 'manager86@gmail.com', '$2a$10$wPYLC05wDuphrryxTcW8hO//prA7BkhPTXCq9o3b1zGhFMcHSZOWa', '운영자86', '2018-10-15 08:49:27', '2018-10-15 08:49:27', '1'),
	(88, 'manager87@gmail.com', '$2a$10$0/GeqbLQ62bstKggUYRTv.k.8JFlY9FpgeyGyBJrwrQWNrxEUz2v.', '운영자87', '2018-10-15 08:49:27', '2018-10-15 08:49:27', '1'),
	(89, 'manager88@gmail.com', '$2a$10$6qeE6EwCIka9VvKtv7B/lubWkJ2D74W7IIWf0aFp5/aZLKJvYth8.', '운영자88', '2018-10-15 08:49:27', '2018-10-15 08:49:27', '1'),
	(90, 'manager89@gmail.com', '$2a$10$6RXRzu3olC2zvNKRTLsxHeXOVtH8J50i54Ndv21af7mJ.KlJpQCAm', '운영자89', '2018-10-15 08:49:27', '2018-10-15 08:49:27', '1'),
	(91, 'admin90@gmail.com', '$2a$10$1w5cySJFZjHquCYSK28wg.uscYAXt.tGkieW3xZnYh/ycIwL7.Tcm', '관리자90', '2018-10-15 08:49:27', '2018-10-15 08:49:27', '1'),
	(92, 'admin91@gmail.com', '$2a$10$7VDs2W7YFPVUg/i2thRuFekrJGuUhY.2EQ92j2oIT/4GjF8nax7Sa', '관리자91', '2018-10-15 08:49:27', '2018-10-15 08:49:27', '1'),
	(93, 'admin92@gmail.com', '$2a$10$yaUvzTDamiMcLLD8FRmXUe8UgXSiI9J7Vm92Le5SZFhdfoi6lN6am', '관리자92', '2018-10-15 08:49:28', '2018-10-15 08:49:28', '1'),
	(94, 'admin93@gmail.com', '$2a$10$/bQ2LsBFiSolFcdBrj.SKOq5SqcNBMmdzJgt.zmVrIYUpp6s61lba', '관리자93', '2018-10-15 08:49:28', '2018-10-15 08:49:28', '1'),
	(95, 'admin94@gmail.com', '$2a$10$0nJ6sHqK1lu2ApEJl3JBc.nI4Z3vDs6CRqpx29Jv7ptCXvaHYaNZS', '관리자94', '2018-10-15 08:49:28', '2018-10-15 08:49:28', '1'),
	(96, 'admin95@gmail.com', '$2a$10$Nw7fSk4pGanlIJCJuQPUH.rUxrHZ3tSVPNE.0XX8G9MnLyQT50EPq', '관리자95', '2018-10-15 08:49:28', '2018-10-15 08:49:28', '1'),
	(97, 'admin96@gmail.com', '$2a$10$S1GZcqmUdZ2Fv0BBileh4e3o6H8KYQ8QkBRcJMBTORe2iAaihOfZq', '관리자96', '2018-10-15 08:49:28', '2018-10-15 08:49:28', '1'),
	(98, 'admin97@gmail.com', '$2a$10$tE0r5GJOcjPGLqEIHGSvhex8F39y4zZI.cQNkw0YVQa3IciAIEd1i', '관리자97', '2018-10-15 08:49:28', '2018-10-15 08:49:28', '1'),
	(99, 'admin98@gmail.com', '$2a$10$znI4YHHhf8GOmllCPNKx8.rP0qMIsTO1K9oGSCokmHh9zTeqOpHse', '관리자98', '2018-10-15 08:49:28', '2018-10-15 08:49:28', '1'),
	(100, 'admin99@gmail.com', '$2a$10$UlMbGuMxOKUBatv1CmaF.eqi2VWEqelNlnHPdsECU3huF.SLERVmS', '관리자100', '2018-10-15 08:49:28', '2018-10-16 10:29:56', '1');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- 테이블 ohmovie.member_auth 구조 내보내기
CREATE TABLE IF NOT EXISTS `member_auth` (
  `u_idx` int(11) NOT NULL,
  `auth` varchar(50) NOT NULL,
  KEY `fk_member_auth` (`u_idx`),
  CONSTRAINT `fk_member_auth` FOREIGN KEY (`u_idx`) REFERENCES `member` (`u_idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ohmovie.member_auth:~99 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member_auth` DISABLE KEYS */;
INSERT INTO `member_auth` (`u_idx`, `auth`) VALUES
	(1, 'ROLE_USER'),
	(2, 'ROLE_USER'),
	(3, 'ROLE_USER'),
	(4, 'ROLE_USER'),
	(5, 'ROLE_USER'),
	(6, 'ROLE_USER'),
	(7, 'ROLE_USER'),
	(8, 'ROLE_USER'),
	(9, 'ROLE_USER'),
	(10, 'ROLE_USER'),
	(11, 'ROLE_USER'),
	(12, 'ROLE_USER'),
	(13, 'ROLE_USER'),
	(14, 'ROLE_USER'),
	(15, 'ROLE_USER'),
	(16, 'ROLE_USER'),
	(17, 'ROLE_USER'),
	(18, 'ROLE_USER'),
	(19, 'ROLE_USER'),
	(20, 'ROLE_USER'),
	(21, 'ROLE_USER'),
	(22, 'ROLE_USER'),
	(23, 'ROLE_USER'),
	(24, 'ROLE_USER'),
	(25, 'ROLE_USER'),
	(26, 'ROLE_USER'),
	(27, 'ROLE_USER'),
	(28, 'ROLE_USER'),
	(29, 'ROLE_USER'),
	(30, 'ROLE_USER'),
	(31, 'ROLE_USER'),
	(32, 'ROLE_USER'),
	(33, 'ROLE_USER'),
	(34, 'ROLE_USER'),
	(35, 'ROLE_USER'),
	(36, 'ROLE_USER'),
	(37, 'ROLE_USER'),
	(38, 'ROLE_USER'),
	(39, 'ROLE_USER'),
	(40, 'ROLE_USER'),
	(41, 'ROLE_USER'),
	(42, 'ROLE_USER'),
	(43, 'ROLE_USER'),
	(44, 'ROLE_USER'),
	(45, 'ROLE_USER'),
	(46, 'ROLE_USER'),
	(47, 'ROLE_USER'),
	(48, 'ROLE_USER'),
	(49, 'ROLE_USER'),
	(50, 'ROLE_USER'),
	(51, 'ROLE_USER'),
	(52, 'ROLE_USER'),
	(53, 'ROLE_USER'),
	(54, 'ROLE_USER'),
	(55, 'ROLE_USER'),
	(56, 'ROLE_USER'),
	(57, 'ROLE_USER'),
	(58, 'ROLE_USER'),
	(59, 'ROLE_USER'),
	(60, 'ROLE_USER'),
	(61, 'ROLE_USER'),
	(62, 'ROLE_USER'),
	(63, 'ROLE_USER'),
	(64, 'ROLE_USER'),
	(65, 'ROLE_USER'),
	(66, 'ROLE_USER'),
	(67, 'ROLE_USER'),
	(68, 'ROLE_USER'),
	(69, 'ROLE_USER'),
	(70, 'ROLE_USER'),
	(71, 'ROLE_USER'),
	(72, 'ROLE_USER'),
	(73, 'ROLE_USER'),
	(74, 'ROLE_USER'),
	(75, 'ROLE_USER'),
	(76, 'ROLE_USER'),
	(77, 'ROLE_USER'),
	(78, 'ROLE_USER'),
	(79, 'ROLE_USER'),
	(80, 'ROLE_MEMBER'),
	(81, 'ROLE_MEMBER'),
	(82, 'ROLE_MEMBER'),
	(83, 'ROLE_MEMBER'),
	(84, 'ROLE_MEMBER'),
	(85, 'ROLE_MEMBER'),
	(86, 'ROLE_MEMBER'),
	(87, 'ROLE_MEMBER'),
	(88, 'ROLE_MEMBER'),
	(89, 'ROLE_MEMBER'),
	(90, 'ROLE_ADMIN'),
	(91, 'ROLE_ADMIN'),
	(92, 'ROLE_ADMIN'),
	(93, 'ROLE_ADMIN'),
	(94, 'ROLE_ADMIN'),
	(95, 'ROLE_ADMIN'),
	(96, 'ROLE_ADMIN'),
	(97, 'ROLE_ADMIN'),
	(98, 'ROLE_ADMIN'),
	(99, 'ROLE_ADMIN'),
	(100, 'ROLE_ADMIN');
/*!40000 ALTER TABLE `member_auth` ENABLE KEYS */;

-- 테이블 ohmovie.review 구조 내보내기
CREATE TABLE IF NOT EXISTS `review` (
  `u_idx` int(11) DEFAULT NULL,
  `m_idx` int(11) DEFAULT NULL,
  `r_content` text,
  `watchdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `liked` tinyint(1) NOT NULL DEFAULT '0',
  `writedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 ohmovie.review:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
