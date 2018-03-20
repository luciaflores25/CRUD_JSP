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

                  ////// Para comprobar si el nº de reservaID ya existe
                  String consultaReservas = "SELECT * FROM reserva WHERE reservaID="
                          + Integer.valueOf(request.getParameter("reservaID"));

                  ResultSet numeroDeReservas = s.executeQuery(consultaReservas);
                  numeroDeReservas.last();

                  if (numeroDeReservas.getRow() != 0) {
                    out.println("Lo sentimos, ya existe ese código de reserva, inténtelo de nuevo"
                            + request.getParameter("reservaID") + ".");
                  } else {
                    String insercion = "INSERT INTO reserva VALUES (" + Integer.valueOf(request.getParameter("reservaID"))
                            + ", '" + request.getParameter("nombreHotel")
                            + "', '" + request.getParameter("nombreCliente")
                            + "', '" + request.getParameter("apellidosCliente")
                            + "', '" + request.getParameter("EmailCliente") + "')";
                    s.execute(insercion);
                    out.println("Ha realizado la reserva correctamente.");
                  }
                  conexion.close();
                %>
                <br>
                <a href="index.jsp">Hacer otra reserva</button><br/>
                <a href="index.html">Aceptar</button>
            </section>
                
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>