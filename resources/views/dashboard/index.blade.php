<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous">

        {{-- Boostrap Icons --}}
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">

        {{-- My Style --}}
        <link rel="stylesheet" href="/css/style.css">

        <title>Coba | Dashboard</title>
    </head>
    <body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="/">UJIKOM</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                {{-- <li class="nav-item">
                <a class="nav-link {{ ($title === "Home") ? 'active' : '' }}" href="/">Home</a>
                </li>
                <li class="nav-item">
                <a class="nav-link {{ ($title === "About") ? 'active' : '' }}" href="/about">About</a>
                </li>
                <li class="nav-item">
                <a class="nav-link {{ ($title === "Posts") ? 'active' : '' }}" href="/posts">Blog</a>
                </li> --}}
            </ul>
    
            <ul class="navbar-nav ms-auto">
                @auth
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Welcome back, {{ auth()->user()->name }}
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/dashboard"><i class="bi bi-layout-text-window"></i> My Dashboard</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li>
                                <form action="/logout" method="post">
                                    @csrf
                                    <button type="submit" class="dropdown-item"><i class="bi bi-box-arrow-right"></i> Logout</button>
                                </form>
                            </li>
                        </ul>
                    </li>
                @else
                    <li class="nav-item">
                        <a href="/login" class="nav-link {{ ($title === "Login") ? 'active' : '' }}">
                            <i class="bi bi-box-arrow-in-right"></i> Login</a>
                    </li>
                @endauth
            </ul>
            
            </div>
        </div>
    </nav>

    <div class="container mb-4 mt-4">
        <div class="row">
            <div class="col-sm-6 mb-3">
              <div class="card text-white bg-secondary">
                <div class="card-body">
                  <h5 class="card-title">Data User</h5>
                  <p class="card-text">Berisi Data User yang telah registrasi</p>
                  <a href="/user" class="btn btn-light">Cek Data User</a>
                </div>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="card text-white bg-secondary">
                <div class="card-body">
                  <h5 class="card-title">Data Mahasiswa</h5>
                  <p class="card-text">Berisi Data Mahasiswa yang telah daftar</p>
                  <a href="/mahasiswa" class="btn btn-light">Cek Data Mahasiswa</a>
                </div>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="card text-white bg-secondary">
                <div class="card-body">
                  <h5 class="card-title">Data Program Studi</h5>
                  <p class="card-text">Berisi Data Program Studi di STMIK Mardira Indonesia</p>
                  <a href="/prodi" class="btn btn-light">Cek Data Program Studi</a>
                </div>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="card text-white bg-secondary">
                <div class="card-body">
                  <h5 class="card-title">Data Mata Kuliah</h5>
                  <p class="card-text">Berisi Data Mata Kuliah</p>
                  <a href="/books" class="btn btn-light">Cek Data Mata Kuliah</a>
                </div>
              </div>
            </div>
          </div>
    </div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
  </body>
</html>