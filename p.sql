-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 
-- 伺服器版本： 8.0.17
-- PHP 版本： 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `p`
--

-- --------------------------------------------------------

--
-- 資料表結構 `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('4f2bb0bc3192');

-- --------------------------------------------------------

--
-- 資料表結構 `collect`
--

CREATE TABLE `collect` (
  `id` int(11) NOT NULL,
  `postid` int(11) DEFAULT NULL,
  `author` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `like`
--

CREATE TABLE `like` (
  `id` int(11) NOT NULL,
  `postid` int(11) DEFAULT NULL,
  `author` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `body` varchar(100) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `postid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `head` varchar(64) DEFAULT NULL,
  `main` varchar(64) DEFAULT NULL,
  `body` text,
  `timestamp` date DEFAULT NULL,
  `tag` varchar(64) DEFAULT NULL,
  `author` varchar(80) DEFAULT NULL,
  `like` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `saves`
--

CREATE TABLE `saves` (
  `id` int(11) NOT NULL,
  `head` varchar(64) DEFAULT NULL,
  `main` varchar(64) DEFAULT NULL,
  `body` text,
  `timestamp` date DEFAULT NULL,
  `tag` varchar(64) DEFAULT NULL,
  `author` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `spot`
--

CREATE TABLE `spot` (
  `id` int(11) NOT NULL,
  `head` varchar(100) DEFAULT NULL,
  `main` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `tag` varchar(64) DEFAULT NULL,
  `url` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `spot`
--

INSERT INTO `spot` (`id`, `head`, `main`, `pic`, `tag`, `url`) VALUES
(1, '木下靜涯舊居', '淡水的世外莊', 'static/images/木下靜涯舊居1.jpg', '景點', 'spot1_1'),
(2, '齊柏林空間', '齊柏林的視野', 'static/images/齊柏林空間.jpg', '景點', 'spot1_2'),
(3, '紅樹林自然保留區/紅樹林步道', '紅樹林生態的奧妙', 'static/images/紅樹林自然保留區.jpg', '景點', 'spot1_3'),
(4, '淡水無極天元宮', '宮廟及櫻花', 'static/images/天元宮01.jpg', '景點', 'spot1_4'),
(5, '滬尾藝文休閒園區', '藏身淡水的綠色秘境', 'static/images/滬尾藝文休閒園區.jpg', '景點', 'spot1_5'),
(6, '淡水和平公園', '別具意義的紀念公園', 'static/images/淡水和平公園 .jpg', '景點', 'spot1_6'),
(7, '雲門舞集-雲門劇場', '充滿意境的劇場', 'static/images/雲門舞集-雲門劇場1.jpg', '景點', 'spot1_7'),
(8, '女友の扭蛋 扭蛋專賣店', '少女心天堂', 'static/images/女友的扭蛋01.jpg', '景點', 'spot1_8'),
(9, '淡水海關碼頭', '展覽+河畔音樂會', 'static/images/淡水海關碼頭 3.jpg', '景點', 'spot1_9'),
(10, '漁人碼頭&情人橋&情人塔', '休閒好去處', 'static/images/漁人碼頭_情人橋_情人塔1.jpg', '景點', 'spot1_10'),
(11, '沙崙海灘', '一同散步欣賞夕落', 'static/images/沙崙海灘 2.jpg', '景點', 'spot1_11'),
(12, '小時候彈珠堂', '兒時回憶', 'static/images/小時候彈珠堂.jpg', '景點', 'spot1_12'),
(13, '工研酢淡水廠 | 益壽多文化館', '觀光工廠', 'static/images/blank.png', '景點', 'spot1_13'),
(14, '水管公園', '淡水看落日最佳景點之一', 'static/images/水管公園1.jpg', '景點', 'spot1_14'),
(15, '小美術館 ArtBox', '藝術寶盒', 'static/images/小美術館ArtBox.jpg', '景點', 'spot1_15'),
(16, '滬尾櫻花大道', '世界最長櫻花大道', 'static/images/滬尾櫻花大道03.jpg', '景點', 'spot1_16'),
(17, '美麗新廣場MIRANEW SQUARE', '新市鎮大商場', 'static/images/美麗新廣場.jpg', '景點', 'spot1_17'),
(18, '稼日蒔光', '拍照聖地', 'static/images/稼日時光.jpg', '景點', 'spot1_18'),
(19, '程氏古厝', '漫遊清法戰爭遺跡', 'static/images/程氏古厝2.jpg', '景點', 'spot2_1'),
(20, '殼牌倉庫', '原英商嘉士洋行倉庫', 'static/images/殼牌倉庫4.jpg', '景點', 'spot2_2'),
(21, '日本警官宿舍', '唯美日式老宅', 'static/images/日本警官宿舍01.jpg', '景點', 'spot2_3'),
(22, '多田榮吉故居', '京都木屋，私房秘境', 'static/images/多田榮吉故居.jpg', '景點', 'spot2_4'),
(23, '前清淡水關稅務司官邸(小白宮)', '淡雅的白色拱門', 'static/images/前清淡水關稅務司官邸滬尾砲台公園(小白宮)2.jpg', '景點', 'spot2_5'),
(24, '滬尾砲台', '清法戰爭後清朝最大的防禦工事', 'static/images/滬尾砲台公園4.jpg', '景點', 'spot2_6'),
(25, '淡水紅毛城&園區&英國領事館', '看盡淡水滄桑歷史', 'static/images/淡水紅毛城_園區_英國領事館3.jpg', '景點', 'spot2_7'),
(26, '一滴水紀念館', '日式禪風庭院', 'static/images/一滴水紀念館1.jpg', '景點', 'spot2_8'),
(27, '淡水老街', '感受時空交錯烙印下的美好', 'static/images/淡水老街.jpg', '景點', 'spot2_9'),
(28, '淡水福佑宮&淡水彩繪階梯3D意象', '淡水媽祖宮保佑你', 'static/images/淡水福佑宮_淡水彩繪階梯3D意象1.jpg', '景點', 'spot2_10'),
(29, '滬尾偕醫館', '馬偕紀念醫院發源地', 'static/images/滬尾偕醫館.jpg', '景點', 'spot2_11'),
(30, '淡水禮拜堂', '帶有濃濃的懷舊風，百年古鐘與古風琴', 'static/images/淡水禮拜堂3.jpg', '景點', 'spot2_12'),
(31, '得忌利士洋行', '老洋行，新淡水', 'static/images/得忌利士洋行3.jpg', '景點', 'spot2_13'),
(32, '理學堂大書院', '牛津學堂', 'static/images/blank.png', '景點', 'spot2_14'),
(33, '鄞山寺（汀州會館）', '汀洲人的同鄉會館', 'static/images/鄞山寺汀州會館02.jpg', '景點', 'spot2_15'),
(34, '淡水龍山寺', '古廟悠揚滬尾街', 'static/images/淡水龍山寺5.jpg', '景點', 'spot2_16'),
(35, '公司田溪橋遺跡', '新北市市定古蹟', 'static/images/公司田溪橋遺跡01.jpg', '景點', 'spot2_17'),
(36, 'Uncle Duncan', '一周只營業10小時的秘境景觀餐廳', 'static/images/Uncle Duncan02.jpg', '美食', 'spot3_1'),
(37, '福容大飯店咖啡廳', '田園咖啡廳', 'static/images/福容大飯店咖啡廳.jpg', '美食', 'spot3_2'),
(38, 'Binma Area 134', '藏身山區的絕美秘境', 'static/images/Binma Area 134 3.jpg', '美食', 'spot3_3'),
(39, '紅樓咖啡館Rc1899 Café', '紅磚老宅風格咖啡廳', 'static/images/紅樓咖啡館Rc1899 Café1.jpg', '美食', 'spot3_4'),
(40, 'Ancre café安克黑咖啡', '淡水河畔邊咖啡廳', 'static/images/Ancre café安克黑咖啡2.jpg', '美食', 'spot3_5'),
(41, '領事館咖啡', '淡水老街歐式景觀咖啡廳', 'static/images/領事館咖啡2.jpg', '美食', 'spot3_6'),
(42, '淡水長堤咖啡館', '河景第一排賞日落', 'static/images/淡水長堤咖啡館3.jpg', '美食', 'spot3_7'),
(43, '淡水雲門星巴克', '森林系星巴克', 'static/images/淡水雲門星巴克.jpg', '美食', 'spot3_8'),
(44, '沒有特別計畫café', '淡水隱藏版甜點店', 'static/images/沒有特別計畫01.jpg', '美食', 'spot3_9'),
(45, '閑恬Mydeli手作美味坊', '荷蘭生活美學的巷弄甜點店', 'static/images/閒恬02.jpg', '美食', 'spot3_10'),
(46, '石牆仔內咖啡館', '百年古厝的玻璃木屋', 'static/images/石牆仔內04.jpg', '美食', 'spot3_11'),
(47, '嗜甜', '簡單美好的甜點店', 'static/images/嗜甜01.jpg', '美食', 'spot3_12'),
(48, '天使熱愛的生活', '吹海風，看夕陽', 'static/images/天使熱愛的生活01.jpg', '美食', 'spot3_13'),
(49, '媽媽嘴咖啡(淡水樂活店)', '看風景好去處', 'static/images/媽媽嘴咖啡(淡水樂活店) 2.jpg', '美食', 'spot3_14'),
(50, '紅毛城旁邊咖啡廳', '南法鄉村感的咖啡廳', 'static/images/紅毛城旁邊咖啡廳.jpg', '美食', 'spot3_15'),
(51, '英國奶奶Britshake淡水', '道地的英式料理餐廳', 'static/images/英國奶奶Britshake淡水1.jpg', '美食', 'spot3_16'),
(52, 'P Cafe', '老宅X精品咖啡', 'static/images/P Cafe1.jpg', '美食', 'spot3_17'),
(53, 'Handshop 撼動屋(英專店)', '小清新甜點店', 'static/images/Handshop 撼動屋(英專店)3.jpg', '美食', 'spot3_18'),
(54, '魚見浜燒', '平價海鮮餐廳', 'static/images/魚見浜燒2.jpg', '美食', 'spot4_1'),
(55, '小川鍋物', '小農蔬菜火鍋', 'static/images/小川鍋物01.jpg', '美食', 'spot4_2'),
(56, '紅色穀倉', '美式景觀餐廳', 'static/images/紅色穀倉1.jpg', '美食', 'spot4_3'),
(57, 'La Villa Danshui', '在淡水夕照下用餐', 'static/images/La Villa Danshui .jpg', '美食', 'spot4_4'),
(58, '水灣BALI 景觀餐廳-榕堤店', '峇里島度假風餐廳', 'static/images/水灣BALI 景觀餐廳-榕堤店1.jpg', '美食', 'spot4_5'),
(59, 'Pescador Cafe 漁夫先生', '享受平日用餐小確幸', 'static/images/Pescador Cafe 漁夫先生.jpg', '美食', 'spot4_6'),
(60, '黑殿飯店', '50年懷舊排骨飯', 'static/images/黑殿飯店2.jpg', '美食', 'spot4_7'),
(61, '好食寨', '全素中式料理', 'static/images/好食寨.jpg', '美食', 'spot4_8'),
(62, '墨尼尼義大利餐廳', '道地的義式料理', 'static/images/墨尼尼義大利餐廳1.jpg', '美食', 'spot4_9'),
(63, 'MiNi廚房', '平價又美味的義大利麵', 'static/images/Mini廚房01.jpg', '美食', 'spot4_10'),
(64, '牛Bar 淡海店', '淡水商場餐廳', 'static/images/牛Bar淡海店.jpg', '美食', 'spot4_11'),
(65, '時光樹影', '浪漫夕陽打卡新熱點', 'static/images/時光樹影 01.jpg', '美食', 'spot4_12'),
(66, '之間茶食器', '用食物和器物講故事', 'static/images/之間茶食器 01.jpg', '美食', 'spot4_13'),
(67, 'Pallet Bistro•木棧板餐廳', '異國料理結合當地美食', 'static/images/Pallet bistro木棧板餐廳01.jpg', '美食', 'spot4_14'),
(68, 'Number 7 美式餐廳', '美式鄉村風早午餐', 'static/images/Number 7美式餐廳02.jpg', '美食', 'spot4_15'),
(69, '星月 Hoshizuki', '日式定食餐廳', 'static/images/blank.png', '美食', 'spot4_16'),
(70, '小李川菜', '便宜又大碗', 'static/images/小李川菜01.jpg', '美食', 'spot4_17'),
(71, '源味滷肉飯', '在地必嚐魯肉飯', 'static/images/源味滷肉飯2.jpg', '美食', 'spot4_18'),
(72, 'DAPUNZ 達胖滋', '現做的美式漢堡攤', 'static/images/blank.png', '美食', 'spot4_19'),
(73, '雞道樂', '雞湯系拉麵', 'static/images/雞道樂.jpg', '美食', 'spot4_20'),
(74, 'Otto Pasta', '隱身住宅區的平價美食', 'static/images/Otto Pasta .jpg', '美食', 'spot4_21'),
(75, '一個人的披薩', '美食獨享的披薩', 'static/images/一個人的披薩.jpg', '美食', 'spot4_22'),
(76, '魔法咖哩', '平價咖哩與豪華景觀', 'static/images/魔法咖哩02.jpg', '美食', 'spot4_23'),
(77, '越南小棧', '划算的越南美食', 'static/images/越南小棧.jpg', '美食', 'spot4_24'),
(78, 'Kooks 異嗑堂 (K1 Danshui 淡水廚房)', '濃濃美式氣息餐廳', 'static/images/kook異嗑堂.jpg', '美食', 'spot4_25'),
(79, '米特食堂MeetEuropa', '歐風料理', 'static/images/米特食堂01.jpg', '美食', 'spot4_26'),
(80, '蔦燒日式居酒屋-淡水新市店', '武士居酒屋', 'static/images/蔦燒日氏居酒屋.jpg', '美食', 'spot4_27'),
(81, 'Come See Pizza', '可以獨享的披薩', 'static/images/blank.png', '美食', 'spot4_28'),
(82, '亨米廚房 Henmi Kitchen', '中式創意餐酒館', 'static/images/亨米廚房.jpg', '美食', 'spot4_29'),
(83, '朝日夫婦', '來一碗沖繩刨冰', 'static/images/朝日夫婦2.jpg', '美食', 'spot5_1'),
(84, '浪花丸', '邊吃冰邊欣賞夕照', 'static/images/浪花丸1.jpg', '美食', 'spot5_2'),
(85, '新建成餅店', '芝麻蛋黃大餅', 'static/images/新建成餅店.jpg', '美食', 'spot5_3'),
(86, '倆樂 LiAng Le', '花生捲冰淇淋', 'static/images/倆樂01.jpg', '美食', 'spot5_4'),
(87, '賴記雞蛋糕', '古早味銅板美食', 'static/images/賴記雞蛋糕.jpg', '美食', 'spot5_5'),
(88, '大吉祥香豆富', '必吃麻辣鴨血臭豆腐', 'static/images/大吉祥豆富02.jpg', '美食', 'spot5_6'),
(89, '胖達關東煮', '給妳幸福溫情的一餐', 'static/images/胖達關東煮01.jpg', '美食', 'spot5_7'),
(90, '源味本鋪古早味現烤蛋糕', '手工古早味蛋糕', 'static/images/源味本舖古早味現烤蛋糕.jpg', '美食', 'spot5_8'),
(91, '淡水滬尾豆花店', '在地人最愛吃的三色豆花', 'static/images/淡水滬尾豆花店.jpg', '美食', 'spot5_9'),
(92, '麻吉奶奶鮮奶麻糬', '手工鮮奶麻糬', 'static/images/麻吉奶奶鮮奶麻糬.jpg', '美食', 'spot5_10');

-- --------------------------------------------------------

--
-- 資料表結構 `suggest`
--

CREATE TABLE `suggest` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `body` varchar(100) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `userreister`
--

CREATE TABLE `userreister` (
  `id` int(11) NOT NULL,
  `userid` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- 資料表索引 `collect`
--
ALTER TABLE `collect`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`),
  ADD KEY `postid` (`postid`);

--
-- 資料表索引 `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`),
  ADD KEY `postid` (`postid`);

--
-- 資料表索引 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_message_timestamp` (`timestamp`);

--
-- 資料表索引 `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`),
  ADD KEY `ix_posts_timestamp` (`timestamp`);

--
-- 資料表索引 `saves`
--
ALTER TABLE `saves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`),
  ADD KEY `ix_saves_timestamp` (`timestamp`);

--
-- 資料表索引 `spot`
--
ALTER TABLE `spot`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `suggest`
--
ALTER TABLE `suggest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ix_suggest_timestamp` (`timestamp`);

--
-- 資料表索引 `userreister`
--
ALTER TABLE `userreister`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `collect`
--
ALTER TABLE `collect`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `like`
--
ALTER TABLE `like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `saves`
--
ALTER TABLE `saves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `spot`
--
ALTER TABLE `spot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `suggest`
--
ALTER TABLE `suggest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `userreister`
--
ALTER TABLE `userreister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `collect`
--
ALTER TABLE `collect`
  ADD CONSTRAINT `collect_ibfk_1` FOREIGN KEY (`author`) REFERENCES `userreister` (`userid`),
  ADD CONSTRAINT `collect_ibfk_2` FOREIGN KEY (`postid`) REFERENCES `posts` (`id`);

--
-- 資料表的限制式 `like`
--
ALTER TABLE `like`
  ADD CONSTRAINT `like_ibfk_1` FOREIGN KEY (`author`) REFERENCES `userreister` (`userid`),
  ADD CONSTRAINT `like_ibfk_2` FOREIGN KEY (`postid`) REFERENCES `posts` (`id`);

--
-- 資料表的限制式 `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author`) REFERENCES `userreister` (`userid`);

--
-- 資料表的限制式 `saves`
--
ALTER TABLE `saves`
  ADD CONSTRAINT `saves_ibfk_1` FOREIGN KEY (`author`) REFERENCES `userreister` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
