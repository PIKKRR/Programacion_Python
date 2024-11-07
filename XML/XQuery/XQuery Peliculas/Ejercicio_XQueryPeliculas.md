## Escribe las consultas XQuery que permitan obtener la siguiente información sobre el ejercicio de peliculas:

### 1. Listar todos los títulos de las películas dirigidas por "Peter Jackson".

```xml
for $pelicula in //pelicula[director = "Peter Jackson"]
return data($pelicula/titulo)
```

### 2. Encontrar todas las películas que fueron lanzadas antes de 2000 y tienen una duración superior a 150 minutos.

```xml
for $pelicula in //pelicula[lanzamiento < 2000 and duracion > 150]
return data($pelicula/titulo)
```

### 3. Contar el número total de películas de género "Drama".

```xml
count(//pelicula[genero = "Drama"])
```

### 4. Listar todos los directores de películas de ciencia ficción.

```xml
for $pelicula in /pelicula/pelicula[genero ="Ciencia ficcion"]
return $pelicula/director
```

### 5. Encontrar todas las películas cuyo título contenga la palabra "Matrix" o "Forrest".

```xml
for $pelicula in //pelicula[contains(titulo, "Matrix") or contains(titulo, "Forrest")]
return data($pelicula/titulo)
```

### 6. Calcular el promedio de duración de todas las películas.

```xml
avg(//pelicula/duracion)
```

### 7. Encontrar todas las películas cuyo año de lanzamiento sea igual a 1994 o 1999.

```xml
for $pelicula in //pelicula[lanzamiento = (1994, 1999)]
return data($pelicula/titulo)
```

### 8. Listar todas las películas ordenadas por año de lanzamiento de forma ascendente.

```xml
for $pelicula in //pelicula
order by $pelicula/lanzamiento ascending
return data($pelicula/titulo)
```

### 9. Verificar si todas las películas tienen una duración mayor a 100 minutos.

```xml
empty(//pelicula[duracion <= 100])
```

### 10. Encontrar todas las películas dirigidas por "Lana Wachowski".

```xml
for $pelicula in //pelicula[director = "Lana Wachowski"]
return data($pelicula/titulo)
```

### 11. Encontrar todas las películas que fueron lanzadas después de 1995 y tienen una duración de al menos 2 horas (120 minutos).

```xml
for $pelicula in //pelicula[lanzamiento > 1995 and duracion >= 120]
return data($pelicula/titulo)
```

### 12. Contar el número total de películas de género "Fantasía".

```xml
count(//pelicula[genero = "Fantasía"])
```

### 13. Listar todas las películas dirigidas por "Robert Zemeckis" que no sean de género "Ciencia ficción".

```xml
for $pelicula in //pelicula[director = "Robert Zemeckis" and not(genero = "Ciencia ficción")]
return data($pelicula/titulo)
```

### 14. Encontrar todas las películas que contienen la palabra "Anillos" en el título.

```xml
for $pelicula in //pelicula[contains(titulo, "Anillos")]
return data($pelicula/titulo)
```