select Song_title, Duration
from Tracks
where Duration = (select MAX(Duration) from Tracks);

select Song_title
from Tracks
where Duration >= 210;

select Title
from Compilations
where Release_year between 2018 and 2020;

select Name
from Performers
where Name not like '% %';

select Song_title
from Tracks
where Song_title like '%мой%' or Song_title like '%my%';

select g.Genre_name as genre, count(pg.Performers_ID) as performers_count
from Genres g
left join Performers_Genres pg on g.Genres_ID = pg.Genres_ID
group by g.Genres_ID, g.Genre_name
order by performers_count desc;

select a.Albums_title, Release_year, count(t.Tracks_ID) as tracks_count
from Albums a
left join Tracks t on a.Albums_ID = t.Albums_ID 
where Release_year between 2019 and 2020
group by a.Albums_ID 
order by tracks_count desc;


select a.Albums_title, AVG(Duration) as avg_duration
from Albums a
left join Tracks t on a.Albums_ID = t.Albums_ID
group by a.Albums_ID,  a.Albums_title 
order by avg_duration desc;

select p.Nickname
from Performers p
where not exists (
    select 1
    from Albums_Performers ap
    join Albums a on ap.Albums_ID = a.Albums_ID
    where ap.Performers_ID = p.Performers_ID
    and a.Release_year = 2020);  

select Title
from Compilations
where Compilations_ID in (
    select distinct ct.Compilations_ID
    from Compilations_Tracks ct
    join Tracks t on ct.Tracks_ID = t.Tracks_ID
    join Albums_Performers ap on t.Albums_ID = ap.Albums_ID
    join Performers p on ap.Performers_ID = p.Performers_ID
    where p.Name = 'Green Day'
);









