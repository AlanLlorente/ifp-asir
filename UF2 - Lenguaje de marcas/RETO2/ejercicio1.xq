for $libro in doc("reto2UF2.xml")/libros/libro
order by $libro/nombre descending
return
 <infoautor>         
   {$libro/descripcion/autor/text()} ({ $libro/nombre/text()})
 </infoautor> 