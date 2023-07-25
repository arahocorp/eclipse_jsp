<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page import="java.sql.*" %>
    
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Tasc.com - add Tarea</title>
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
        <%
            
    if (request.getParameter("save") != null) {
        String titulo, asunto, descripcion, responsable, recordatorio, adjuntos, etiquetas, prioridad,
        duracion_estimada, proyecto_area, estado_avance, fecha_inicio, fecha_entrega, fecha_finalizacion,
        comentarios;    

        titulo = request.getParameter("titulo");
        asunto = request.getParameter("asunto");
        descripcion = request.getParameter("descripcion");
        responsable = request.getParameter("responsable");
        recordatorio = request.getParameter("recordatorio");
        etiquetas = request.getParameter("etiquetas");
        prioridad = request.getParameter("prioridad");
        duracion_estimada = request.getParameter("duracion_estimada");
        proyecto_area = request.getParameter("proyecto_area");
        estado_avance = request.getParameter("estado_avance");
        fecha_inicio = request.getParameter("fecha_inicio");
        fecha_entrega = request.getParameter("fecha_entrega");
        fecha_finalizacion = request.getParameter("fecha_finalizacion");
        comentarios = request.getParameter("comentarios");

        String sql = "INSERT INTO task (titulo, asunto, descripcion, responsable, recordatorio, etiquetas, prioridad, duracion_estimada, proyecto_area, estado_avance, fecha_inicio, fecha_entrega, fecha_finalizacion, comentarios) VALUES ('"
            + titulo + "','" + asunto + "','" + descripcion + "','" + responsable + "','" + recordatorio
            + "','" + etiquetas + "','" + prioridad + "','" + duracion_estimada + "','" + proyecto_area
            + "','" + estado_avance + "','" + fecha_inicio + "','" + fecha_entrega + "','" + fecha_finalizacion
            + "','" + comentarios + "')";

        try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/tasc";
        Connection con = DriverManager.getConnection(url, "root", "");
        Statement st = con.createStatement();
        st.executeUpdate(sql);
        response.sendRedirect("index.jsp?msj=addOk");
        } catch (Exception e) {
        response.sendRedirect("index.jsp?msj=addNOk&error=" + e.getMessage());
        }
    }
    
    %>
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