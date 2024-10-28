<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recoger datos del formulario
    $nombre = htmlspecialchars(trim($_POST['nombre']));
    $apellidos = htmlspecialchars(trim($_POST['apellidos']));
    $anio_nacimiento = htmlspecialchars(trim($_POST['anio_nacimiento']));

    // Validar los datos (puedes añadir más validaciones según necesites)
    if (!empty($nombre) && !empty($apellidos) && !empty($anio_nacimiento)) {
        // Aquí puedes procesar los datos, por ejemplo, guardarlos en una base de datos
        // o simplemente mostrarlos en pantalla.

        echo "<h2>Datos Recibidos:</h2>";
        echo "Nombre: " . $nombre . "<br>";
        echo "Apellidos: " . $apellidos . "<br>";
        echo "Año de Nacimiento: " . $anio_nacimiento . "<br>";
    } else {
        echo "Por favor, completa todos los campos.";
    }
} else {
    echo "Método no permitido.";
}
?>
