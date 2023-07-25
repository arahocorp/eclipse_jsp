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
                <div class="container mt-5">
                    <h1 class="text-center text-secondary">Lista de Pedidos</h1>
                    <table class="table table-bordered table-striped text-white">
                        <thead>
                            <tr>
                                <th>ID Pedido</th>
                                <th>Fecha del Pedido</th>
                                <th>Monto</th>
                                <th>Estado</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                            try {
                                
                                // Obtienen las clases del Driver descargado
                                Class.forName("com.mysql.jdbc.Driver");
                                // Determinamos la cadena de conexion: la SGBD, el servidor y puerto y la DB
                                String url="jdbc:mysql://localhost:3306/tasc";
                                Connection con=DriverManager.getConnection(url,"root",""); 
                                Statement st=con.createStatement();
                                String sql="SELECT * FROM pedidos";
                                ResultSet rs=st.executeQuery(sql);
                            
            
                                while (rs.next()) {
                                    int pedidoId = rs.getInt("id");
                                    Date fechaPedido = rs.getDate("fecha_pedido");
                                    double monto = rs.getDouble("monto");
                                    String estado = rs.getString("estado");
            
                                    out.println("<tr>");
                                    out.println("<td>" + pedidoId + "</td>");
                                    out.println("<td>" + fechaPedido + "</td>");
                                    out.println("<td>" + monto + "</td>");
                                    out.println("<td>" + estado + "</td>");
                                    out.println("<td><a href='viewPedidos.jsp?id="+pedidoId+"' class='btn btn-primary'><i class='bi bi-journal-check'></i> Ver Detalles</a></td>");
                                    out.println("</tr>");
                                }
            
                                con.close();
                            } catch (Exception e) {
                                out.println("Error: " + e.getMessage());
                            }
                            %>
                        </tbody>
                    </table>
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