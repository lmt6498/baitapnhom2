-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 13, 2019 lúc 09:16 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `user`, `pass`) VALUES
(1, 'admin', 'c3284d0f94606de1fd2af172aba15bf3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `hinh` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rong` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cao` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `hinh`, `rong`, `cao`) VALUES
(1, 'banner2.png', '990px', '150px');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `html` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `footer`
--

INSERT INTO `footer` (`id`, `html`) VALUES
(1, '<table width=\"990px\">\r\n    <tr>\r\n        <td width=\"495px\" align=\"right\" >\r\n        Cửa hàng : \r\n        </td>\r\n        <td width=\"495px\" >\r\n        Phụ kiện điện thoại nhóm 2\r\n        </td>\r\n    </tr>\r\n    <tr>\r\n        <td align=\"right\" >\r\n        Điện thoại : \r\n        </td>\r\n        <td>\r\n        0347183456\r\n        </td>\r\n    </tr>\r\n    <tr>\r\n        <td align=\"right\">\r\n        Địa chỉ : \r\n        </td>\r\n        <td>\r\n      Trường Cao đẳng Nghề Bách Khoa Hà Nội\r\n        </td>\r\n    </tr>\r\n</table>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `tennguoimua` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dienthoai` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hangduocmua` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `tennguoimua`, `email`, `diachi`, `dienthoai`, `noidung`, `hangduocmua`) VALUES
(5, 'Tuấn', 'lmt@gmail.com', 'Xã Đàn', '0347183456', 'em muốn mua cái này', '5[|||]2[|||||]4[|||]3[|||||]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_doc`
--

CREATE TABLE `menu_doc` (
  `id` int(11) NOT NULL,
  `ten` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_doc`
--

INSERT INTO `menu_doc` (`id`, `ten`) VALUES
(1, 'Ốp điện thoại'),
(2, 'Kính cường lực'),
(3, 'Sạc điện thoại'),
(4, 'Sạc dự phòng'),
(5, 'Tai nghe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_ngang`
--

CREATE TABLE `menu_ngang` (
  `id` int(11) NOT NULL,
  `ten` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaimenu` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_ngang`
--

INSERT INTO `menu_ngang` (`id`, `ten`, `noidung`, `loaimenu`) VALUES
(1, 'Giới thiệu', 'Nhóm 2 <br>\r\nLớp ứng dụng phần mềm 1 <br>\r\nKhóa 9 <br>', ''),
(2, 'Sản phẩm', '', 'sanpham'),
(3, 'Hướng dẫn mua hàng', 'Bước 1: Tìm kiếm và chọn sản phẩm cần mua. <br>\r\nBước 2: Nhập số lượng cần mua và chọn Thêm vào giỏ <br>\r\nBước 3: Nhập đầy đủ thông tin và chọn Mua hàng.<br>\r\n<br>\r\nNếu muốn tiếp tục mua hàng vui lòng chọn Quay lại để quay về Trang chủ hoặc chọn 1 trong những danh mục của cửa hàng và tiếp tục mua hàng. <br>\r\n<br>\r\n\r\nBạn có thể click lại vào Giỏ hàng để xem số Sản phẩm mà bạn đã thêm vào giỏ <br>\r\n<br>\r\n\r\nĐể xóa sản phẩm, bạn vui lòng nhập Số lượng = 0 trong Giỏ hàng và chọn Cập nhật. <br>\r\n<br>\r\nCửa hàng xin chân thành cảm ơn quý khách!', ''),
(5, 'Liên hệ', '<h3>Ứng dụng phần mềm 1 - K9 </h3><br>\r\n<br>\r\n\r\nLương Minh Tuấn - 0347183456<br>\r\n<br>\r\nNguyễn Duy Tuấn - 0384727274 <br>\r\n<br>\r\nNguyễn Văn Hào - 0981601846<br>\r\n<br>\r\nĐoàn Thị Hương - 0973528074<br>', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quangcao`
--

CREATE TABLE `quangcao` (
  `id` int(11) NOT NULL,
  `html` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vitri` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quangcao`
--

INSERT INTO `quangcao` (`id`, `html`, `vitri`) VALUES
(1, 'Nội dung <br>\r\nlink quảng cáo <br>', 'trai'),
(2, 'Nội dung <br>\r\nLink quảng cáo <br>', 'phai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `ten` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` int(255) NOT NULL,
  `hinhanh` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thuoc_menu` int(255) NOT NULL,
  `noibat` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangchu` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sapxeptrangchu` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten`, `gia`, `hinhanh`, `noidung`, `thuoc_menu`, `noibat`, `trangchu`, `sapxeptrangchu`) VALUES
(4, 'Ốp điện thoại Iphone cao cấp bestmart', 100000, 'op1.jpeg', '<p>Ốp điện thoại ph&ugrave; hợp giới trẻ :D</p>', 1, '', 'co', 7),
(13, 'Ốp lưng điện thoại hình thú cute', 100000, 'op8.jpeg', '<p>Ốp lưng cao cấp</p>', 1, 'co', 'co', 14),
(14, 'Ốp lưng điện thoại Ipad, máy tính bảng', 100000, 'op9.jpeg', '<p>Ốp lưng cao cấp</p>', 1, '', '', 15),
(26, 'Kính cường lực Images Bakeey 3D', 100000, 'kcl2.jpeg', 'Kính cường lực siêu bền', 2, 'co', 'co', 26),
(27, 'Kính cường lực 5D full màn hình J7 các loại', 100000, 'kcl3.jpeg', 'Kính cường lực siêu bền', 2, 'co', 'co', 27),
(37, 'Cáp sạc đa năng Baseus Yiven 2 in 1', 100000, 's4.jpeg', 'Sạc điện thoại nè', 3, 'co', 'co', 37),
(47, 'Pin sạc dự phòng 7.500mAh eSaver Safari 3S', 100000, 'sdp3.jpeg', 'Sạc điện thoại nè', 4, 'co', 'co', 47),
(69, 'Tai nghe Bluetooth Apple Airpods', 100000, 'tn1.jpeg', 'Tai nghe nè', 5, 'co', 'co', 48),
(70, 'Tai nghe Beat Mix', 100000, 'tn2.jpeg', 'Tai nghe nè', 5, 'co', 'co', 49);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `hinh` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lienket` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slideshow`
--

INSERT INTO `slideshow` (`id`, `hinh`, `lienket`) VALUES
(1, 'qc1.png', '#'),
(2, 'qc2.png', '#'),
(3, 'qc3.png', '#'),
(4, 'qc4.png', '#');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_doc`
--
ALTER TABLE `menu_doc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_ngang`
--
ALTER TABLE `menu_ngang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `menu_doc`
--
ALTER TABLE `menu_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `menu_ngang`
--
ALTER TABLE `menu_ngang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
