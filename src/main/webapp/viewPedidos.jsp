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
                <%
                String id=request.getParameter("id");
                Class.forName("com.mysql.jdbc.Driver");
                String url="jdbc:mysql://localhost:3306/tasc";
                Connection con=DriverManager.getConnection(url,"root","");
                Statement st=con.createStatement();
                String sql="SELECT * FROM pedidos WHERE id="+id;
                ResultSet rs=st.executeQuery(sql);
                //out.println("Consula SQL: " +sql);
                
                rs.next();
                
                int cliente_id=rs.getInt("cliente_id");
                Date fecha_pedido=rs.getDate("fecha_pedido");
                String monto=rs.getString("monto");
                String estado=rs.getString("estado");
                
                %>
                <div class="container my-md-5 col-md-6">
                    <h1 class="text-center text-secondary">Detalles del Pedido</h1>
                    <div class="card p-4">
                        <div class="card-body">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Id Pedido: <%= id %>
                                </li>
                                <li class="list-group-item">Fecha: <%= fecha_pedido %></li>
                                <li class="list-group-item">Monto: <%= monto %> Soles</li>
                                <li class="list-group-item">Estado: <%= estado %> </li>
                            </ul>
                            <div class="mt-5">
                                <a href="pedidos.jsp" class="btn btn-primary">Volver a la Lista de Pedidos</a>
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