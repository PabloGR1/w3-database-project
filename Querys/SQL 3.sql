

-- borramos tabla existente

drop table if exists Peliculas_Penelope;

-- creamos de nuevo la tabla y actualizamos datos

create table if not exists Peliculas_Penelope

select f.title as Titulo_Pelicula, cat.name as Tipo_Pelicula
from film as f

left join old_HDD as old
on f.title = old.title

left join category as cat
on old.category_id = cat.category_id

where old.Nombre_completo = 'PENELOPE GUINESS'
order by Tipo_Pelicula
;

# visualizamos tabla

select * from peliculas_penelope