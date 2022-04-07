for $libro in doc("reto2UF2.xml")/libros/libro
  order by $libro/paginas ascending
  return
    if ($libro/descripcion/autor != "Autor 1") then (
      <infolibro>{$libro/nombre/text()}<info>{$libro/descripcion/sinopsis/text()}</info></infolibro>
    ) else (
      <infolibro>{$libro/nombre/text()}</infolibro>
    )
       