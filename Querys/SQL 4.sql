-- hacemos un resumen de total de peliculas por su tipologia (excluyendo los nulos)

select cat.name as Tipo_Pelicula, count(cat.category_id) Cantidad
from film as f

left join old_HDD as old
on f.title = old.title

left join category as cat
on old.category_id = cat.category_id

where cat.name is not null

group by cat.name

order by Cantidad desc
;