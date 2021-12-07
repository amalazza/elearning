@extends('layouts.home')

@section('mylesson')

            <header class="py-5 bg-light">
                <div class="container">
                    <!-- Contact form-->
                <div class="bg-light rounded-3 py-5 px-md-5 mb-5">
                    <div class="text-center mb-5">
                        <div class="feature bg-secondary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-bar-chart-steps"></i></div>
                        <h1 class="fw-bolder">Intruction</h1>
                        <p class="lead fw-normal text-muted mb-0">Bacalah petunjuk penggunaan sebelum memulai website pembelajaran ini&nbsp;:</p>
                        <p class="lead fw-normal text-muted" style="text-align: left;">
                            <ol style="text-align: left;">
                                <li>Login untuk mengakses website pembelajaran ini</li>
                                <li>Pilih menu home untuk melihat penjelasan singkat mengenai website ini dan profil singkat mengenai penulis dan pembimbing</li>
                                <li>Pilih menu about untuk melihat sejarah dan jurusan teknik audio video dan SMKN 39 Jakarta</li>
                                <li>Pilih menu courses untuk melihat standar kompetensi dan indikator, didalam menu rps terdapat materi-materi Perencanaan dan Instalasi Sistem Audio Video (PSA)</li>
                                <li>Pilih menu evalution pada materi untuk mengerjakan soal dari seluruh materi pembelajaran</li>
                                <li>Pilih menu forum pada materi untuk berdiskusi jika ada keluhan mengenai materi yang kurang dipahami dengan guru dan murid lainnya</li>
                                <li>Pilih menu contact untuk memberi saran dan masukan terhadap website ini</li>
                            </ol>
                        </p>
                    </div>
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-8 col-xl-6">
                        
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


            @endsection

