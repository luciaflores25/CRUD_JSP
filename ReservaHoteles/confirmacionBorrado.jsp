<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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

                <h1>AVISO</h1>
                <p>¿Está seguro de que desea cancelar la reserva?</p>
                    <form method="post" action="borraReserva.jsp">
                        <input type="hidden" name="reservaID" value="<%=request.getParameter("reservaID")%>"/>
                        <button type="submit">Aceptar</button>
                    </form>
                    
                    <form action="listadoReserva.jsp">
                        <button style="float:right;">Cancelar</button>
                    </form>

            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>
