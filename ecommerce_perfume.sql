-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 06, 2024 lúc 02:44 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecommerce-perfume`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` bigint(20) NOT NULL,
  `adname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `adname`, `name`, `password`) VALUES
(12, 'thao', 'thaon', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `time_post` timestamp NOT NULL DEFAULT current_timestamp(),
  `blog_image` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `title`, `time_post`, `blog_image`, `content`) VALUES
(58, 'Louis Vuitton ra mắt nước hoa Pacific Chill lấy cảm hứng từ California 5', '2023-10-13 20:07:23', 'product-8.jpg', 'Nước hoa Pacific Chill của Louis Vuitton lấy cảm hứng từ vùng biển California, có hương thơm dịu nhẹ và được giới thiệu vừa sửa'),
(59, 'Louis Vuitton ra mắt nước hoa Pacific Chill lấy cảm hứng từ California 1', '2023-10-08 16:34:02', 'blog-2.jpg', 'Nước hoa Pacific Chill của Louis Vuitton lấy cảm hứng từ vùng biển California, có hương thơm dịu nhẹ và được giới thiệu \"giúp detox tâm hồn\".  Bên cạnh những dòng nước hoa biểu tượng như California Dream, Afternoon Swim, On The Beach và City of Stars, \"đại gia đình\" Cologne Perfumes của Louis Vuitton vừa chào đón thành viên mới - Pacific Chill.'),
(60, 'Louis Vuitton ra mắt nước hoa Pacific Chill lấy cảm hứng từ California', '2023-10-08 17:10:17', 'product-1.jpg', 'Nước hoa Pacific Chill của Louis Vuitton lấy cảm hứng từ vùng biển California, có hương thơm dịu nhẹ và được giới thiệu \"giúp detox tâm hồn\".  Bên cạnh những dòng nước hoa biểu tượng như California Dream, Afternoon Swim, On The Beach và City of Stars, \"đại gia đình\" Cologne Perfumes của Louis Vuitton vừa chào đón thành viên mới - Pacific Chill.'),
(80, 'Bộ quà tặng từ Niche Perfume World vừa sửa 2.15', '2023-10-16 19:16:30', 'hoa3.jpg', 'Niche Perfume World mang đến bộ quà tặng độc đáo2.15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` bigint(20) NOT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `quantity`, `price`, `user_id`, `product_id`) VALUES
(24, 1, 3000000, 4, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `description`) VALUES
(1, 'Dior', ''),
(2, 'LV', 'nước hoa thơm lâu'),
(3, 'Chanel', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `time_post` timestamp NOT NULL DEFAULT current_timestamp(),
  `review` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `content`, `product_id`, `user_id`, `time_post`, `review`) VALUES
