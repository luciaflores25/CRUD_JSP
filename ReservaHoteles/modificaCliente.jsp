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
            <nav>
                <span><a href="index.html">Página de Inicio</a></span>
            </nav>
            <section>
                <% request.setCharacterEncoding("UTF-8");%>
                <div>
                    <form method="post" action="grabaClienteModificado.jsp" class="formulario">
                    <h2 class="tituloFormulario">Modificar cliente</h2>
                    <div class="contenedorInputs">
                        <input class="inputSmall" type="text" name="nombreCliente" placeholder="Nombre cliente" value="<%= request.getParameter("nombreCliente") %>" required>
                        <input class="inputSmall" type="text" name="apellidosCliente" placeholder="Apellidos" value="<%= request.getParameter("apellidosCliente") %>" required>
                        <input class="inputSmall" type="text" name="DniCliente" placeholder="DNI" value="<%= request.getParameter("DniCliente") %>" required>
                        <input class="inputSmall" type="text" name="direccionCliente" placeholder="Dirección" value="<%= request.getParameter("direccionCliente") %>" required>
                        <input class="inputGrande" type="text" name="EmailCliente" placeholder="Email" value="<%= request.getParameter("EmailCliente") %>" required><br/>
                        <input class="botonFormulario" type="submit" value="Modificar">
                        <input type="hidden" name="clienteID" value="<%=request.getParameter("clienteID")%>"/>
                    </div>
                </form>
                </div>
            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>
