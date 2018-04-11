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
        <title>Listado clientes - Reserva tu hotel</title>
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
                <h2 class="tituloListado">Listado de clientes</h2>
                <%
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservaHoteles", "root", "");
                  Statement s = conexion.createStatement();

                  ResultSet listado = s.executeQuery("SELECT * FROM cliente");
                %>
                <div id="estiloTablaCliente">
                    <table>
                        <thead>
                            <tr>
                                <th>Código cliente</th><th>Nombre</th><th>Apellidos</th><th>DNI</th><th>Dirección</th><th>Email</th><th></th><th></th>
                            </tr>
                        </thead>

                        <%
                          while (listado.next()) {
                            out.println("<tr><td>");
                            out.println(listado.getString("clienteID") + "</td>");
                            out.println("<td>" + listado.getString("nombreCLiente") + "</td>");
                            out.println("<td>" + listado.getString("apellidosCliente") + "</td>");
                            out.println("<td>" + listado.getString("DniCliente") + "</td>");
                            out.println("<td>" + listado.getString("direccionCliente") + "</td>");
                            out.println("<td>" + listado.getString("EmailCliente") + "</td>");
                        %>

                        <td>
                            <form method="get" action="modificaCliente.jsp">
                                <input type="hidden" name="nombreCliente" value="<%=listado.getString("nombreCliente")%>">
                                <input type="hidden" name="apellidosCliente" value="<%=listado.getString("apellidosCliente")%>">
                                <input type="hidden" name="DniCliente" value="<%=listado.getString("DniCliente")%>">
                                <input type="hidden" name="direccionCliente" value="<%=listado.getString("direccionCliente")%>">
                                <input type="hidden" name="EmailCliente" value="<%=listado.getString("EmailCliente")%>">
                                <button type="submit" class="botonModificar">Modificar</button>
                                <input type="hidden" name="clienteID" value="<%=listado.getString("clienteID")%>"/>                          

                            </form>
                        </td>



                        <td>
                            <form method="get" action="confirmacionBorradoCliente.jsp">
                                <input type="hidden" name="clienteID" value="<%=listado.getString("clienteID")%>"/>
                                <button type="submit" class="botonBorrar">Borrar</button>
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
