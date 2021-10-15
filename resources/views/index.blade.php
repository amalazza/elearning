@extends('layouts.home')

@section('mylesson')
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
                        <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center"><img class="img-fluid rounded-3 my-5" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." /></div>
                    </div>
                </div>
            </header>

            <!-- Testimonial section-->
            <div class="py-5 bg-light">
                <div class="container px-5 my-5">
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-10 col-xl-7">
                            <div class="text-center">
                                <div class="fs-4 mb-4 fst-italic">
                                Menghasilkan peserta didik  bermutu yang memiliki iman, pengetahuan, ketrampilan dan sikap yang sesuai dengan tuntutan Dunia usaha dan Dunia Industri di bidang teknik audio video baik bertarap nasional maupun internasional"</div>
                                <div class="d-flex align-items-center justify-content-center">
                                    <!-- <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." /> -->
                                    <div class="fw-bold">
                                        Visi Program Keahlian Teknik Audio Video
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
            
