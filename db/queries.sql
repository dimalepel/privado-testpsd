/*
 * 1. Create db
 */
CREATE DATABASE `omicrontest`;

/*
 * 2. Create discounts table
 */
CREATE TABLE `discount` (
    `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `title` varchar(255) NOT NULL,
    `days` varchar(255) NOT NULL,
    `price` varchar(255) NOT NULL,
    `download` varchar(255) NOT NULL,
    `speed` varchar(255) NOT NULL,
    `description` text NOT NULL,
    `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
 * 3. Create 3 discounts into the discount table
 */
INSERT INTO `discount` (`id`, `title`, `days`, `price`, `download`, `speed`, `description`, `flag`) VALUES
(1, 'Hosting1', 'XXXX Days Retention - U.S. + E.U. Servers', '$x.xx/mo for 1yr', 'Unlimited downloads', 'Unlimited speed', '<ul class=\"discount-item__detail\">\r\n<li class=\"discount-item__detail-item\">All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary</li>\r\n</ul>', 1),
(2, 'Hosting2', 'XXXX Days Retention - U.S. + E.U. Servers', '$x.xx/mo for 1yr', 'Unlimited downloads', 'Unlimited speed', '<ul class=\"discount-item__detail\">\r\n                        <li class=\"discount-item__detail-item\">All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary</li>\r\n</ul>', 1),
(3, 'Hosting3', 'XXXX Days Retention - U.S. + E.U. Servers', '$x.xx/mo for 1yr', 'Unlimited downloads', 'Unlimited speed', '<ul class=\"discount-item__detail\">\r\n                        <li class=\"discount-item__detail-item\">All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary</li>\r\n</ul>', 0);
