-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 18, 2023 lúc 07:04 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bank`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `card`
--

CREATE TABLE `card` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `personalID` int(11) NOT NULL,
  `openingDate` date NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `fee` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `card`
--

INSERT INTO `card` (`id`, `name`, `personalID`, `openingDate`, `type`, `balance`, `fee`) VALUES
(1, 'duc', 20190001, '2023-01-01', 'Basic', 200000, 0),
(2, 'khanh', 20200002, '2023-01-02', 'Advance', 1000000, 5000),
(3, 'long12', 20200004, '2023-01-07', 'Basic', 260000, NULL),
(7, 'trang', 20200005, '2023-01-06', 'Advance', 100000, NULL),
(8, 'minh', 20200006, '2021-04-15', 'Basic', 200000, NULL),
(9, 'huy', 20200007, '2017-01-06', 'Advance', 1000000, NULL),
(10, 'quan', 20200008, '2023-01-12', 'Advance', 2000000, NULL),
(12, 'cong dep troai soai ca', 2020, '2020-01-08', 'Basic', 1000000, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chu_ho`
--

CREATE TABLE `chu_ho` (
  `MaHo` int(11) NOT NULL,
  `IDChuHo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chu_ho`
--

INSERT INTO `chu_ho` (`MaHo`, `IDChuHo`) VALUES
(1, 1),
(2, 5),
(4, 4),
(5, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ho_khau`
--

CREATE TABLE `ho_khau` (
  `MaHo` int(11) NOT NULL,
  `SoThanhVien` int(11) NOT NULL,
  `DiaChi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ho_khau`
--

INSERT INTO `ho_khau` (`MaHo`, `SoThanhVien`, `DiaChi`) VALUES
(1, 3, 'Nhà số 5 tổ 4'),
(2, 4, 'Nhà số 2 tổ 1'),
(4, 1, 'Nhà số 8 tổ 4'),
(5, 3, 'Nhà số 1 tổ 4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoan_thu`
--

CREATE TABLE `khoan_thu` (
  `MaKhoanThu` int(11) NOT NULL,
  `TenKhoanThu` varchar(100) NOT NULL,
  `SoTien` float DEFAULT NULL,
  `LoaiKhoanThu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khoan_thu`
--

INSERT INTO `khoan_thu` (`MaKhoanThu`, `TenKhoanThu`, `SoTien`, `LoaiKhoanThu`) VALUES
(1, 'Ngày Thương Binh Liệt Sĩ', 50000, 0),
(2, 'Lễ thiếu nhi', 200000, 1),
(3, 'Xây nhà văn hóa', 200000, 1),
(5, 'Ủng hộ hộ nghèo', 50000, 0),
(6, 'Quét dọn đường ', 20000, 1),
(7, 'Dựng đèn phố', 100000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_khau`
--

CREATE TABLE `nhan_khau` (
  `ID` int(11) NOT NULL,
  `CMND` varchar(20) DEFAULT NULL,
  `Ten` varchar(50) NOT NULL,
  `Tuoi` int(11) NOT NULL,
  `SDT` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_khau`
--

INSERT INTO `nhan_khau` (`ID`, `CMND`, `Ten`, `Tuoi`, `SDT`) VALUES
(1, '026201003122', 'Trần Phạm Thành Long', 20, '0968499777'),
(2, '001010100111', 'Lê Anh Quân', 20, '0918746352'),
(3, '026201003123', 'Vũ Huy Công', 40, '0985600066'),
(4, '026201003133', 'Lê Phạm Thủy Tiên', 30, '0989320123'),
(5, '026201004122', 'Nguyễn Thị Vân Anh', 70, '0978320123'),
(6, '923471291212', 'Nguyễn Văn A', 30, '0239238297'),
(7, '354563408764', 'Nguyễn Văn C', 16, '0934953487'),
(8, '320948239482', 'Nguyễn Văn Thành', 49, '093228472234'),
(9, '02382472893', 'Nguyễn Văn D', 12, '0932748233'),
(10, '0012020163', 'Nguyhggvuyh', 76, '091678'),
(11, '23423423', 'Nguyễn Văn C', 56, '353454534');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nop_tien`
--

CREATE TABLE `nop_tien` (
  `IDNopTien` int(11) NOT NULL,
  `MaKhoanThu` int(11) NOT NULL,
  `NgayThu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nop_tien`
--

INSERT INTO `nop_tien` (`IDNopTien`, `MaKhoanThu`, `NgayThu`) VALUES
(1, 1, '2023-02-02'),
(2, 7, '2023-02-02'),
(3, 7, '2023-02-02'),
(5, 2, '2023-01-31'),
(8, 3, '2023-02-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_he`
--

CREATE TABLE `quan_he` (
  `MaHo` int(11) NOT NULL,
  `IDThanhVien` int(11) NOT NULL,
  `QuanHe` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quan_he`
--

INSERT INTO `quan_he` (`MaHo`, `IDThanhVien`, `QuanHe`) VALUES
(1, 1, 'Là chủ hộ'),
(1, 2, 'Ở ké'),
(1, 3, 'Không'),
(2, 5, 'Là chủ hộ'),
(2, 9, 'Không'),
(2, 10, 'Vo'),
(2, 11, 'không'),
(4, 4, 'Là chủ hộ'),
(5, 6, 'Là chủ hộ'),
(5, 7, 'Con'),
(5, 8, 'Vợ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `passwd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`ID`, `username`, `passwd`) VALUES
(1, 'ketoan', 'ketoan'),
(2, 'canbo', 'canbo');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chu_ho`
--
ALTER TABLE `chu_ho`
  ADD PRIMARY KEY (`MaHo`,`IDChuHo`),
  ADD KEY `chu_ho_2` (`IDChuHo`);

--
-- Chỉ mục cho bảng `ho_khau`
--
ALTER TABLE `ho_khau`
  ADD PRIMARY KEY (`MaHo`);

--
-- Chỉ mục cho bảng `khoan_thu`
--
ALTER TABLE `khoan_thu`
  ADD PRIMARY KEY (`MaKhoanThu`);

--
-- Chỉ mục cho bảng `nhan_khau`
--
ALTER TABLE `nhan_khau`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `nop_tien`
--
ALTER TABLE `nop_tien`
  ADD PRIMARY KEY (`IDNopTien`,`MaKhoanThu`),
  ADD KEY `nop_tien_2` (`MaKhoanThu`);

--
-- Chỉ mục cho bảng `quan_he`
--
ALTER TABLE `quan_he`
  ADD PRIMARY KEY (`MaHo`,`IDThanhVien`),
  ADD KEY `quan_he_2` (`IDThanhVien`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `card`
--
ALTER TABLE `card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `ho_khau`
--
ALTER TABLE `ho_khau`
  MODIFY `MaHo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `khoan_thu`
--
ALTER TABLE `khoan_thu`
  MODIFY `MaKhoanThu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nhan_khau`
--
ALTER TABLE `nhan_khau`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chu_ho`
--
ALTER TABLE `chu_ho`
  ADD CONSTRAINT `chu_ho_1` FOREIGN KEY (`MaHo`) REFERENCES `ho_khau` (`MaHo`),
  ADD CONSTRAINT `chu_ho_2` FOREIGN KEY (`IDChuHo`) REFERENCES `nhan_khau` (`ID`);

--
-- Các ràng buộc cho bảng `nop_tien`
--
ALTER TABLE `nop_tien`
  ADD CONSTRAINT `nop_tien_1` FOREIGN KEY (`IDNopTien`) REFERENCES `nhan_khau` (`ID`),
  ADD CONSTRAINT `nop_tien_2` FOREIGN KEY (`MaKhoanThu`) REFERENCES `khoan_thu` (`MaKhoanThu`);

--
-- Các ràng buộc cho bảng `quan_he`
--
ALTER TABLE `quan_he`
  ADD CONSTRAINT `quan_he_1` FOREIGN KEY (`MaHo`) REFERENCES `ho_khau` (`MaHo`),
  ADD CONSTRAINT `quan_he_2` FOREIGN KEY (`IDThanhVien`) REFERENCES `nhan_khau` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
