-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2024 at 06:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(30) NOT NULL,
  `category_ids` text NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` text NOT NULL,
  `description` text NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `image_path` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `category_ids`, `title`, `author`, `description`, `qty`, `price`, `image_path`, `date_created`) VALUES
(2, '2', 'Python Programming', 'Anthony Brun', 'A Step by Step Guide from Beginner to  Expert', 0, 399, '1604631960_python_book.jpg', '2020-11-06 11:06:58'),
(3, '3', 'Harry Potter and the Order of the Phoenix', 'J.K. Rowling', 'Paperback book of the fifth part of the coveted Harry Potter series', 0, 571, '1710788100_WhatsApp Image 2024-03-18 at 23.18.12_d1c57417.jpg', '2024-03-19 00:25:35'),
(4, '1', 'Atomic Habits', 'James Clear', 'THE PHENOMENAL INTERNATIONAL BESTSELLER: OVER 1O MILLION COPIES SOLD WORLDWIDE.\r\n\r\nTransform your life with tiny changes in behaviour, starting now.\r\n\r\n', 0, 499, '1710788280_WhatsApp Image 2024-03-18 at 23.20.03_1584e445.jpg', '2024-03-19 00:28:23'),
(8, '5', 'Coloring Books Box Set: Pack of 12 Copy Color Books For Children', 'Wonder House Books', 'A collection of 12 coloring books that include topics like animals, birds, cars, transport spark the imagination and creativity of young children. The vibrant pictures with bold outlines will enable learners to color within the lines and engage them to the joys of coloring. Practicing with bright colors enhance their color awareness and improves their motor skills.', 0, 369, '1710789840_81ZiMSpnmDL._AC_UL320_.jpg', '2024-03-19 00:54:36'),
(9, '6', 'War and Peace Deluxe Hardbound Edition', 'Leo Tolstoy', 'War and Peace is one of the best known Russian historical novels in literature. Opening at Anna Pavlovna’s soirée, it introduces you to characters—such as the misfit, illegitimate son Pierre, the analytical and loner Prince Andrew, the sexually alluring Helene, and the impulsive and lively Natasha, who plays the pivotal role—whose minds and actions prove to be the laboratory where Tolstoy, with a psychologist’s deftness and an artist’s vision, lays bare the frailties and manias that make up the human psyche. Intricately designed with gilded edges, exquisite endpapers, and a ribbon bookmark, this hardbound deluxe edition is perfect for gifting and ideal to be read and treasured.', 0, 899, '1710790020_91HwBMSwRfL._SY425_.jpg', '2024-03-19 00:57:43'),
(10, '1', 'The Power of Your Subconscious Mind: Original Edition | Premium Paperback ', 'Joseph Murphy', 'The Power of Your Subconscious Mind is one of the most promising self improvement books that you can gift to yourself or your loved ones. This book is designed to help you improve your relationships, health, and also to give you an internal strength that makes every hurdle look small. The book brings together best of both the worlds – scientific research as well as spiritual wisdom. It used the combined ideas to explain how our subconscious mind has the power to change our lives. The book explains how by understanding and learning to control our subconscious mind, we can welcome a world of prosperity, happiness and success. This book will act as a guide and help you understand the depth of your subconscious, get rid of fears and attract what you desire simply by changing your beliefs. Having sold millions of copies, this book and its ideas have changed the lives of many all over the world.', 0, 149, '1710792060_71sBtM3Yi5L._SY425_.jpg', '2024-03-19 01:00:50'),
(11, '8', 'Set of 10 Comics Books by DC | Batman, Superman, Justice League, Titans, Green Lantern | Assorted Collection', ' DC Comics, Batman Comics, Green Lantern Superman, Justice League, Titans ', ' DC Comics (Author), Batman Comics (Author), Green Lantern Superman, Justice League, Titans (Author)', 0, 949, '1710790680_71gzwMkZxML._SY425_.jpg', '2024-03-19 01:08:07'),
(14, '2', 'FUNDAMENTALS OF SOFTWARE ENGINEERING', ' Rajib Mall ', 'Designing, developing, testing and managing software programs and systems encompass the field of software engineering. Due to its susceptibility to changes, the field is making advancements every now and then. The book, now in its Fifth Edition, has been restructured and revised completely to study the latest trends and developments in the field. It illustrates various emerging frameworks of software testing and designs in traditional, structured and unstructured environments. Several worked-out examples and practice problems have been included in each chapter. NEW TO THIS EDITIONIn almost every chapter, several sections have been completely rewritten to increase readability. Several new topics on latest development have been included in almost every chapter, such as agile development using SCRUM, MC/DC testing, quality models, etc. A large number of additional multiple choice questions and review questions have been added in all the chapters to help students understand the concepts readily.', 0, 349, '1710792000_71y0gZ1LR0L._AC_UY218_.jpg', '2024-03-19 01:30:04'),
(15, '7', 'Collected Short Stories ', 'Satyajit Ray', 'A collection of forty-nine short stories.\r\nTranslated from the Bengali by the author and Gopa Majumdar.', 0, 349, '1710792240_81Ueoqp763L._SY425_.jpg', '2024-03-19 01:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `book_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `price` float NOT NULL,
  `customer_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Educational', 'Educational'),
(2, 'Programming / Software', 'Programming / Software'),
(3, 'Fantasy', 'Fantasy'),
(5, 'Kids', 'Kids'),
(6, 'Novels', 'Novels'),
(7, 'Story Books', 'Story Books'),
(8, 'Comics', 'Comics');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `contact`, `email`, `password`, `date_created`) VALUES
(1, 'Snehamoy Dan', 'Street number 271, DD Block, DD 95', '+91 7001431964', 'snehamoydan123@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-03-19 01:38:32');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `customer_id` int(30) NOT NULL,
  `address` text NOT NULL,
  `total_amount` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address`, `total_amount`, `status`, `date_created`) VALUES
(4, 2, 'Street number 271, DD Block, DD 95', 0, 0, '2024-03-19 01:38:54'),
(5, 1, 'Street number 271, DD Block, DD 95', 0, 1, '2024-03-19 21:57:22'),
(6, 1, 'Street number 271, DD Block, DD 95', 0, 0, '2024-03-19 22:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `book_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `order_id`, `book_id`, `qty`, `price`) VALUES
(5, 4, 15, 1, 349),
(6, 5, 15, 1, 349),
(7, 6, 3, 1, 571);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Bookshop Automation Software', 'bookshop22@gmail.com', '+91 7001431964', '', '&lt;p&gt;Welcome to our bookstore, where every page turns into a journey and every story becomes a destination. At Novel Escapes, we&amp;#39;re passionate about connecting readers with the books they love. Our shelves are filled with a diverse selection, curated to inspire, educate, and entertain. Whether you&amp;#39;re seeking literary classics, gripping thrillers, thought-provoking non-fiction, or enchanting children&amp;#39;s tales, we have something for every reader.&lt;/p&gt;&lt;p&gt;Founded on the belief that books have the power to transform lives, we strive to foster a community of book lovers who share in the joy of reading. With user-friendly browsing, personalized recommendations, and convenient delivery options, we aim to make your online book shopping experience seamless and enjoyable.&lt;/p&gt;&lt;p&gt;Join us in celebrating the magic of storytelling and embark on endless adventures between the covers of our books. At Novel Escapes, the journey to your next literary discovery awaits.&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1=Admin,2=Staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Admin', 'admin', 'd829b843a6550a947e82f2f38ed6b7a7', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
