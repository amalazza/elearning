@extends('layouts.home')

@section('mylesson')

            <style>
                .carousel-item:after {
                content:"";
                display:block;
                position:absolute;
                top:0;
                bottom:0;
                left:0;
                right:0;
                background:rgba(0,0,0,0.5);
                }
            </style>
            <!-- Header-->
            <header class="bg-dark py-5">
                <div class="container px-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <div class="col-lg-8 col-xl-7 col-xxl-6">
                            <div class="my-5 text-center text-xl-start">
                                <h1 class="display-5 fw-bolder text-white mb-2">Website Pembelajaran SMKN 39 Jakarta</h1>
                                <p class="lead fw-normal text-white-50 mb-4">
                                    Bahan pembelajaran berbasis website pada mata pelajaran perencanaan dan instalasi sistem audio video (PSA) kelas XI SMKN 39 Jakarta
                                </p>
                                <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                                    <a class="btn btn-primary btn-lg px-4 me-sm-3" href="/courses">Get Started</a>
                                    <a class="btn btn-outline-light btn-lg px-4" href="/intruction">Learn More</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center">
                            <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                    <img class="d-block w-100" src="{{ asset('uploads/img/1.jpg') }}" alt="..." style="width:600; height: 400; background-size: cover;"/>
                                    <!-- <img class="d-block w-100" src="..." alt="First slide"> -->
                                    </div>
                                    <div class="carousel-item">
                                    <img class="d-block w-100" src="{{ asset('uploads/img/2.jpg') }}" alt="..." style="width:600; height: 400; background-size: cover;"/>
                                    <!-- <img class="d-block w-100" src="..." alt="Second slide"> -->
                                    </div>
                                    <div class="carousel-item">
                                    <img class="d-block w-100" src="{{ asset('uploads/img/3.jpg') }}" alt="..." style="width:600; height: 400; background-size: cover;"/>
                                    <!-- <img class="d-block w-100" src="..." alt="Third slide"> -->
                                    </div>
                                </div>
                            </div>
                           
                        </div>
                    </div>
                </div>
            </header>

            <!-- Testimonial section-->
            <div class="py-5">
                <div class="container px-5 my-5">
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-10 col-xl-7">
                            <div class="text-center">
                                <div class="fs-4 mb-4 fst-italic">
                                Bahan Pembelajaran Berbasis Website ini merupakan salah satu produk yang dihasilkan guna memenuhi tugas akhir atau skripsi mengenai penelitian pengembangan dengan judul Pengembangan Bahan Pembelajaran Berbasis Website Pada Mata Pelajaran Perencanaan dan Instalasi Sistem Audio Video (PSA) Kelas XI SMK Negeri 39 Jakarta.                                </div>
                                <div class="d-flex align-items-center justify-content-center">
                                    <!-- <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." /> -->
                                    <!-- <div class="fw-bold">
                                        Visi Program Keahlian Teknik Audio Video
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Team members section-->
            <section class="py-5 bg-light">
                <div class="container px-5 my-5">
                    <div class="text-center">
                        <h2 class="fw-bolder">Our team</h2>
                        <p class="lead fw-normal text-muted mb-5">Tim yang terlibat dalam penelitian</p>
                    </div>
                    <div class="row gx-5 row-cols-1 row-cols-sm-2 row-cols-xl-4 justify-content-center">
                        <div class="col mb-5 mb-5 mb-xl-0">
                            <div class="text-center">
                                <img class="img-fluid rounded-circle mb-4 px-4" src="{{ asset('uploads/img/nola-febrina.jpg') }}" alt="..." />
                                <h5 class="fw-bolder">Nola Febrina</h5>
                                <div class="fst-italic text-muted">
                                    Pendidikan Teknik Elektronika
                                    <br>
                                    1513617015
                                </div>
                            </div>
                        </div>
                        <div class="col mb-5 mb-5 mb-xl-0">
                            <div class="text-center">
                                <img class="img-fluid rounded-circle mb-4 px-4" src="{{ asset('uploads/img/dospem-1.jpg') }}" alt="..." />
                                <h5 class="fw-bolder">Dr. Ir. Rusmono, M.Pd</h5>
                                <div class="fst-italic text-muted">
                                    Pembimbing 1
                                    <br>
                                    Nip: 195905061985031002
                                </div>
                            </div>
                        </div>
                        <div class="col mb-5 mb-5 mb-xl-0">
                            <div class="text-center">
                                <img class="img-fluid rounded-circle mb-4 px-4" src="{{ asset('uploads/img/dospem-2.jpeg') }}" alt="..." />
                                <h5 class="fw-bolder">Dr. Wisnu Djatmiko, M.T</h5>
                                <div class="fst-italic text-muted">
                                    Pembimbing 2
                                    <br>
                                    Nip: 196702141992031001
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <style>
                .feature {
                    display: inline-flex;
                    align-items: center;
                    justify-content: center;
                    height: 3rem;
                    width: 3rem;
                    font-size: 1.5rem;
                }
            </style>
            <section class="py-5">
                <div class="container px-5">
                    <!-- Contact cards-->
                    <div class="row gx-5 row-cols-2 row-cols-lg-4 py-5">
                        <div class="col">
                            <!-- <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-question-circle"></i></div> -->
                            <div class="h3">Contact us &nbsp;:</div>
                            <!-- <p class="text-muted mb-0">Browse FAQ's and support articles to find solutions.</p> -->
                        </div>
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-geo-alt"></i></div>
                            <div class="h5">Address</div>
                            <p class="text-muted mb-0">Jl Cempaka Putih Tengah VI No.2 Jakarta Pusat 10510</p>
                        </div>
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-envelope"></i></div>
                            <div class="h5 mb-2">Email</div>
                            <p class="text-muted mb-0">infosmkn39jkt@gmail.com</p>
                        </div>
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-telephone"></i></div>
                            <div class="h5">Telephone/Fax</div>
                            <p class="text-muted mb-0">021-4246845</p>
                        </div>
                    </div>
                </div>
            </section>

            <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"/>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
                        
