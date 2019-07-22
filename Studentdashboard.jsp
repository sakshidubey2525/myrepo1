<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome to user portal</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath }/webjars/StudentDashboard/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath }/webjars/StudentDashboard/css/round-about.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Welcome back!!</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
               <li class="nav-item">
              <a class="nav-link" href="#">home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="logout">logout</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

    
     
      <!-- Team Members Row -->
      <div class="row">
        <div class="col-lg-12">
          <h2 class="my-4">Languages For participation</h2>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <a href="fetchjava"> <img class="rounded-circle img-fluid d-block mx-auto" src="${pageContext.request.contextPath }/webjars/StudentDashboard/img/java.jpg" alt=""></a>
          <h3>JAVA<br>
            <small>Click to enter Java </small>
          </h3>
         
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <a href="fetchhtml">  <img class="rounded-circle img-fluid d-block mx-auto" src="${pageContext.request.contextPath }/webjars/StudentDashboard/img/html-css1.jpg" alt=""></a>
          <h3> HTML<br>
            <small>Click to enter HTML</small>
          </h3>
          
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <a href="fetchsql"> <img class="rounded-circle img-fluid d-block mx-auto" src="${pageContext.request.contextPath }/webjars/StudentDashboard/img/sql.jpg" alt=""></a><br>
          <h3>SQL<br>
            <small>Click to enter sql</small>
          </h3>
        </div>
      

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; www.Hackathon.com</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath }/webjars/StudentDashboard/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/webjars/StudentDashboard/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
