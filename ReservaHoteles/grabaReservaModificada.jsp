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
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservaHoteles", "root", "");
                  Statement s = conexion.createStatement();

                  request.setCharacterEncoding("UTF-8");

                  String actualizacion = "UPDATE reserva SET "
                          + "nombreHotel='" + request.getParameter("nombreHotel")
                          + "', nombreCliente='" + request.getParameter("nombreCliente")
                          + "', apellidosCliente='" + request.getParameter("apellidosCliente")
                          + "', EmailCliente='" + request.getParameter("EmailCliente")
                          + "' WHERE reservaID=" + Integer.valueOf(request.getParameter("reservaID"));
                  s.execute(actualizacion);
                  out.println("La reserva se ha modificado correctamente");

                  conexion.close();
                %>
                <br>
                <a href="index.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span> Aceptar</button>

            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>