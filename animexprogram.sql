-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2025 at 06:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animexprogram`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` varchar(30) NOT NULL,
  `AdminName` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `AdminName`, `Username`, `Email`, `Password`) VALUES
('Ad-000001', 'Shwe Thazin Oo', 'Keiizumi', 'shwethazinoo@gmail.com', 'sto123'),
('Ad-000002', 'Yuki Tanaka', 'Yukitan', 'yuki@animepreorder.com', 'yuki123'),
('Ad-000003', 'Kei Izumi', 'Kei', 'keiizumi@gmail.com', 'kei123'),
('Ad-000004', 'Dazai Osamu', 'dzai', 'dazai@gmail.com', 'dazai123');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` varchar(30) NOT NULL,
  `CategoryName` varchar(30) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`) VALUES
('Ca-000001', 'Scale Figures', 'High-quality detailed figures in various scales (1/7, 1/8, etc.)'),
('Ca-000002', 'Nendoroids', 'Super-deformed chibi-style figures with interchangeable parts'),
('Ca-000003', 'Figma', 'Articulated action figures with multiple posing options'),
('Ca-000004', 'Pop Up Parade', 'Affordable figures typically won in crane games or lotteries'),
('Ca-000005', 'Stickers', 'Character-themed key accessories and straps'),
('Ca-000006', 'Acrylic Stands', 'Clear acrylic character stands for display'),
('Ca-000007', 'Plushies', 'Soft stuffed character dolls'),
('Ca-000008', 'Mug', 'Specialty cups featuring popular anime characters and designs (dishwasher/microwave safe options available)'),
('Ca-000009', 'Bags', 'Character-themed crossbody bags, weapon holsters'),
('Ca-000010', 'Cosplay Wig', 'Complete outfits (school uniforms, battle gear, fantasy robes)');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ContactID` varchar(30) NOT NULL,
  `CustomerName` varchar(30) NOT NULL,
  `CustomerEmail` varchar(30) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ContactID`, `CustomerName`, `CustomerEmail`, `Message`) VALUES
('Con_000001', 'Ren Saito', 'ren.saito@example.com', 'When will the new Demon Slayer Nendoroids be available for pre-order?'),
('Con_000002', 'Aoi Takahashi', 'aoi.takahashi@example.com', 'Do you offer international shipping for scale figures?'),
('Con_000003', 'Aoi Takahashi', 'aoi.takahashi@example.com', 'My order #45678 hasn\'t shipped yet. Can you check the status?'),
('Con_000004', 'Hana Kobayashi', 'hana.kobayashi@example.com', 'Will you restock the One Piece Figma Trafalgar Law?'),
('Con_000005', 'Yuki Tanaka', 'yuki.tanaka@example.com', 'I received a damaged box for my Jujutsu Kaisen figure. Can I exchange it?'),
('Con_000006', 'Haruto Suzuki', 'haruto.suzuki@example.com', 'Do you accept cancellations for pre-ordered items?'),
('Con_000007', 'Mei Watanabe', 'mei.watanabe@example.com', 'Is the Attack on Titan Final Season poster still in stock?'),
('Con_000008', 'Yuki Tanaka', 'yuki.tanaka@example.com', 'Can I change the shipping address for my pending order?'),
('Con_000009', 'Mei Watanabe', 'mei.watanabe@example.com', 'Are there any discounts for bulk purchases of keychains?'),
('Con_000010', 'Ryo Kimura', 'ryo.kimura@example.com', 'Will you be getting more Chainsaw Man merchandise soon?'),
('Con_000011', 'Naruto Fan', 'naruto.fan@email.com', 'Hi, I pre-ordered the Naruto Shippuden figure last week but have not received a confirmation email yet. Could you check my order status?'),
('Con_000012', 'One Piece', 'one.piece@email.com', 'Hello, I am interested in the new Luffy Gear 5 figure - will it be available for pre-order soon? Please let me know the expected release date.'),
('Con_000013', 'Aye Aye', 'ayeaye@gmail.com', 'Hi, Could you check my order status?'),
('Con_000014', 'Ren Saito', 'ren.saito@example.com', 'Can i get your reply? I ask something about figure!');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` varchar(30) NOT NULL,
  `CustomerName` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerName`, `Email`, `Password`) VALUES
