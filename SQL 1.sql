-- tabla resumen de actores agrupado por total de peliculas de una misma categoria ordenado de mayor a menor
SELECT  a.Nombre_completo,  cat.name as Tipo_Pelicula, count(cat.name) as Total_Peliculas
FROM actor as a

left join old_hdd as old
on a.Nombre_completo = old.Nombre_completo

left join category as cat
on old.category_id = cat.category_id

group by  a.Nombre_completo, cat.name
order by Total_Peliculas desc

