for $pais in doc("francia.xml")/pais/coordenadas
  return
    <resultado>
      Longitud: {$pais/longitud/text()} Latitud: {$pais/latitud/text()}
    </resultado>,
for $pais in doc("francia.xml")/pais
  return
    <resultado>
      Las fotografias son: {$pais/fotografias/foto/descripcion/text()} y 
      estas son sus url {$pais/fotografias/foto/url/text()}
    </resultado>,
for $pais in doc("francia.xml")/pais/fotografias/foto
  return
  if (string($pais/url) = "") then (
    <resultado>{$pais}</resultado>
  )