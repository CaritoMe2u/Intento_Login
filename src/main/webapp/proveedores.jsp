<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Chewy&family=Lobster&family=Overlock:ital@1&family=Yeseva+One&display=swap" rel="stylesheet"> 
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet"> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="./style.css">
    <title>Website</title>
  </head>
  <body>
  
  <%!String mensaje="";
  String nit="",ciudad="",direccion="",nombre="",telefono="",estado="";
%>

<%
if(request.getParameter("nit")!=null){
nit= request.getParameter("nit");
ciudad=request.getParameter("ciudadp");
direccion=request.getParameter("direccionp");
nombre=request.getParameter("nombrep");
telefono=request.getParameter("telefonop");
estado="disabled";
}
%>
<%
if(request.getParameter("men")!=null){
nit="";
ciudad="";
direccion="";
nombre="";
telefono="";
estado="";

mensaje=request.getParameter("men");
}
%>
  
  <%
if (request.getParameter("men")!=null)
mensaje = request.getParameter("men");
%>
  
  
    <nav class="navbar navbar-expand-lg">
        <div class="container">
        <a class="tiendavirtual" href="Organic.html"><img style="border-radius: 20px;" src="Imagen/LogoPrinci.jpg" class="img-luid" alt=""></a>
        <div class="collapse navbar-collapse" id="navbarScroll">
          <ul class="navbar-nav m-auto my-2 my-lg-0">
              <a class="propiedades" href="usuarios.jsp">Usuarios</a>
            </li>
            <li class="nav-item">
              <a class="propiedades" href="clientes.jsp">Clientes</a>
            </li>
            <li class="nav-item">
                <a class="propiedades" href="proveedores.jsp">Proveedores</a>
            </li>
            <li class="nav-item">
              <a class="propiedades" href="productos.jsp">productos</a>
            </li>
            <li class="nav-item">
              <a class="propiedades" href="#">Ventas</a>
            </li>
            <li class="nav-item">
              <a class="propiedades" href="#">Reportes</a>
            </li>
            <li class="nav-item">
              <a class="propiedades" href="ingresoadmi.jsp">Ingreso Administrador</a>
            
          </ul>

        </div>
    </div>
  </nav>
  <section class="Form my-3 mx-7">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-lg-5">
                <img style="border-radius: 20px;" class="img-responsive" src="./Imagen/cafe1.jpg" alt="">
            </div>
            <div class="col-lg-7 px-5 pt-5">
                <h1 style="color:#FFFFFF" class="font-weight-bold py-3">Ingrese sus datos</h1>
                <form action="controlador_proveedores" method="post">
                    <div class="from-row">
                        <div class="col-lg-7">
                            <input type="text" placeholder="NIT" class="form-control my-3 p-4" name="nit" value="<%=nit%>">   
                        </div>
                    </div>
                    <div class="from-row">
                        <div class="col-lg-7" type="text" placeholder="name" aria-label="name">
                            <input type="text" placeholder="ciudad proveedor" class="form-control my-3 p-4" name="ciudadp" value="<%=ciudad%>">   
                        </div>
                    </div>
                    <div class="from-row">
                        <div class="col-lg-7">
                            <input type="email" placeholder="direccion" class="form-control my-3 p-4" name="direccionp" value="<%=direccion%>">
                        </div>
                    </div>
                    <div class="from-row">
                        <div class="col-lg-7">
                            <input type="text" placeholder="nombre"  class="form-control my-3 p-4" name="nombrep" value="<%=nombre%>">   
                        </div>
                    </div>
                    <div class="from-row">
                        <div class="col-lg-7">
                            <input type="text" placeholder="telefono"  class="form-control my-3 p-4" name="telefonop" value="<%=telefono%>">
                        </div>
                    </div>
                    <div class="from-row">
                        <div class="col-lg-7">
                            <button type="submit" class="btn btn-success" name="consultar">consultar</button>
                            <button type="submit" class="btn btn-success"name="crear">crear</button>
                            <button type="submit" class="btn btn-success"name="actualizar">actualizar</button>
                            <button type="submit" class="btn btn-success"name="borrar">borrar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
  </body>
</html>