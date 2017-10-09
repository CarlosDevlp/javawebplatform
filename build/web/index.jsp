<%-- 
    Document   : index
    Created on : oct 9, 2017, 7:10:58 a.m.
    Author     : JUAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String usuarioSesion=(String)session.getAttribute("usuarioLogeado");
    
    //si la sesión del usuario existe, mostrarle el dashboard (panel del usuario)
    if(usuarioSesion!=null)
    {    
        response.sendRedirect("http://localhost:8080/PreT3/dashboard.jsp");
    }

%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <!--IE Compatibility modes-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Login Page</title>
    
    <meta name="description" content="Free Admin Template Based On Twitter Bootstrap 3.x">
    <meta name="author" content="">
    
    <meta name="msapplication-TileColor" content="#5bc0de" />
    <meta name="msapplication-TileImage" content="assets/img/metis-tile.png" />
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="assets/lib/bootstrap/css/bootstrap.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/lib/font-awesome/css/font-awesome.css">
    
    <!-- Metis core stylesheet -->
    <link rel="stylesheet" href="assets/css/main.css">
    
    <!-- metisMenu stylesheet -->
    <link rel="stylesheet" href="assets/lib/metismenu/metisMenu.css">
    
    <!-- onoffcanvas stylesheet -->
    <link rel="stylesheet" href="assets/lib/onoffcanvas/onoffcanvas.css">
    
    <!-- animate.css stylesheet -->
    <link rel="stylesheet" href="assets/lib/animate.css/animate.css">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body class="login">

      <div class="form-signin">
    <div class="text-center">
          SCARLET
    </div>
    <hr>
    <div class="tab-content">
        
        
        
        <!--login-->
        <div id="login" class="tab-pane active">
            <form action="dashboard.jsp" method="post">
                <p class="text-muted text-center">
                    Enter your username and password
                </p>
                <input type="text" name="username" placeholder="Nombre de usuario" class="form-control top" required>
                <input type="password" name="password" placeholder="Contraseña" class="form-control bottom" required>
                <div class="checkbox">
		  <label>
		    <input type="checkbox"> Remember Me
		  </label>
		</div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
            </form>
        </div>
        <!--/login-->
        
        
        
        
        
        
        <div id="forgot" class="tab-pane">
            <form action="index2.html">
                <p class="text-muted text-center">Enter your valid e-mail</p>
                <input type="email" placeholder="mail@domain.com" class="form-control">
                <br>
                <button class="btn btn-lg btn-danger btn-block" type="submit">Recover Password</button>
            </form>
        </div>
        <div id="signup" class="tab-pane">
            <form action="index2.html">
                <input type="text" placeholder="username" class="form-control top">
                <input type="email" placeholder="mail@domain.com" class="form-control middle">
                <input type="password" placeholder="password" class="form-control middle">
                <input type="password" placeholder="re-password" class="form-control bottom">
                <button class="btn btn-lg btn-success btn-block" type="submit">Register</button>
            </form>
        </div>
    </div>
    <hr>
    <div class="text-center">
        <ul class="list-inline">
            <li><a class="text-muted" href="#login" data-toggle="tab">Ingresar</a></li>
            <li><a class="text-muted" href="#forgot" data-toggle="tab">Contraseña Olvidada</a></li>
            <li><a class="text-muted" href="#signup" data-toggle="tab">Registrarse</a></li>
        </ul>
    </div>
  </div>


    <!--jQuery -->
    <script src="assets/lib/jquery/jquery.js"></script>

    <!--Bootstrap -->
    <script src="assets/lib/bootstrap/js/bootstrap.js"></script>


    <script type="text/javascript">
        (function($) {
            $(document).ready(function() {
                $('.list-inline li > a').click(function() {
                    var activeForm = $(this).attr('href') + ' > form';
                    //console.log(activeForm);
                    $(activeForm).addClass('animated fadeIn');
                    //set timer to 1 seconds, after that, unload the animate animation
                    setTimeout(function() {
                        $(activeForm).removeClass('animated fadeIn');
                    }, 1000);
                });
            });
        })(jQuery);
    </script>
</body>

</html>