('Cus-000001', 'Dazai Osamu', 'dzaiosamu@gmail.com', 'dazai123'),
('Cus-000002', 'Ren Saito', 'rensaito@gmail.com', 'ren123'),
('Cus-000003', 'Kaito Yamada', 'kaitoyamada@example.com', 'kaito123'),
('Cus-000004', 'Hana Kobayashi', 'hanakobayashi@example.com', 'hana123'),
('Cus-000005', 'Yuki Tanaka', 'yukitanaka@example.com', 'yuki123'),
('Cus-000006', 'Haruto Suzuki', 'harutosuzuki@example.com', 'haruto123'),
('Cus-000007', 'Mei Watanabe', 'meiwatanabe@example.com', 'mei123'),
('Cus-000008', 'Daiki Ito', 'daikiito@example.com', 'daiki123'),
('Cus-000009', 'Sakura Yamamoto', 'sakurayamamoto@example.com', 'sakura123'),
('Cus-000010', 'Ryo Kimura', 'ryokimur@example.com', 'ryo123'),
('Cus-000011', 'Mei Fujisawa', 'meiujisawa@example.com', 'mei123'),
('Cus-000012', 'Takashi Ono', 'takashiono@example.com', 'takashi123');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `OrderID` varchar(30) NOT NULL,
  `ProductID` varchar(30) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`OrderID`, `ProductID`, `Quantity`, `Price`) VALUES
('ORD-000001', ' Pr-000001', 1, 110000),
('ORD-000002', ' Pr-000002', 1, 210000),
('ORD-000003', ' Pr-000003', 1, 90000),
('ORD-000004', ' Pr-000017', 1, 110000),
('ORD-000004', ' Pr-000007', 2, 7500),
('ORD-000005', ' Pr-000003', 1, 90000),
('ORD-000005', ' Pr-000009', 1, 49000),
('ORD-000006', ' Pr-000005', 1, 70000),
('ORD-000007', ' Pr-000025', 1, 15000),
('ORD-000007', ' Pr-000027', 1, 38000),
('ORD-000007', ' Pr-000021', 1, 50000),
('ORD-000008', ' Pr-000011', 1, 35000),
('ORD-000008', ' Pr-000007', 2, 7500),
('ORD-000008', ' Pr-000016', 1, 45000),
('ORD-000008', ' Pr-000026', 2, 10500),
('ORD-000009', ' Pr-000015', 1, 200000),
('ORD-000010', ' Pr-000022', 1, 200000),
('ORD-000010', ' Pr-000003', 1, 90000),
('ORD-000010', ' Pr-000005', 1, 70000),
('ORD-000010', ' Pr-000010', 1, 100000),
('ORD-000011', ' Pr-000019', 1, 60000),
('ORD-000012', ' Pr-000023', 1, 30000),
('ORD-000012', ' Pr-000025', 1, 15000),
('ORD-000013', ' Pr-000002', 1, 210000),
('ORD-000014', ' Pr-000008', 1, 360000),
('ORD-000015', ' Pr-000004', 1, 430000),
('ORD-000015', ' Pr-000020', 1, 120000),
('ORD-000015', ' Pr-000017', 1, 110000),
('ORD-000016', ' Pr-000011', 1, 35000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` varchar(30) NOT NULL,
  `CustomerID` varchar(30) NOT NULL,
  `OrderDate` date NOT NULL,
  `TotalQuantity` int(11) NOT NULL,
  `TotalAmount` int(11) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `OrderType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `OrderDate`, `TotalQuantity`, `TotalAmount`, `Status`, `OrderType`) VALUES
