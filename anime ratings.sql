-- joining tables
select *
from traning..anime 
join traning..rating 
on anime.anime_id = rating.anime_id
order by anime.rating desc

 -- showing top rated anime 
select  distinct anime.name , anime.rating , members 
from traning..anime 
join traning..rating 
on anime.anime_id = rating.anime_id
order by anime.rating desc


-- Top Rated Anime movies and their user rating
select  name , anime.rating  , genre , type ,rating.rating as user_rating
from traning..anime 
join traning..rating 
on anime.anime_id = rating.anime_id
where anime.type = 'Movie' 
order by anime.rating desc 


-- Top Rated Anime tv and their user rating
select  name , anime.rating  , genre , type ,rating.rating as user_rating
from traning..anime 
join traning..rating 
on anime.anime_id = rating.anime_id
where anime.type = 'TV' 
order by anime.rating desc 

-- Comparing rating vs users rating by genre
select genre , avg(anime.rating) as avg_rating , AVG(rating.rating) as avg_user_rating
from traning..anime 
join traning..rating 
on anime.anime_id = rating.anime_id
--where anime.type = 'TV' 
group by genre
order by avg_rating desc


-- anime with highest members number 
select distinct name , anime.rating , members
from traning..anime 
join traning..rating 
on anime.anime_id = rating.anime_id
--where anime.type = 'TV' 
order by members desc 

--  Highest rated long animes 
select distinct top 100 name ,episodes, anime.rating  , genre , type 
from traning..anime 
join traning..rating 
on anime.anime_id = rating.anime_id
where anime.type = 'TV'
and anime.episodes > 50
order by anime.rating desc 










