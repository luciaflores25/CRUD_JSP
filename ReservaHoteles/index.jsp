<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Página principal - Reserva Hoteles</title>
        <link href="https://fonts.googleapis.com/css?family=Faster+One" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <meta charset="utf-8">
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

                <h2 id="tituloOpciones">Elige la acción que quieres realizar:</h2>

                    <a href="nuevoCliente.jsp">
                        
                        <div id="img1" class="imagenesIndex">
                            <img src="images/addCliente.png">
                        </div>
                    </a>

                    <a href="listadoCliente.jsp">
                        <div id="img2" class="imagenesIndex">
                            <img src="images/listadoClientes.png">
                        </div>
                    </a>


                    <a href="nuevaReserva.jsp">
                        <div id="img3" class="imagenesIndex">
                            <img src="images/addReserva.png">
                        </div>
                    </a>

                    <a href="listadoReservas.jsp">
                        <div id="img4" class="imagenesIndex">
                            <img src="images/listadoReservas.png">
                        </div>
                    </a>
                <div id="fondoIndex"></div>
                
            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div>
    </body>
</html>
