select name from people join stars on people.id = stars.person_id where stars.movie_id in (select id from movies where title = "Toy Story");