('ORD-000001', 'Cus-000001', '2025-01-15', 1, 110000, 'Confirmed', 'Pre-order'),
('ORD-000002', 'Cus-000002', '2025-02-02', 1, 210000, 'Pending', 'Pre-order'),
('ORD-000003', 'Cus-000003', '2025-02-18', 1, 90000, 'Pending', 'Pre-order'),
('ORD-000004', 'Cus-000002', '2025-03-10', 3, 125000, 'Confirmed', 'Mixed'),
('ORD-000005', 'Cus-000001', '2025-03-24', 2, 139000, 'Pending', 'Mixed'),
('ORD-000006', 'Cus-000003', '2025-04-10', 1, 70000, 'Pending', 'Pre-order'),
('ORD-000007', 'Cus-000005', '2025-05-24', 3, 103000, 'Confirmed', 'Instock'),
('ORD-000008', 'Cus-000002', '2025-06-13', 6, 116000, 'Pending', 'Mixed'),
('ORD-000009', 'Cus-000007', '2025-06-25', 1, 200000, 'Confirmed', 'Instock'),
('ORD-000010', 'Cus-000004', '2025-07-04', 4, 460000, 'Pending', 'Pre-order'),
('ORD-000011', 'Cus-000010', '2025-07-12', 1, 60000, 'Confirmed', 'Instock'),
('ORD-000012', 'Cus-000009', '2025-07-15', 2, 45000, 'Confirmed', 'Instock'),
('ORD-000013', 'Cus-000006', '2025-07-18', 1, 210000, 'Pending', 'Pre-order'),
('ORD-000014', 'Cus-000008', '2025-07-22', 1, 360000, 'Pending', 'Pre-order'),
('ORD-000015', 'Cus-000010', '2025-07-24', 3, 660000, 'Confirmed', 'Mixed'),
('ORD-000016', 'Cus-000001', '2025-08-03', 1, 35000, 'Pending', 'Instock');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` varchar(30) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `CategoryID` varchar(30) NOT NULL,
  `StockType` varchar(20) NOT NULL,
  `Image1` text NOT NULL,
  `Image2` text NOT NULL,
  `Image3` text NOT NULL,
  `Image4` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `Price`, `Quantity`, `Description`, `CategoryID`, `StockType`, `Image1`, `Image2`, `Image3`, `Image4`) VALUES
('Pr-000001', 'Jujutsu Kaisen - Gojo Figure', 110000, 24, 'TAMASHII NATIONS - Jujutsu Kaisen - Satoru Gojo, Bandai Spirits FiguartsZERO Collectible Statue', 'Ca-000001', 'Pre-order', 'Additionals/_h3.png', 'Additionals/_h4.jpg', 'Additionals/_h5.jpg', 'Additionals/_h6.jpg'),
('Pr-000002', 'Chainsaw Man - Denji', 210000, 17, 'Chainsaw Man Figure Luminasta Devil of Chainsaw Denji SEGA from Japan', 'Ca-000001', 'Pre-order', 'Additionals/_h7.webp', 'Additionals/_h8.webp', 'Additionals/_h9.webp', 'Additionals/_h10.webp'),
('Pr-000003', 'Haikyu!! - Kageyama Nendoroid', 90000, 22, 'ORANGE ROUGE - Nendoroid 1455 - HAIKYU!! TO THE TOP - Tobio Kageyama: The New Karasuno Ver. [2nd Release]', 'Ca-000002', 'Pre-order', 'Additionals/_h12.webp', 'Additionals/_h13.webp', 'Additionals/_h14.webp', 'Additionals/_h11.webp'),
('Pr-000004', 'Demon Slayer - Nezuko', 430000, 12, 'Demon Slayer: Kimetsu no Yaiba comes a DX edition figma of Nezuko Kamado!\r\n', 'Ca-000003', 'Pre-order', 'Additionals/_h15.jpg', 'Additionals/_h16.jpg', 'Additionals/_h17.jpg', 'Additionals/_h18.jpg'),
('Pr-000005', 'My Dress-Up Darling - Marin Ki', 70000, 30, 'My Dress-Up Darling - Marin Kitagawa AMP+ Prize Figure (Dress of Shizuku Kuroe Ver.)', 'Ca-000004', 'Pre-order', 'Additionals/_h19.jpg', 'Additionals/_h20.jpg', 'Additionals/_h21.jpg', 'Additionals/_h22.jpg'),
('Pr-000006', 'Naruto Uzumaki - Limited Edition', 200000, 20, 'Rare 23CM Uzumaki Naruto Sage Mode Limited Edition Figure – Naruto Shippuden', 'Ca-000001', 'Instock', 'Additionals/_h23.webp', 'Additionals/_h26.webp', 'Additionals/_h27.webp', 'Additionals/_h28.webp'),
('Pr-000007', 'Anime Stickers', 7500, 36, '200Pcs Kids Manga Stickers Mixed Pack,Cartoon Characters Stickers Movie Decorative Sticker for Kids Teens Adults Waterproof Sticker for Water Bottle Laptop', 'Ca-000005', 'Pre-order', 'Additionals/_hp1.jpg', 'Additionals/_hp2.jpg', 'Additionals/_hp3.jpg', 'Additionals/_hp4.jpg'),
('Pr-000008', 'Naofumi Iwatani Figure', 360000, 24, 'The Rising of the Shield Hero\"comes a figma of Naofumi Iwatani!', 'Ca-000003', 'Pre-order', 'Additionals/_hf1.jpg', 'Additionals/_hf2.jpg', 'Additionals/_hf3.jpg', 'Additionals/_hf4.jpg'),
('Pr-000009', 'Naruto Shippuden Mug ', 49000, 17, 'ABYSTYLE Naruto Shippuden Mug & Coaster Twin Gift Set Includes 2 Heat Change Ceramic Color Changing Coffee Tea Mugs and 2 Coasters Anime Manga Drinkware Home & Kitchen Gift 4 Pcs', 'Ca-000008', 'Instock', 'Additionals/_hp5.jpg', 'Additionals/_hp6.jpg', 'Additionals/_hp7.jpg', 'Additionals/_hp8.jpg'),
('Pr-000010', 'Nendoroid Terakomari Vampire Princess', 100000, 21, 'Good Smile Company The Vexations of a Shut-in Vampire Princess: Terakomari Gandesblood Nendoroid Action Figure', 'Ca-000002', 'Pre-order', 'Additionals/_hf5.jpg', 'Additionals/_hf6.jpg', 'Additionals/_hf7.jpg', 'Additionals/_hf8.jpg'),
('Pr-000011', 'ONE PIECE Luffy Gear 5th Backpack', 35000, 14, 'ABYSTYLE - ONE PIECE Luffy Gear 5th Backpack, Black, 42 x 31 x 14 cm', 'Ca-000009', 'Instock', 'Additionals/_hp17.jpg', 'Additionals/_hp18.jpg', 'Additionals/_hp19.jpg', 'Additionals/_hp20.jpg'),
('Pr-000012', 'Chainsaw Man Power Figure', 800000, 13, 'Chainsaw Man Power 1/7 Scale Figure', 'Ca-000001', 'Pre-order', 'Additionals/_hf17.jpg', 'Additionals/_hf18.jpg', 'Additionals/_hf19.jpg', 'Additionals/_hf20.jpg'),
('Pr-000013', 'Big Plushie Hitori Gotoh', 170000, 27, 'Big Plushie Hitori Gotoh: Sparkly-eyed Ver. With Ripe Mango Box Case', 'Ca-000007', 'Instock', 'Additionals/_hp13.jpg', 'Additionals/_hp14.jpg', 'Additionals/_hp15.jpg', 'Additionals/_hp16.jpg'),
('Pr-000014', 'Wind Breaker Acrylic Stand', 24500, 20, 'Set of 7 Anime Wind Breaker Standing Figure Haruka Sakura Acrylic Figurines Statues Standee Ornaments', 'Ca-000006', 'Pre-order', 'Additionals/_hp9.jpg', 'Additionals/_hp10.jpg', 'Additionals/_hp11.jpg', 'Additionals/_hp12.jpg'),
('Pr-000015', 'Tobio Kageyama Pop Up Parade', 200000, 11, 'Haikyu!! to The Top: Tobio Kageyama Pop Up Parade PVC Figure, Multicolor', 'Ca-000004', 'Instock', 'Additionals/_hf16.jpg', 'Additionals/_hf14.jpg', 'Additionals/_hf15.jpg', 'Additionals/_hf13.jpg'),
('Pr-000016', 'Blue Lock - Bachira Meguru', 45000, 24, 'Material	100% heat resistant fibre\r\nWig Color - Black & Yellow\r\nWig Length - 35cm', 'Ca-000010', 'Pre-order', 'Additionals/_hp21.webp', 'Additionals/_hp22.webp', 'Additionals/_hp23.webp', 'Additionals/_hp24.webp'),
('Pr-000017', 'Nendoroid Chainsaw Man AKI', 110000, 11, '(GOOD SMILE COMPANY) Nendoroid Chainsaw Man AKI Hayakawa Non-Scale Plastic Painted Action Figure', 'Ca-000002', 'Instock', 'Additionals/_hf9.jpg', 'Additionals/_hf10.jpg', 'Additionals/_hf11.jpg', 'Additionals/_hf12.jpg'),
('Pr-000018', 'BOCCHI THE ROCK Ryo Yamada', 650000, 10, 'Bocchi the Rock! comes a 1/7 scale figure of Kessoku Bands bassist Ryo Yamada', 'Ca-000001', 'Pre-order', 'Additionals/_c1.jpg', 'Additionals/_c2.jpg', 'Additionals/_c3.jpg', 'Additionals/_c4.jpg'),
('Pr-000019', 'Giyuu Cosplay Wig', 60000, 19, 'Wiggy Mermaid Giyuu Cosplay Wig with Pigtails for DS Costume Short Black Anime Wigs for Adults with Cap for Halloween Party', 'Ca-000010', 'Instock', 'Additionals/_c5.jpg', 'Additionals/_c6.jpg', 'Additionals/_c7.jpg', 'Additionals/_c8.jpg'),
('Pr-000020', 'Shoko Komi Nendoroid Figure', 120000, 18, 'Good Smile Komi Cannot Communicate Shoko Komi Nendoroid Action Figure, Multicolor', 'Ca-000002', 'Pre-order', 'Additionals/_c9.jpg', 'Additionals/_c10.jpg', 'Additionals/_c11.jpg', 'Additionals/_c12.jpg'),
('Pr-000021', 'Anime School Bag', 50000, 27, 'Anime Messenger School Bag. This travel duffle measures 40cm in length, 34cm in width, and 12cm in height, offering ample space for your books, gadgets, and personal belongings. Whether you’re heading to school, going on a trip, or just out for the day, t', 'Ca-000009', 'Instock', 'Additionals/_c13.jpg', 'Additionals/_c14.jpg', 'Additionals/_c15.jpg', 'Additionals/_c16.jpg'),
('Pr-000022', 'Maomao POP UP PARADE Figure Re-run', 200000, 24, 'GOOD SMILE presents a Maomao POP UP PARADE figure Re-run from The Apothecary Diaries.', 'Ca-000004', 'Pre-order', 'Additionals/_c17.jpg', 'Additionals/_c18.jpg', 'Additionals/_c19.jpg', 'Additionals/_c20.jpg'),
('Pr-000023', 'Hunter x Hunter Mug', 30000, 11, 'Hunter x Hunter Mug officially licensed Hunter x Hunter mug Motif Kurapika, Killua Zoldyck, Gon Freecs and Leorio fully printed, capacity 460 ml, satin finish dishwasher and microwave safe', 'Ca-000008', 'Instock', 'Additionals/_c21.jpg', 'Additionals/_c22.jpg', 'Additionals/_c23.jpg', 'Additionals/_c24.jpg'),
('Pr-000024', 'Lycoris Recoil Chisato Figma ', 750000, 10, 'Lycoris Recoil Chisato Action Figure figma GSC w/exclusive parts JP', 'Ca-000003', 'Pre-order', 'Additionals/_c25.webp', 'Additionals/_c26.webp', 'Additionals/_c27.webp', 'Additionals/_c28.webp'),
('Pr-000025', 'Anime Laptop Stickers', 15000, 35, 'Manga Cover My Hero Academia Sticker Bundle - Anime Laptop Stickers', 'Ca-000005', 'Instock', 'Additionals/_c29.webp', 'Additionals/_c30.webp', 'Additionals/_c31.webp', 'Additionals/_c32.webp'),
('Pr-000026', 'Bocchi the Rock Acrylic Stands', 10500, 29, 'New Anime Bocchi the Rock Gotoh Hitori Acrylic Stand Figure Cosplay Fan Gift', 'Ca-000006', 'Pre-order', 'Additionals/_c33.webp', 'Additionals/_c34.webp', 'Additionals/_c35.webp', 'Additionals/_c36.webp'),
('Pr-000027', 'Gaara Plush Doll ', 38000, 23, '20cm Gaara Plush Doll Stuffed Toy Anime Cosplay Plushies Gift 8', 'Ca-000007', 'Instock', 'Additionals/_c39.webp', 'Additionals/_c38.webp', 'Additionals/_c37.webp', 'Additionals/_c40.webp');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `PurchaseID` varchar(30) NOT NULL,
  `AdminID` varchar(30) NOT NULL,
  `SupplierID` varchar(30) NOT NULL,
  `TotalQuantity` int(11) NOT NULL,
  `TotalPrice` int(11) NOT NULL,
  `PurchaseDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`PurchaseID`, `AdminID`, `SupplierID`, `TotalQuantity`, `TotalPrice`, `PurchaseDate`) VALUES
