## Escribe las consultas XQuery que permitan obtener la siguiente información sobre el ejercicio de biblioteca:

### 1. Título y editorial de todos los libros.

- Los datos de cada libro deben estar dentro de un elemento `<libro>`.
- El título y la editorial de cada libro deben estar separados por un guión medio (-).

```xml
<libros>
{
    for $libro in doc("biblioteca.xml")//libro
    return <libro>{concat($libro/titulo/text(), ' - ', $libro/editorial/text())}</libro>
}
</libros>
```

### 2. El título de todos los libros de menos de 400 páginas.
○ Se debe obtener únicamente los datos, sin etiquetas.

```xml
for $titulo in doc("biblioteca.xml")//libro[paginas < 400]/titulo/text()
return $titulo
```

### 3. La cantidad de libros de más de 400 páginas. 

```xml
let $cantidad := count(doc("biblioteca.xml")//libro[paginas > 400])
return <cantidad>{ $cantidad }</cantidad>
```

### 4. Una lista HTML con el título de los libros de la editorial O'Reilly Media ordenados por título.  

```xml
<ul>{
    for $libro in doc("biblioteca.xml")//libro[editorial = "O'Reilly Media"]
    order by $libro/titulo
    return <li>{ $libro/titulo }</li>
}</ul>
```

### 5. Título y editorial de los libros de 2018 y 2019.
- Los datos de cada libro deben estar dentro de un elemento `<libro>`.
- El título y la editorial deben ir dentro de los elementos `<titulo>` y `<editorial>` respectivamente.

```xml
<libros>{
    for $libro in doc("biblioteca.xml")//libro
    where substring($libro/../@publicacion, 1, 4) = ("2018", "2019")
    return <libro><titulo>{ $libro/titulo/text() }</titulo><editorial>{ $libro/editorial/text() }</editorial></libro>
}</libros>
```

### 6. Título y editorial de los libros con más de un autor.
- Los datos de cada libro deben estar dentro de un elemento `<libro>`.
- El título y la editorial deben ir dentro de los elementos `<titulo>` y `<editorial>` respectivamente.

```xml
<libros>{
    for $libro in doc("biblioteca.xml")//libro
    where count($libro/autor) > 1
    return <libro><titulo>{ $libro/titulo/text() }</titulo><editorial>{ $libro/editorial/text() }</editorial></libro>
}</libros>
```

### 7. Título y año de publicación de los libros que tienen versión electrónica.
- Los datos de cada libro deben estar dentro de un elemento `<libro>`.
- El título y el año de publicación deben ir dentro de los elementos `<titulo>` y `<fecha-publicacion>` respectivamente.

```xml
<libros>{
    for $libro in doc("biblioteca.xml")//libro[edicionElectronica = "Si"]
    return <libro><titulo>{ $libro/titulo/text() }</titulo><fecha-publicacion>{ substring($libro/../@publicacion, 1, 4) }</fecha-publicacion></libro>
}</libros>
```

### 8. Título de los libros que no tienen versión electrónica.
- Se debe obtener únicamente los datos, sin etiquetas

```xml
for $titulo in doc("biblioteca.xml")//libro[edicionElectronica = "No"]/titulo/text()
return $titulo
```
