insert into Genres(Genres_ID, Genre_name) values
(1, 'Классический рок'),
(2, 'Хард рок и Хэви метал'),
(3, 'Альтернативный рок'),
(4, 'Панк рок');

insert into Performers(Performers_ID, Name, Nickname) values
(1, 'Green Day', 'Green Day'),
(2, 'System of a Down', 'System of a Down'),
(3, 'Ария', 'Ария'),
(4, 'Анакондаз', 'Anacondaz'),
(5, 'Skillet', 'Skillet');

insert  into Performers_Genres(Performers_ID, Genres_ID) values
(1,1), (1,4),
(2,2), (2,3),
(3,1),
(4,4),
(5,3);

insert  into Albums(Albums_ID, Albums_title, Release_year) values
(1, 'Перезвони мне +79995771202 (Deluxe)', '2022'),
(2, 'American Idiot', '2004'),
(3, 'Toxicity', '2001'),
(4, 'Химера', '2001'),
(5, 'Victorious', '2019')
(6, 'Still Breathing', '2018');

insert  into Albums_Performers(Albums_ID, Performers_ID) values
(1,4), (2,1), (3,2), (4,3), (5,5), (6,5);

insert  into Tracks(Tracks_ID, Song_title, Duration, Albums_ID) values
(1, 'Штиль', 329, 4),
(2, 'Chop Suey!', 198, 3),
(3, 'Aerials', '213', 3),
(4, 'Wake Me Up When September Ends', 267, 2),
(5, 'Boulevard of Broken Dreams', 252, 2),
(6, 'Два вопроса', 241, 1),
(7, 'Victorious', 207, 5)
(8, 'My Demons', 245);


insert into Compilations(Compilations_ID, Title, Release_year) values
(1, 'Лучшие хиты 2001', 2001),
(2, 'Русский рок XXI века', 2022),
(3, 'Mузыка для всех', 2019),
(4, 'Новогодний марафон', 2025);

insert into Compilations_Tracks(Compilations_ID, Tracks_ID) values
(1,1), (1,2), (1,3),
(2,1), (2,6),
(3,5), (3,1),(4,7)
(4,4), (4,5), (3,8);