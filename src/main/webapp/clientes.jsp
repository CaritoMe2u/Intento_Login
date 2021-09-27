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
  
    <%-- ESTE ES NUESTRO CABECERO --%>
<jsp:include page="header.jsp" />
<%-- fin de cabecero --%>
  
  <body>
  
  
  
  
  
  <%!String mensaje="";
  String cedula="",direccion="",correo="",nombre="",estado="",telefono="";

%>

<%
if(request.getParameter("cedula")!=null){
direccion= request.getParameter("direccion");
cedula=request.getParameter("cedula");
correo=request.getParameter("correo");
nombre=request.getParameter("nombre");
telefono=request.getParameter("telefono");


estado="disabled";
}
%>
<%
if(request.getParameter("men")!=null){
cedula="";
direccion="";
correo="";
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
  
  
  <section class="Form my-3 mx-7" style="background: url(Imagen/cafe1.jpg)">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-lg-5">
             
            </div>
            <div class="col-lg-7 px-5 pt-5">
                <h1 style="color:#FFFFFF" class="font-weight-bold py-3">Ingrese sus datos</h1>
                <form action= "controlador_clientes" method="post">
                    <div class="from-row">
                        <div class="col-lg-7">
                            <input type="text" placeholder="c�dula" class="form-control my-3 p-4 "name="cedula" value="<%=cedula%>"  <%=estado%>>
                            <input type="hidden" name="cedulaC" value="<%=cedula%>">   
                        </div>
                    </div>
                    
                     <div class="from-row">
                        <div class="col-lg-7">
                            <input type="text" placeholder="direcci�n" class="form-control my-3 p-4" name="direccion" value="<%=direccion%>">
                        </div>
                    </div>
          
                    <div class="from-row">
                        <div class="col-lg-7">
                            <input type="email" placeholder="correo electr�nico" class="form-control my-3 p-4" name="correo"value="<%=correo%>" >
                        </div>
                    </div>
          
                    <div class="from-row">
                        <div class="col-lg-7" type="text" placeholder="name" aria-label="name">
                            <input type="text" placeholder="nombre completo" class="form-control my-3 p-4" name="nombre"value="<%=nombre%>">   
                        </div>
                    </div>
                   
                    
                    <div class="from-row">
                        <div class="col-lg-7">
                            <input type="text" placeholder="tel�fono" class="form-control my-3 p-4"name="telefono"value="<%=telefono%>">   
                        </div>
                    </div>
                   
                    <div class="from-row">
                        <div class="col-lg-7">
                            <button type="submit" class="btn btn-success" name="buscar">consultar</button>
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