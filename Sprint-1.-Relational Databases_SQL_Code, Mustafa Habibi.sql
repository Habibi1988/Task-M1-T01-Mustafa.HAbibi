-- Exercise2:
SELECT person_name, person_country, person_dob FROM tb_person

where person_dod is null

order by person_dob asc

-- Exercise 3:
SELECT genre_name, count(1)
from tb_movie
join tb_genre
	on movie_genre_id=genre_id
group by genre_name
order by count(1) DESC;

-- Exercise 4:
SELECT p.person_name, m.movie_title, count(r.role_id) as maximum_number_different_roles_movie
FROM tb_person p
JOIN tb_movie_person mp
	ON p.person_id = mp.person_id
JOIN tb_movie m
	ON m.movie_id = mp.movie_id
JOIN tb_role r
	ON r.role_id = mp.role_id
GROUP BY p.person_name, m.movie_title
HAVING COUNT(r.role_id) > 1;

-- Exercise 5:
insert into tb_genre (genre_id, genre_name)
values (69, 'Documentary')

-- Exercise 6:
delete from tb_movie_person 
where movie_id=11;
delete from tb_movie 
where movie_id=11;

-- Exercise 7:
UPDATE tb_movie 
SET movie_genre_id=3
WHERE movie_id = 9;

