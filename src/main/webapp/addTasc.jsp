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
            <div class="container my-md-5 my-sm-3 col-md-6">
                <h1 class="text-center text-secondary mb-4">Formulario de Captura de Tareas</h1>
                <form action="procesarTasc.jsp" method="post">
                    <div class="mb-3">
                        <label for="titulo" class="form-label">Titulo</label>
                        <input type="text" name="titulo" id="titulo" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="asunto" class="form-label">Asunto</label>
                        <textarea name="asunto" id="asunto" class="form-control" required></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="descripcion" class="form-label">Descripcion</label>
                        <textarea name="descripcion" id="descripcion" class="form-control"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="responsable" class="form-label">Responsable</label>
                        <input type="text" name="responsable" id="responsable" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="recordatorio" class="form-label">Recordatorio</label>
                        <input type="datetime-local" name="recordatorio" id="recordatorio" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="etiquetas" class="form-label">Etiquetas</label>
                        <input type="text" name="etiquetas" id="etiquetas" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="prioridad" class="form-label">Prioridad</label>
                        <select name="prioridad" id="prioridad" class="form-select" required>
                            <option value="">Seleccionar...</option>
                            <option value="baja">Baja</option>
                            <option value="media">Media</option>
                            <option value="alta">Alta</option>
                            <option value="urgente">Urgente</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="duracion_estimada" class="form-label">Duracion Estimada</label>
                        <input type="text" name="duracion_estimada" id="duracion_estimada" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="proyecto_area" class="form-label">Proyecto area</label>
                        <input type="text" name="proyecto_area" id="proyecto_area" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="estado_avance" class="form-label">Estado de Avance (%)</label>
                        <input type="number" name="estado_avance" id="estado_avance" class="form-control" min="0"
                            max="100">
                    </div>
                    <div class="mb-3">
                        <label for="fecha_inicio" class="form-label">Fecha de Inicio</label>
                        <input type="date" name="fecha_inicio" id="fecha_inicio" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="fecha_entrega" class="form-label">Fecha de Entrega</label>
                        <input type="date" name="fecha_entrega" id="fecha_entrega" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label for="fecha_finalizacion" class="form-label">Fecha de Finalizacion</label>
                        <input type="date" name="fecha_finalizacion" id="fecha_finalizacion" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label for="comentarios" class="form-label">Comentarios
                        </label>
                        <textarea name="comentarios" id="comentarios" class="form-control"></textarea>
                    </div>
                    <button type="submit" name="save" class="btn btn-secondary w-100 mt-5 p-2">Guardar Tarea</button>
                </form>
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