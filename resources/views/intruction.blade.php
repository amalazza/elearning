@extends('layouts.home')

@section('mylesson')

            <header class="py-5 bg-light">
                <div class="container">
                    <!-- Contact form-->
                <div class="bg-light rounded-3 py-5 px-md-5 mb-5">
                    <div class="text-center">
                        <h1 class="fw-bolder">Instruction</h1>
                        <img class="img-fluid" src="{{ asset('img/Page 4_Instruction/Gambar/Pict 1.svg') }}" alt="..."/>
                        <br>
                        <br>
                        <p class="lead fw-normal text-muted mb-0">Bacalah petunjuk penggunaan sebelum memulai website pembelajaran ini&nbsp;:</p><br>
                        <p class="lead fw-normal text-muted" style="text-align: left;">
                            <!-- <ol style="text-align: left; list-style-type: none; padding-left: 0px;">
                                <li>
                                    <img src="{{ asset('img/Page 4_Instruction/Number/1.svg') }}" alt="..." style="width: 4%; height: auto;"/>
                                    <span>
                                    Sebelum menggunakan website ini registrasi terlebih dahulu
                                    </span>
                                </li>
                                <br>
                                <li><img src="{{ asset('img/Page 4_Instruction/Number/2.svg') }}" alt="..." style="width: 4%; height: auto;"/><span>Setelah registrasi, silakan login untuk mengakses website pembelajaran ini</span></li><br>
                                <li><img src="{{ asset('img/Page 4_Instruction/Number/3.svg') }}" alt="..." style="width: 4%; height: auto;"/><span style="padding-left: 50px; text-align: justify">Pilih menu <b>Home</b> untuk melihat penjelasan singkat mengenai website ini serta profil singkat mengenai penulis dan pembimbing</span></li><br>
                                <li><img src="{{ asset('img/Page 4_Instruction/Number/4.svg') }}" alt="..." style="width: 4%; height: auto;"/>Pilih menu <b>About</b> untuk melihat sejarah dan jurusan teknik audio video dan SMKN 39 Jakarta</li><br>
                                <li><img src="{{ asset('img/Page 4_Instruction/Number/5.svg') }}" alt="..." style="width: 4%; height: auto;"/>Pilih menu <b>Materials</b> untuk melihat standar kompetensi dan indikator, di dalam menu RPS terdapat materi-materi Perencanaan dan Instalasi Sistem Audio Video (PSA)</li><br>
                                <li><img src="{{ asset('img/Page 4_Instruction/Number/6.svg') }}" alt="..." style="width: 4%; height: auto;"/>Silahkan berdiskusi melalui kolom komentar yang sudah disediakan dalam setiap materi</li><br>
                                <li><img src="{{ asset('img/Page 4_Instruction/Number/7.svg') }}" alt="..." style="width: 4%; height: auto;"/>Pilih menu <b>Evalution</b> pada materi untuk mengerjakan soal dari seluruh materi pembelajaran</li><br><br><br>
                            </ol> -->
                        <ol style="text-align: left; list-style-type: none;">
                        <li>
                            <div class="row mb-revisi">
                                <div class="col-1 col-md-1 custom-revisi">
                                    <img src="{{ asset('img/Page 4_Instruction/Number/1.svg') }}" alt="..." style="width: 90px; height: 80px; padding-right: 50px;"/>   
                                </div>
                                <div class="col-11 col-md-9 custom-revisi-text">
                                    Sebelum menggunakan website ini registrasi terlebih dahulu
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row mb-revisi">
                                <div class="col-1 col-md-1 custom-revisi">
                                    <img src="{{ asset('img/Page 4_Instruction/Number/2.svg') }}" alt="..." style="width: 90px; height: 80px; padding-right: 50px;"/>   
                                </div>
                                <div class="col-11 col-md-9 custom-revisi-text">
                                    Setelah registrasi, silakan login untuk mengakses website pembelajaran ini
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row mb-revisi">
                                <div class="col-1 col-md-1 custom-revisi">
                                    <img src="{{ asset('img/Page 4_Instruction/Number/3.svg') }}" alt="..." style="width: 90px; height: 80px; padding-right: 50px;"/>   
                                </div>
                                <div class="col-11 col-md-9 custom-revisi-text">
                                    Pilih menu <b>Home</b> untuk melihat penjelasan singkat mengenai website ini serta profil singkat mengenai penulis dan pembimbing
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row mb-revisi">
                                <div class="col-1 col-md-1 custom-revisi">
                                    <img src="{{ asset('img/Page 4_Instruction/Number/4.svg') }}" alt="..." style="width: 90px; height: 80px; padding-right: 50px;"/>   
                                </div>
                                <div class="col-11 col-md-9 custom-revisi-text">
                                    Pilih menu <b>About</b> untuk melihat sejarah dan jurusan teknik audio video dan SMKN 39 Jakarta
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row mb-revisi">
                                <div class="col-1 col-md-1 custom-revisi">
                                    <img src="{{ asset('img/Page 4_Instruction/Number/5.svg') }}" alt="..." style="width: 90px; height: 80px; padding-right: 50px;"/>   
                                </div>
                                <div class="col-11 col-md-9 custom-revisi-text">
                                Pilih menu <b>Materials</b> untuk melihat standar kompetensi dan indikator, di dalam menu RPS terdapat materi-materi Perencanaan dan Instalasi Sistem Audio Video (PSA)
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row mb-revisi">
                                <div class="col-1 col-md-1 custom-revisi">
                                    <img src="{{ asset('img/Page 4_Instruction/Number/6.svg') }}" alt="..." style="width: 90px; height: 80px; padding-right: 50px;"/>   
                                </div>
                                <div class="col-11 col-md-9 custom-revisi-text">
                                    Silahkan berdiskusi melalui kolom komentar yang sudah disediakan dalam setiap materi
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row mb-revisi">
                                <div class="col-1 col-md-1 custom-revisi">
                                    <img src="{{ asset('img/Page 4_Instruction/Number/7.svg') }}" alt="..." style="width: 90px; height: 80px; padding-right: 50px;"/>   
                                </div>
                                <div class="col-11 col-md-9 custom-revisi-text">
                                    Pilih menu <b>Evalution</b> pada materi untuk mengerjakan soal dari seluruh materi pembelajaran
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row mb-revisi">
                                <div class="col-1 col-md-1 custom-revisi">
                                    <img src="{{ asset('img/Page 4_Instruction/Number/8.svg') }}" alt="..." style="width: 90px; height: 80px; padding-right: 50px;"/>   
                                </div>
                                <div class="col-11 col-md-9 custom-revisi-text">
                                    Pilih menu <b>Contact</b> untuk memberi saran dan masukan terhadap website ini
                                </div>
                            </div>
                        </li>
                        </ol>
                        </p>
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


            @endsection

