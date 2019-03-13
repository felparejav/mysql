create table if not exists `publications` (
    `name` varchar(250) not null,
    `avatar` varchar(250), 
    primary key (`name`) 
);

create table if not exists `reviewers` (
    `name` varchar(250) not null,
    `publication` varchar(250),
    `avatar` varchar(250),
    primary key (`name`),
    constraint `fk_publication` foreign key (`publication`) references `publications`(`name`)
);

create table if not exists `movies` (
    `title` varchar(250) not null,
    `release_year` varchar(250),
    `score` int(11),
    `reviewer` varchar(250),
    `publication` varchar(250),
    primary key (`title`),
    constraint `fk_reviewer` foreign key (`reviewer`) references `reviewers`(`name`)
);
