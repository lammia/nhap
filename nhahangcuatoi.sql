-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2017 at 09:31 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhahangcuatoi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ban`
--

CREATE TABLE `ban` (
  `id_ban` int(2) NOT NULL,
  `tenban` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(2) NOT NULL,
  `trangthai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ban`
--

INSERT INTO `ban` (`id_ban`, `tenban`, `soluong`, `trangthai`) VALUES
(1, 'Bàn 1', 10, 'Đã Đặt'),
(2, 'Bàn 2', 9, 'Trống'),
(3, 'Bàn 3', 5, 'Trống'),
(4, 'Bàn 4', 15, 'Trống'),
(5, 'Bàn 5', 12, 'Trống'),
(6, 'Bàn 6', 20, 'Trống'),
(7, 'Bàn 7', 12, 'Trống'),
(8, 'Bàn 8', 11, 'Trống'),
(9, 'Bàn 9', 10, 'Trống'),
(10, 'Bàn 10', 15, 'Trống'),
(11, 'Bàn 11', 12, 'Trống'),
(13, 'Bàn 12', 10, 'Trống'),
(14, 'Bàn 13', 20, 'Trống');

-- --------------------------------------------------------

--
-- Table structure for table `datban`
--

CREATE TABLE `datban` (
  `ban` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `thoigian` time DEFAULT NULL,
  `ngaythang` date NOT NULL,
  `sdt` int(12) NOT NULL,
  `yeucau` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `datban`
--

INSERT INTO `datban` (`ban`, `username`, `hoten`, `thoigian`, `ngaythang`, `sdt`, `yeucau`) VALUES
('Bàn 1', 'user01', 'Duy Đạt', '00:12:00', '2017-05-25', 1215924015, 'Thêm người bầu bàn');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh`
--

CREATE TABLE `hinhanh` (
  `hinhanh` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hinhanh`
--

INSERT INTO `hinhanh` (`hinhanh`) VALUES
('14.jpg'),
('14.jpg'),
('18.jpg'),
('18.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `id_hoadon` int(50) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngay` date NOT NULL,
  `sdt` int(20) NOT NULL,
  `yeucau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tongtientra` int(50) NOT NULL,
  `thoigian` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`id_hoadon`, `username`, `hoten`, `diachi`, `ngay`, `sdt`, `yeucau`, `tongtientra`, `thoigian`) VALUES
(2, '4', 'Hiển', '192 Nguyễn Lương Bằng', '2017-05-20', 1699999364, 'Thêm Nước Ngọt', 70000, '22:58:36'),
(4, '4', 'Duy Đạt đẹp', '116 Nguyễn Văn Thoại', '2017-05-21', 123, 'Thêm Canh', 290000, '00:38:53'),
(5, '4', 'toàn chó', '192', '2017-05-21', 123, 'Toàn chó', 100000, '10:40:22'),
(6, '4', 'Duy Đạt đẹp trai', '116 Nguyễn Văn Thoại', '2017-05-21', 12, 'Thêm mắm', 120000, '13:58:52'),
(7, 'user01', 'Hiển', '192 Nguyễn Lương Bằng', '2017-05-21', 1699999364, 'Thêm Cơm', 90000, '14:05:17'),
(8, 'user02', 'hien', 'dn', '2017-05-22', 1234567890, 'kun', 407000, '09:27:05'),
(9, 'user02', 'hiển', 'dsfd', '2017-05-22', 12132, '34', 54000, '09:37:37');

-- --------------------------------------------------------

--
-- Table structure for table `hoadontheoid`
--

