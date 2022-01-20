-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2022 年 1 月 20 日 22:34
-- サーバのバージョン： 5.7.34
-- PHP のバージョン: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_debt`
--

CREATE TABLE `gs_debt` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `date` date NOT NULL,
  `party` varchar(128) NOT NULL,
  `amount` int(20) NOT NULL,
  `memo` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `gs_debt`
--

INSERT INTO `gs_debt` (`id`, `name`, `date`, `party`, `amount`, `memo`) VALUES
(1, 'たろう', '2022-01-13', 'じろう送別会', 2000, '焼き鳥が美味しかった'),
(2, '菅田将暉', '2022-01-10', '飲み会', 15000, ''),
(3, 'たろう', '2022-01-03', '飲み会', 3500, ''),
(4, 'たろう', '2022-01-04', 'ランチ', 1500, 'パスタ');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_debt`
--
ALTER TABLE `gs_debt`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_debt`
--
ALTER TABLE `gs_debt`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
