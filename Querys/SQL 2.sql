
-- query para visualizar el total de actores por titulo de pelicula. (hay peliculas que no tienen actores)
select f.title as Titulo_Pelicula, count(Nombre_completo) as Total_actores
from film as f

left join old_HDD as old
on f.title = old.title

group by f.title
order by Total_actores desc

