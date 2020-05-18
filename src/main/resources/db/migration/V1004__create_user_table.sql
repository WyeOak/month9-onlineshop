use `internet_store`;

create table `users`
(
    `id`       INT auto_increment NOT NULL,
    `login`    varchar(128)       NOT NULL,
    `email`    varchar(128)       NOT NULL,
    `password` varchar(128)       NOT NULL,
    `role`     varchar(128)       not null,
    `enabled`  boolean,
    PRIMARY KEY (`id`)
);