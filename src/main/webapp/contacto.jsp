<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <title>Tasc.com - contacto</title>
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
                    <div class="text-center mx-auto pb-lg-4 wow fadeIn" data-wow-delay=".3s" style="max-width: 600px;">
                        <h1 class="mb-1 text-secondary">Contactanos para cualquier consulta</h1>
                        <h3 class="text-primary">Obtener mas informacion</h3>
                    </div>
                    <div class="contact-detail position-relative p-lg-5 p-2">
                        <div class="row g-5 mb-5 justify-content-center">
                            <div class="col-xl-4 col-lg-6 wow fadeIn" data-wow-delay=".3s">
                                <div class="d-flex bg-secondary p-3 rounded">
                                    <div class="flex-shrink-0 btn-square bg-dark rounded-circle"
                                        style="width: 64px; height: 64px;">
                                        
                                    </div>
                                    <div class="ms-3">
                                        <h4 class="text-primary">Direccion</h4>
                                        <a href="https://goo.gl/maps/Zd4BCynmTb98ivUJ6" target="_blank"
                                            class="h5">Paucarpata - Arequipa</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-6 wow fadeIn" data-wow-delay=".5s">
                                <div class="d-flex bg-secondary p-3 rounded">
                                    <div class="flex-shrink-0 btn-square bg-dark rounded-circle"
                                        style="width: 64px; height: 64px;">
                                        
                                    </div>
                                    <div class="ms-3">
                                        <h4 class="text-primary">Llamanos</h4>
                                        <a class="h5" href="tel:+51918914791" target="_blank">+51 918914791</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-6 wow fadeIn" data-wow-delay=".3s">
                                <div class="d-flex bg-secondary p-3 rounded">
                                    <div class="flex-shrink-0 btn-square bg-dark rounded-circle"
                                        style="width: 64px; height: 64px;">
                                        
                                    </div>
                                    <div class="ms-3">
                                        <h4 class="text-primary">Escribenos</h4>
                                        <a class="h5" href="mailto:info@tesc.com" target="_blank">info@tasc.com</a>
                                    </div>
                                </div>
                            </div>
                            

                        </div>
                        <div class="row g-5 col-md-12">
                            <div class="col-md-6 wow fadeIn" data-wow-delay=".3s">
                                <div class="py-lg-5 h-100 rounded contact-map">
                                    <iframe class="rounded w-100 h-100"
                                        src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d478.35216172821004!2d-71.50302706745906!3d-16.43410302222391!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91424b383ead7bb7%3A0x1f10e2954bae0638!2sUgarte%20110%2C%20Arequipa%2004008!5e0!3m2!1ses!2spe!4v1683325131566!5m2!1ses!2spe"
                                        style="border:0;" allowfullscreen="" loading="lazy"
                                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </div>
                            </div>
                            <div class=" col-12 col-md-6 wow fadeIn" data-wow-delay=".5s">
                                <div class="py-lg-5 rounded contact-form">
                                    <div class="mb-4">
                                        <input type="text" class="form-control border-0 py-3" placeholder="Tu nombre">
                                    </div>
                                    <div class="mb-4">
                                        <input type="email" class="form-control border-0 py-3" placeholder="Tu correo">
                                    </div>
                                    <div class="mb-4">
                                        <input type="text" class="form-control border-0 py-3" placeholder="Asusnto">
                                    </div>
                                    <div class="mb-4">
                                        <textarea class="w-100 form-control border-0 py-3" rows="6" cols="10"
                                            placeholder="Mensage"></textarea>
                                    </div>
                                    <div class="text-start w-100">
                                        <button class="btn w-100 bg-primary text-white py-3 px-5"
                                            type="button">Enviar</button>
                                    </div>
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