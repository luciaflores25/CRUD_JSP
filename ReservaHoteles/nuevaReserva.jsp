<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Faster+One" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Reserva tu hotel - Lucía Flores</title>
    </head>

    <body>
        <div id="wrapper">
            <header>
                <h1 id="rotulo">HAZ TUS RESERVAS</h1>
                <p id="web">ReservaHoteles.com</p>
            </header>
            <section>
                <form method="post" action="addReserva.jsp" class="formulario">
                    <h2 class="tituloFormulario">Añadir nueva reserva</h2>
                    <div class="contenedorInputs">
                        <input class="inputSmall" type="text" size="10" name="reservaID" placeholder="Nº de reserva" readonly required>
                        <input class="inputGrande" type="text" size="40" name="nombreHotel" placeholder="Nombre Hotel" required>
                        <input class="inputSmall" type="text" size="15" name="nombreCliente" placeholder="Nombre cliente" required>
                        <input class="inputSmall" type="text" size="30" name="apellidosCliente" placeholder="Apellidos" required>
                        <input class="inputGrande" type="text" name="EmailCliente" placeholder="Email" size="40" required><br/>
                        <input class="botonFormulario" type="submit" value="Añadir">
                    </div>
                </form>
            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>