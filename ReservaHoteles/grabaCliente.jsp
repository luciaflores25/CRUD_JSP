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
        <title>Add cliente - Reserva tu hotel</title>
    </head>
    <body>
        <div id="wrapper">
            <header>
                <h1 id="rotulo">HAZ TUS RESERVAS</h1>
                <p id="web">ReservaHoteles.com</p>
            </header>
            <nav>
                <span><a href="index.jsp">Página de Inicio</a></span>
            </nav>
            <section>
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservaHoteles", "root", "");
                  Statement s = conexion.createStatement();

                  request.setCharacterEncoding("UTF-8");

                  // Comprueba la existencia del número de socio introducido
                  String consultaNumSocio = "SELECT * FROM cliente WHERE DniCliente LIKE '" + request.getParameter("DniCliente") + "'";

                  ResultSet numeroDeSocios = s.executeQuery(consultaNumSocio);
                  numeroDeSocios.last();

                  if (numeroDeSocios.getRow() != 0) {
                    response.sendRedirect("errorDNI.jsp");
                  } else {
                    String insercion = "INSERT INTO cliente (nombreCliente, apellidosCliente, DniCliente, direccionCliente, EmailCliente) VALUES ("
                            + "'" + request.getParameter("nombreCliente")
                            + "', '" + request.getParameter("apellidosCliente")
                            + "', '" + request.getParameter("DniCliente")
                            + "', '" + request.getParameter("direccionCliente") 
                            + "', '" + request.getParameter("EmailCliente")+ "')";
                    s.execute(insercion);
                  }
                  conexion.close();


                %>
                
                <h2 class="mensajeGrabaReserva">El cliente se ha añadido correctamente</h2>
                <br>
                <a class="hacerloDeNuevo" href="nuevoCliente.jsp">Dar de alta otro cliente</a>
                <a class="aceptarNuevo" href="listadoCliente.jsp">Aceptar</a>
            </section>

            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>