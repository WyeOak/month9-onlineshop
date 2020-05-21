use `internet_store`;

create table `Type`
(
    `id`   INT auto_increment NOT NULL,
    `name` varchar(128)       NOT NULL,
    `icon` varchar(128)       NOT NULL,
    PRIMARY KEY (`id`)
);

create table `Product`
(
    `id`          INT auto_increment not null,
    `name`        varchar(128)       NOT NULL,
    `image`       varchar(128)       NOT NULL,
    `description` varchar(128)       NOT NULL,
    `qty`         int                NOT NULL,
    `price`       double             not null,
    `type_id`     int                not null,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_type` FOREIGN KEY (`type_id`) REFERENCES `Type` (`id`)
);

insert into `type` (`name`, `icon`)
values
     ('Steak', 'steaks.png'),
    ('Dessert', 'dessert.png'),
     ('Sushi', 'sushi.png'),
     ('Pizza', 'pizza.png'),
    ('Fast food', 'fast_food.png');


insert into `Product` (`name`, `image`, `description`, `qty`, `price`, `type_id`) values
('Beefsteak', 'beef_steak.png', 'long text for product1', 1, 1, 1),
('Lamb steak', 'lamb_steak.png', 'long text for product3', 1, 3, 1),
('Pork steak', 'pork_steak.png', 'long text for product3', 1, 3, 1),
('Chicken steak', 'chicken_steak.png', 'long text for product3', 1, 3, 1),

('Spotted Dick', 'spotted_dick.png', 'long text for product3', 1, 3, 2),
('Tiramisu', 'tiramisu.png', 'long text for product3', 1, 3, 2),
('Hotteok', 'hotteok.png', 'long text for product3', 1, 3, 2),

('Kappamaki', 'Kappamaki.png', 'long text for product3', 1, 3, 3),
('Nattōmaki', 'Nattōmaki.png', 'long text for product3', 1, 3, 3),
('Tekkamaki', 'Tekkamaki.png', 'long text for product3', 1, 3, 3),
('Futomaki', 'Futomaki.png', 'long text for product3', 1, 3, 3),

('Buffalo chicken', 'pizza1.png', 'long text for product3', 1, 3, 4),
('Chipolte chicken', 'pizza2.png', 'long text for product3', 1, 3, 4),
('Chipolte steak', 'pizza3.png', 'long text for product3', 1, 3, 4),

('Burger', 'burger.png', 'long text for product3', 1, 3, 5),
('Hot dog', 'hot_bog.png', 'long text for product3', 1, 3, 5),
('Shaurma', 'Shaurma.png', 'long text for product3', 1, 3, 5);

create table `User`
(
    `id`       INT auto_increment NOT NULL,
    `login`    varchar(128)       NOT NULL,
    `email`    varchar(128)       NOT NULL,
    `password` varchar(128)       NOT NULL,
    `role`     varchar(128)       not null,
    `enabled`  boolean,
    PRIMARY KEY (`id`)
);

create table `Cart`
(
    `id`            int auto_increment,
    `session`       varchar(128)       not null,
    `user_id`       int default null
,
    primary key (`id`),
    constraint `fk_user` foreign key (`user_id`) references `User` (`id`)
);

create table `Cart_Product`
(
    `id` int auto_increment not null ,
    `session` varchar(255) not null ,
    `cart_id` int ,
    `product_id` int not null ,
    `qty` int not null ,
    `sum` double not null ,
    primary key (`id`),
    constraint `fk_cart` foreign key (`cart_id`) references `Cart` (`id`),
    constraint `fk_product_` foreign key (`product_id`) references `Product` (`id`)
)


