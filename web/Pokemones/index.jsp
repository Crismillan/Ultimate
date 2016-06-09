<%@page import="accesodato.Coneccion"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../favicon.ico">

        <title>Cover Template for Bootstrap</title>

        <!-- Bootstrap core CSS -->
        <link href="../template/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="../template/css/cover.css" rel="stylesheet">


    </head>

    <body>

        <div class="site-wrapper">

            <div class="site-wrapper-inner">

                <div class="cover-container">

                    <div class="masthead clearfix">
                        <div class="inner">
                            <h3 class="masthead-brand">Centro Pokemon</h3>
                            <nav>
                                <ul class="nav masthead-nav">
                                    <li class="active"><a href="../index.jsp">Inicio</a></li>
                                    <li><a href="../Usuario/index.jsp">Usuario</a></li>
                                    <li><a href="index.jsp">Pokemon</a></li>
                                    <li><a href="../Habilidades/index.jsp">Habilidad</a></li>
                                    <li><a href="../Tipos/index.jsp">Tipos</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="panel-body">

                        <br><br><br>
                        <div class="inner cover">
                            <h1 class="cover-heading">Pokemones</h1>
                            <p class="lead"></p>

                            <table class="table table-bordered">

                                <thead>
                                <th>Pokemon_id</th>
                                <th>Nombre</th>
                                <th>Fecha nacimiento</th>
                                <th>Numero</th>
                                <th>Tipo_Id</th>
                                <th>Creado Por</th>
                                </thead>
                                <tbody>
                                    <%
                                        Coneccion con = new Coneccion();
                                        con.setConsulta("select usuarios.usuario as nom,pokemones.nombre,pokemones.numero,pokemones.tipo_id,pokemones.pokemon_id,pokemones.fecha_nacimiento from usuarios inner join pokemones on usuarios.usuario_id=pokemones.creado_por  where pokemones.estado='activo'");

                                        while (con.getResultado().next()) {
                                            out.println("<tr>");
                                            out.println("<td>" + con.getResultado().getString("pokemon_id") + "</td>");
                                            out.println("<td>" + con.getResultado().getString("nombre") + "</td>");
                                            out.println("<td>" + con.getResultado().getString("fecha_nacimiento") + "</td>");
                                            out.println("<td>" + con.getResultado().getString("numero") + "</td>");
                                            out.println("<td>" + con.getResultado().getString("Tipo_id") + "</td>");
                                            out.println("<td>" + con.getResultado().getString("nom") + "</td>");
                                            out.println("<td>"+"<a href='editar.jsp?editar2="+con.getResultado().getString("pokemon_id")+"' class='btn btn-green'>Editar</a>"+"</td>");
                                           

                                            out.println("</tr>");
                                        }
                                    %>         


                                </tbody>

                            </table> 

                        </div>
                     <a href="../index.jsp"class="btn btn-danger">Volver</a>     <a href="crear.jsp" class="btn btn-primary">nuevo</a>


                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../template/js/bootstrap.min.js"></script>

</body>
</html>