('Po-000001', 'Ad-000003', 'Su-000001', 29, 1450000, '2025-01-05'),
('Po-000002', 'Ad-000003', 'Su-000001', 20, 1600000, '2025-01-18'),
('Po-000003', 'Ad-000003', 'Su-000001', 10, 1700000, '2025-02-02'),
('Po-000004', 'Ad-000003', 'Su-000005', 15, 2250000, '2025-02-14'),
('Po-000005', 'Ad-000003', 'Su-000001', 12, 840000, '2025-03-01'),
('Po-000006', 'Ad-000001', 'Su-000002', 17, 1530000, '2025-03-15'),
('Po-000007', 'Ad-000001', 'Su-000006', 18, 2700000, '2025-04-03'),
('Po-000008', 'Ad-000001', 'Su-000004', 15, 1200000, '2025-04-22'),
('Po-000009', 'Ad-000001', 'Su-000002', 10, 150000, '2025-05-07'),
('Po-000010', 'Ad-000001', 'Su-000001', 10, 3500000, '2025-05-19'),
('Po-000011', 'Ad-000002', 'Su-000005', 20, 2400000, '2025-06-02'),
('Po-000012', 'Ad-000002', 'Su-000001', 16, 480000, '2025-06-15'),
('Po-000013', 'Ad-000002', 'Su-000005', 20, 300000, '2025-06-28'),
('Po-000014', 'Ad-000002', 'Su-000003', 30, 90000, '2025-07-10'),
('Po-000015', 'Ad-000002', 'Su-000001', 7, 4550000, '2025-07-11'),
('Po-000016', 'Ad-000001', 'Su-000003', 20, 100000, '2025-07-12'),
('Po-000017', 'Ad-000001', 'Su-000005', 14, 2380000, '2025-07-13'),
('Po-000018', 'Ad-000001', 'Su-000002', 20, 400000, '2025-07-14'),
('Po-000019', 'Ad-000001', 'Su-000004', 30, 210000, '2025-07-15'),
('Po-000020', 'Ad-000001', 'Su-000005', 15, 345000, '2025-07-16'),
('Po-000021', 'Ad-000003', 'Su-000006', 20, 600000, '2025-07-17'),
('Po-000022', 'Ad-000003', 'Su-000001', 20, 1000000, '2025-07-18'),
('Po-000023', 'Ad-000003', 'Su-000002', 15, 4050000, '2025-07-19'),
('Po-000024', 'Ad-000003', 'Su-000006', 4, 2600000, '2025-07-20'),
('Po-000025', 'Ad-000003', 'Su-000005', 5, 750000, '2025-07-23'),
('Po-000026', 'Ad-000003', '', 2, 40000, '2025-08-03');

