-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 24, 2022 lúc 10:45 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `eshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `role`) VALUES
(14, 'Admin', 'Admin', '202cb962ac59075b964b07152d234b70', '1'),
(15, 'User', 'Admin2', '202cb962ac59075b964b07152d234b70', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `img` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `preview_text` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cat`
--

CREATE TABLE `cat` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cat`
--

INSERT INTO `cat` (`id`, `name`, `id_parent`) VALUES
(1, 'Bút', 0),
(2, 'Thước', 0),
(3, 'Vở', 0),
(28, 'Bút Bi', 1),
(29, 'Bút Chì', 1),
(30, 'Bút Máy', 1),
(31, 'Bút Xóa', 1),
(32, 'Bút Dạ Màu', 1),
(33, 'Bút Lông', 1),
(34, 'Thước Thẳng', 2),
(35, 'Thước Đo Độ', 2),
(36, 'Thước Eke', 2),
(37, 'Thước Parapol', 2),
(38, 'Vở 48 Trang', 3),
(39, 'Vở 96 Trang', 3),
(40, 'Vở 200 Trang', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `id_blog` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `name`, `email`, `comment`, `id_blog`, `date`) VALUES
(17, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', 'ok', 8, '2021-08-24 04:19:35'),
(18, 'Ty anh', 'anhthu@gmail.com', 'uk', 8, '2021-08-24 04:27:51'),
(19, 'Pham Hoang Vu 123213', 'anhvu991qn@gmail.com', 'as', 8, '2021-08-24 04:29:02'),
(20, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', 'Dc', 7, '2021-08-24 04:31:34'),
(21, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', 'd', 7, '2021-08-24 04:34:43'),
(22, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', 'dc', 7, '2021-08-24 04:36:16'),
(23, 'Pham Ngoc Nhan', 'admin@gmail.com', 'Bài Viết Khá Thú Vị và hấp dẫn ạ', 6, '2021-08-24 04:38:06'),
(24, 'Trâm Anh', 'thylovedung@gmail.com', 'Bài viết phù hợp vs tôi ạ\n', 7, '2021-08-24 06:45:33'),
(25, 'Ty anh ', 'anhvuqn@gmail.com', 'Dc', 7, '2021-08-27 13:52:31'),
(26, 'Pham Hoang Vu', 'anhvu991qn@gmail.com', 'Nice News ! <3', 13, '2021-08-30 02:06:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `content`) VALUES
(41, 'Hoàng Anh', 'hoanganh@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`) VALUES
(3, 'Hoàng Anh', 'hoanganh@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img_products`
--

CREATE TABLE `img_products` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `img_products`
--

INSERT INTO `img_products` (`id`, `id_sp`, `img`) VALUES
(241, 73, 'hinhanh-1630395735ptt2.jpg'),
(242, 73, 'hinhanh-1630395735ptt3.jpg'),
(243, 73, 'hinhanh-1630395735ptt4.jpg'),
(246, 76, 'hinhanh-1640711002but-bi-tl-034-den-do-xanh-hop-20-cay_200x200.jpg'),
(247, 77, 'hinhanh-1640711048but-soc-dai-vang-thien-xanh-hop-20-cay_200x200.jpg'),
(248, 78, 'hinhanh-1640711090but-bi-tl-097-den-do-xanh-hop-20-cay_200x200.jpg'),
(249, 79, 'hinhanh-1640711141but-bi-fo-03-xanh-den-do_200x200.jpg'),
(250, 80, 'hinhanh-1640713825thuoc-thang-15cm-win_200x200.jpg'),
(251, 81, 'hinhanh-1640713864thuoc-parapol-1win_200x200.jpg'),
(252, 82, 'hinhanh-1640713902thuoc-mica-tl-30-cm_200x200.jpg'),
(253, 83, 'hinhanh-1640713946thuoc-kim-nguyen-50cm_200x200.jpg'),
(254, 84, 'hinhanh-1640713985thuoc-kn-30cm_200x200.jpg'),
(255, 85, 'hinhanh-1640714078but-bi-tl-089-xanh-do-den_200x200.jpg'),
(256, 86, 'hinhanh-1640714117but-bi-thien-long-tl-079-0-5mm-xanh-do-den_200x200.png'),
(257, 87, 'hinhanh-1640714190but-long-dau-2-dau-nho-zebra-mo-120-hop-10-cay-xanh-do-den_200x200.jpg'),
(258, 88, 'hinhanh-1640714232hop_200x200.jpg'),
(259, 89, 'hinhanh-1640714278but-long-dau-cd-fo-pm01-do-xanh-den_200x200.jpg'),
(260, 90, 'hinhanh-1640714322but-da-quang-toyo-sp-28-camhong-xanh-duong-vang-xanh-la_200x200.jpg'),
(261, 91, 'hinhanh-1640714376but-da-quang-fo-hl01-biencamhonglavang_200x200.jpg'),
(262, 92, 'hinhanh-1640714420but-da-quang-tl-hl-012-cam-hong-xanh-bien_200x200.jpg'),
(263, 93, 'hinhanh-1640714469but-long-bang-fo-wb015-xanh-do-den_200x200.jpg'),
(264, 94, 'hinhanh-1640714510but-long-bang-wb-03-do-xanh-den-hop-10_200x200.jpg'),
(265, 95, 'hinhanh-1640714554but-long-dau-fo-pm011_200x200.jpg'),
(266, 96, 'hinhanh-1640714620bang-xoa-keo-fo-ct02_200x200.png'),
(267, 97, 'hinhanh-1640714665xoa-nuoc-8ml-deli-d-h10100_200x200.png'),
(268, 98, 'hinhanh-1640714701but-xoa-nuoc-deli-39299_200x200.jpg'),
(269, 99, 'hinhanh-1640714747but-xoa-10ml-fo-cp01_200x200.jpg'),
(270, 100, 'hinhanh-1640714796t960_200x200.jpg'),
(271, 101, 'hinhanh-1640714830t960_200x200 (1).jpg'),
(272, 102, 'hinhanh-1640714903t960_200x200 (2).jpg'),
(273, 103, 'hinhanh-1640714935t960_200x200 (3).jpg'),
(274, 104, 'hinhanh-1640715010tap-96tr-tuoi-than-tien-tien-phat_200x200.jpg'),
(275, 105, 'hinhanh-1640715050tap-vinh-tien-conan-t950-9_200x200.jpg'),
(276, 106, 'hinhanh-1640715077tap-lang-huong-96-trang_200x200.jpg'),
(277, 107, 'hinhanh-1640715112tap-96-trang-lang-huong-tp_200x200.png'),
(278, 108, 'hinhanh-1640715156tap-vinh-tien-furny-kids-t122-48-trang_200x200.jpg'),
(279, 109, 'hinhanh-1640715198tap-50tr_200x200.jpg'),
(280, 110, 'hinhanh-1640715250tap-200-trang-tuoi-than-tien-tp_200x200.jpg'),
(281, 111, 'hinhanh-1640715280'),
(282, 112, 'hinhanh-1640715320tap-200-trang-cham-bi-dl62-a036-v1_200x200.jpg'),
(283, 111, '1640715628tap-lang-huong-200-trang_200x200.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id_order` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id_order`, `id_customer`, `phone`, `address`, `created_at`, `status`) VALUES
(71, 3, '', '', '2021-12-28 19:07:17', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `id_sp`, `qty`, `price`) VALUES
(7, 20, 1, 100),
(7, 21, 1, 150),
(8, 20, 1, 100),
(8, 21, 1, 150),
(9, 21, 1, 150),
(9, 20, 1, 100),
(14, 20, 1, 100),
(14, 21, 1, 150),
(15, 21, 1, 150),
(15, 20, 1, 100),
(16, 20, 1, 100),
(16, 21, 1, 150),
(17, 20, 1, 100),
(18, 21, 1, 150),
(18, 20, 1, 100),
(19, 21, 1, 150),
(19, 20, 1, 100),
(20, 21, 1, 150),
(20, 20, 1, 100),
(21, 21, 1, 150),
(22, 21, 1, 150),
(22, 20, 1, 100),
(23, 21, 1, 150),
(23, 20, 1, 100),
(24, 21, 1, 150),
(24, 20, 1, 100),
(25, 21, 1, 150),
(25, 20, 1, 100),
(33, 21, 1, 150),
(34, 21, 1, 150),
(35, 21, 1, 150),
(35, 20, 1, 100),
(36, 21, 1, 150),
(36, 20, 1, 100),
(44, 21, 1, 150),
(44, 20, 1, 100),
(45, 21, 1, 150),
(45, 20, 1, 100),
(46, 21, 1, 150),
(46, 20, 1, 100),
(47, 21, 1, 150),
(47, 20, 1, 100),
(48, 21, 1, 150),
(48, 20, 1, 100),
(49, 21, 1, 150),
(50, 21, 1, 150),
(51, 20, 1, 100),
(52, 20, 1, 100),
(53, 21, 1, 150),
(54, 20, 1, 100),
(55, 20, 1, 100),
(55, 21, 1, 150),
(56, 20, 1, 100),
(57, 20, 1, 100),
(57, 21, 1, 150),
(58, 21, 1, 150),
(58, 20, 1, 100),
(59, 21, 1, 150),
(60, 21, 1, 150),
(61, 20, 1, 100),
(61, 21, 1, 150),
(62, 21, 1, 150),
(62, 20, 1, 100),
(63, 21, 1, 150),
(63, 20, 1, 100),
(64, 21, 1, 150),
(64, 20, 1, 100),
(65, 20, 6, 100),
(66, 21, 1, 150),
(66, 20, 1, 100),
(67, 30, 1, 100),
(67, 29, 4, 100),
(67, 31, 3, 150),
(67, 32, 2, 150),
(69, 71, 1, 100),
(69, 70, 1, 100),
(70, 72, 1, 100),
(70, 31, 4, 150),
(71, 112, 4, 11600),
(71, 111, 5, 9000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `name_product` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `sp_hot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `id_cat`, `name_product`, `image`, `price`, `qty`, `preview`, `detail`, `sp_hot`) VALUES
(76, 28, 'Bút Bi TL-034 Đỏ, Đen, Xanh', 'hinhanh-1640711002but-bi-tl-034-den-do-xanh-hop-20-cay_200x200.jpg', 2300, 100, '', '', 1),
(77, 28, 'Bút Sọc Dài Vâng Thiên - Xanh', 'hinhanh-1640711048but-soc-dai-vang-thien-xanh-hop-20-cay_200x200.jpg', 2000, 100, '', '', 1),
(78, 28, 'Bút Bi TL-097 Đỏ, Đen, Xanh', 'hinhanh-1640711090but-bi-tl-097-den-do-xanh-hop-20-cay_200x200.jpg', 2400, 100, '', '', 1),
(79, 28, 'Bút Bi FO-03 Đỏ Đen Xanh', 'hinhanh-1640711141but-bi-fo-03-xanh-den-do_200x200.jpg', 2800, 100, '', '', 1),
(80, 34, 'Thước Thẳng 15cm Win', 'hinhanh-1640713825thuoc-thang-15cm-win_200x200.jpg', 2000, 100, '', '', 1),
(81, 37, 'Thước Parapol Win', 'hinhanh-1640713864thuoc-parapol-1win_200x200.jpg', 2500, 100, '', '', 1),
(82, 34, 'Thước Mica TL 30cm', 'hinhanh-1640713902thuoc-mica-tl-30-cm_200x200.jpg', 5000, 100, '', '', 1),
(83, 34, 'Thước Kim Nguyên 50cm', 'hinhanh-1640713946thuoc-kim-nguyen-50cm_200x200.jpg', 11000, 100, '', '', 1),
(84, 34, 'Thước Kim Nguyên 30cm', 'hinhanh-1640713985thuoc-kn-30cm_200x200.jpg', 5000, 100, '', '', 1),
(85, 28, 'Bút Bi TL-089 Xanh Đỏ Đen', 'hinhanh-1640714078but-bi-tl-089-xanh-do-den_200x200.jpg', 2800, 100, '', '', 1),
(86, 28, 'Bút Bi TL-079 Đen Đỏ Xanh', 'hinhanh-1640714117but-bi-thien-long-tl-079-0-5mm-xanh-do-den_200x200.png', 3000, 100, '', '', 1),
(87, 33, 'Bút Lông Dầu Zebra Mo.120', 'hinhanh-1640714190but-long-dau-2-dau-nho-zebra-mo-120-hop-10-cay-xanh-do-den_200x200.jpg', 3000, 100, '', '', 1),
(88, 33, 'Bút Lông Dầu Pilot Xanh', 'hinhanh-1640714232hop_200x200.jpg', 3500, 100, '', '', 1),
(89, 33, 'Bút Lông Dầu CD FO-PM01 Đen Đỏ Xanh', 'hinhanh-1640714278but-long-dau-cd-fo-pm01-do-xanh-den_200x200.jpg', 5200, 100, '', '', 1),
(90, 32, 'Bút Dạ Quang Toyo SP 28', 'hinhanh-1640714322but-da-quang-toyo-sp-28-camhong-xanh-duong-vang-xanh-la_200x200.jpg', 5500, 100, '', '', 1),
(91, 32, 'Bút Dạ Quang FO - HL01', 'hinhanh-1640714376but-da-quang-fo-hl01-biencamhonglavang_200x200.jpg', 6000, 100, '', '', 1),
(92, 32, 'Bút Dạ Quang TL HL-012', 'hinhanh-1640714420but-da-quang-tl-hl-012-cam-hong-xanh-bien_200x200.jpg', 6000, 100, '', '', 1),
(93, 33, 'Bút Lông Bảng FO-WB015 Đỏ Xanh Đen', 'hinhanh-1640714469but-long-bang-fo-wb015-xanh-do-den_200x200.jpg', 6500, 100, '', '', 1),
(94, 33, 'Bút Lông Bảng WB-03 Đen Đỏ Xanh', 'hinhanh-1640714510but-long-bang-wb-03-do-xanh-den-hop-10_200x200.jpg', 6800, 100, '', '', 1),
(95, 33, 'Bút Lông Dầu FO-PM011', 'hinhanh-1640714554but-long-dau-fo-pm011_200x200.jpg', 7300, 100, '', '', 1),
(96, 31, 'Băng Xóa Kéo FO-CT02', 'hinhanh-1640714620bang-xoa-keo-fo-ct02_200x200.png', 9100, 100, '', '', 1),
(97, 31, 'Xóa Nước 8ml-Deli-D.H10100', 'hinhanh-1640714665xoa-nuoc-8ml-deli-d-h10100_200x200.png', 9500, 100, '', '', 1),
(98, 31, 'Bút Xóa Nước Deli 39299', 'hinhanh-1640714701but-xoa-nuoc-deli-39299_200x200.jpg', 10300, 100, '', '', 1),
(99, 31, 'Bút Xóa 10ml FO-CP01', 'hinhanh-1640714747but-xoa-10ml-fo-cp01_200x200.jpg', 12800, 100, '', '', 1),
(100, 29, 'Bút Chì Gỗ TL GP021', 'hinhanh-1640714796t960_200x200.jpg', 2000, 100, '', '', 1),
(101, 29, 'Bút Chì Gỗ TL GP012', 'hinhanh-1640714830t960_200x200 (1).jpg', 2400, 100, '', '', 1),
(102, 29, 'Bút Chì Gỗ GP016', 'hinhanh-1640714903t960_200x200 (2).jpg', 2400, 100, '', '', 1),
(103, 29, 'Bút Chì Gỗ TL GP020', 'hinhanh-1640714935t960_200x200 (3).jpg', 2400, 100, '', '', 1),
(104, 39, 'Vở 96 Trang Tuổi Thần Tiên Tiến Phát', 'hinhanh-1640715010tap-96tr-tuoi-than-tien-tien-phat_200x200.jpg', 3700, 100, '', '', 1),
(105, 39, 'Vở Vĩnh Tiến Conan', 'hinhanh-1640715050tap-vinh-tien-conan-t950-9_200x200.jpg', 4500, 100, '', '', 1),
(106, 39, 'Vở Làng Hương 96 Trang', 'hinhanh-1640715077tap-lang-huong-96-trang_200x200.jpg', 4500, 100, '', '', 1),
(107, 39, 'Vở Làng Hương 96 Trang TP', 'hinhanh-1640715112tap-96-trang-lang-huong-tp_200x200.png', 4500, 100, '', '', 1),
(108, 38, 'Vở Vĩnh Tiến Furny Kids 48 Trang', 'hinhanh-1640715156tap-vinh-tien-furny-kids-t122-48-trang_200x200.jpg', 4600, 100, '', '', 1),
(109, 38, 'Vở Oggy 48 Trang', 'hinhanh-1640715198tap-50tr_200x200.jpg', 5500, 100, '', '', 1),
(110, 40, 'Vở Tuổi Thần Tiên TP 200 Trang', 'hinhanh-1640715250tap-200-trang-tuoi-than-tien-tp_200x200.jpg', 7400, 100, '', '', 1),
(111, 40, 'Vở Làng Hương 200 Trang', 'hinhanh-1640715628tap-lang-huong-200-trang_200x200.jpg', 9000, 100, '', '', 1),
(112, 40, 'Vở 200 Trang Chấm Bi ', 'hinhanh-1640715320tap-200-trang-cham-bi-dl62-a036-v1_200x200.jpg', 11600, 100, '', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_cmt`
--

CREATE TABLE `product_cmt` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `content` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_cmt`
--

INSERT INTO `product_cmt` (`id`, `id_customer`, `id_sp`, `content`, `date`) VALUES
(1, 1, 20, 'Hàng Đẹp Sốp ơi', '2021-08-25 13:03:13'),
(2, 1, 21, 'Dep', '2021-08-25 13:10:01'),
(3, 1, 21, 'dc', '2021-08-25 13:11:11'),
(4, 1, 21, 'hang chat luong', '2021-08-25 13:11:21'),
(5, 1, 20, 'Oke', '2021-08-25 13:15:12'),
(9, 1, 26, 'Nice Shoes ', '2021-08-30 02:07:38'),
(10, 1, 32, 'Víp Số Pro', '2021-08-30 02:08:06'),
(11, 1, 69, 'Hàng Đẹp', '2021-09-02 02:28:09'),
(12, 1, 69, 'Hàng Đẹp', '2021-09-02 02:28:09'),
(13, 1, 69, 'oke', '2021-09-02 02:28:18'),
(14, 1, 70, 'đc', '2021-09-02 02:28:29');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `img_products`
--
ALTER TABLE `img_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_cmt`
--
ALTER TABLE `product_cmt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `img_products`
--
ALTER TABLE `img_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT cho bảng `product_cmt`
--
ALTER TABLE `product_cmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
