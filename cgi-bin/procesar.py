#!/usr/bin/env python3

# python -m http.server 8000 --cgi

import cgi

# Cabecera:tipus de contingut
print("Content-type: text/html\n")

# Crear un formulari per gestionar les dades
form = cgi.FieldStorage()

# Obtenir les dades del formulari
nombre = form.getvalue('nombre', 'No proporcionat')
apellidos = form.getvalue('apellidos', 'No proporcionat')
anio_nacimiento = form.getvalue('anio_nacimiento', 'No proporcionat')

# Generar la resposta HTML
print(f"""
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultats</title>
</head>
<body>
    <h1>Dades rebudes:</h1>
    <p>Nombre: {nombre}</p>
    <p>Apellidos: {apellidos}</p>
    <p>Año de Nacimiento: {anio_nacimiento}</p>
    <a href="/index.html">Volver</a>
</body>
</html>
""")
