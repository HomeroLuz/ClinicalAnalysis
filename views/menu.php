<!--
    @Autor: Homero Luz
-->
<!--Header-->
<header>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8">
                <h1 class="texto tamtex1">Sistema de Análisis Clínico</h1>
                <h5 class="texto tamtex2">Parque Zoológico Benito Juárez</h5>
            </div>
            <div class="hidden-xs col-sm-6 col-md-4 col-lg-4 centrar">
                <a href="#"><img src="../img/facebook.png" alt=""></a>
                <a href="#"><img src="../img/google.png" alt=""></a>
                <a href="#"><img src="../img/twitter.png" alt=""></a>
            </div>
        </div>
    </div>
</header>

<!--Barra de Navegacion-->
<nav class="navbar navbar-default">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Cambiar Navegacion</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <!-- <a href="views/login.php" class="navbar-brand">Ingresar</a> -->
    </div>

    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <?php
        	if($_SESSION['type'] == 0){
        ?>
            <ul class="nav navbar-nav">
                <li><a href="home.php">Inicio</a></li>
                <li><a href="analysisRequest.php">Solicitud de análisis</a></li>
                <li><a href="showRequests.php">Solicitudes pendientes</a></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Ejemplar <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="specimenRegister.php">Alta de ejemplar</a></li>
                        <li><a href="showSpecimens.php">Ejemplares</a></li>
                    </ul>
                </li>
                <li><a href="register.php">Nuevo usuario</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="../controller/logout.php">Cerrar sesión</a></li>
            </ul>
        <?php
        	} else if($_SESSION['type'] == 1){ 
        ?>
        	<ul class="nav navbar-nav">
	            <li><a href="home.php">Inicio</a></li>
	            <li><a href="analysisRequest.php">Solicitud de análisis</a></li>
                <li><a href="showRequests.php">Solicitudes pendientes</a></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Ejemplar <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="specimenRegister.php">Alta de ejemplar</a></li>
                        <li><a href="showSpecimens.php">Ejemplares</a></li>
                    </ul>
                </li>
	        </ul>

	        <ul class="nav navbar-nav navbar-right">
	            <li><a href="#">Acerca de</a></li>
                <li><a href="../controller/logout.php">Cerrar sesión</a></li>
	        </ul>
	    <?php
	    	} else {
	    ?>
	    	<ul class="nav navbar-nav">
                <li><a href="userHome.php">Inicio</a></li>
	            <li><a href="showSpecimens.php">Ejemplares</a></li>
	        </ul>

	        <ul class="nav navbar-nav navbar-right">
	            <li><a href="#">Acerca de</a></li>
                <li><a href="../controller/logout.php">Cerrar sesión</a></li>
	        </ul>
	    <?php
	    	}
	    ?>
    </div>
</nav>