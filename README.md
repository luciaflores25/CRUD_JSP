# CRUD Reserva de hoteles
Trabajo compartido entre las asignaturas de programación y base de datos donde se realizará un CRUD (create, read, update and delete) en JSP y MySql
## Descripción

Temática CRUD: reservas de hoteles.

Lo primero que tiene que hacer el administrador para que la aplicación funcione es añadir un cliente, si no hay clientes no se pueden hacer reservas, una vez añadido el cliente se podrá hacer la reserva de cualquier hotel.
Los clientes se pueden añadir, modificar y dar de baja.
Las reservas solo se pueden añadir y cancelar, no se pueden modificar.

## Explicación de la APP con capturas de pantalla

### [index.jsp](https://github.com/luciaflores25/CRUD_JSP/blob/master/ReservaHoteles/index.jsp)
El index es la página principal, donde se puede elegir entre: añadir un cliente, ver un listado de clientes, añadir una reserva y ver un listado de reservas. </br>
<img src="img/index.PNG.png">

### [nuevoCliente.jsp](https://github.com/luciaflores25/CRUD_JSP/blob/master/ReservaHoteles/nuevoCliente.jsp) 
Al pulsar en el icono de añadir un cliente aparece el siguiente formulario donde hay que escribir los siguientes campos (El código de cada cliente se va auto incrementando, por lo que no hay que ponerlo): nombre del cliente, apellidos, DNI y email. </br>
<img src="img/nuevoCliente.PNG.png">

### [grabaCliente.jsp](https://github.com/luciaflores25/CRUD_JSP/blob/master/ReservaHoteles/grabaCliente.jsp) 
Esta página aparece cuando se pulsa el botón añadir y el cliente se ha añadido correctamente sin ningún fallo. Al pulsar el botón "Dar de alta otro cliente" te llevará de nuevo al formulario de nuevoCliente.jsp En el caso de pulsar aceptar te llevará al listado de todos los clientes. </br>
<img src="img/grabaCliente.PNG.png">

### [listadoCliente.jsp](https://github.com/luciaflores25/CRUD_JSP/blob/master/ReservaHoteles/listadoCliente.jsp) 
Desde esta página se puede ver el listado de los clientes y el código del cliente, que hará falta posteriormente para hacer una reserva. </br>
<img src="img/listadoCliente.PNG.png">

### [modificaCliente.jsp](https://github.com/luciaflores25/CRUD_JSP/blob/master/ReservaHoteles/modificaCliente.jsp) 
Desde la página del listado aparece el botón modificar que si se pulsa aparece el mismo formulario de nuevoCliente, pero relleno con los datos del cliente que hayamos seleccionado, en la siguiente imagen se muestra un ejemplo </br>
<img src="img/modificaCliente.PNG.png">

### [errorDNI.jsp](https://github.com/luciaflores25/CRUD_JSP/blob/master/ReservaHoteles/errorDNI.jsp) 
En el caso de que se pulse el botón añadir (formulario de nuevoCliente) o modificar (formulario modificaCliente) y haya registrado un cliente con el mismo DNI que se ha introducido, aparecerá la siguiente página de error, con el botón de intentar de nuevo que te vuelve a redireccionar a la pag de nuevoCliente.jsp </br>
<img src="img/errorDNI.PNG.png">

### [grabaClienteModificado.jsp](https://github.com/luciaflores25/CRUD_JSP/blob/master/ReservaHoteles/grabaClienteModificado.jsp) 
Esta página aparece cuando se pulsa el botón modificar y el cliente se ha modificado correctamente sin ningún fallo. Al pulsar aceptar te llevará al listado de todos los clientes para visualizar que se ha añadido correctamente, y al pulsar hacer otra modificación te llevará también al listado por si se desea hacer otra modificación. </br>
<img src="img/grabaClienteModificado.PNG.png">

### [confirmacionBorradoCliente.jsp](https://github.com/luciaflores25/CRUD_JSP/blob/master/ReservaHoteles/confirmacionBorradoCliente.jsp) 
Desde la página del listado de todos los clientes también se pueden dar de baja pulsando en "Borrar", donde aparecerá la siguiente confirmación. </br>
<img src="img/confirmacionBorradoCliente.PNG.png">

Para hacer una reserva volvemos al index.jsp

### [nuevaReserva.jsp](https://github.com/luciaflores25/CRUD_JSP/blob/master/ReservaHoteles/nuevaReserva.jsp) 
Desde el index al pulsar en el icono de añadir una reserva aparece el siguiente formulario donde hay que escribir los siguientes campos (El código de cada reserva se va auto incrementando, por lo que no hay que ponerlo): país del hotel, nombre del hotel y código cliente. </br> Para este formulario hay que recordar el código del cliente, de donde se extraen los datos del cliente al que corresponde el código introducido para mostrarlo en el listado de las reservas. </br>
<img src="img/nuevaReserva.PNG.png">

### [listadoReservas.jsp](https://github.com/luciaflores25/CRUD_JSP/blob/master/ReservaHoteles/listadoReservas.jsp) 
Si la reserva se añade correctamente aparecerá lo que se ve en la siguiente captura, un listado de todas las reservas con su correspondiente botón de cancelar. </br>
<img src="img/listadoReservas.PNG.png">

### [errorCliente.jsp](https://github.com/luciaflores25/CRUD_JSP/blob/master/ReservaHoteles/errorCliente.jsp) 
Si al añadir una nueva reserva, introducimos el código de un cliente que no está dado de alta, aparecerá un error como en el de la siguiente captura. </br>
<img src="img/errorCliente.PNG.png">

### [grabaReserva.jsp](https://github.com/luciaflores25/CRUD_JSP/blob/master/ReservaHoteles/grabaReserva.jsp) 
Esta página aparece cuando se pulsa el botón añadir y la reserva se ha añadido correctamente sin ningún fallo. Al pulsar el botón "Hacer otra reserva" te llevará de nuevo al formulario de nuevaReserva.jsp En el caso de pulsar aceptar te llevará al listado de todas las reservas. </br>
<img src="img/grabaReserva.PNG.png">

### [confirmacionBorrado.jsp](https://github.com/luciaflores25/CRUD_JSP/blob/master/ReservaHoteles/confirmacionBorrado.jsp) 
Al pulsar en el botón cancelar que aparece en el listado de las reservas, aparecerá una página de confirmación como se ve en la captura </br>
<img src="img/confirmacionBorrado.PNG.png">