-- --------------------------------------------------------

--
-- Table structure for table `purchasedetails`
--

CREATE TABLE `purchasedetails` (
  `PurchaseID` varchar(30) NOT NULL,
  `ProductID` varchar(30) NOT NULL,
  `UnitPrice` int(11) NOT NULL,
  `UnitQuantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchasedetails`
--

INSERT INTO `purchasedetails` (`PurchaseID`, `ProductID`, `UnitPrice`, `UnitQuantity`) VALUES
('Po-000001', 'Pr-000005', 50000, 29),
('Po-000002', 'Pr-000012', 650000, 7),
('Po-000003', 'Pr-000026', 5000, 20),
('Po-000004', 'Pr-000002', 170000, 14),
('Po-000005', 'Pr-000016', 20000, 20),
('Po-000006', 'Pr-000025', 7000, 30),
('Po-000007', 'Pr-000009', 23000, 15),
('Po-000008', 'Pr-000021', 30000, 20),
('Po-000009', 'Pr-000003', 50000, 20),
('Po-00010', 'Pr-000008', 270000, 15),
('Po-00011', 'Pr-000012', 650000, 4),
('Po-00012', 'Pr-000007', 3000, 30),
('Po-00013', 'Pr-000027', 15000, 20),
('Po-00014', 'Pr-000019', 30000, 16),
('Po-00015', 'Pr-000010', 80000, 20),
('Po-00016', 'Pr-000015', 170000, 10),
('Po-00017', 'Pr-000006', 150000, 15),
('Po-00018', 'Pr-000017', 70000, 12),
('Po-00019', 'Pr-000020', 90000, 17),
('Po-00020', 'Pr-000022', 150000, 18),
('Po-00021', 'Pr-000001', 80000, 15),
('Po-00022', 'Pr-000023', 15000, 10),
('Po-00023', 'Pr-000004', 350000, 10),
('Po-00024', 'Pr-000013', 120000, 20),
('Po-00025', 'Pr-000022', 150000, 5),
('', 'Pr-000013', 20000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `ReviewID` varchar(30) NOT NULL,
  `CustomerName` varchar(30) NOT NULL,
  `CustomerEmail` varchar(30) NOT NULL,
  `Rating` float NOT NULL,
  `Review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`ReviewID`, `CustomerName`, `CustomerEmail`, `Rating`, `Review`) VALUES
('Rev_000001', 'Ren Saito', 'ren.saito@example.com', 5, 'Perfect condition! The Demon Slayer figure arrived earlier than expected.'),
('Rev_000002', 'Aoi Takahashi', 'aoi@example.com', 4, 'Great detail but the box had minor damage during shipping.'),
('Rev_000003', 'Yuki Tanaka', 'yuki@example.com', 5, 'Absolutely stunning quality! Worth every yen.'),
('Rev_000004', 'Mei Watanabe', 'mei@example.com', 3, 'Product was good but took 3 weeks to ship internationally.'),
('Rev_000005', 'Kaito Yamada', 'kaito@example.com', 5, 'Perfect service! Will definitely order again.'),
('Rev_000006', 'Kenji Matsuda', 'kenji.m@example.com', 5, 'The One Piece figures arrived in perfect condition with excellent packaging. Very happy with the details.'),
('Rev_000007', 'Aiko Takahashi ', 'aiko.t@example.com', 4, 'Naruto Shippuden figure looks great, though shipping took longer than estimated.'),
('Rev_000008', 'Ryota Suzuki', 'ryota.s@example.com', 5, 'Amazing quality on the Demon Slayer Nezuko figure! Even better than the product photos.'),
('Rev_000009', 'Naomi Watanabe', 'naomi.w@example.com', 3, 'Jujutsu Kaisen Gojo face sculpt is slightly different from promo images, but still decent.'),
('Rev_000010', 'Haru Tanaka', 'haru.t@example.com', 5, 'Perfect Bleach Ichigo Bankai figure! Fast shipping and careful packaging. Will order again.'),
('Rev_000011', 'Dazai Osamu', 'dazai@example.com', 5, 'Amazing quality! The Naruto figure exceeded my expectations.'),
('Rev_000012', 'Gojo Satoru', 'gojo@example.com', 4, 'Fast shipping Received my order in perfect condition.'),
('Rev_000013', 'Nga Shwe', 'innumakitoge@gmail.com', 5, 'Ryo Yamada figure looks great.'),
('Rev_000014', 'Phyu Phyu', 'phyoemyatmon123@gmail.com', 3, 'Hello, I am new customer and i want to know pre-order duration.');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` varchar(30) NOT NULL,
  `SupplierName` varchar(30) NOT NULL,
  `SupplierEmail` varchar(50) NOT NULL,
  `SupplierPhoneNumber` varchar(50) NOT NULL,
  `SupplierAddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `SupplierName`, `SupplierEmail`, `SupplierPhoneNumber`, `SupplierAddress`) VALUES
('Su-000001', 'Good Smile Company', 'sales@goodsmile.jp', '+81 3-6712-2000', '2-5-8 Higashikanda, Chiyoda, Tokyo, Japan'),
('Su-000002', 'Banpresto', 'info@banpresto.co.jp', '+81 3-6716-2000', '10-11-12 Shibuya, Shibuya, Tokyo, Japan'),
('Su-000003', 'SEGA Prize', 'contact@sega-prize.jp', '+81 3-5297-8800', '13-14-15 Roppongi, Minato, Tokyo, Japan'),
('Su-000004', 'Furyu', 'sales@furyu.jp', '+81 3-5843-6800', '16-17-18 Ikebukuro, Toshima, Tokyo, Japan\r\n'),
('Su-000005', 'Bandai Spirits', 'contact@bandaispirits.com', '+81 3-6716-1000', '5-37-11 Shiba, Minato, Tokyo, Japan'),
('Su-000006', 'Max Factory', 'info@maxfactory.jp', '+81 3-3863-5111', '3-22-9 Nihonbashi, Chuo, Tokyo, Japan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ContactID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`PurchaseID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ReviewID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
