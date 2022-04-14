@extends('layouts.home')

@section('mylesson')

<header style=" padding-top: 0rem !important;
                            padding-bottom: 3rem !important;">
    <div class="container px-5">
        <div class="row gx-5 align-items-center justify-content-center">
            <div class="col-lg-8 col-xl-7 col-xxl-6">
                <div class="my-5 text-center text-xl-start">
                    <h1 class="display-5 fw-bolder mb-2" style="font-family: 'Poppins', sans-serif !important;
                                                                font-style: normal !important;
                                                                font-weight: 700 !important;
                                                                font-size: 48px !important;
                                                                line-height: 72px !important;
                                                                letter-spacing: 0.01em !important;
                                                                color: #000000 !important;">
                        Evaluation
                    </h1>
                    <p class="lead fw-normal text-50 mb-4" style="  font-family: 'Poppins'!important;
                                                                    font-style: normal !important;
                                                                    font-weight: 400 !important;
                                                                    font-size: 20px !important;
                                                                    line-height: 30px !important;
                                                                    letter-spacing: 0.01em !important;

                                                                    /* Grey */

                                                                    color: #AEAEAE;">
                        Silahkan isi kuis berikut untuk mengetahui berapa persen pemahaman anda dari belajar di website pembelajaran ini. 
                    </p>
                    <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                        <a class="btn btn-outline-light btn-lg px-4" href="/lessons" style="
                                                                                            color: #FFFFFF;
                                                                                            background: #74927A;
                                                                                            border-radius: 27px;"><b>Get Started!</b></a>
                    </div>
                </div>
            </div>
            <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center">
                <img class="d-block" src="{{ asset('img/Page 11_Evaluation/Pict.svg') }}" alt="..." style="width: 615px;
height: 628.06px;
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

@endsection
