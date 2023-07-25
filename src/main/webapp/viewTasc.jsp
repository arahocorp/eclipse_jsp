<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Task.com - View</title>
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
            
            <div class="container my-lg-5">
                <h1 class="text-center mb-5 text-secondary">Lista de Tareas</h1>
                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
                    <%
                    // Obtienen las clases del Driver descargado
                    Class.forName("com.mysql.jdbc.Driver");
                    // Determinamos la cadena de conexion: la SGBD, el servidor y puerto y la DB
                    String url="jdbc:mysql://localhost:3306/tasc";
                    Connection con=DriverManager.getConnection(url,"root",""); 
                    Statement st=con.createStatement();
                    String sql="SELECT * FROM task";
                    ResultSet rs=st.executeQuery(sql);

                    while (rs.next()) {
                        int id = rs.getInt("id");
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
                    <!-- Resto del código -->
                    <div class="col">
                        <div class="card  mb-4">
                            <div class="card-body">
                                <div class="text-center mb-3">
                                    <h5 class="card-title"><%= titulo %></h5>
                                	<p class="card-text"><%= descripcion %></p>
                                </div>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">Asunto: <%= asunto %></li>
                                    <li class="list-group-item">Fecha de Entrega: <%= fecha_entrega %></li>
                                    <li class="list-group-item">Importancia: <%= prioridad %></li>
                                    <li class="list-group-item">Estado: <%= estado_avance %></li>
                                </ul>
                                <div class="card-footer mt-4">
                                    <a href="detalTasc.jsp?iden=<%= id %>" class="btn btn-primary w-100">Ver Detalles</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% } %>
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