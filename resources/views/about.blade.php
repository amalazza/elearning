@extends('layouts.home')

@section('mylesson')
            <style>
                .carousel-inner > .item {
                height: 400px;
                }
            </style>
            <!-- Header-->
            <header class="py-5">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-xxl-6">
                            <div class="text-center my-5">
                                <h1 class="fw-bolder mb-3">About Us</h1>
                                <p class="lead fw-normal text-muted mb-4">
                                SMK Negeri 39 berlokasi di jalan Cempaka Putih Tengah VI No.2 Jakarta Pusat 10510, Kelurahan Cempaka Putih Timur, Kecamatan Cempaka Putih.
                                </p>
                                <!-- <a class="btn btn-secondary btn-lg" href="#scroll-target">Read our story</a> -->
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- About section one-->
            <section class="py-5 bg-light" id="scroll-target">
                <div class="container my-5">
                    <div class="row gx-5 align-items-center">
                        <!-- <div class="col-lg-5"><img class="img-fluid rounded mb-5 mb-lg-0" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." /></div> -->
                        <div class="col-lg-12">
                            <h2 class="fw-bolder">Sejarah</h2>
                            <p class="lead fw-normal text-muted mb-0">
                            Pertama kali dibuka tahun 1976 dengan nama lembaga ST Negeri 11 Jakarta. Tahun 1978 lembaga ini berubah menjadi Sekolah Lanjutan Atas dengan nama STM Negeri 8 dan mempunyai 4 jurusan yaitu: Mesin Produksi, Listrik Instalasi, Mekanik Otomotif dan Gambar Bangunan.

                            Tahun 1997 STM Negeri 8 mengalami perubahan atau pengalihan nama menjadi SMK Negeri 39, berdasarkan keputusan Menteri Pendidikan dan Kebudayaan Republik Indonesia No.036/O/1997 tentang Perubahan Nomenklatur SMKTA menjadi SMK serta organisasi dan tata kerja SMK. Hingga saat ini SMK Negeri 39 Jakarta mempunyai 4 (empat) Kompetensi Keahlian yaitu Teknik Audio Video, Teknik Elektronika Industri, Teknik dan Bisnis Sepeda Motor dan Teknik Kendaraan Ringan Otomotif dengan jumlah peserta didik keseluruhan 892 orang terbagi dalam 26 Rombongan Belajar.
                            </p>
                        </div>
                    </div>
                    <br>
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                            <img class="d-block w-100" src="{{ asset('uploads/img/1.jpg') }}"  alt="First slide" style="height: 400px; width: 100%;">
                            </div>
                            <div class="carousel-item">
                            <img class="d-block w-100"src="{{ asset('uploads/img/2.jpg') }}"  alt="Second slide" style="height: 400px; width: 100%;">
                            </div>
                            <div class="carousel-item">
                            <img class="d-block w-100" src="{{ asset('uploads/img/3.jpg') }}"  alt="Third slide" style="height: 400px; width: 100%;">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </section>
            <!-- About section two-->
            <section class="py-5">
                <div class="container my-5">
                    <div class="row gx-5 align-items-center">
                        <!-- <div class="col-lg-6 order-first order-lg-last"><img class="img-fluid rounded mb-5 mb-lg-0" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." /></div> -->
                        <div class="col-lg-12">
                        <h1 class="fw-bolder mb-3">Teknik Audio Video SMKN 39 Jakarta</h1>
                            <p class="lead fw-normal text-muted mb-0">
                            <p><strong>Tujuan Umum Kompetensi Keahlian Teknik Audio Video :</strong></p>
                            <ol>
                            <li>Menghasilkan lulusan yang beriman dan bertaqwa kepada Tuhan Yang Maha Esa, berakhlak mulia, serta sehat jasmani dan rohani, dan menjadi warga Negara yang demokratis.</li>
                            <li>Menyiapkan tenaga pelaksana di bidang teknik audio video yang memiliki pengetahuan, keterampilan, nilai dan sikap sebagai manusia yang bertanggung jawab dan mencintai profesi pekerjaannya.</li>
                            </ol>
                            <p>&nbsp;</p>
                            <p><strong>Tujuan Khusus Kompetensi</strong><strong> Keahlian Teknik Audio Video :</strong></p>
                            <p>Untuk memasuki lapangan kerja sebagai tenaga pelaksana di bidang teknik audio video serta mengembangkan sikap profesional dalam bidang teknik audio video.</p>
                            <ol>
                            <li>Menyiapkan peserta didik agar mampu memilih karir, berkompetisi dan mengembangkan diri dalam lingkup keahlian teknik Elektronika, khususnya teknik Audio Video.</li>
                            <li>Menyiapkan peserta didik untuk mengisi tenaga kerja tingkat menengah yang mandiri (bekerja untuk dirinya sendiri) dan untuk mengisi kebutuhan dunia kerja yang berkaitan dengan teknik audio video.</li>
                            <li>Menyiapkan tamatan agar menjadi warga Negara yang produktif, adaptif dan kreatif khususnya yang berkaitan dengan teknik audio video.</li>
                            </ol>
                            <p>&nbsp;</p>
                            <p><strong>Visi</strong> <strong>Program Keahlian Teknik Audio Video</strong></p>
                            <p>Menghasilkan peserta didik  bermutu yang memiliki iman, pengetahuan, ketrampilan dan sikap yang sesuai dengan tuntutan Dunia usaha dan Dunia Industri di bidang teknik audio video baik bertarap nasional maupun internasional</p>
                            <p>&nbsp;</p>
                            <p><strong>Misi Kompetensi</strong><strong> </strong><strong>Keahlian Teknik </strong><strong>Audio Video</strong></p>
                            <ol>
                            <li>Menyiapkan peserta didik yang produktif, mandiri, jujur, dan bertanggung jawab.</li>
                            <li>Membekali peserta didik berpengetahuan teknologi yang luas dan memiliki ketrampilan dibidang Teknik Audio Video.</li>
                            <li>Membekali peserta didik kompeten dibidang Teknik Elektronika dengan kompetensi-kompetensi yang sesuai dengan Teknik Audio Video.</li>
                            <li>Meningkatkan profesionalisme peserta didik dibidang Teknik Audio Video.</li>
                            <li>Mengembangkan jiwa wirausaha pada peserta didik agar bisa mandiri dan terampil dengan ketrampilan yang sudah dimilikinya</li>
                            </ol>
                            <p>&nbsp;</p>
                            <p><strong>Profil Kompetensi Lulusan Teknik Audio Video</strong></p>
                            <ul>
                            <li><strong>Kompetensi umum</strong>
                            <ol>
                            <li>Mengacu pada UUSPN Ps. 3
                            <ul>
                            <li>Beriman dan bertaqwa, berakhlak mulia,</li>
                            <li>sehat,</li>
                            <li>cakap, kreatif,</li>
                            <li>mandiri,</li>
                            <li>demokratis, dan</li>
                            <li>tanggung jawab</li>
                            </ul>
                            </li>
                            </ol>
                            </li>
                            </ul>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. Tuntutan Dunia Kerja</p>
                            <ol>
                            <li style="list-style-type: none;"></li>
                            </ol>
                            <ul>
                            <li style="list-style-type: none;">
                            <ul>
                            <li style="list-style-type: none;">
                            <ul>
                            <li>Disiplin</li>
                            <li>Jujur</li>
                            </ul>
                            </li>
                            </ul>
                            </li>
                            </ul>
                            <p>&nbsp;</p>
                            <ul>
                            <li><strong>Ruang Lingkup Pekerjaan Teknik Audio Video</strong></li>
                            </ul>
                            <ol>
                            <li>Mengoperasikan Sistem Elektronika Audio Video</li>
                            <li>Merawat Sistem Elektronika Audio Video</li>
                            <li>Menginstalasikan Sistem Elektronika Audio Video</li>
                            <li>Menerapkan Sistem Elektronika Audio Video</li>
                            <li>Melakukan Trouble Shooting Sistem Elektronika Audio Video</li>
                            <li>Mereparasi Sistem Elektronika Audio Video</li>
                            <li>Electrocity control</li>
                            <li>Mikrocontroller</li>
                            <li>Wiraswasta dibidang Audio Video</li>
                            </ol>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            @endsection
            <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"/>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

            <!-- Team members section-->
            <!-- <section class="py-5 bg-light">
                <div class="container px-5 my-5">
                    <div class="text-center">
                        <h2 class="fw-bolder">Our team</h2>
                        <p class="lead fw-normal text-muted mb-5">Dedicated to quality and your success</p>
                    </div>
                    <div class="row gx-5 row-cols-1 row-cols-sm-2 row-cols-xl-4 justify-content-center">
                        <div class="col mb-5 mb-5 mb-xl-0">
                            <div class="text-center">
                                <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                                <h5 class="fw-bolder">Ibbie Eckart</h5>
                                <div class="fst-italic text-muted">Founder &amp; CEO</div>
                            </div>
                        </div>
                        <div class="col mb-5 mb-5 mb-xl-0">
                            <div class="text-center">
                                <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                                <h5 class="fw-bolder">Arden Vasek</h5>
                                <div class="fst-italic text-muted">CFO</div>
                            </div>
                        </div>
                        <div class="col mb-5 mb-5 mb-sm-0">
                            <div class="text-center">
                                <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                                <h5 class="fw-bolder">Toribio Nerthus</h5>
                                <div class="fst-italic text-muted">Operations Manager</div>
                            </div>
                        </div>
                        <div class="col mb-5">
                            <div class="text-center">
                                <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                                <h5 class="fw-bolder">Malvina Cilla</h5>
                                <div class="fst-italic text-muted">CTO</div>
                            </div>
                        </div>
                    </div>
                </div>
            </section> -->