CREATE TABLE `hoadontheoid` (
  `id` int(10) NOT NULL,
  `id_hoadon` int(50) NOT NULL,
  `tenmonan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(10) NOT NULL,
  `gia` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadontheoid`
--

INSERT INTO `hoadontheoid` (`id`, `id_hoadon`, `tenmonan`, `soluong`, `gia`) VALUES
(6, 2, 'Cháo thịt bằm', 1, 70000),
(7, 4, 'Canh bắp', 2, 30000),
(8, 4, 'Canh cải thịt bò', 1, 100000),
(9, 4, 'Cá chép um chua', 1, 70000),
(10, 4, 'Kem Socola', 1, 30000),
(11, 4, 'Rau câu Dâu Tây', 1, 30000),
(12, 5, 'Chè Thái', 1, 20000),
(13, 5, 'Canh rau củ', 1, 80000),
(14, 6, 'Canh nấm', 1, 40000),
(15, 6, 'Kem Kiwi', 1, 40000),
(16, 6, 'Nộm cà chua', 1, 40000),
(17, 7, 'Canh bắp', 2, 30000),
(18, 7, 'Kem Socola', 1, 30000),
(19, 8, 'Canh bắp', 1, 27000),
(20, 8, 'Canh cải thịt bò', 1, 100000),
(21, 8, 'Rau câu Dâu Tây', 1, 30000),
(22, 8, 'Kem Socola', 1, 30000),
(23, 8, 'Tôm cuộn sốt bơ', 1, 220000),
(24, 9, 'Canh bắp', 2, 27000);

-- --------------------------------------------------------

--
-- Table structure for table `idtam`
--

CREATE TABLE `idtam` (
  `id` int(20) NOT NULL,
  `id_monan` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `idtam`
--

INSERT INTO `idtam` (`id`, `id_monan`) VALUES
(1, 1),
(2, 2),
(3, 11),
(4, 2),
(5, 2),
(6, 38);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`username`, `password`, `hoten`, `diachi`, `sdt`, `email`) VALUES
('user01', '123456', 'Duy Đạt đẹp gái', 'Đà nẵng', '0121592401', 'ndat905@gmail.com'),
('user02', 'abc', 'Thị Hiển', 'Quảng Trị', '0935762311', 'hiennguyenthi979@gmail.com'),
('user03', '123456', 'Bin Béo', '25 Ngô Quyề', '012345678', 'abc@gmail.com'),
('user05', '123', 'Hồ Thị Hiển', 'Quảng Bình', '0123123123', 'ndat04080@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `monan`
--

CREATE TABLE `monan` (
  `id_monan` int(2) NOT NULL,
  `id_theloai` int(2) NOT NULL,
  `tenmonan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `motachitiet` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(6) NOT NULL,
  `giamgia` int(2) NOT NULL,
  `link` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `monan`
--

INSERT INTO `monan` (`id_monan`, `id_theloai`, `tenmonan`, `mota`, `motachitiet`, `gia`, `giamgia`, `link`) VALUES
(1, 2, 'Bò nhúng ớt kim chi', 'Thịt bò nguyên chất với kim chi Hàn ', 'Được chiết xuất từ thịt bò tươi nguyên chất kết hợp với nấm kim chi Hàn Quốc mang đến cho khách hàng một hương vị chua cay khó quên', 120000, 10, 'image/monchinh/1.jpg'),
(2, 2, 'Canh cải thịt bò', 'Mang đến hương vị gia truyền', 'Rau cải đặc trưng của miền đất Việt kết hợp với những miếng thịt bò đỏ tươi ngon', 110000, 0, 'image/monchinh/14.jpg'),
(3, 2, 'Cá chép um chua', 'Đặc biệt', 'Thành phần dinh dưỡng cao', 70000, 0, 'image/monchinh/3.jpg'),
(4, 2, 'Cơm chiên Dương Châu', 'Ngon bổ rẻ', 'Thành phần dinh dưỡng cao', 50000, 0, 'image/monchinh/4.jpg'),
(5, 2, 'Cháo trứng hồng đào', 'Rất ngon', 'Rất ngon', 30000, 0, 'image/monchinh/5.jpg'),
(6, 2, 'Bò xào nấm', 'Ngon, giá bình dân', 'Phù hợp', 50000, 0, 'image/monchinh/6.jpg'),
(7, 2, 'Miến gà', 'Thành phần dinh dưỡng cao', 'Ngon, bổ, rẻ', 70000, 0, 'image/monchinh/7.jpg'),
(8, 2, 'Rau muống tôm mực', 'Đặc biệt', 'Ngon, bổ , rẻ', 50000, 0, 'image/monchinh/8.jpg'),
(9, 2, 'Lẩu thập cẩm', 'Đặc biệt của nhà hàng', 'Thành phần dinh dưỡng cao', 150000, 0, 'image/monchinh/m1.jpg'),
(10, 1, 'Canh bắp', 'Ngon', 'Ngon', 30000, 10, 'image/monkhaivi/1.jpg'),
(11, 1, 'Canh nấm', 'Ngon', 'Ngon', 40000, 0, 'image/monkhaivi/2.jpg'),
(12, 1, 'Cháo rêu', 'Ngon, bổ dưỡng', 'Thành phần dinh dưỡng cao', 50000, 0, 'image/monkhaivi/3.jpg'),
(13, 1, 'Cháo thịt bằm', 'Bổ dưỡng', 'Ngon', 70000, 0, 'image/monkhaivi/4.jpg'),
(14, 1, 'Canh rau củ', 'Ngon', 'Ngon', 80000, 0, 'image/monkhaivi/5.jpg'),
(15, 1, 'Nộm tôm thịt', 'Ngon', 'Ngon', 50000, 0, 'image/monkhaivi/6.jpg'),
(16, 1, 'Tôm cuộn mỳ Ý', 'Ngon', 'Bổ dưỡng', 40000, 0, 'image/monkhaivi/7.jpg'),
(17, 1, 'Nộm cà chua', 'Nhiều vitamin C', 'Ngon', 40000, 0, 'image/monkhaivi/8.jpg'),
(18, 3, 'Rau câu cam', 'Ngon', 'Bổ dưỡng', 20000, 10, 'image/trangmieng/1.jpg'),
(19, 3, 'Rau câu Dâu Tây', 'Ngon', 'Ngon, bắt mắt', 30000, 0, 'image/trangmieng/2.jpg'),
(20, 3, 'Chè Thái', 'Ngon', 'Bổ dưỡng', 20000, 0, 'image/trangmieng/3.jpg'),
(21, 3, 'Bánh đa hình', 'Đẹp mắt', 'Ngon', 40000, 0, 'image/trangmieng/4.jpg'),
(22, 3, 'Bánh hỏi', 'Ngon', 'Ngon', 30000, 0, 'image/trangmieng/5.jpg'),
(23, 3, 'Kem Kiwi', 'Mát Lạnh', 'Bổ dưỡng', 40000, 0, 'image/trangmieng/6.jpg'),
(24, 3, 'Chè trôi nước', 'Thơm nồng', 'Ngon', 50000, 0, 'image/trangmieng/7.jpg'),
(25, 3, 'Kem sữa dừa', 'Ngon', 'Mát', 40000, 0, 'image/trangmieng/8.jpg'),
(26, 4, 'Matcha socola', 'Ngon', 'Ngon', 30000, 20, 'image/thucuong/1.jpg'),
(27, 4, 'Soda Trời', 'Ngon', 'Bổ rẻ', 30000, 0, 'image/thucuong/2.jpg'),
(28, 4, 'Kem Socola', 'Ngon', 'Ngon', 30000, 0, 'image/thucuong/3.jpg'),
(29, 4, 'Matcha Trà xanh', 'Ngon', 'Mát', 20000, 0, 'image/thucuong/4.jpg'),
(30, 4, 'Nước ngọt', 'Bình dân', 'Ngon', 10000, 0, 'image/thucuong/5.jpg'),
(31, 4, 'Soda các loại', 'Ngon', 'Bổ dưỡng', 30000, 0, 'image/thucuong/6.jpg'),
(32, 5, 'Bò Hầm Rau Cải Sốt Ngọt', 'Thưởng thức tuyệt vời', 'Không thể cưỡng lại được với hương vị này', 200000, 0, 'image/mondacbiet/1.jpg'),
(33, 5, 'Mỳ sốt cà chua hầm nước sốt ', 'Quá ngon, hấp dẫn', 'Sức hút không thể chối từ', 250000, 0, 'image/mondacbiet/2.jpg'),
(34, 5, 'Tôm cuộn sốt bơ', 'Được chiết xuất từ thiên nhiên', 'Tuyệt vời, bạn không thể ko thưởng thức món này', 220000, 0, 'image/mondacbiet/3.jpg'),
(35, 5, 'Bánh bèo sốt mắm', 'Rất cuốn hút', 'Tuyệt ngon hảo hạng', 200000, 0, 'image/mondacbiet/4.jpg'),
(36, 5, 'Thịt heo xông khói', 'Rất bắt mắt', 'Quá ngon và lôi cuốn', 250000, 0, 'image/mondacbiet/5.jpg'),
(37, 5, 'Sò huyết chêm trứng', 'Ngon và rất bổ dưỡng', 'Là một trong những món ăn ngon nhất của nhà hàng', 250000, 0, 'image/mondacbiet/6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `id_theloai` int(2) NOT NULL,
  `tentheloai` varchar(120) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`id_theloai`, `tentheloai`) VALUES
(1, 'KHAI VỊ'),
(2, 'MÓN CHÍNH'),
(3, 'TRÁNG MIỆNG'),
(4, 'THỨC UỐNG'),
(5, 'ĐẶC BIỆT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `ban`
--
ALTER TABLE `ban`
  ADD PRIMARY KEY (`id_ban`);

--
-- Indexes for table `datban`
--
ALTER TABLE `datban`
  ADD PRIMARY KEY (`ban`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id_hoadon`);

--
-- Indexes for table `hoadontheoid`
--
ALTER TABLE `hoadontheoid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `idtam`
--
ALTER TABLE `idtam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `monan`
--
ALTER TABLE `monan`
  ADD PRIMARY KEY (`id_monan`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id_theloai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ban`
--
ALTER TABLE `ban`
  MODIFY `id_ban` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id_hoadon` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `hoadontheoid`
--
ALTER TABLE `hoadontheoid`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `idtam`
--
ALTER TABLE `idtam`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `monan`
--
ALTER TABLE `monan`
  MODIFY `id_monan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id_theloai` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
