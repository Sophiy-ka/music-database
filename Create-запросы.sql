create table Genres(
    Genres_ID INT primary key,
    Genre_name VARCHAR(100)
);


create table Performers (
    Performers_ID INT primary key,
    Name VARCHAR(100),
    Nickname VARCHAR(100)
    );


create table Performers_Genres(
    Performers_ID INT,
    Genres_ID INT,
    primary key (Performers_ID, Genres_ID),
    foreign key (Genres_ID) references Genres(Genres_ID),
    foreign key (Performers_ID) references Performers(Performers_ID)
);

create table if not exists Albums(
    Albums_ID INT primary key, 
    Albums_title VARCHAR(100),
    Release_year INT );

create table Albums_Performers(
    Albums_ID INT,
    Performers_ID INT,
    primary key (Albums_ID, Performers_ID),
    foreign key (Albums_ID) references Albums(Albums_ID),
    foreign key (Performers_ID) references Performers(Performers_ID)
);

create table Tracks(
    Tracks_ID INT primary key,
    Song_title VARCHAR(100),
    Duration INT,
    Albums_ID INT,
    foreign key (Albums_ID) references Albums(Albums_ID)
); 

create table Compilations(
    Compilations_ID INT primary key,
    Title VARCHAR(100),
    Release_year INT
);

create table Compilations_Tracks(
    Compilations_ID INT,
    Tracks_ID INT,
    primary key (Compilations_ID, Tracks_ID),
    foreign key (Tracks_ID) references Tracks(Tracks_ID),
    foreign key (Compilations_ID) references Compilations(Compilations_ID)
);








