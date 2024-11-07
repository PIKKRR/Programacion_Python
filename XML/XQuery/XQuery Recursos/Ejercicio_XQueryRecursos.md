
## Escribe las consultas XQuery que permitan obtener la siguiente información:

### 1. Los títulos de los libros con la etiqueta <titulo>.

```xml
<titulos>
{
    for $titulo in doc("biblioteca.xml")//libro/titulo
    return $titulo
}
</titulos>
```

### 2. Los libros cuyo precio sea menor o igual a 30.

```xml
<libros_precio_menor_30>
{
    for $libro in doc("biblioteca.xml")//libro
    where $libro/precio <= 30
    return $libro
}
</libros_precio_menor_30>
```

### 3. Solo el título de los libros cuyo precio sea menor o igual a 30.

```xml
<titulos_precio_menor_30>
{
    for $titulo in doc("biblioteca.xml")//libro[precio <= 30]/titulo
    return $titulo
}
</titulos_precio_menor_30>
```

### 4. Solo el título sin atributos de los libros cuyo precio sea menor o igual a 30.

```xml
<titulos_sin_atributos_precio_menor_30>
{
    for $titulo in doc("biblioteca.xml")//libro[precio <= 30]/titulo/text()
    return $titulo
}
</titulos_sin_atributos_precio_menor_30>
```

### 5. El título y el autor de los libros del año 2005, y etiquetar cada uno de ellos con la etiqueta <lib2005>.

```xml
<libros_2005>
{
    for $libro in doc("biblioteca.xml")//libro[año = 2005]
    return <lib2005><titulo>{$libro/titulo}</titulo><autor>{$libro/autor}</autor></lib2005>
}
</libros_2005>
```

### 6. Los años de publicación, primero con for y luego con let para comprobar la diferencia entre ellos. Etiquetar la salida con <publicacion>.

```xml
<publicacion>
{
    for $año in distinct-values(doc("biblioteca.xml")//libro/año)
    return <año>{$año}</año>,
    <diferencia>{$año - (let $siguiente_año := doc("biblioteca.xml")//libro/año[. > $año][1] return if ($siguiente_año) then $siguiente_año - $año else 0)}</diferencia>
}
</publicacion>
```

### 7. Los libros ordenados primero por el atributo categoria y luego por titulo en una sola consulta.

```xml
<libros_ordenados>
{
    for $libro in doc("biblioteca.xml")//libro
    order by $libro/@categoria, $libro/titulo
    return $libro
}
</libros_ordenados>
```
-->

### 8. La cantidad de libros. Se debe etiquetar con <total>.

```xml
<total>
{
    count(doc("biblioteca.xml")//libro)
}
</total>
```

### 9. Los títulos de los libros y, al final, una etiqueta con el número total de libros.

```xml
<titulos_con_total>
{
    for $titulo in doc("biblioteca.xml")//libro/titulo
    return <titulo>{$titulo}</titulo>,
    <total>{count(doc("biblioteca.xml")//libro/titulo)}</total>
}
</titulos_con_total>
```

### 10. El precio mínimo y máximo de los libros.

```xml
<precio_minimo_y_maximo>
{
    <minimo>{min(doc("biblioteca.xml")//libro/precio)}</minimo>,
    <maximo>{max(doc("biblioteca.xml")//libro/precio)}</maximo>
}
</precio_minimo_y_maximo>
```

### 11. El título del libro, su precio y su precio con el IVA incluido, cada uno con su propia etiqueta. Ordenarlos por precio con IVA.

```xml
<libros_con_iva_ordenados>
{
    for $libro in doc("biblioteca.xml")//libro
    let $precio_iva := $libro/precio * 1.21
    order by $precio_iva
    return <libro><titulo>{$libro/titulo}</titulo><precio>{$libro/precio}</precio><precio_con_iva>{$precio_iva}</precio_con_iva></libro>
}
</libros_con_iva_ordenados>
```

### 12. La suma total de los precios de los libros. Se debe etiquetar con <total>.

```xml
<total_precios>
{
    sum(doc("biblioteca.xml")//libro/precio)
}
</total_precios>
```

### 13. Cada uno de los precios de los libros y, al final, una nueva etiqueta con la suma de los precios.

```xml
<precios_con_total>
{
    for $precio in doc("biblioteca.xml")//libro/precio
    return <precio>{$precio}</precio>,
    <total>{sum(doc("biblioteca.xml")//libro/precio)}</total>
}
</precios_con_total>
```

### 14. El título y el número de autores que tiene cada título en etiquetas diferentes.

```xml
<titulos_con_autores>
{
    for $libro in doc("biblioteca.xml")//libro
    return <libro><titulo>{$libro/titulo}</titulo><num_autores>{count($libro/autor)}</num_autores></libro>
}
</titulos_con_autores>
```

### 15. En la misma etiqueta, el título y, entre paréntesis, el número de autores que tiene ese título.

```xml
<titulos_con_num_autores>
{
    for $libro in doc("biblioteca.xml")//libro
    return <libro>{$libro/titulo} ({$libro/count(autor)})</libro>
}
</titulos_con_num_autores>
for $libro in /libreria/libro
    return <libro>
               <titulo>{$libro/titulo} ({count($libro/autor)})</titulo>
           </
```
           <!--
### 16. Los libros escritos en años que terminen en "3".

```xml
<libros_terminados_3>
{
    for $libro in doc("biblioteca.xml")//libro
    where ends-with($libro/año, "3")
    return $libro
}
</libros_terminados_3>
```

### 17. Los libros cuya categoría empiece por "C".

```xml
<libros_categoria_C>
{
    for $libro in doc("biblioteca.xml")//libro
    where starts-with($libro/@categoria, "C")
    return $libro
}
</libros_categoria_C>
```

### 18. Los libros que tengan una "X" mayúscula o minúscula en el título ordenados de manera descendente.

```xml
<libros_con_X>
{
    for $libro in doc("biblioteca.xml")//libro
    where contains($libro/titulo/text(), "X") or contains($libro/titulo/text(), "x")
    order by $libro/titulo/text() descending
    return $libro
}
</libros_con_X>
```

### 19. El título y el número de caracteres que tiene cada título, cada uno con su propia etiqueta.

```xml
<titulos_con_caracteres>
{
    for $libro in doc("biblioteca.xml")//libro
    return <libro><titulo>{$libro/titulo}</titulo><num_caracteres>{string-length($libro/titulo)}</num_caracteres></libro>
}
</titulos_con_caracteres>
```

### 20. Todos los años en los que se ha publicado un libro eliminando los repetidos.

```xml
<años_publicacion>
{
    for $año in distinct-values(doc("biblioteca.xml")//libro/año)
    return <año>{$año}</año>
}
</años_publicacion>
```

### 21. Todos los autores eliminando los que se repiten y ordenados por el número de caracteres que tiene cada autor.

```xml
<autores_unicos_ordenados>
{
    for $autor in distinct-values(doc("biblioteca.xml")//autor)
    let $longitud := string-length($autor)
    order by $longitud
    return <autor>{$autor}</autor>
}
</autores_unicos_ordenados>
```

### 22. Los títulos en una tabla de HTML.

```xml
<table>
    <tr>
        <th>Título</th>
    </tr>
{
    for $libro in doc("biblioteca.xml")//libro
    return <tr><td>{$libro/titulo}</td></tr>
}
</table>
```
