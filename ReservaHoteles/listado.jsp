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
                <div><h2>Reserva tu Hotel</h2></div>
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservaHoteles", "root", "");
                  Statement s = conexion.createStatement();

                  ResultSet listado = s.executeQuery("SELECT * FROM reserva");
                %>

                <table>
                    <tr><th>Nº de reserva</th><th>Nombre hotel</th><th>Nombre cliente</th><th>Apellidos</th><th>Email</th></tr>

                    <%
                      while (listado.next()) {
                        out.println("<tr><td>");
                        out.println(listado.getString("reservaID") + "</td>");
                        out.println("<td>" + listado.getString("nombreHotel") + "</td>");
                        out.println("<td>" + listado.getString("nombreCliente") + "</td>");
                        out.println("<td>" + listado.getString("apellidosCliente") + "</td>");
                        out.println("<td>" + listado.getString("EmailCliente") + "</td>");
                    %>
                    <%
                      }

                      conexion.close();
                    %>
                </table>
            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>
