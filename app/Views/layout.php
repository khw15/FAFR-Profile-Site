<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title><?=$title?></title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <meta content="FAFR" name="author">

    <!-- Favicon -->
    <link href="<?=base_url('favicon.ico')?>" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600;700;800&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="<?=base_url('lib/animate/animate.min.css')?>" rel="stylesheet">
    <link href="<?=base_url('lib/lightbox/css/lightbox.min.css')?>" rel="stylesheet">
    <link href="<?=base_url('lib/owlcarousel/assets/owl.carousel.min.css')?>" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="<?=base_url('css/bootstrap.min.css')?>" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="<?=base_url('css/style.css')?>" rel="stylesheet">
</head>

<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="51">
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->
    
    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light fixed-top shadow py-lg-0 px-4 px-lg-5 wow fadeIn" data-wow-delay="0.1s">
        <a href="index.html" class="navbar-brand d-block d-lg-none">
            <h1 class="text-primary fw-bold m-0">FAFR</h1>
        </a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-between py-4 py-lg-0" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0">
                <a href="#home" class="nav-item nav-link active">Home</a>
                <a href="#about" class="nav-item nav-link">About</a>
                <a href="#skill" class="nav-item nav-link">Skills</a>
            </div>
            <a href="#" class="navbar-brand bg-secondary py-3 px-4 mx-3 d-none d-lg-block">
                <h1 class="text-primary fw-bold m-0">FAFR</h1>
            </a>
            <div class="navbar-nav me-auto py-0">
                <a href="#project" class="nav-item nav-link">Projects</a>
                <a href="#contact" class="nav-item nav-link">Contact</a>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->

    <?=$this->renderSection('mainbody') ?>
    
        <!-- Map Start -->
        <div class="container-xxl pt-0 px-0 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container-xxl pt-3 px-0">
                <div class="bg-dark">
                    <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63369.95080869659!2d106.87456694162083!3d-6.935709224350201!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68481f0379ab33%3A0xf53d53a9ce28325d!2sSukabumi%20City%2C%20West%20Java!5e0!3m2!1sen!2sid!4v1714828678696!5m2!1sen!2sid"
                    frameborder="0" style="width: 100%; height: 450px; border:0;" allowfullscreen="" aria-hidden="false"
                    tabindex="0"></iframe>
                </div>
            </div>
        </div>
        <!-- Map End -->

        <!-- Copyright Start -->
        <div class="container-fluid bg-dark text-white py-4 mt-4">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        &copy; <span id="year"></span> by <a class="border-bottom text-secondary" href="#">FAFR</a>, All Right Reserved.
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Copyright End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="<?=base_url('lib/wow/wow.min.js')?>"></script>
    <script src="<?=base_url('lib/easing/easing.min.js')?>"></script>
    <script src="<?=base_url('lib/waypoints/waypoints.min.js')?>"></script>
    <script src="<?=base_url('lib/typed/typed.min.js')?>"></script>
    <script src="<?=base_url('lib/counterup/counterup.min.js')?>"></script>
    <script src="<?=base_url('lib/owlcarousel/owl.carousel.min.js')?>"></script>
    <script src="<?=base_url('lib/isotope/isotope.pkgd.min.js')?>"></script>
    <script src="<?=base_url('lib/lightbox/js/lightbox.min.js')?>"></script>

    <!-- Template Javascript -->
    <script src="<?=base_url('js/main.js')?>"></script>
    <script>
        document.getElementById("year").innerHTML = new Date().getFullYear();
    </script>
</body>

</html>