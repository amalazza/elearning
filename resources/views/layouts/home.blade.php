<!DOCTYPE html>
<html lang="en">
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>{{ $page_title or 'Website Pembelajaran SMKN 39 Jakarta' }}</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <!-- <link href="css/styles.css" rel="stylesheet" /> -->
        <!-- Custom CSS -->
        <!-- <link href="/css/shop-homepage.css" rel="stylesheet"> -->

        <link href="{{ asset('css/styles.css') }}" rel="stylesheet" type="text/css" >
        <link href="{{ asset('css/shop-homepage.css') }}" rel="stylesheet" type="text/css" >

        <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap" rel="stylesheet">

        
        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

        <style>
        body {
            font-family: 'Poppins';
        }
        /* .navbar-light .navbar-nav .nav-link {
            color: #AEAEAE !important;
        }
        .navbar-light .navbar-nav .nav-link.active {
            color: #74927A !important;
            font-weight: bold !important;
        } */
        .navbar-light .navbar-nav .active>.nav-link, .navbar-light .navbar-nav .nav-link.active, .navbar-light .navbar-nav .nav-link.show, .navbar-light .navbar-nav .show>.nav-link {
            font-style: normal !important;
            font-weight: 700 !important;
            font-size: 20px !important;
            line-height: 30px !important;
            /* identical to box height */

            letter-spacing: 0.01em !important;

            /* Green */

            color: #74927A !important;
        }
        .navbar-light .navbar-nav .nav-link {
            font-style: normal !important;
            font-weight: 400 !important;
            font-size: 20px !important;
            line-height: 30px !important;
            /* identical to box height */

            letter-spacing: 0.01em !important;

            /* Grey */

            color: #AEAEAE !important;
        }
        .navbar-brand {
            margin-left: 8%;
        }
        /* .py-5 {
            padding-top: 8rem !important;
            padding-bottom: 3rem !important;
        } */
        /* .rounded-circle {
            border-radius: 50% !important;
            border: 4px solid #DFDFDF;
            margin: auto;
            padding: auto;
            flex-shrink: 0;
        } */
        </style>



</head>
<body style="padding-top: 50px;">

    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" id="mainNav" style="background-color: white !important;">
        <div class="container-fluid">
            <a class="navbar-brand" href="/">
                <img src="{{ asset('uploads/img/logo-smk.png') }}" class="img-fluid" style="width: 50px; height: 50px;"/>
                <img src="{{ asset('uploads/img/logo-unj.png') }}" class="img-fluid" style="width: 50px; height: 50px;"/>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 justify-content-between">
                <li class="nav-item">
                <a class="nav-link" href="/">Home</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="/about">About</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="/intruction">Intruction</a>
                </li>
                @if (Auth::check())
                <li class="nav-item">
                <a class="nav-link" href="/lessons">Materials</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" href="/evaluation">Evaluation</a>
                </li>
                @endif
                <li class="nav-item">
                <a class="nav-link" href="/contact">Contact</a>
                </li>
                </ul>
                @if (Auth::check())
                <div style="color:white">
                    <form action="{{ route('auth.logout') }}" method="post" class="d-flex">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownBlog" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Welcome, {{ Auth::user()->name }}
                                {{ csrf_field() }}
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownBlog">
                                <li><a href="{{ route('users.edit',Auth::user()->id) }}" class="dropdown-item btn btn-primary">Profile</a></li>
                                <li><input type="submit" value="Logout" class="dropdown-item btn btn-primary"></li>
                            </ul>
                        </li>
                    </ul>
                    </form>
                </div>
            @else
                <form action="{{ route('auth.login') }}" method="post" class="d-flex">
                    {{ csrf_field() }}
                    <input type="email" name="email" placeholder="Email" class="form-control me-2"/>
                    <input type="password" name="password" placeholder="Password" class="form-control me-2"/>
                    <input type="submit" value="Login" class="btn btn-light">
                </form>
            @endif
            </div>
            </div>
        </div>
    </nav>
    
    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">

                @yield('sidebar')

            </div>

            <div class="col-md-9">

                <div class="row" style="margin: 10px;">

                    @yield('main')

                </div>

            </div>

            
            <div class="col-md-12">

                <div class="row" style="margin: 10px;">

                    @yield('mylesson')

                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

    <!-- Footer-->
    <footer class="bg-dark py-4 mt-auto" style="margin: 0;">
        <div class="container px-5">
            <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; @lang('global.global_title') 2021</div></div>
                <!-- <div class="col-auto">
                    <a class="link-light small" href="#!">Privacy</a>
                    <span class="text-white mx-1">&middot;</span>
                    <a class="link-light small" href="#!">Terms</a>
                    <span class="text-white mx-1">&middot;</span>
                    <a class="link-light small" href="#!">Contact</a>
                </div> -->
            </div>
        </div>
    </footer>

    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>

    <!-- jQuery -->
    <script type="text/javascript" src="{{ asset('js/jquery.js') }}"></script>
    <script type="text/javascript" src="{{ asset('js/scripts.js') }}"></script>

    


    <!-- Bootstrap Core JavaScript -->
    <!-- <script src="/js/bootstrap.min.js"></script> -->



    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


    <script>
        $(document).ready(function() {
        $('li.active').removeClass('active');
        $('a[href="' + location.pathname + '"]').closest('li').addClass('active'); 
        });
    </script>


</body>

</html>
