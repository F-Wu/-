-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        10.5.5-MariaDB - mariadb.org binary distribution
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 正在导出表  shop.admin 的数据：~12 rows (大约)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `username`, `password`, `sex`, `ph`) VALUES
	(4, '李四', '1234', '女', '33333333333'),
	(6, 'sqy', '1234', '女', '11111111111'),
	(7, '宋秋熠', '1234', '女', '000000'),
	(8, '马薇淇', '1234', '女', '77777777777'),
	(10, '莉莉', '1234', '女', '123456789'),
	(11, '王菲', '1234', '女', '123456789000'),
	(12, '奶茶', '1234678999', '女', '123456789000'),
	(13, '总局', '1234', '女', '123456789000'),
	(14, 'aaaa', '1234', '女', '111111111111'),
	(15, 'abcd', '1234', '女', '111111111111'),
	(16, 'sy', '1234', '男', '123456789000'),
	(18, 'abcd', '1234', '男', '123456789000');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- 正在导出表  shop.scenic 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `scenic` DISABLE KEYS */;
INSERT INTO `scenic` (`id`, `title`, `author`, `E`, `timeS`, `introduce`, `Collection`, `give`, `discuss`, `img`) VALUES
	(2, '丁真的世界', '莉莉', 'Ding Zhen\'s world', '2020-12-21', '你一定听过康定情歌，康定所在的四川甘孜州就是丁真的家乡。著名的贡嘎雪山、稻城亚丁、海螺沟、丹巴藏寨……全在这里。它是六世达赖喇嘛仓央嘉措最心心念的地方，不往别处去飞，只到理塘就回。', '12355', '52355', '5555', './img/游记/deguo.jpg'),
	(3, '安集海大峡谷', '木子', 'AnJiHai Grand Canyon', '2020-12-16', '被称为中国版的“科罗拉多大峡谷”，\r\n恢弘、壮阔的现代派巨幅抽象画卷，它将平整的大地切割开来，\r\n形成一道道错落有致的沟壑，\r\n在经历成千上万乃至上亿年的冲刷后，\r\n形成不可思议的地质奇观它色彩瑰丽、沟壑、险峰密布，\r\n好似飘在天山北坡的绚丽彩带，\r\n堪称一条令人叹为观止的壮美峡谷。北疆峡谷，晴风骏马，天涯尽头，一生至少', '850', '7562', '789', './img/游记/deguo2.jpg'),
	(4, '毛垭大草原', 'Ben', 'Maoya Grassland', '2020-12-23', '毛垭大草原位于四川省甘孜州理塘县县城以西，群山的环抱之中，如海的草原郁郁葱葱，这就是毛垭大草原。夏日，湛蓝的晴空下，牛羊成群，绿草连天，盛开的野花姹紫嫣红，打一个滚就是一身花香；秋天，晴空高远，云朵洁白，草木金黄；冬日则是白雪皑皑，原驰蜡像。季节的变化赋予大草原无边的神韵与风姿。如果有一天你拥有一片大草原，你会做何选择？\r\n                                            ', '5868', '5663', '5355', './img/游记/deguo3.jpg'),
	(5, '将德国的美好时光与幸福心态定格', '木子', 'Determine the good time and happiness of Germany', '2020-12-01', '                                                德国天鹅城堡，又称新天鹅堡是德国的象征,由于是迪斯尼城堡的原型，也有人叫白雪公主城堡。建于1869年。这座城堡是巴伐利亚国王路德维希二世的行宫之一。是德国境内拍照最多的建筑物，也是最受欢迎的旅游景点之一。\r\n                                            ', '4255', '34454', '4534', './img/游记/deguo3.jpg'),
	(37, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', './img/游记/deguo3.jpg');
/*!40000 ALTER TABLE `scenic` ENABLE KEYS */;

-- 正在导出表  shop.user 的数据：~7 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `name`, `sex`, `address`) VALUES
	(2, '吴亦凡', '男', '广州'),
	(3, '李四', '男', '湖南'),
	(4, '王丽', '女', '北京'),
	(5, '王菲', '女', '北京'),
	(6, '王菲', '女', '厦门'),
	(8, '五月天', '男', '北京'),
	(9, '王菲', '男', 'ggh');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
