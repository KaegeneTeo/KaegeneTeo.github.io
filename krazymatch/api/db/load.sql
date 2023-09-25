drop database if exists krazymatch;

create database if not exists krazymatch;

use krazymatch;

CREATE TABLE if not exists `match_table` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `occupation` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `photo_url` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert into match_table values (1, 'Darren Kim', 27, 'M', 'Accountant', 'Singapore', '/krazymatch/photos/men/man1.jpg', "darren.kim@email.com", "pass");
insert into match_table values (2, 'Stevie Goh', 22, 'M', 'Student', 'Helsinki', '/krazymatch/photos/men/man2.jpg', "stevie.goh@email.com", "pass");
insert into match_table values (3, 'Sean Choy', 25, 'M', 'Unemployed', 'Singapore', '/krazymatch/photos/men/man3.jpg', "sean.choy@email.com", "pass");
insert into match_table values (4, 'Ambrose Ahn', 30, 'M', 'Software Engineer', 'Paris', '/krazymatch/photos/men/man4.jpg', "ambrose.ahn@email.com", "pass");
insert into match_table values (5, 'Jia Le Ang', 28, 'M', 'Investment Banking Professional', 'Moscow', '/krazymatch/photos/men/man5.jpg', "jiale.ang@email.com", "pass");
insert into match_table values (6, 'Dwayne Wilson', 33, 'M', 'Journalist', 'New York', '/krazymatch/photos/men/man6.jpg', "dwayne.wilson@email.com", "pass");
insert into match_table values (7, 'Hugh Simpson', 35, 'M', 'Musician', 'Sydney', '/krazymatch/photos/men/man7.jpg', "hugh.simpson@email.com", "pass");
insert into match_table values (8, 'Kevin Love', 26, 'M', 'HR Professional', 'Los Angeles', '/krazymatch/photos/men/man8.jpg', "kevin.love@email.com", "pass");
insert into match_table values (9, 'Henry Meltmyheart', 30, 'M', 'Architect', 'Dallas', '/krazymatch/photos/men/man9.jpg', "henry.meltmyheart@email.com", "pass");
insert into match_table values (10, 'Ross Frenz', 32, 'M', 'Football Coach', 'Chicago', '/krazymatch/photos/men/man10.jpg', "ross.frenz@email.com", "pass");
insert into match_table values (11, 'Armie Ham', 31, 'M', 'Electrician', 'Seattle', '/krazymatch/photos/men/man11.jpg', "armie.ham@email.com", "pass");
insert into match_table values (12, 'Ben Batman', 27, 'M', 'Pub Owner', 'Seoul', '/krazymatch/photos/men/man12.jpg', "ben.batman@email.com", "pass");
insert into match_table values (13, 'Ryan Super', 27, 'M', 'Car Salesman', 'Tokyo', '/krazymatch/photos/men/man13.jpg', "ryan.super@email.com", "pass");
insert into match_table values (14, 'Ryan Lala', 29, 'M', 'Dancer', 'London', '/krazymatch/photos/men/man14.jpg', "ryan.lala@email.com", "pass");
insert into match_table values (15, 'Zac Front', 26, 'M', 'Customer Success Manager', 'Hong Kong', '/krazymatch/photos/men/man15.jpg', "zac.front@email.com", "pass");



insert into match_table values (1, 'Emily Ong', 22, 'F', 'Student', 'Singapore', '/krazymatch/photos/women/woman1.jpg', "emily.ong@email.com", "pass");
insert into match_table values (2, 'Jewel Koh', 33, 'F', 'Customer Success Manager', 'Oslo', '/krazymatch/photos/women/woman2.jpg', "jewel.koh@email.com", "pass");
insert into match_table values (3, 'Gerry Loh', 24, 'F', 'Accountant', 'Singapore', '/krazymatch/photos/women/woman3.jpg', "gerry.loh@email.com", "pass");
insert into match_table values (4, 'Chloe Jones', 26, 'F', 'UI Designer', 'New York', '/krazymatch/photos/women/woman4.jpg', "chloe.jones@email.com", "pass");
insert into match_table values (5, 'Emily Prada', 29, 'F', 'Financial Consultant', 'London', '/krazymatch/photos/women/woman5.jpg', "emily.prada@email.com", "pass");
insert into match_table values (6, 'Emma Smart', 32, 'F', 'Professor', 'Paris', '/krazymatch/photos/women/woman6.jpg', "emma.smart@email.com", "pass");
insert into match_table values (7, 'Monica Heller', 28, 'F', 'Waitress', 'Los Angeles', '/krazymatch/photos/women/woman7.jpg', "monica.heller@email.com", "pass");
insert into match_table values (8, 'Phoebe Smellycat', 23, 'F', 'Student', 'Las Vegas', '/krazymatch/photos/women/woman8.jpg', "phoebe.smellycat@email.com", "pass");
insert into match_table values (9, 'Rachel Purple', 27, 'F', 'Software Test Engineer', 'Chicago', '/krazymatch/photos/women/woman9.jpg', "rachel.purple@email.com", "pass");
insert into match_table values (10, 'Selena Bieber', 22, 'F', 'Fashion Model', 'Atlanta', '/krazymatch/photos/women/woman10.jpg', "selena.bieber@email.com", "pass");
insert into match_table values (11, 'Natalie Portwoman', 33, 'F', 'Interior Designer', 'Seoul', '/krazymatch/photos/women/woman11.jpg', "natalie.portwoman@email.com", "pass");
insert into match_table values (12, 'Donna Who', 26, 'F', 'Banking Professional', 'Tokyo', '/krazymatch/photos/women/woman12.jpg', "donna.who@email.com", "pass");
insert into match_table values (13, 'Bei Bei Yu', 30, 'F', 'High School Teacher', 'Beijing', '/krazymatch/photos/women/woman13.jpg', "beibei.yu@email.com", "pass");
insert into match_table values (14, 'Zhou Fei Li', 29, 'F', 'Stunt Actor', 'Taipei', '/krazymatch/photos/women/woman14.jpg', "zhoufei.li@email.com", "pass");
insert into match_table values (15, 'Suzy Bae', 25, 'F', 'Student', 'Singapore', '/krazymatch/photos/women/woman15.jpg', "suzy.bae@email.com", "pass");