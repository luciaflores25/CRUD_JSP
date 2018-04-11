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
        <title>Listado reservas - Reserva tu hotel</title>
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
                <h2 class="tituloListado">Listado de reservas</h2>
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservaHoteles", "root", "");
                  Statement s = conexion.createStatement();

                  ResultSet listado = s.executeQuery("SELECT * FROM cliente INNER JOIN reserva ON cliente.clienteID = reserva.clienteID");
                %>
                <div id="estiloTablaReservas">
                    <table>
                        <thead>
                            <tr>
                                <th>Nº de Reserva</th><th>Nombre Hotel</th><th>País Hotel</th><th>Nombre Cliente</th><th>Apellidos</th><th>DNI</th><th>Dirección</th><th>Email</th><th></th>
                            </tr>
                        </thead>

                        <%
                          while (listado.next()) {
                            out.println("<tr><td>");
                            out.println(listado.getString("reservaID") + "</td>");
                            out.println("<td>" + listado.getString("nombreHotel") + "</td>");
                            out.println("<td>" + listado.getString("paisHotel") + "</td>");
                            out.println("<td>" + listado.getString("nombreCliente") + "</td>");
                            out.println("<td>" + listado.getString("apellidosCliente") + "</td>");
                            out.println("<td>" + listado.getString("DniCliente") + "</td>");
                            out.println("<td>" + listado.getString("direccionCliente") + "</td>");
                            out.println("<td>" + listado.getString("EmailCliente") + "</td>");
                        %>
                        
                        <td>
                            <form method="get" action="confirmacionBorrado.jsp">
                                <input type="hidden" name="reservaID" value="<%=listado.getString("reservaID")%>"/>
                                <button type="submit" class="botonBorrar">Cancelar</button>
                            </form>
                        </td></tr>
                        <%
                          }

                          conexion.close();
                        %>
                    </table>
                </div>
            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>
