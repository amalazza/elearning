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
            <header style=" padding-top: 8rem !important;
                            padding-bottom: 3rem !important;">
                <div class="container px-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <div class="col-lg-8 col-xl-7 col-xxl-6">
                            <div class="my-5 text-center text-xl-start">
                                @if (Auth::check())
                                <h3 class="display-5 fw-bolder mb-2" style="font-family: 'Poppins', sans-serif !important;
                                                                            font-style: normal !important;
                                                                            font-weight: 700 !important;
                                                                            font-size: 40px !important;
                                                                            line-height: 72px !important;
                                                                            letter-spacing: 0.01em !important;
                                                                            color: #000000 !important;">
                                    Selamat Datang
                                </h3>
                                <h3 class="display-5 fw-bolder mb-2" style="font-family: 'Poppins', sans-serif !important;
                                                                            font-style: normal !important;
                                                                            font-weight: 700 !important;
                                                                            font-size: 40px !important;
                                                                            line-height: 72px !important;
                                                                            letter-spacing: 0.01em !important;
                                                                            color: #000000 !important;">
                                    di Website Pembelajaran SMKN 39 Jakarta
                                </h3>

                                @else

                                <h3 class="display-5 fw-bolder mb-2" style="font-family: 'Poppins', sans-serif !important;
                                                                            font-style: normal !important;
                                                                            font-weight: 700 !important;
                                                                            line-height: 72px !important;
                                                                            letter-spacing: 0.01em !important;
                                                                            color: #000000 !important;">
                                    Website Pembelajaran SMKN 39 Jakarta
                                </h3>

                                @endif






                                <p class="lead fw-normal text-50 mb-4" style="  font-family: 'Poppins'!important;
                                                                                font-style: normal !important;
                                                                                font-weight: 400 !important;
                                                                                font-size: 20px !important;
                                                                                line-height: 30px !important;
                                                                                letter-spacing: 0.01em !important;

                                                                                /* Grey */

                                                                                color: #AEAEAE;">
                                    Bahan pembelajaran berbasis website pada mata pelajaran perencanaan dan instalasi sistem audio video (PSA) kelas XI SMKN 39 Jakarta
                                </p>
                                <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                                    @if (Auth::check())
                                    <a class="btn btn-outline-light btn-lg px-4" href="/lessons" style="
                                                                                                        color: #FFFFFF;
                                                                                                        background: #74927A;
                                                                                                        border-radius: 27px;">Get Started!</a>
                                    @endif
                                    <a class="btn btn-outline-light btn-lg px-4" href="/intruction" style="color: #74927A; border: 2px solid; border-color: #74927A; border-radius: 27px;">Learn More </a>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center">
                            <img class="d-block" src="{{ asset('img/Page 2_Home/Pict 2.svg') }}" alt="..." style=" width: 400px;
                                                                                                            height: 390px;
                                                                                                            float: right"/>
                            <!-- <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                    <img class="d-block w-100" src="{{ asset('uploads/img/1.jpg') }}" alt="..." style="width:600; height: 400; background-size: cover;"/>
                                    </div>
                                    <div class="carousel-item">
                                    <img class="d-block w-100" src="{{ asset('uploads/img/2.jpg') }}" alt="..." style="width:600; height: 400; background-size: cover;"/>
                                    </div>
                                    <div class="carousel-item">
                                    <img class="d-block w-100" src="{{ asset('uploads/img/3.jpg') }}" alt="..." style="width:600; height: 400; background-size: cover;"/>
                                    </div>
                                </div>
                            </div> -->
                           
                        </div>
                    </div>
                </div>
            </header>

            <!-- Testimonial section-->
            <div class="py-5" style=" padding-top: 8rem !important;">
                <div class="container px-5 py-5" style=" margin-top: 3rem !important;">
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-10 col-xl-10">
                            <div class="text-center">
                            <h1 class="display-5 fw-bolder mb-2" style="font-family: 'Poppins' !important;
                                                                        font-style: normal !important;
                                                                        font-weight: 700 !important;
                                                                        font-size: 40px !important;
                                                                        line-height: 60px !important;
                                                                        text-align: center !important;
                                                                        letter-spacing: 0.01em !important;
                                                                        color: #000000 !important;">
                                    About Project
                                </h1>
                                <br>
                                <div class="" style="font-family: 'Poppins' !important;
                                                                        font-style: italic !important;
                                                                        font-weight: 300 !important;
                                                                        font-size: 20px !important;
                                                                        line-height: 30px !important;
                                                                        text-align: center !important;
                                                                        letter-spacing: 0.01em !important;
                                                                        color: #595959 !important;">
                                    Bahan Pembelajaran Berbasis Website ini merupakan salah satu produk yang dihasilkan guna memenuhi tugas akhir atau skripsi mengenai penelitian pengembangan dengan judul Pengembangan Bahan Pembelajaran Berbasis Website Pada Mata Pelajaran Perencanaan dan Instalasi Sistem Audio Video (PSA) Kelas XI SMK Negeri 39 Jakarta.                                
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
            <section class="py-5 bg-light" style="background: #F1F1F1 !important;">
                <div class="container px-5 my-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <div class="col-lg-3 col-xl-3 col-xxl-3 d-none d-xl-block text-center">
                            <img class="d-block" src="{{ asset('img/Page 2_Home/Pict 2.svg') }}" alt="..." style=" width: 400px;
                                                                                                            height: 390px;
                                                                                                            float: left"/>
                        </div>
                        <div class="col-lg-9 col-xl-9 col-xxl-9">
                            <div class="text-center">
                                <h2 class="fw-bolder">Our team</h2>
                                <p class="lead fw-normal text-muted mb-5">Tim yang terlibat dalam penelitian</p>
                            </div>
                            <div class="row gx-5 row-cols-1 row-cols-sm-2 row-cols-xl-4 justify-content-center">
                                <div class="col mb-5 mb-5 mb-xl-0">
                                    <div class="text-center">
                                        <img class="img-fluid rounded-circle mb-4 px-4" src="{{ asset('uploads/img/nola-febrina.jpg') }}" alt="..." style="width: 150%; height: auto;"/>
                                        <h5 class="fw-bolder">Nola Febrina</h5>
                                        <div class="fst-italic text-muted" style="  font-family: 'Poppins' !important;
                                                                                    font-style: normal !important;
                                                                                    font-weight: 300 !important;
                                                                                    font-size: 13px !important;
                                                                                    line-height: 21px !important;
                                                                                    text-align: center !important;
                                                                                    letter-spacing: 0.01em !important;
                                                                                    color: #595959 !important;
                                                                                    ">
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
                                        <div class="fst-italic text-muted" style="  font-family: 'Poppins' !important;
                                                                                    font-style: normal !important;
                                                                                    font-weight: 300 !important;
                                                                                    font-size: 13px !important;
                                                                                    line-height: 21px !important;
                                                                                    text-align: center !important;
                                                                                    letter-spacing: 0.01em !important;
                                                                                    color: #595959 !important;
                                                                                    ">
                                            Dosen Pembimbing 1
                                            <br>
                                            Nip: 195905061985031002
                                        </div>
                                    </div>
                                </div>
                                <div class="col mb-5 mb-5 mb-xl-0">
                                    <div class="text-center">
                                        <img class="img-fluid rounded-circle mb-4 px-4" src="{{ asset('uploads/img/dospem-2.jpeg') }}" alt="..." />
                                        <h5 class="fw-bolder">Dr. Wisnu Djatmiko, M.T</h5>
                                        <div class="fst-italic text-muted" style="  font-family: 'Poppins' !important;
                                                                                    font-style: normal !important;
                                                                                    font-weight: 300 !important;
                                                                                    font-size: 13px !important;
                                                                                    line-height: 21px !important;
                                                                                    text-align: center !important;
                                                                                    letter-spacing: 0.01em !important;
                                                                                    color: #595959 !important;
                                                                                    ">
                                            Dosen Pembimbing 2
                                            <br>
                                            Nip: 196702141992031001
                                        </div>
                                    </div>
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
            <section class="py-5" id="scroll-target">
                <div class="container px-5">
                    <!-- Contact cards-->
                    <div class="row justify-content-between">
                        
                            <div class="text-center mb-5">
                                <h1 class="fw-bolder">Address</h1>
                                <p style="  font-family: 'Poppins';
                                            font-style: normal;
                                            font-weight: 500;
                                            font-size: 24px;
                                            line-height: 36px;

                                            text-align: center;
                                            letter-spacing: 0.01em;

                                            color: #000000;">
                                            Universitas Negeri Jakarta
                                </p>
                                <p class="lead fw-normal text-muted mb-0">                            
                                    Jl. Rawamangun Muka Raya No.11, RT.11/RW.14, Rawamangun, Kec. Pulo Gadung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13220
                                </p>
                            </div>
                            <div class="col-lg-6 col-xl-6 col-xxl-6">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15866.09582526792!2d106.8791516!3d-6.1943826!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2412a91a0f6a01c8!2sUniversitas%20Negeri%20Jakarta!5e0!3m2!1sid!2sid!4v1637415945682!5m2!1sid!2sid" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                            </div>
                        <div class="col-xl-6 col-xxl-6 d-none d-xl-block d-flex align-items-end justify-content-end">
                            <img class="d-block" src="{{ asset('img/Page 2_Home/Pict 3.svg') }}" alt="..." style="float: right;"/>
                        </div>
                    </div>
                </div>
                <a href="https://wa.me/6282311471970" class="float">
                    <div class="d-flex" style="display: flex;
  align-items: center;
  justify-content: center;">
                    <img src="{{ asset('img/Page 2_Home/Logo Help.svg') }}" class="img-fluid" style="width: 6vh;"/>
                    <span style="font-family: 'Poppins';
                                    font-style: normal;
                                    color: #74927A;
                                    padding-right: 10px;">Help Me!</span>
                    </div>
                </a>
            </section>

            <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"/>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
                        
