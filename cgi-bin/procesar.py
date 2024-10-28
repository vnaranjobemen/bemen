#!/usr/bin/env python3

# python -m http.server 8000 --cgi

import cgi

# Cabecera para el tipo de contenido
print("Content-type: text/html\n")

# Crear un formulario para manejar los datos
form = cgi.FieldStorage()

# Obtener los datos del formulario
nombre = form.getvalue('nombre', 'No proporcionado')
apellidos = form.getvalue('apellidos', 'No proporcionado')
anio_nacimiento = form.getvalue('anio_nacimiento', 'No proporcionado')

# Generar la respuesta HTML
print(f"""
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultados</title>
</head>
<body>
    <h1>Datos Recibidos:</h1>
    <p>Nombre: {nombre}</p>
    <p>Apellidos: {apellidos}</p>
    <p>Año de Nacimiento: {anio_nacimiento}</p>
    <a href="/index.html">Volver</a>
</body>
</html>
""")
