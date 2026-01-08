-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2026 年 1 月 08 日 08:08
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db_assignment`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `product` varchar(64) NOT NULL,
  `datetime` datetime NOT NULL,
  `email` varchar(128) NOT NULL,
  `grade` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `product`, `datetime`, `email`, `grade`) VALUES
(1, '細川浩直', 'パーカー', '2026-01-04 11:53:40', 'aaa@example.com', '卒業生'),
(2, '山田太郎', 'Tシャツ', '2026-01-04 11:55:37', 'bbb@example.com', '3年生'),
(3, '山田太郎', 'キャップ', '2026-01-04 11:58:20', 'ccc@example.com', '保護者'),
(4, '山田次郎', 'パーカー', '2026-01-04 12:27:36', 'jiro@example.com', '保護者'),
(5, '田中次郎', 'ステッカー', '2026-01-08 15:30:45', 'ddd@example.com', '卒業生'),
(6, 'HIRONAOHOSOKAWA', 'Tシャツ', '2026-01-08 15:39:33', 'aaa@example.com', '2年生');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
