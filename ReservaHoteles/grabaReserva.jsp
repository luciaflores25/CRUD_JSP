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
            <nav>
                <span><a href="index.html">Página de Inicio</a></span>
            </nav>
            <section>
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservaHoteles", "root", "");
                  Statement s = conexion.createStatement();

                  request.setCharacterEncoding("UTF-8");

                  // Comprueba la existencia del número de socio introducido
                  String consultaNumSocio = "SELECT * FROM cliente WHERE clienteID = " + Integer.valueOf(request.getParameter("clienteID"));

                  ResultSet numeroDeSocios = s.executeQuery(consultaNumSocio);
                  numeroDeSocios.last();

                  if (numeroDeSocios.getRow() != 0) {
                    String insercion = "INSERT INTO reserva (nombreHotel, paisHotel, clienteID) VALUES ("
                            + "'" + request.getParameter("nombreHotel")
                            + "', '" + request.getParameter("paisHotel")
                            + "', " + Integer.valueOf(request.getParameter("clienteID")) + ")";

                    s.execute(insercion);

                    out.println("<h2 class=\"mensajeGrabaReserva\">");
                    out.println("Ha realizado la reserva correctamente.</h2>");

                  } else {
                    response.sendRedirect("errorCliente.jsp");
                  }
                  conexion.close();
                  

                %>
                <br>
                <a class="hacerloDeNuevo" href="nuevaReserva.jsp">Hacer otra reserva</a>
                <a class="aceptarNuevo" href="listadoReservas.jsp">Aceptar</a>
            </section>

            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>