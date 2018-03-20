<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Faster+One" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Reserva tu Hotel - Lucía Flores</title>
    </head>
    <body>
        <div id="wrapper">
            <header>
                <h1 id="rotulo">HAZ TUS RESERVAS</h1>
                <p id="web">ReservaHoteles.com</p>
            </header>
            <section>
                <% request.setCharacterEncoding("UTF-8");%>
                <div>
                    <form method="get" action="grabaSocioModificado.jsp" class="formulario">
                        <h2 class="tituloFormulario">Modificar reserva</h2>
                        <div class="contenedorInputs">
                            <input class="inputSmall" type="text" size="10" name="reservaID" placeholder="Nº de reserva" value="<%= request.getParameter("reservaID")%>" readonly required>
                            <input class="inputGrande" type="text" size="40" name="nombreHotel" placeholder="Nombre Hotel" value="<%= request.getParameter("nombreHotel")%>" required>
                            <input class="inputSmall" type="text" size="15" name="nombreCliente" placeholder="Nombre cliente" value="<%= request.getParameter("nombreCliente")%>" required>
                            <input class="inputSmall" type="text" size="30" name="apellidosCliente" placeholder="Apellidos" value="<%= request.getParameter("apellidosCliente")%>" required>
                            <input class="inputGrande" type="text" name="EmailCliente" placeholder="Email" size="40" value="<%= request.getParameter("EmailCliente")%>" required><br/>
                            <input class="botonFormulario" type="submit" value="Aceptar">
                        </div>
                    </form>
                </div>
            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>
