<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
  
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="utf-8">
    <title>Task.com - add</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Saira:wght@500;600;700&display=swap"
      rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
  </head>

  <body>

    <header>
      <%@include file="layout/header.jsp" %>
    </header>

    <main>
      <div class="container my-md-5 col-md-6">
        <h1 class="text-center text-primary">Detalles de la Tarea</h1>
        <%
        int code = 0; // Inicializamos la variable code con un valor por defecto

        if (request.getParameter("iden") != null){
            try {
                code = Integer.parseInt(request.getParameter("iden"));
            } catch (NumberFormatException e) {
                e.printStackTrace();
                // Manejar el error de conversi�n, si es necesario
            }
        }
        Class.forName("com.mysql.jdbc.Driver");
        // Determinamos la cadena de conexion: la SGBD, el servidor y puerto y la DB
        String url="jdbc:mysql://localhost:3306/tasc";
        Connection con=DriverManager.getConnection(url,"root",""); 
        Statement st=con.createStatement();
        String sql="SELECT * FROM task where id =" + code;
        ResultSet rs=st.executeQuery(sql);   
        
        rs.next();
        
          String titulo = rs.getString("titulo");
          String asunto = rs.getString("asunto");
          String descripcion = rs.getString("descripcion");
          String responsable = rs.getString("responsable");
          String recordatorio = rs.getString("recordatorio");
          String adjuntos = rs.getString("adjuntos");
          String etiquetas = rs.getString("etiquetas");
          String prioridad = rs.getString("prioridad");
          String duracion_estimada = rs.getString("duracion_estimada");
          String proyecto_area = rs.getString("proyecto_area");
          String estado_avance = rs.getString("estado_avance");
          String fecha_inicio = rs.getString("fecha_inicio");
          String fecha_entrega = rs.getString("fecha_entrega");
          String fecha_finalizacion = rs.getString("fecha_finalizacion");
          String comentarios = rs.getString("comentarios");
                
                
        %>

        <div class="card p-4 ">
          <div class="card-body">
            <h3 class="card-title  text-center text-secondary"><%= titulo %></h3>
            <ul class="list-group">
              <li class="list-group-item">
                <div class="container">
                  <div class="text-center text-white">
                    <h6 class="text-center text-white"><%= descripcion %></h6>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="container">
                  <div class="row">
                    <div class="col-md-6 text-secondary">Asunto:</div>
                    <div class="col-md-6 text-end"><%= asunto %></div>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="container">
                  <div class="row">
                    <div class="col-md-6 text-secondary">Fecha de Entrega:</div>
                    <div class="col-md-6 text-end"><%= fecha_entrega %></div>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="container">
                  <div class="row">
                    <div class="col-md-6 text-secondary">Estado:</div>
                    <div class="col-md-6 text-end"><%= estado_avance %></div>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="container">
                  <div class="row">
                    <div class="col-md-6 text-secondary">Responsable:</div>
                    <div class="col-md-6 text-end"><%= responsable %></div>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="container">
                  <div class="row">
                    <div class="col-md-6 text-secondary">Recordatorio:</div>
                    <div class="col-md-6 text-end"><%= recordatorio %></div>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="container">
                  <div class="row">
                    <div class="col-md-6 text-secondary">Etiquetas:</div>
                    <div class="col-md-6 text-end"><%= etiquetas %></div>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="container">
                  <div class="row">
                    <div class="col-md-6 text-secondary">Prioridad:</div>
                    <div class="col-md-6 text-end"><%= prioridad %></div>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="container">
                  <div class="row">
                    <div class="col-md-6 text-secondary">Duracion:</div>
                    <div class="col-md-6 text-end"><%= duracion_estimada %></div>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="container">
                  <div class="row">
                    <div class="col-md-6 text-secondary">Proyecto/area:</div>
                    <div class="col-md-6 text-end"><%= proyecto_area %></div>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="container">
                  <div class="row">
                    <div class="col-md-6 text-secondary">Estado de Avance:</div>
                    <div class="col-md-6 text-end"><%= estado_avance %></div>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="container">
                  <div class="row">
                    <div class="col-md-6 text-secondary">Fecha de Inicio:</div>
                    <div class="col-md-6 text-end"><%= fecha_inicio %></div>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="container">
                  <div class="row">
                    <div class="col-md-6 text-secondary">Fecha de Finalizacion:</div>
                    <div class="col-md-6 text-end"><%= fecha_finalizacion %></div>
                  </div>
                </div>
              </li>
              <li class="list-group-item">
                <div class="container">
                  <div class="row">
                    <div class="col-md-6 text-secondary">Comentarios:</div>
                    <div class="col-md-6 text-end"><%= comentarios %></div>
                  </div>
                </div>
              </li>
            </ul>
            <div class="mt-3 row">
              <div class="col-md-6 col-sm-12">
                <a href="viewTasc.jsp" class="btn btn-secondary w-100">Volver a la Lista</a>
              </div>
              <div class="col-md-6 col-sm-12 mt-2 mt-md-0">
                <button type="button" class="btn btn-success w-100" onclick="marcarCompletada()">Marcar como
                  Completada</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    <footer>
      <%@include file="layout/footer.jsp" %>
    </footer>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <script src="js/main.js"></script>
  </body>

  </html>