#!/usr/bin/env python3

# python -m http.server 8000 --cgi

import cgi

# Cabecera: tipus de contingut
print("Content-type: text/html\n")

# Crear un formulari para gestionar les dades dels CDs
form = cgi.FieldStorage()

# Obtener los datos del formulario
title = form.getvalue('title', 'No proporcionado')
artist = form.getvalue('artist', 'No proporcionado')
any = form.getvalue('year', 'No proporcionado')

# Generar la respuesta HTML
print(f"""
<html>
    <head>
        <meta charset="UTF-8">
        <title>Valors rebuts del formulari</title>
    </head>
    <body>
        <h1>Dades rebudes:</h1>
        <p>Titol: {title}</p>
        <p>Artist: {artist}</p>

        <p>...</p>

        <p>Any: {any}</p>
        <a href="/index.html">Volver</a>
    </body>
</html>
""")
