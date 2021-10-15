@extends('layouts.home')

@section('mylesson')

            <!-- Header-->
            <header class="py-5 bg-light">
                <div class="container px-5">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-xxl-6">
                            <div class="text-center my-5">
                                <h1 class="fw-bolder mb-3">Contact Us</h1>
                                <p class="lead fw-normal text-muted mb-4">
                                SMK Negeri 39 berlokasi di jalan Cempaka Putih Tengah VI No.2 Jakarta Pusat 10510, Kelurahan Cempaka Putih Timur, Kecamatan Cempaka Putih.
                                </p>
                                <a class="btn btn-primary btn-lg" href="#scroll-target">More Info</a>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

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
            @endsection