(1, 'rất đẹp', 1, 1, '2023-09-25 07:21:38', 5),
(4, 'Sản phẩm dùng rất tốt', 1, 3, '2023-09-27 11:40:47', 3),
(6, 'sản phẩm dùng rất thích', 1, 2, '2023-09-30 21:27:27', 3),
(7, 'sản phẩm dùng rất nhanh hỏng', 4, 1, '2023-09-30 21:32:51', 4),
(11, 'bim an shit rat ngon vừa sửa', 4, 4, '2023-10-16 07:02:35', 3),
(14, 'đánh giá lại', 1, 4, '2023-10-16 07:02:29', 4),
(15, '', 7, 4, '2023-10-16 06:58:07', 4),
(16, '', 5, 5, '2023-10-15 21:21:38', 3),
(17, 'In processing', 9, 4, '2023-10-17 09:19:47', 4),
(18, 'khánh đz', 10, 4, '2023-10-17 09:30:25', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_img_blog`
--

CREATE TABLE `tbl_img_blog` (
  `id` bigint(20) NOT NULL,
  `id_blog` bigint(11) NOT NULL,
  `title_img` varchar(500) NOT NULL,
  `image_blog` varchar(100) NOT NULL,
  `content_img` text NOT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_img_blog`
--

INSERT INTO `tbl_img_blog` (`id`, `id_blog`, `title_img`, `image_blog`, `content_img`, `product_id`) VALUES
(27, 58, 'Nước hoa Pacific Chill của Louis Vuitton lấy cảm hứng từ vùng biển California, có hương thơm dịu nhẹ và được giới thiệu vừa sửa14jkjkjkjkjkjkjkjkjkjkjkjkjkjkkk', 'khanh.png', 'Nước hoa Pacific Chill của Louis Vuitton lấy cảm hứng từ vùng biển California, có hương thơm dịu nhẹ và được giới thiệu vừa sửa14', 1),
(28, 59, 'Pacific Chill là mùi hương thứ 5 trong BST nước hoa Louis Vuitton Cologne Perfumes.', 'product-3.jpg', 'Lấy cảm hứng từ California (Los Angeles, Mỹ), bộ sưu tập Cologne Perfumes vừa khắc họa vẻ đẹp bờ Tây nước Mỹ, vừa đưa giới mộ điệu bước vào hành trình khám phá các cung bậc cảm xúc.  Theo đại diện nhà chế tác: \"Mỗi mùi hương là bức tranh về ánh sáng ở California - từ ánh mặt trời dịu nhẹ vào ban ngày đến ánh đèn rực rỡ nơi thành thị lúc hoàng hôn\".  Bậc thầy mùi hương Louis Vuitton - Jacques Cavallier Belletrud - nhen nhóm ý tưởng sáng tạo Pacific Chill từ cuộc dạo chơi, ngắm biển với bạn thân Alex Israel. Cầm trên tay ly sinh tố detox, chiêm ngưỡng cảnh sắc California, Los Angeles bình yên sáng sớm, ông đã nói với bạn: \"Nhất định phải tạo ra hương nước hoa đem đến cảm giác \'thanh lọc, thư thái\' giống vậy\".', NULL),
(29, 59, 'Dưới bàn tay họa sĩ Alex Israel, rương và hộp khắc họa cảnh sớm mai yên bình tại vùng biển California. Những dải màu xanh dương pha trộn xanh lá tăng vẻ thơ mộng cho thiết kế.', 'product-4.jpg', 'Nước hoa Pacific Chill là sự kết hợp giữa các nốt hương từ quả lý chua đen, hạt cà rốt và thảo dược, hướng đến cảm giác thư giãn, cân bằng.  \"Pacific Chill chứa năng lượng thiên nhiên, là sáng tạo mang tính đột phá của Jacques Cavallier Belletrud, mở đường cho địa hạt nước hoa chăm sóc sức khỏe tinh thần\", nhà chế tác lý giải.  Siêu mẫu Miranda Kerr - nhiều năm theo đuổi lối sống xanh, thích kết nối thiên nhiên qua yoga và sáng lập thương hiệu mỹ phẩm thuần chay - đồng hành chiến dịch quảng bá nước hoa.', NULL),
(30, 60, 'Pacific Chill là mùi hương thứ 5 trong BST nước hoa Louis Vuitton Cologne Perfumes.', 'product-1.jpg', 'Lấy cảm hứng từ California (Los Angeles, Mỹ), bộ sưu tập Cologne Perfumes vừa khắc họa vẻ đẹp bờ Tây nước Mỹ, vừa đưa giới mộ điệu bước vào hành trình khám phá các cung bậc cảm xúc.  Theo đại diện nhà chế tác: \"Mỗi mùi hương là bức tranh về ánh sáng ở California - từ ánh mặt trời dịu nhẹ vào ban ngày đến ánh đèn rực rỡ nơi thành thị lúc hoàng hôn\".  Bậc thầy mùi hương Louis Vuitton - Jacques Cavallier Belletrud - nhen nhóm ý tưởng sáng tạo Pacific Chill từ cuộc dạo chơi, ngắm biển với bạn thân Alex Israel. Cầm trên tay ly sinh tố detox, chiêm ngưỡng cảnh sắc California, Los Angeles bình yên sáng sớm, ông đã nói với bạn: \"Nhất định phải tạo ra hương nước hoa đem đến cảm giác \'thanh lọc, thư thái\' giống vậy\".', NULL),
(31, 60, 'Dưới bàn tay họa sĩ Alex Israel, rương và hộp khắc họa cảnh sớm mai yên bình tại vùng biển California. Những dải màu xanh dương pha trộn xanh lá tăng vẻ thơ mộng cho thiết kế.', 'product-2.jpg', 'Nước hoa Pacific Chill là sự kết hợp giữa các nốt hương từ quả lý chua đen, hạt cà rốt và thảo dược, hướng đến cảm giác thư giãn, cân bằng.  \"Pacific Chill chứa năng lượng thiên nhiên, là sáng tạo mang tính đột phá của Jacques Cavallier Belletrud, mở đường cho địa hạt nước hoa chăm sóc sức khỏe tinh thần\", nhà chế tác lý giải.  Siêu mẫu Miranda Kerr - nhiều năm theo đuổi lối sống xanh, thích kết nối thiên nhiên qua yoga và sáng lập thương hiệu mỹ phẩm thuần chay - đồng hành chiến dịch quảng bá nước hoa.', NULL),
(76, 58, 'àgrgrdgdf', 'z4484644003682_3f765ce61783b511971eb2c743e6b7ce.jpg', 'gthgrthyrtyhrt', 4),
(77, 58, 'Adxhfghfgh', 'khanh.png', 'hfghfghfghfgh', 5),
(95, 80, 'Bộ quà tặng 8-3 từ Niche Perfume World', 'hoa1.jpg', 'bông hoa hồng vĩnh cửu tượng trưng cho sự trường tồn theo năm tháng sẽ là món quà mới lạ, khiến phái nữ thích thú khi nhận được.\r\n\r\nKhác với hoa tươi chỉ sử dụng trong thời gian ngắn, những bông hoa hồng vĩnh cửu nằm trong Fragrance & Flowers box đẹp lâu bền nhờ vào công nghệ ướp hoa đến từ Nhật, giúp những bông hoa có thể duy trì được vẻ đẹp của mình qua nhiều năm. Nhờ đó, bạn có thể thể hiện tình cảm dài lâu, trọn vẹn với một nửa của thế giới của mình.', 7),
(97, 80, 'Bộ quà tặng 8-3 từ Niche Perfume World vừa sửa', 'hoa6.jpg', 'Ngày 8-3 là thời điểm quan trọng để thể hiện tình yêu thương, sự chân thành và kính trọng dành cho một nửa quan trọng của thế giới. Một món quà tặng 8-3 độc đáo sẽ giúp bạn ghi điểm với người phụ nữ thương yêu của mình và giúp ngày này trở nên đầy ý nghĩa, khó quên.\r\n\r\nFragrance & Flowers box đến từ thương hiệu Birkholz với những bông hoa hồng vĩnh cửu tượng trưng cho sự trường tồn theo năm tháng sẽ là món quà mới lạ, khiến phái nữ thích thú khi nhận được.\r\n\r\nKhác với hoa tươi chỉ sử dụng trong thời gian ngắn, những bông hoa hồng vĩnh cửu nằm trong Fragrance & Flowers box đẹp lâu bền nhờ vào công nghệ ướp hoa đến từ Nhật, giúp những bông hoa có thể duy trì được vẻ đẹp của mình qua nhiều năm. Nhờ đó, bạn có thể thể hiện tình cảm dài lâu, trọn vẹn với một nửa của thế giới của mình.', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_messages`
--

CREATE TABLE `tbl_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `order_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `address`, `booking_date`, `order_name`, `phone`, `email`, `status`, `note`, `total_price`, `user_id`) VALUES
(4, 'Hà Nội,Hà Nội,Việt Nam', '2023-10-12', 'Khánh Đặng Hoàng', '0333568375', 'khanhkomonny24@gmail.com', 2, '', 1500000, 4),
(5, 'Hà Nội,Hà Nội,Việt Nam', '2023-10-14', 'Khánh Đặng Hoàng', '0333568375', 'khanhkomonny24@gmail.com', 2, '', 3000000, 4),
(6, 'Hà Nội,Hà Nội,Việt Nam', '2023-10-15', 'Khánh Đặng Hoàng', '0333568375', 'khanhkomonny24@gmail.com', 2, '11111', 300000, 5),
(7, 'Hà Nội,Hà Nội,Việt Nam', '2023-10-15', 'Khánh Đặng Hoàng', '0333568375', 'khanhkomonny24@gmail.com', 2, '', 300000, 5),
(8, 'Hà Nội,Hà Nội,Việt Nam', '2023-10-16', 'Khánh Đặng Hoàng', '0333568375', 'khanhkomonny24@gmail.com', 2, '', 700000, 1),
(9, 'Hà Nội,Hà Nội,Việt Nam', '2023-10-16', 'Khánh Đặng Hoàng', '0333568375', 'khanhkomonny24@gmail.com', 0, '', 2600000, 4),
(10, 'Hà Nội,Hà Nội,Việt Nam', '2023-10-17', 'Khánh Đặng Hoàng', '0333568375', 'khanhkomonny24@gmail.com', 0, 'thaho', 5000000, 4),
(11, 'Hà Nội,Hà Nội,Việt Nam', '2023-10-17', 'Khánh Đặng Hoàng', '0333568375', 'khanhkomonny24@gmail.com', 2, '', 6060000, 4),
(12, 'Triều Khúc, Thanh Xuân,Hà Nội,Vietnam', '2024-03-29', 'Nguyễn Thảo', '0912435465', 'thao@gmail.com', 0, '', 2000000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_product`
--

CREATE TABLE `tbl_order_product` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_product`
--

INSERT INTO `tbl_order_product` (`order_id`, `product_id`, `quantity`, `price`) VALUES
(4, 5, 5, 300000),
(5, 7, 1, 3000000),
(6, 5, 1, 300000),
(7, 5, 1, 300000),
(8, 1, 1, 200000),
(8, 4, 1, 200000),
(8, 5, 1, 300000),
(9, 1, 10, 200000),
(9, 5, 2, 300000),
(10, 1, 10, 200000),
(10, 7, 1, 3000000),
(11, 9, 2, 3000000),
(11, 10, 2, 30000),
(12, 1, 10, 200000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `image_1` varchar(255) DEFAULT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `image_3` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `sex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `details`, `image_1`, `image_2`, `image_3`, `price`, `quantity`, `category_id`, `sex`) VALUES
(1, 'Nước hoa Dior', 'sản phẩm đẹp', 'brand_01.jpg', NULL, NULL, 200000, 10, 1, 0),
(4, 'Nước hoa số 1', 'rất thơm', 'brand_02.jpg', 'nh2.jpg', 'nh3.jpg', 650000, 20, 1, 0),
(5, 'Nước hoa hoàng khánh', 'sản phẩm rất ok', 'category_img_01.jpg', 'cd88b8b5d848b2978788102e994c3a4b.jpg', 'Untitled.png', 300000, 10, 3, 0),
(7, 'Nước hoa mới thêm', 'khánh komonny', 'category_img_02.jpg', 'nh1.jpg', 'nh1.jpg', 2900000, 30, 2, 1),
(9, 'nước hoa 2', 'nước hoa 1', 'brand_04.jpg', 'nh1.jpg', 'nh1.jpg', 1400000, 30, 2, 1),
(10, 'nước hoa 3', 'nước hoa 3', 'brand_02.jpg', 'nh1.jpg', 'nh1.jpg', 30000, 20, 1, 1),
(15, 'Nước hoa hoàng khánh', 'sản phẩm rất ok', 'brand_03.jpg', 'cd88b8b5d848b2978788102e994c3a4b.jpg', 'Untitled.png', 300000, 10, 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` bigint(20) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `role_name`) VALUES
(1, 'ADMIN'),
(2, 'USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `email`, `full_name`, `password`, `phone_number`, `username`) VALUES
(1, 'thao@gmail.com', 'thảo', '111', '0333568375', 'khanhkomon'),
(2, 'khanhkomonny24@gmail.com', 'Dương Nguyễn Trung', '111', '0328638548', 'fokhanhfo'),
(3, 'nguyenlehoang@gmail.com', 'Nguyễn Lê Hoàng', '111', '0333568375', 'nlh'),
(4, 'khanhkomonny@gmail.com', 'Đặng Hoàng Khánh', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '123-45-678', 'khanhkomonny'),
(5, 'khanhkomonny24@gmail.com', 'Khánh Đặng Hoàng', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '987-12-345', 'kamonnykhanh'),
(6, 'thaontp@gmail.com', 'thao', '1', '0985824745', 'thao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `product_id`, `user_id`) VALUES
(1, 1, 4),
(5, 4, 4),
(6, 5, 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_title` (`title`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKhv6grtjnmtoylt2yyt4wmqtf3` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_product_user_id` (`product_id`,`user_id`),
  ADD KEY `FK19bt9310a1l6tdyg41v7wbux4` (`product_id`),
  ADD KEY `FKgjlkbaxyvqqrmxeoxh6pb4oj7` (`user_id`);

--
-- Chỉ mục cho bảng `tbl_img_blog`
--
ALTER TABLE `tbl_img_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_and_img` (`id_blog`),
  ADD KEY `tbl_img_blog_ibfk_1` (`product_id`);

--
-- Chỉ mục cho bảng `tbl_messages`
--
ALTER TABLE `tbl_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7s3eikellsiwmxjj9agr7qqhg` (`user_id`);

--
-- Chỉ mục cho bảng `tbl_order_product`
--
ALTER TABLE `tbl_order_product`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `FK3mth3o156gm4dcdnf95d25g4x` (`product_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKfq7110lh85cseoy13cgni7pet` (`category_id`);

--
-- Chỉ mục cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_k0bty7tbcye41jpxam88q5kj2` (`username`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbl_img_blog`
--
ALTER TABLE `tbl_img_blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `tbl_messages`
--
ALTER TABLE `tbl_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `FKhv6grtjnmtoylt2yyt4wmqtf3` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`),
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD CONSTRAINT `FK19bt9310a1l6tdyg41v7wbux4` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`),
  ADD CONSTRAINT `FKgjlkbaxyvqqrmxeoxh6pb4oj7` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Các ràng buộc cho bảng `tbl_img_blog`
--
ALTER TABLE `tbl_img_blog`
  ADD CONSTRAINT `comment_and_img` FOREIGN KEY (`id_blog`) REFERENCES `tbl_blog` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_img_blog_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_messages`
--
ALTER TABLE `tbl_messages`
  ADD CONSTRAINT `tbl_messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `FK7s3eikellsiwmxjj9agr7qqhg` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`);

--
-- Các ràng buộc cho bảng `tbl_order_product`
--
ALTER TABLE `tbl_order_product`
  ADD CONSTRAINT `FK3mth3o156gm4dcdnf95d25g4x` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`),
  ADD CONSTRAINT `FKs5fefsccotnpdip9dmgitqhsi` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`);

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `FKfq7110lh85cseoy13cgni7pet` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`);

--
-- Các ràng buộc cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD CONSTRAINT `tbl_wishlist_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_wishlist_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
