@extends('layouts.home')


@section('mylesson')

<style>
    .embed-responsive .embed-responsive-item{
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 100%;
        border: 0;
    }
    iframe {
      width: 100%;
      height: 46.25vw; /*16:9*/
    }
</style>

<section class="py-5">
    <div class="">
        @if ($lesson->slug == 'konsep-gelombang-suara-dan-sistem-akustik-ruang')
        <div>
            <!-- Apa itu gelombang bunyi? -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #555B41;">
                        Apa itu gelombang bunyi?
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>Bunyi termasuk ke dalam gelombang longitudinal dikarenakan arah rambat bunyi itu searah dan dikatakan sebagai gelombang mekanik, karena bunyi membutuhkan medium perambatan. Jadi, sebelum sampai ke telinga, bunyi yang berasal dari sumber bunyi tersebut akan merambat terlebih dahulu di medium-medium perambatan bunyi seperti zat padat, zat cair, atau gas.</p>

                    <p><span style="   font-style: italic;
                                    font-weight: 600;
                                    color: #555B41;">
                                    Syarat bunyi dapat didengar ada 3: sumber bunyi, medium perambatan, dan pendengar
                    </span></p>

                    <p>Ada dua macam gelombang mekanik berdasarkan arah rambatnya, yaitu gelombang longitudinal dan transversal. Dalam gelombang longitudinal satu gelombang diwakili oleh satu rapatan dan satu renggangan. Pada gelombang transversal satu gelombang diwakili oleh satu bukit dan satu lembah.</p>

                    <p>
                        <img class="" src="{{ asset('img/Page 6_Gelombang Suara/Gambar/Rapatan Renggangan.png') }}" alt="..." style="   width: 100%;
                                                                                                                                        height: auto;
                                                                                                                                        margin-top: -10%;
                                                                                                                                        margin-bottom: -10%"/>
                    </p>
                </div>
            </div>
            
            <!-- Klasifikasi Bunyi -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #555B41;">
                        Klasifikasi Bunyi
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>
                        Berdasarkan frekuensinya, klasifikasi bunyi meliputi infrasonik, audiosonik, ultrasonik.
                        <ul>
                            <li><b style="color: #37474F;">Infrasonik</b>
                                <p>
                                Bunyi yang memiliki frekuensi <b>< 20 Hz</b>. Bunyi ini tidak dapat didengar oleh manusia dan hanya mampu didengar oleh beberapa hewan tertentu, seperti badak dan gajah. Sumber gelombang infrasonik ini salah satunya adalah gempa bumi, dan gelombang infrasonik pada gempa bumi disebut dengan gelombang seismik. Gelombang seismik biasanya mampu dideteksi oleh hewan-hewan di sekitarnya. Hewan yang mampu mendengar gelombang infrasonik biasanya mampu juga untuk mendeteksi terjadinya gempa bumi, sehingga mereka dapat berpindah tempat lebih dulu.
                                </p>
                            </li>
                            <li><b style="color: #37474F;">Audiosonik</b>
                                <p>
                                Bunyi yang memiliki frekuensi di <b>kisaran 20 – 20.000 Hz</b>. Bunyi ini dapat dihasilkan dari alat musik, percakapan manusia, tumbukan antar benda dan semua benda yang bergetar yang mampu didengar oleh telinga manusia.
                                </p>
                            </li>
                            <li><b style="color: #37474F;">Ultrasonik</b>
                                <p>
                                Bunyi yang memilki frekuensi <b>> 20.000 Hz (20 KHz)</b>. Gelombang ultrasonik tidak mampu didengar oleh manusia dan hanya beberapa jenis hewan saja yang mampu menggunakan gelombang jenis ini dalam kehidupannya. Sebagai contoh lumba-lumba dan kelelawar.
                                </p>
                            </li>
                        </ul>
                    </p>
                </div>
            </div>

            <br>

            <!-- Karakteristik Gelombang Bunyi -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #555B41;">
                        Karakteristik Gelombang Bunyi
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>
                    Bunyi memiliki karakteristik, yaitu:
                        <ul>
                            <li>
                                <p>
                                Bunyi merupakan gelombang longitudinal.
                                </p>
                            </li>
                            <li>
                                <p>
                                Hanya merambat melalui medium padat, cari, dan gas. Dengan kata lain tidak dapat merambat pada ruang hampa.
                                </p>
                            </li>
                            <li>
                                <p>
                                Cepat rambat bunyi dipengaruhi oleh kerapatan medium perambatannya. Bunyi akan lebih cepat merambat pada medium yang memiliki kerapatan tinggi, yaitu medium padat.
                                </p>
                            </li>
                            <li>
                                <p>
                                Bunyi dapat memantul jika gelombangnya mengenai suatu benda.
                                </p>
                            </li>
                        </ul>
                    </p>
                </div>
            </div>

            <br>
            
            <!-- Sifat – Sifat Gelombang Bunyi -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #555B41;">
                        Sifat – Sifat Gelombang Bunyi
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>
                        <ul>
                            <li><b style="color: #37474F;">Dapat dipantulkan (refleksi)</b>
                                <p>
                                Bunyi dapat dipantulkan terjadi apabila bunyi mengenai permukaan benda yang keras, seperti permukaan dinding batu, semen, besi, kaca, dan seng. 
                                </p>
                                <p>
                                Contoh: Suara kita yang terdengar lebih keras di dalam gua akibat dari pemantulan bunyi yang mengenai dinding gua.
                                </p>
                            </li>
                            <li><b style="color: #37474F;">Dapat dibiaskan (refraksi) </b>
                                <p>
                                Refraksi adalah pembelokan arah lintasan gelombang setelah melewati bidang batas antara dua medium yang berbeda. 
                                </p>
                                <p>
                                Contoh: Pada malam hari, bunyi petir terdengar lebih keras daripada siang hari karena pembiasan gelombang bunyi.
                                </p>
                            </li>
                            <li><b style="color: #37474F;">Dapat dipadukan (interferensi) </b>
                                <p>
                                Seperti halnya interferensi cahaya,interferensi bunyi juga memerlukan dua sumber bunyi yang koheren. 
                                </p>
                                <p>
                                Contoh: Dua pengeras suara yang dihubungkan pada sebuah generator sinyal (alat bunyi pembangkit frekuensi audio) dapat berfungsi sebagai dua sumber yang koheren.
                                </p>
                            </li>
                            <li><b style="color: #37474F;">Dapat dilenturkan (difraksi)</b>
                                <p>
                                Peristiwa pelenturan gelombang bunyi ketika melewati suatu celah sempit. 
                                </p>
                                <p>
                                Contoh: Kita dapat mendengar suara orang di ruangan berbeda dan tertutup karena bunyi melewati celah-celah sempit yang bisa dilewati bunyi.
                                </p>
                            </li>
                            <li><b style="color: #37474F;">Pelayangan Bunyi</b>
                                <p>
                                Pelayangan bunyi adalah dua bunyi keras atau dua bunyi lemah yang terjadi secara berurutan. Jika kedua gelombang bunyi merambat bersamaan akan menghasilkan bunyi paling kuat saat fase keduanya sama. Jika kedua getaran berlawanan fase akan menghasilkan bunyi paling lemah.
                                </p>
                            </li>
                        </ul>
                    </p>
                </div>
            </div>

            <br>

            <!-- Menghitung Gelombang Bunyi -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #555B41;">
                        Menghitung Gelombang Bunyi
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p><b>Frekuensi Gelombang</b></p>

                    <p>
                    Frekuensi gelombang (f) adalah jumlah gelombang yang merambat dalam 1 detik. Persamaan rumus dari frekuensi bisa dilihat di bawah ini :
                    </p>

                    <p style="text-align: center !important;">
                        <img class="" src="{{ asset('img/Page 6_Gelombang Suara/Rumus/Frekuensi Gelombang.png') }}" alt="..." style="max-width: 100%;
                                                                                                                                    max-height: auto;
                                                                                                                                    background: #9EBBA4;       
                                                                                                                                    box-shadow: 18px 20px 4px rgba(0, 0, 0, 0.1);
                                                                                                                                    padding: 10px;"/>
                    </p>

                    <br>

                    <div style="display: flex;
                                align-items: center;
                                justify-content: center;">
                        <p style="  text-align: left !important;
                                    background: rgba(158, 187, 164, 0.4);
                                    border-radius: 46px;
                                    padding: 30px">
                            <b>Keterangan:</b>
                            <br>
                            <b>f    </b>: frekuensi gelombang (Hz)
                            <br>
                            <b>n   </b>: jumlah gelombang yang dihasilkan
                            <br>
                            <b>t    </b>: waktu yang ditempuh gelombang (s)
                            <br>
                            <b>T   </b>: periode gelombang (s)
                        </p>
                    </div>
                </div>
                <div style="text-align: justify;">  
                    <p><b>Cepat Rambat Gelombang</b></p>

                    <p>
                    Periode adalah waktu yang dibutuhkan untuk satu siklus amplitudo. Satuan periode adalah detik. Dalam gelombang transversal jika diketahui Panjang tali gelombang adalah 1 dan banyaknya getaran = n, nilai periodenya dapat dicari menggunakan rumus :
                    </p>

                    <p style="text-align: center !important;">
                        <img class="" src="{{ asset('img/Page 6_Gelombang Suara/Rumus/Cepat Rambat Gelombang.png') }}" alt="..." style="max-width: 100%;
                                                                                                                                    max-height: auto; 
                                                                                                                                    background: #9EBBA4;       
                                                                                                                                    box-shadow: 18px 20px 4px rgba(0, 0, 0, 0.1);
                                                                                                                                    padding: 10px;"/>
                    </p>

                    <br>

                    <div style="display: flex;
                                align-items: center;
                                justify-content: center;">
                        <p style="  text-align: left !important;
                                    background: rgba(158, 187, 164, 0.4);
                                    border-radius: 46px;
                                    padding: 30px">
                            <b>Keterangan: </b>
                            <br>
                            <b>v</b>   : cepat rambat bunyi (m/s) 
                            <br>
                            <b>s</b>   : jarak tempuh (m) 
                            <br>
                            <b>t</b>    : waktu (s)

                        </p>
                    </div>
                </div>
                <div style="text-align: justify;">  
                    <p><b>Efek Doppler</b></p>

                    <p>
                    Adakala frekuensi yang didengar oleh pengamat mengalami perubahan secara tiba-tiba ketika sumber bunyi bergerak mendekati/menjauhi pengamat yang diam.Contohnya adalah ketika kita mendengar mobil bersirine yang sedang melaju ke arah kita, maka kita akan mendengar bunyi sirine yang semakin meninggi, kemudian saat mobil tersebut telah melewati kita dan makin menjauh, bunyi sirine akan makin mengecil (pitch makin rendah). Inilah fenomena Efek Doppler. Besarnya frekuensi yang terdengar oleh penerima dirumuskan sebagai berikut : 
                    </p>

                    <p style="text-align: center !important;">
                        <img class="" src="{{ asset('img/Page 6_Gelombang Suara/Rumus/Efek Doppler.png') }}" alt="..." style="max-width: 100%;
                                                                                                                                    height: auto; 
                                                                                                                                    background: #9EBBA4;       
                                                                                                                                    box-shadow: 18px 20px 4px rgba(0, 0, 0, 0.1);
                                                                                                                                    padding: 10px;"/>
                    </p>

                    <br>

                    <div style="display: flex;
                                align-items: center;
                                justify-content: center;">
                        <p style="  text-align: left !important;
                                    background: rgba(158, 187, 164, 0.4);
                                    border-radius: 46px;
                                    padding: 30px;
                                    width: 80%;">
                            <b>Keterangan:</b>
                            <br>
                            <b>Fp</b>    : frekuensi yang didengar oleh pendengar (Hz).
                            <br>
                            <b>Fs</b>    : frekuensi sumber bunyi (Hz).
                            <br>
                            <b>V</b>     : cepat rambat bunyi di udara (m/s).
                            <br>
                            <b>Vp</b>    : kecepatan pendengar (m/s) (bernilai positif jika pendengar mendekati
                                    sumber bunyi, negatif jika pendengar menjauhi sumber bunyi, dan 0 jika   
                                    pendengar diam)
                            <br>
                            <b>Vs</b>    : kecepatan sumber bunyi (m/s) (berbanding terbalik dengan vp: 
                                    bernilai positif jika sumber bunyi menjauhi pendengar, negatif jika        
                                    sumber bunyi mendekati pendengar, dan 0 jika pendengar diam)


                        </p>
                    </div>
                </div>
            </div>

            <br>

            <!-- Penerapan Bunyi Dalam Kehidupan Sehari-hari -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #555B41;">
                        Penerapan Bunyi Dalam Kehidupan Sehari-hari
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p><b>Gelombang bunyi memiliki beberapa manfaat yang dapat diklasifikasikan sebagai berikut.</b></p>

                    <p>
                        <ul>
                            <li>
                                <p>
                                Dapat digunakan untuk mengukur kedalaman laut serta lokasi dan jarak objek dalam air
                                <div class="row">
                                    <div class="col-12 col-md-12 col-lg-5">
                                        <img class="custom-revisi-m1-left" src="{{ asset('img/Page 6_Gelombang Suara/Rumus/Kedalaman Laut.png') }}" alt="..." style="
                                                                                                                                        background: #9EBBA4;       
                                                                                                                                        box-shadow: 18px 20px 4px rgba(0, 0, 0, 0.1);
                                                                                                                                        padding: 10px;"/>
                                        <br>
                                        <br>
                                        <br>
                                        <p class="custom-revisi-m1-left" style="  text-align: left !important;
                                                    background: rgba(158, 187, 164, 0.4);
                                                    padding: 30px;">
                                            <b>Keterangan:</b>
                                            <br>
                                            <b>f    </b>: frekuensi gelombang (Hz)
                                            <br>
                                            <b>n   </b>: jumlah gelombang yang dihasilkan
                                            <br>
                                            <b>t    </b>: waktu yang ditempuh gelombang (s)
                                            <br>
                                            <b>T   </b>: periode gelombang (s)
                                        </p>
                                    </div>
                                    <div class="col-12 col-md-12 col-lg-7">
                                    <img class="custom-revisi-m1-right" src="http://bahanpembelajaranpsa.xyz/photos/1/Gif.gif" alt="..." style=""/>
                                    </div>
                                </div>
                                </p>
                            </li>
                            <li>
                                <p>
                                Digunakan untuk mendeteksi janin dalam rahim biasanya menggunakan bunyi infrasonik.
                                </p>
                            </li>
                            <li>
                                <p>
                                Digunakan mendeteksi keretakan suatu logam dan lain-lain.
                                </p>
                            </li>
                            <li>
                                <p>
                                Diciptakannya pengeras suara termasuk manfaat dari bunyi audiosonik.
                                </p>
                            </li>
                            <li>
                                <p>
                                Digunakan untuk mendengar suara, musik, dan untuk memperlancar komunikasi.
                                </p>
                            </li>
                            <li>
                                <p>
                                Menentukan jarak dari sesuatu tempat.
                                </p>
                            </li>
                            <li>
                                <p>
                                Pemecahan batu karang dalam usus.                        
                                </p>
                            </li>
                        </ul>
                    </p>

                </div>
                <div style="text-align: justify;">  
                    <p><b>Selain manfaat di atas, gelombang bunyi juga bermanfaat untuk berbagai aspek kehidupan berikut ini.</b></p>

                    <p>
                        <ul>
                            <li>
                                <p>
                                Pemanfaatan untuk Sonar (Sound Navigation Ranging)
                                </p>
                            </li>
                            <li>
                                <p>
                                Terapi medis menggunakan bunyi ultrasonic
                                </p>
                            </li>
                        </ul>
                    </p>

                </div>

            </div>


            <!-- REVISI EKSPLORASI -->
            <div style="margin-top: 40px;">
                <div style="background: #9EBBA4; border-radius: 10px; width: 200px; margin-bottom: -4vh; margin-left: -2%;">
                    <p style="font-family: 'Poppins';
                                font-style: normal;
                                font-weight: bold;
                                color: #000000;
                                text-align: left;
                                padding-left: 30px;
                                padding-right: 10px;
                                padding-top: 10px;
                                padding-bottom: 10px;
                                ">
                                Mengeksplorasi
                    </p>
                </div>
                <div class="text-justify pt-2" style="background: rgba(158, 187, 164, 0.4);">
                    <p class="p-4" style="font-family: 'Poppins';
                                font-style: normal;
                                font-weight: 600;
                                line-height: 36px;
                                text-align: justify;
                                letter-spacing: 0.01em;

                                color: #000000;">
                        Carilah informasi mengenai penggunaan gelombang suara dalam pencarian benda di bawah laut!
                    </p>
                </div>

            </div>

        </div>
        @elseif ($lesson->slug == 'psikoakustik-anatomi-telinga')
        <div>
            <!-- Pendahuluan -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #AF342D;">
                        Tahukah kamu?
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>Kata akustik berasal dari bahasa Yunani ”akuostikos” yang berarti, segala sesuatu yang bersangkutan dengan pendengaran pada suatu kondisi ruang yang dapat mempengaruhi mutu bunyi.
                    </p>

                    <p>Akustik bertujuan untuk mencapai kondisi pendengaran suara yang sempurna yaitu murni, merata, jelas, dan tidak berdengung sehingga sama seperti aslinya, bebas dari cacat, dan kebisingan. </p>

                    <p><span style="
                                    font-family: 'Poppins';
                                    font-style: italic;
                                    font-weight: 500;
                                    text-align: justify;

                                    color: #000000;">
                                    <b>Terdapat beberapa faktor yang dapat mempengaruhi sitem akustik, diantaranya :</b>
                    </span></p>

                    <br>

                    <p>
                        <div class="row">
                            <div class="col-4 p-1" style="display: flex;
                                                    align-items: center;
                                                    justify-content: right;">
                                <button class="custom-revisi-m2-1" style="
                                                background: #D1877D;
                                                
                                                color: white;
                                                border: none">   
                                            <b class="custom-revisi-m2-1b">Sumber suara</b>
                                </button>
                            </div>
                            <div class="col-4 p-1" style="display: flex;
                                                    align-items: center;
                                                    justify-content: center;">
                                <button class="custom-revisi-m2-1" style="
                                                background: #D1877D;
                                                
                                                color: white;
                                                border: none">   
                                            <b class="custom-revisi-m2-1b">Intensitas Suara</b>
                                </button>
                            </div>
                            <div class="col-4 p-1" style="display: flex;
                                                    align-items: center;
                                                    justify-content: left;">
                                <button class="custom-revisi-m2-1" style="
                                                background: #D1877D;
                                                
                                                color: white;
                                                border: none">   
                                            <b class="custom-revisi-m2-1b">Perambatan Suara</b>
                                </button>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-6" style="display: flex;
                                                    align-items: center;
                                                    justify-content: right;">
                                <button class="custom-revisi-m2-1" style="
                                                background: #D1877D;
                                                
                                                color: white;
                                                border: none">   
                                            <b class="custom-revisi-m2-1b">Penerimaan Suara</b>
                                </button>
                            </div>
                            <div class="col-6" style="display: flex;
                                                    align-items: center;
                                                    justify-content: left;">
                                <button class="custom-revisi-m2-1" style="
                                                background: #D1877D;
                                                
                                                color: white;
                                                border: none">   
                                            <b class="custom-revisi-m2-1b">Frekuensi Suara</b>
                                </button>
                            </div>
                        </div>
                    </p>
                </div>
            </div>

            <br>
            
            <!-- Syarat Akustik Ruang -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #AF342D;">
                        Syarat Akustik Ruang
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>
                        Berikut ini kualitas akustik yang memenuhi syarat untuk suatu ruang auditorium :    
                        <ul>
                            <li><b>Kekerasan/<i>Loudness</i></b>
                                <p>
                                Harus ada kekerasan (loudness) yang cukup dalam tiap bagian ruang terutama tempat duduk yang jauh
                                </p>
                            </li>
                            <li><b>Difusi</b>
                                <p>
                                Energi bunyi harus didistribusi secara merata dalam ruangan.
                                </p>
                            </li>
                            <li><b>Kepadatan/<i>Fullness of Tone</i></b>
                                <p>
                                Karakteristik dengung optimum harus disediakan dalam auditorium untuk memungkinkan penerimaan kejelasan suara.
                                </p>
                            </li>
                            <li><b>Keseimbangan/<i>Balance</i></b>
                                <p>
                                Perbandingan loudness yang seimbang antarbagian. Balance juga ditentukan oleh banyaknya pantulan suara pada sekeliling bunyi.
                                </p>
                            </li>
                            <li><b>Daya Campur/<i>Bland</i></b>
                                <p>
                                Keharmonisan bunyi ketika sampai di telinga pendengar. Bland dipengaruhi oleh dinding yang letaknya jauh dari panggung.
                                </p>
                            </li>
                            <li><b>Ansambel/<i>Ensemble</i></b>
                                <p>
                                Kesatuan bunyi antar bagian suara. Suara akan baik jika tercapai kesatuan.
                                </p>
                            </li>
                            <li><b>Keakraban Akustik</b>
                                <p>
                                Kesan musik yang disajikan dalam rang kecil dan menjadi unsur penting dalam auditorium.
                                </p>
                            </li>
                            <li><b>Bebas Cacat Akustik</b>
                                <p>
                                Kondisi akustik tapa gangguan dari hal seperti gema, gaung, resonansi, serta bayangan bunyi.
                                </p>
                            </li>
                        </ul>
                    </p>
                </div>
            </div>

            <br>

            <!-- Karakteristik Akustik Ruang -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #AF342D;">
                        Karakteristik Akustik Ruang
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>
                    Semua material bangunan dan perlakuan terhadap permukaan suatu bahan memiliki tingkat penyerapan tertentu. Penyerapan bunyi tersebut mempengaruhi waktu dengung sehingga menentukan kualitas akustik sebuah ruang. Material tersebut dapat berupa :
                        <ul>
                            <li><b>Bahan penyerap suara (<i>absorber</i>)</b>
                                <p>
                                yaitu permukaan yang terbuat dari material yang menyerap sebagian besar energi suara yang datang padanya. Misalnya glasswool,mineral wool,foam. Bisa berwujud sebagai material yang berdiri sendiri atau di gabungkan menjadi sistem absorber (fabric covered absorber,panel absorber,grid absorber,resonator absorber,perforated absorber,acoustic tiles dsbg).
                                </p>
                            </li>
                            <li><b>Bahan pemantul suara (<i>reflektor</i>) </b>
                                <p>
                                yaitu permukaan yang terbuat dari matrial yang bersifat memantulkan sebagian besar energi suara yang datang padanya. Pantulan yang di hasilkan bersifat spekular (mengikuti kaidah snelius:sudut datang=sudut pantul). Contoh bahan misalnya keramik,marmer logam,almunium,gypsum board,beton,dsbg.
                                </p>
                            </li>
                            <li><b>Bahan pendifuse/penyebar suara (<i>difusor</i>) </b>
                                <p>
                                yaitu permukaan yang di buat tidak merata secara akustik yang menyebarkan energi suara yang datang padanya.
                                </p>
                            </li>
                        </ul>
                    </p>
                </div>
            </div>

            <br>
            
            <!-- Mengukur Dimensi Akustik Ruang -->
            <div>
                <div class="row">  
                    <div class="col-12 col-lg-7">  
                        <div class="text-left">
                            <p style="font-family: 'Poppins';
                                                                font-style: normal;
                                                                font-weight: 700;
                                                                font-size: 40px;
                                                                line-height: 60px;
                                                                /* identical to box height */

                                                                text-align: left;
                                                                letter-spacing: 0.01em;

                                                                color: #AF342D;">
                                Mengukur Dimensi Akustik Ruang
                            </p>
                        </div>
                        <div style="text-align: justify;">
                            <p>
                            Kriteria yang biasa dipakai untuk mengukur kualitas akustik ruang auditorium adalah parameter subjektif dan objektif. 
                            </p>
                            <p>
                            Parameter subjektif lebih banyak ditentukan oleh persepsi individu, berupa penilaian terhadap seorang pembicara oleh pendengar dengan nilai indeks antara 0 sampai 10.                     
                            </p>
                            <p>
                            Parameter ini memiliki banyak kelemahan karena persepsi masing- masing individu dapat memberikan penilaian yang berbeda-beda sesuai dengan latar belakang individu. 
                            </p>
                            <p>
                            Oleh sebab itu, diperlukan metode pengukuran yang lebih objektif dan bersifat analitis, seperti bising latar belakang (background noise), RT (Reverberation Time), EDT (Early Decay Time), dan TS (Centre Time).
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-5 d-none d-sm-block"> 
                        <img class="" src="{{ asset('img/Page 7_Psikoakustik Anatomi/Kartu (34).svg') }}" alt="..." style="max-width: 100%;
                                                                                                                                width: 448px;
                                                                                                                                height: 645px;
                                                                                                                                max-height: auto;
                                                                                                                                margin-top: -100px;
                                                                                                                                margin-bottom: -100px;"/>
                    </div>
                </div>
                <br>
                <div style="text-align: justify;">  
                    <p style="color: #AF342D"><b>1. Tingkat Bising Latar Belakang</b></p>

                    <p>
                    Dalam setiap ruangan, dirasakan atau tidak, akan selalu ada suara. Hal ini menjadi dasar pengertian tentang adanya bising latar belakang (background noise).  Dalam ruangan tertutup seperti auditorium, bising latar belakangdihasilkan oleh peralatan mekanikal/elektrikal seperti pendingin udara (air conditioning), kipas angin dan lainnya. Sedangkan kebisingan dari luar ruangan seperti bising lalu lintas di jalan raya. Kriteria kebisingan ruang dapat ditentukan dengan cara mrmrtakannya pada kurva kriteria kebisingan (Noise Criteria-NC)                     
                    </p>
                </div>
                <br>
                <div style="text-align: justify;">  
                    <p style="color: #AF342D"><b>2.	Waktu Dengung (Reverberation Time)</b></p>

                    <p>
                    Parameter yang sangat berpengaruh dalam desain akustik bangunan adalah waktu dengung (Reverberation Time).  Waktu dengung adalah waktu yang dibutuhkan suatu energi suara untuk meluruh hingga sebesar sepersatu juta dari energI awalnya, yaitu sebesar 60 dB. Dalam geometric akustik disebutkan bahwa bunYi mengalami pantulan jika mengenai permukaan yang keras,tegar dan rata seperti plesteran,batu bata,beton atau kaca.                     
                    </p>
                    <br>
                    <p><i><b>
                    Bunyi yang berkepanjangan akibat pemantulan permukaan yang berulang-ulang disebut dengung.                    
                    </b></i></p>
                    <br>
                    <p>
                    Faktor yang mempengaruhi waktu dengung adalah volume ruang (V), Kapasitas penonton, serta bidang lingkup yang absorptive atau reflektif (A), Dengan rumus :                     
                    </p>

                    <p style="text-align: center !important;">
                        <img class="" src="http://bahanpembelajaranpsa.xyz/photos/1/Dengung.PNG" alt="..." style="max-width: 100%;
                                                                                                                                    width: 438px; 
                                                                                                                                    max-height: auto;
                                                                                                                                    background: #D1877D;     
                                                                                                                                    box-shadow: 18px 20px 4px rgba(0, 0, 0, 0.1);
                                                                                                                                    padding: 10px;"/>
                    </p>

                    <br>

                    <div style="display: flex;
                                align-items: center;
                                justify-content: center;">
                        <p style="  text-align: left !important;
                                    background: rgba(209, 135, 125, 0.5);
                                    border-radius: 46px;
                                    padding: 30px">
                            <b>Keterangan : </b>
                            <br>
                            <b>RT</b> = Waktu Dengung (detik)
                            <br>
                            <b>V</b>= Volume Ruang (m  )
                            <br>
                            <b>s</b>= Luas Bidang Bahan (m  )
                            <br>
                            <b>a</b>= Koefisien absorpsi bahan

                        </p>
                    </div>
                </div>
            </div>

            <br>

            <!-- Apa Itu Psikoakustik? -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #AF342D;">
                        Apa Itu Psikoakustik?
                    </p>
                </div>
                <div style="text-align: justify;">  

                    <p>
                    Psikoakustik merupakan suatu kegiatan untuk mempelajari cara otak menerjemahkan suara. Telinga merupakan organ yang berperan terhadap pendengaran kita akan suara atau bunyi. Salah satu kemampuan pada telinga manusia yang menunjang komunikasi satu sama lain, selain itu, telinga juga berfungsi menjaga keseimbangan tubuh. Untuk mengetahui lebih jauh, simak ulasan mengenai anatomi telinga berikut ini.                    
                    </p>
                </div>
            </div>

            <br>

            <!-- Memahami Anatomi Telinga Manusia -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #AF342D;">
                        Memahami Anatomi Telinga Manusia
                    </p>
                </div>
                <div style="text-align: justify;"> 
                    <p style="text-align: center;">
                        <img class="img-fluid custom-revisi-m2-3" src="{{ asset('img/Page 7_Psikoakustik Anatomi/Gambar/Telinga.png') }}" alt="..." style="max-width: 80%"/> 
                    </p>

                    <p>
                    Ada tiga bagian utama dari telinga manusia, yakni telinga luar, telinga tengah, dan telinga bagian dalam. Struktur telinga tersebut sangat penting untuk proses pendengaran kita. Mulai dari mengumpulkan gelombang bunyi dari luar hingga menyalurkannya ke telinga bagian dalam dan mengirimkan rangsangan bunyi tersebut ke otak.
                    </p> 
                    
                    <p>
                    Ketiga bagian tersebut memiliki fungsi yang berbeda beda namun sebagai satu kesatuan yang tak bisa di pisahkan. Jika terjadi kerusakan pada salah satu bagian, maka akan menyebabkan mekanisme pendengaran kita tidak bekerja.
                    </p>

                    <p>
                        <ol style="list-style-type: none;">
                            <li><b style="color: #AF342D">A. Telinga Luar</b>
                                <p>
                                Telinga luar atau telinga bagian luar adalah bagian yang terlihat dari telinga, yang berfungsi sebagai organ pelindung untuk gendang telinga. Bagian ini mengumpulkan dan memandu gelombang suara masuk ke telinga tengah. Telinga luar terdiri atas dua bagian berikut :
                                </p>
                                <p>
                                    <ul>
                                        <li>Daun Telinga (Pinna)
                                            <p>
                                            Daun telinga yang berada di sisi kepala terbuat dari tulang rawan yang keras yang ditutupi oleh kulit. Fungsi utamanya adalah mengumpulkan suara dan menyalurkannya ke saluran telinga, yang merupakan jalur yang mengarah ke telinga tengah.
                                            </p> 
                                        </li>
                                        <li>Saluran Telinga (Meatus)
                                            <p>
                                            Saluran telinga memiliki panjang sekitar 2 cm. Ini menguatkan gelombang suara dan menyalurkan mereka ke telinga tengah. Kelenjar keringat yang hadir dalam saluran ini, yang menyekresi kotoran telinga.                                        </p> 
                                        </li>
                                    </ul>
                                </p>
                            </li>
                            <li><b style="color: #AF342D">B. Telinga Tengah</b>
                                <p>
                                Telinga tengah terletak di antara telinga luar dan telinga bagian dalam, merasakan gelombang suara dari telinga luar dalam bentuk gelombang tekanan. Telinga tengah adalah rongga berisi udara dan terdiri atas bagian- bagian berikut.
                                </p>
                                <p>
                                    <ul>
                                        <li>Gendang telinga (Membran Timpani) 
                                            <p>
                                            Merupakan sepotong jaringan tipis yang terbentang rapat di saluran telinga. Suara yang masuk akan menghantam gendang telinga dan membuatnya bergerak.. Gerakan tersebut menyebabkan getaran pada tiga tulang yang sangat kecil di telinga bagian tengah yang dikenal sebagai tulang-tulang pendengaran atau osikel. Osikel terdiri dari :
                                            </p> 
                                        </li>
                                        <li>Malleus 
                                            <p>
                                            Tulang kecil, yang melekat pada gendang telinga.
                                        </li>
                                        <li>Incus 
                                            <p>
                                            Tulang kecil lain yang melekat pada malleus. 
                                        </li>
                                        <li>Stapes/Sanggurdi.  
                                            <p>
                                            Melekat pada inkus merupakan tulang terkecil di tubuh telinga dalam (Labyrinth)                                        
                                        </li>
                                    </ul>
                                </p>
                            </li>
                            <li><b style="color: #AF342D">C. Telinga Dalam</b>
                                <p>
                                Getaran dari telinga tengah berubah menjadi sinyal saraf di telinga bagian dalam. Telinga bagian dalam meliputi 
                                </p>
                                <p>
                                    <ul>
                                        <li>Koklea
                                            <p>
                                            Koklea yang berbentuk seperti siput bertanggung jawab mengubah getaran dari telinga tengah menjadi sinyal saraf. Sinyal-sinyal ini  kemudian berjalan ke otak di sepanjang saraf koklea, yang juga dikenal sebagai saraf pendengaran.
                                            </p> 
                                        </li>
                                        <li>Saluran Setengah Lingkaran.  
                                            <p>
                                            Sedangkan saluran setengah lingkaran, terlihat seperti tiga tabung kecil yang terhubung. Saluran ini berfungsi untuk membantu kamu menyeimbangkan. Saluran setengah lingkaran berisi cairan dan dilapisi dengan rambut-rambut kecil.                                        
                                        </li>
                                        <p>
                                        Saat kepala kamu bergerak, cairan di saluran mengalir, lalu menggerakkan rambut. Rambut-rambut mengirimkan informasi posisi ini sebagai sinyal melalui saraf vestibular ke otak kamu. Otak kemudian menafsirkan sinyal-sinyal ini dan mengirimkan pesan ke otot-otot yang membantu kamu tetap seimbang.
                                        </p>
                                        <p>
                                        Ketika kamu berputar dan berhenti, kamu menjadi pusing karena cairan di saluran setengah lingkaran masih mengalir untuk sementara waktu, memberi otak kamu gagasan bahwa kamu masih berputar, bahkan ketika kamu sudah berhenti. Ketika cairan berhenti bergerak, pusing akan hilang.
                                        </p>
                                        <p>
                                        Saraf koklea/ruang siput yang melekat pada koklea berfungsi mengirimkan informasi suara ke otak dan saraf vestibular yang membawa informasi keseimbangan dari saluran setengah lingkaran ke otak. Kemudian, mereka bersama-sama membentuk saraf vestibular.                                
                                        </p>
                                    </ul>
                                </p>
                                
                            </li>
                        </ol>
                    </p>
                </div>

            </div>

            <br>

            <!-- Kurva Isofonik -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #AF342D;">
                        Kurva Isofonik
                    </p>
                </div>
                <div style="text-align: justify;"> 
                    <p style="text-align: center;">
                        <img class="img-fluid custom-revisi-m2-4" src="{{ asset('img/Page 7_Psikoakustik Anatomi/Gambar/Kurva Isofonik.png') }}" alt="..."/> 
                    </p>

                    <p>
                    Merupakan sebuah grafik yang penting untuk membantu kita memahami cara telinga manusia berespons terhadap frekuensi berbeda. Kurva ini ditemukan dengan memproses data statistik. Suatu subset populasi dipaparkan serangkaian suara yang dihasilkan dalam ruangan anechoic. Ruangan anechoic dirancang untuk mengurangi pantulan sebanyak mungkin agar suara yang didengar hanyalah suara langsung. Kurva ini mengindikasikan bagaimana telinga manusia bereaksi berbeda terhadap frekuensi berbeda, dalam hubungannya dengan intensitas dari suara yang dipersepsi. Kita asumsikan suatu sumber suara yang menghasilkan gelombang sinusoid yang memiliki frekuensi variabel pada amplitudo yang konstan. Ketika suara memiliki amplitudo 80 dB SPL, pendengar mengindra frekuensi rendah sebagai suara dengan volume yang sangat rendah dan Ketika frekuensi dinaikkan pendengar mengindra peningkatan dalam volume (meskipun suara yang dihasilkan tetap berada pada 80 dB SPL). Tingkah laku ini terjadi karena telinga manusia mengindra intensitas suara berbeda-beda pada frekuensi yang berubah. Kurva isofonik mengindikasikan tingkat dB SPL yang dibutuhkan untuk memersepsikan suara pada volume yang sama sepanjang kurva. Frekuensi referensi untuk setiap kurva adalah 1 kHz. Pada frekuensi ini, nilai dB SPL sama dengan nilai yang mengidentifikasikan suatu kurva dan disebut phone. Sebagai contoh, kurva isofonik 40-phone adalah kurva yang memiliki amplitudo 40 dB SPL pada 1 kHz.
                    </p> 
                    
                    <p>
                    Sebagai contoh, kita melihat kurva 80 phone dan mengikutinya dari frekuensi rendah hingga tinggi. Pada 20 Hz terlihat bahwa perlu dihasilkan tekanan suara sebesar 118 dB SPL. Ini menunjukkan kepada kita bagaimana telinga manusia kurang sensitif terhadap frekuensi rendah. Ketika kurva diamati mengikuti frekuensi tingginya dapat dilihat agar telinga memersepsikan volume yang sama dibutuhkan tekanan suara yang lebih rendah. Pada 1 kHz terlihat nilai referensi kurva isofonik yang digunakan, yaitu 80 dB SPL. Lebih dari nilai ini dapat dilihat teriadi nilai minimum pada 3 kHz. Agar telinga memersepsikan tingkat suara yang sama, sinyal 3 kHz tersebut harus memiliki tekanan 70 dB SPL. Ketika nilai in dibandingkan dengan nilai pada frekuensi 20 Hz dapat dilihat ada perbedaan sebesar 50 dB SPL, jumlah yang bear dalam istilah suara. Nilai minimum ini dikarenakan frekuensi resonansi kanal telinga bernilai 3 kHz sehingga frekuensi ini sudah terdengar pada tingkat dB SPL yang rendah. Di atas 3 kHz, kurva Kembali meningkat menunjukkan tingkat dB SPL yang dibutuhkan untuk memersepsikan suara dengan volume yang sama pada frekuensi yang tinggi. Setiap kurva mengidentifikasikan nilai phone yang terpisah sesuai dengan perubahan pada tingkah laku telinga manusia ketika tingkat tekanan suara berubah. Dapat dilihat juga pada tingkat tekanan suara yang tinggi, kurva isofonik hampir rata.                    
                    </p>
                </div>

            </div>

            <br>

            <!-- Ambang Batas Pendengaran Telinga Manusia -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #AF342D;">
                        Ambang Batas Pendengaran Telinga Manusia
                    </p>
                </div>
                <div style="text-align: justify;"> 

                    <p>
                    Terdapat ambang batas di mana telinga manusia dapat mendengarkan suara, yang dijelaskan sebagai berikut.
                    </p> 

                    <p>
                        <ul>
                            <li>Ambang Batas Pendengaran (0 phone)
                                <p>
                                Kurva isofonik yang paling rendah disebut ambang batas audibilitas (pendengaran) dan mengindikasikan perubahan tekanan terkecil yang bisa dideteksi telinga pada frekuensi yang berbeda. Penting untuk mengingat kurva-kurva ini berdasarkan data statistik sehingga nilai referensi ini bisa berubah untuk setiap orang. Beberapa nilai referensi berdasarkan kurva ini bisa berguna untuk kepraktisan. Berikut ini tabel nilai referensi ambang batas pendengaran.                                
                                </p>
                                <p style="text-align: center;">
                                    <img class="" src="{{ asset('img/Page 7_Psikoakustik Anatomi/Tabel.png') }}" alt="..." style="      max-width: 100%;
                                                                                                                                        max-height: auto;
                                                                                                                                        margin-top: -150px;
                                                                                                                                        margin-bottom: -150px;"/> 
                                </p>
                            </li>
                            <li>Ambang Batas Rasa Sakit (140 phone)
                                <p>
                                Tekanan suara dengan nilai di atas kurva 140 phone dipersepsi sebagai rasa sakit nyata oleh telinga dan bisa menyebabkan kerusakan irreversible jika terpapar dalam waktu yang lama. Volume mixdown yang ideal adalah sekitar 80 90 phone. Pada nilai ini, volume frekuensi cukup seimbang. Jika mixdown dilakukan pada volume yang terlalu rendah, misal 40 phone, kita akan mendengar frekuensi rendah yang lebih sedikit dan tergoda untuk menambahkannya menggunakan ekualisasi. Namun, Ketika didengar kembali pada 80 phone, terdengar terlalu banyak frekuensi rendah.                                
                            </p>
                            </li>
                        </ol>
                    </p>
                </div>

            </div>
            <!-- REVISI -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #AF342D;">
                        Pendengaran Secara Ruangan
                    </p>
                </div>
                <div style="text-align: justify;"> 

                    <p>
                    Daerah telinga kita tidak hanya mendengar kuat suara atau warna bunyi dari sebuah bunyi namun dapat menentukan arah dan jarak yang dinamakan sebagai kemampuan <b>melokalisir</b> dan berbicara tentang pendengaran secara ruangan.
                    </p> 

                    <p>
                        <b>Melokalisir</b> sebuah sumber bunyi tanpa melakukan penglihatan dapat dibedakan menjadi 3 daerah utama, yaitu :
                    </p>

                    <p>
                        <ul>
                            <li>Jarak (dekat - jauh ) lokalisir kerendahan
                            </li>
                            <li>Arah dalam bidang tegak lurus (atas-bawah) lokalisir ketinggian
                            </li>
                            <li>Arah dalam bidang kesetimbangan (kanan-kiri) lokalisisir sisi
                            </li>
                        </ul>
                    </p>

                    <p>
                        Contoh melokalisir sisi : Jika ada bunyi berada agak disebelah kiri, maka telinga kiri akan  mendengar lebih kuat dibandingkan  telinga sebelah kanan.
                    </p>
                </div>

            </div>

            <!-- REVISI EKSPLORASI -->
            <div style="margin-top: 40px;">
                <div style="background: #D1877D; border-radius: 10px; width: 200px; margin-bottom: -4vh; margin-left: -2%;">
                    <p style="font-family: 'Poppins';
                                font-style: normal;
                                font-weight: bold;
                                color: #000000;
                                text-align: left;
                                padding-left: 30px;
                                padding-right: 10px;
                                padding-top: 10px;
                                padding-bottom: 10px;
                                ">
                                Mengeksplorasi
                    </p>
                </div>
                <div class="text-justify pt-2" style="background: rgba(209, 135, 125, 0.5);">
                    <p class="p-4" style="font-family: 'Poppins';
                                font-style: normal;
                                font-weight: 600;
                                line-height: 36px;
                                text-align: justify;
                                letter-spacing: 0.01em;

                                color: #000000;">
                        Carilah informasi tentang standar penggunaan akustik ruang pada bioskop!
                        <br/>
                        Gunakan referensi dari beberapa sumber
                    </p>
                </div>

            </div>


        </div>
        <br>
        <br>
        @elseif ($lesson->slug == 'instalasi-mikrofon')
        <div>
            <!-- Instalasi Mikrofon Pada Sistem Akustik -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #ECC46F;">
                        Mari Mengenal Mikrofon!
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>Mikrofon adalah alat yang biasa digunakan untuk berpidato atau menyanyi, karena mikrofon berfungsi sebagai transducer yaitu dapat mengubah gelombang suara manusia menjadi sinyal listrik agar dengan mudah untuk diperkuat.
                    </p>

                    <p>Mikrofon selalu dihubungkan dengan alat pengeras suara (amplifier), agar keluaran mikrofon dalam bentuk sinyal listrik yang masih lemah tersebut dapat diperkuat semaksimal mungkin sesuai kebutuhan dan hasilnya dapat didengar melalui loud speaker. </p>

                </div>
            </div>

            <br>
            
            <!-- Sejarah Mikrofon -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #ECC46F;">
                        Sejarah Mikrofon
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>Mikrofon (dalam bahasa Inggris bernama microphone), yaitu suatu jenis transduser yang mengubah energi-energi akustik (gelombang suara) menjadi sinyal listrik. Mikrofon merupakan salah satu alat untuk membantu komunikasi manusia. Mikrofon dipakai pada banyak alat, seperti telepon, alat perekam, alat bantu dengar, dan pengudaraan radio serta televisi. 
                    </p>

                    <p>Istilah mikrofon berasal dari bahasa Yunani mikros yang berarti "kecil' dan fon yang berarti "suara atau bunyi'. Istilah ini awalnya mengacu pada alat bantu dengar untuk suara berintensitas rendah. Penemuan mikrofon sangat penting pada masa awal perkembangan telepon. Pada awal penemuannya, mikrofon digunakan pada telepon. Seiring berkembangnya waktu, mikrofon digunakan dalam pemancar radio hingga ke berbagai penggunaan lainnya. Penemuan mikrofon praktis sangat penting pada masa awal perkembangan telepon. Beberapa penemu telah membuat mikrofon primitif sebelum Alexander Graham Bell.  </p>

                    <p>Pada tahun 1827, Sir Charles Wheatstone telah mengembangkan mikrofon. la merupakan orang pertama yang membuat "mikrofon frasa" Selanjutnya pada tahun 1876, Emile Berliner menciptakan mikrofon pertama yang digunakan sebagai pemancar suara telepon. Mikrofon praktis komersial pertama adalah mikrofon karbon yang ditemukan pada bulan Oktober 1876 oleh Thomas Alfa Edison. Pada tahun 1878, David Edward Hughes juga mengambil andil dalam perkembangan mikrofon karbon. Mikrofon karbon tersebut mengalami perkembangan hingga tahun 1920-an. James West and Gerhard Sessler juga memainkan peranan yang besar dalam perkembangan mikrofon. Mereka mematenkan temuan mereka, yaitu mikrofon elektrik pada tahun 1964. Pada waktu itu, mikrofon tersebut menawarkan sesuatu yang tidak dimiliki oleh mikrofon sebelumnya, yaitu harga rendah sehingga dapat dijangkau oleh seluruh konsumen. Bagian lain dalam sejarah perkembangan mikrofon ialah merevolusi mikrofon dalam industri di mana memungkinkan masyarakat mum untuk mendapatkannya. Hampir satu juta mikrofon diproduksi tiap tahunnya. Pada tahun 1970-an, mikrofon dinamik dan mikrofon kondenser mulai dikembangkan. Mikrofon ini memiliki tingkat sensitivitas yang tinggi. Oleh karena itu, mikrofon tersebut digunakan dalam dunia penyiaran hingga sat ini.
                    </p>

                </div>
            </div>

            <br>

            <!-- Fungsi Mikrofon -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #ECC46F;">
                        Fungsi Mikrofon
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>Fungsi mikrofon adalah sebagai alat atau komponen audio yang digunakan untuk merekam sinyal audio, baik vokal, akustik instrumen, atau apa pun yang menjadi sumber suara. Komponen dasar dari semua mikrofon adalah sama, yaitu sebuah sensor yang mendeteksi getaran dari molekul-molekul udara dan mengubah getaran tersebut menjadi energi listrik. Pemilihan mikrofon harus dilakukan dengan lebih hati-hati. Hal in dilakukan untuk mencegah berkurangnya kemampuan mikrofon dari performa yang optimal. 

                    </p>

                    <p>Agar lebih efektif, mikrofon yang digunakan harus sesuai dengan kebutuhan dan seimbang antara sumber suara yang ingin diambil, misalnya suara manusia, alat musik, atau yang lainnya, dengan sistem tata suara yang digunakan seperti sound system untuk live music, alat perekaman, dan sebagainya.  </p>

                </div>
            </div>

            <br>
            
            <!-- Karakteristik Mikrofon -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #ECC46F;">
                        Karakteristik Mikrofon
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>
                    Karakteristik mikrofon dapat diklasifikasikan menjadi beberapa hal berikut.
                        <ul>
                            <li><b>Kepekaan</b>
                                <p>
                                Kepekaan sebuah mikrofon adalah besar tegangan bolak-balik keluaran mikrofon pada keadaan bunyi bebas dengan tekanan 1 ubar. Sebagai satuan diberikan mV/ubar (mili volt per mikro bar). Kepekaan mikrofon bergantung frekuensi sehingga besarnya frekuensi harus diberikan. Secara umum diambil frekuensi sebesar 1.000 Hz.                                
                                </p>
                                <p>
                                Kepekaan juga disebut "faktor pemindahan medan beban kosong" faktor in diukur dalam medan bunyi bebas dan tapa beban. Menurut sistem SI, faktor pemindahan medan beban kosong tidak lagi berdasarkan atas 1 ubar, tetapi 1 N/m (newton 1 mV/ubar = 10 mV/Pa.
                                </p>
                            </li>
                            <li><b>Daerah Frekuensi</b>
                                <p>
                                Daerah frekuensi atau daerah pemindahan adalah daerah di mana mikrofon tanpa kerugian kepekaan dan tapa cacat dapat mengubah gelombang bunyi ke dalam sinyal listrik. Untuk perekaman musik, mikrofon scharusnya mempunyai daerah frekuensi dari 40 Hz sampai 15 kHz dan tapa perubahan kepekaan yang besar. Sementara itu, untuk percakapan cukup dari 200 Hz sampai 5.000 Hz.
                                </p>
                            </li>
                            <li><b>Tanggapan Frekuensi </b>
                                <p>
                                Tanggapan frekuensi atau kurva frekuensi menandakan pengaruh frekuensi dari kepekaan. Pada pengukuran ini, gelombang bunyi dengan frekuensi berlainan dijatuhkan tegak lurus di muka mikrofon dan tegangan keluarannya diukur. Faktor pemindahan a dalam dB yang sebelumnya mV/bar  karena kurva frekuensi dengan level yang diambil berlainan. Di mana: 
                                </p>
                                <p>
                                B = kepekaan dalam V/ubar
                                </p>
                                <p>
                                Bo = kepekaan patokan dari 1 V/ubar
                                </p>
                            </li>
                            <li><b>Ketergantungan Arah</b>
                                <p>
                                Sebuah mikrofon tidak dapat mengambil bunyi dari semua sisi sama kuat. Jadi, tegangan keluaran bergantung arah dari mana bunyi datang. Ketergantungan in digambarkan melalui sifat arah, ketergantungan arah menentukan penggunaan mikrofon.
                                </p>
                            </li>
                            <li><b>Impedansi</b>
                                <p>
                                Hubungan sebuah mikrofon pada sebuah perangkat penguat atau pada sebuah peralatan pita suara adalah penting untuk mengenal impedansi listrik. Impedansi bergantung pada frekuensi, pada umumnya dinyatakan pada frekuensi 1.000 Hz dalam satuan    (ohm).
                                </p>
                            </li>
                            <li><b>Tahanan</b>
                                <p>
                                Tahanan hubungan adalah hubungan semu, dengannya mikrofon seharusnya dihubungkan. Tahanan hubungan yang kecil akan memperburuk sifat-sifat mikrofon.
                                </p>
                                <p>
                            </li>
                            <li><b>Batas Pengendalian Lebih</b>
                                <p>
                                Batas pengendalian lebih adalah batas tekanan di mana mikrofon masih bekerja dengan baik, maksudnya masih tapa cacat. Mikrofon dinamis dapat bekerja pada tekanan bunyi yang tinggi dan batas pengendalian lebih belum tercapai. Pada mikrofon kondenser, pernyataan ini diperlukan, pada pelanggaran batas yang disyaratkan akan mendatangkan cacat tidak liner dan dengan demikian faktor cacat akan naik. Batas pengendalian lebih ini diberikan dalam bar atau pascal (Pa).                                </p>
                                <p>
                            </li>
                        </ul>
                    </p>
                </div>
            </div>

            <br>
            
            <!-- Jenis Mikrofon -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #ECC46F;">
                        Jenis Mikrofon
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>
                    Mikrofon memiliki berbagai jenis dan prinsip kerja sendiri-sendiri. Berikut ini penjelasan berbagai jenis mikrofon.
                        <ul>
                            <li><b>Mikrofon Karbon </b>
                                <p>
                                Mikrofon karbon adalah mikrofon yang terbuat dari sebuah diafragma logam yang terletak pada salah satu ujung kotak logam yang berbentuk silinder. Cara kerja mikrofon ini berdasarkan resistansi variabel dimana terdapat sebuah penghubung yang menghubungkan diafragma dengan butir-butir karbon di dalam mikrofon. Perubahan getaran suara yang ada akan menyebabkan nilai resistansi juga berubah sehingga mengakibatkan perubahan pada sinyal output mikrofon. 
                                </p>
                                <p>
                                    <div class="row">
                                        <div class="col-12 col-md-6 col-lg-6" style="  display: flex;
                                                                    align-items: center;
                                                                    justify-content: right;">
                                            <img class="" src="{{ asset('img/Page 8_Mikrofon/Gambar/Microphone Carbon.jpg') }}" alt="..." style="   max-width: 100%;
                                                                                                                                                    width: 364px; 
                                                                                                                                                    height: 226px;"/>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-6" style="  display: flex;
                                                                    align-items: center;
                                                                    justify-content: left;">
                                            <img class="" src="{{ asset('img/Page 8_Mikrofon/Gambar/Mikrofon Karbon.png') }}" alt="..." style="   max-width: 100%;
                                                                                                                                                    width: 397px;
                                                                                                                                                    height: 397px;"/>
                                        </div>
                                    </div>
                                </p>
                            </li>
                            <li><b>Mikrofon Reluktansi Variabel  </b>
                                <p>
                                Mikrofon Reluktansi Variabel adalah mikrofon yang terbuat dari sebuah diafragma berbahan magnetik. Cara kerjanya berdasarkan gerakan diafragma magnetik tersebut. Jika tekanan udara dalam diafragma meningkat karena adanya getaran suara, maka celah udara dalam rangkaian magnetik tersebut akan berkurang, akibatnya reluktansi semakin berkurang dan menimbulkan perubahan-perubahan magnetik yang terpusat di dalam struktur magnetik. Perubahan-perubahan tersebut menyebabkan perubahan sinyal yang keluar dari mikrofon. 
                                </p>
                                <p>
                                    <div class="row">
                                        <div class="col-12 col-md-6 col-lg-6" style="  display: flex;
                                                                    align-items: center;
                                                                    justify-content: right;">
                                            <img class="" src="{{ asset('img/Page 8_Mikrofon/Gambar/Mikrofon Reluktansi Variabel 1.svg') }}" alt="..." style=" max-width: 100%;
                                                                                                                                                    width: 364px;
                                                                                                                                                    height: 283.52px;"/>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-6" style="  display: flex;
                                                                    align-items: center;
                                                                    justify-content: left;">
                                            <img class="" src="{{ asset('img/Page 8_Mikrofon/Gambar/Mikrofon Reluktansi Variabel.png') }}" alt="..." style=" max-width: 100%;
                                                                                                                                                    width: 364px;
                                                                                                                                                    height: 283.52px;"/>
                                        </div>
                                    </div>
                                </p>
                            </li>
                            <li><b>Mikrofon Kumparan yang Bergerak  </b>
                                <p>
                                Mikrofon Kumparan yang Bergerak adalah mikrofon yang terbuat dari kumparan induksi yang digulungkan pada silinder yang berbahan non magnetik dan dilekatkan pada diafragma, kemudian dipasang ke dalam celah udara suatu magnet permanen. Sedangkan kawat-kawat penghubung listrik direkatkan pada diafragma yang terbuat dari bahan non logam. Jika diafragma bergerak karena adanya gelombang suara yang ditangkap, maka kumparan akan bergerak maju mundur di dalam medan magnet, sehingga muncullah perubahan magnetik yang melewati kumparan dan menghasilkan sinyal listrik. 
                                </p>
                                <p>
                                    <div class="row">
                                        <div class="col-12 col-md-6 col-lg-6" style="  display: flex;
                                                                    align-items: center;
                                                                    justify-content: right;">
                                            <img class="" src="{{ asset('img/Page 8_Mikrofon/Gambar/Mikrofon Kumparan yang Bergerak.jpg') }}" alt="..." style="   max-width: 100%;
                                                                                                                                                    width: 364px;
                                                                                                                                                    height: 310.88px;"/>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-6" style="  display: flex;
                                                                    align-items: center;
                                                                    justify-content: left;">
                                            <img class="" src="{{ asset('img/Page 8_Mikrofon/Gambar/Mikrofon Kumparan yang Bergerak.png') }}" alt="..." style="   max-width: 100%;
                                                                                                                                                    width: 397px;
                                                                                                                                                    height: 397px;"/>
                                        </div>
                                    </div>
                                </p>
                            </li>
                            <li><b>Mikrofon Kapasitor  </b>
                                <p>
                                Mikrofon Kapasitor adalah mikrofon yang terbuat dari sebuah diafragma berbahan logam, digantungkan pada sebuah pelat logam statis dengan jarak sangat dekat, sehingga keduanya terisolasi dan menyerupai bentuk sebuah kapasitor. Adanya getaran suara mengakibatkan diafragma bergerak-gerak. Diafragma yang bergerak menimbulkan adanya perubahan jarak pemisah antara diafragma dengan pelat statis sehingga mengakibatkan berubahnya nilai kapasitansi. Mikrofon kapasitor ini memerlukan tegangan DC konstan yang dihubungkan ke sebuah diafragma dan pelat statis melewati sebuah resistor beban, sehingga tegangan mikrofon dapat berubah-ubah seiring perubahan tekanan udara yang terjadi akibat getaran suara.
                                </p>
                                <p>
                                    <div class="row">
                                        <div class="col-12 col-md-6 col-lg-6" style="  display: flex;
                                                                    align-items: center;
                                                                    justify-content: right;">
                                            <img class="" src="{{ asset('img/Page 8_Mikrofon/Gambar/Mikrofon Kapasitor.jpg') }}" alt="..." style="   max-width: 100%;
                                                                                                                                                    width: 364px; 
                                                                                                                                                    height: 301.48px;"/>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-6" style="  display: flex;
                                                                    align-items: center;
                                                                    justify-content: left;">
                                            <img class="" src="{{ asset('img/Page 8_Mikrofon/Gambar/Mikrofon Kapasitor.png') }}" alt="..." style="   max-width: 100%;
                                                                                                                                                    width: 397px;
                                                                                                                                                    height: 362.64px;"/>
                                        </div>
                                    </div>
                                </p>
                            </li>
                            <li><b>Mikrofon Elektret  </b>
                                <p>
                                Mikrofon Elektret adalah jenis khusus mikrofon kapasitor yang telah memiliki sumber muatan tersendiri sehingga tidak membutuhkan pencatu daya dari luar. Sumber muatan berasal dari suatu alat penyimpan muatan yang terbuat dari bahan teflon. Bahan teflon tersebut diproses sedemikian rupa sehingga mampu menangkap muatan-muatan tetap dalam jumlah besar, kemudian mempertahankannya untuk waktu yang tak terbatas. Lapisan tipis teflon dilekatkan pada pelat logam statis dan mengandung muatan-muatan negatif dalam jumlah besar. Muatan-muatan tersebut terperangkap pada satu sisi yang kemudian menimbulkan medan listrik pada celah yang berbentuk kapasitor. Getaran suara yang ada mengubah tekanan udara di dalamnya sehingga membuat jarak antara diafragma dan pelat logam statis juga berubah-ubah. Akibatnya, nilai kapasitansi berubah dan tegangan terminal mikrofon pun juga berubah. 
                                </p>
                                <p>
                                    <div class="row">
                                        <div class="col-12" style="  display: flex;
                                                                    align-items: center;
                                                                    justify-content: center;">
                                            <img class="" src="{{ asset('img/Page 8_Mikrofon/Gambar/Mikrofon Elektret.png') }}" alt="..." style="   max-width: 100%;
                                                                                                                                                    width: 397px;
                                                                                                                                                    height: 397px;"/>
                                        </div>
                                    </div>
                                </p>
                            </li>
                            <li><b>Mikrofon Piezoelektris   </b>
                                <p>
                                Mikrofon Piezoelektris adalah mikrofon yang terbuat dari bahan kristal aktif. Bahan ini dapat menimbulkan tegangan sendiri saat menangkap adanya getaran dari luar jadi tidak membutuhkan pencatu daya. Cara kerjanya ialah kristal dipotong membentuk suatu irisan pada bidang-bidang tertentu, kemudian dilekatkan pada elektroda atau lempengan sehingga akan menunjukkan sifat-sifat piezoelektris. Kristal akan berubah bentuk bila mendapatkan suatu tekanan sehingga akan terjadi perpindahan muatan sesaat di dalam susunan kristal tersebut. Perpindahan muatan mengakibatkan adanya perbedaan potensial di antara kedua pelat-pelat lempengan. Uniknya, kristal tersebut dapat langsung menerima getaran suara tanpa harus dibentuk menjadi sebuah diafragma, sehingga respon frekuensi yang diterima akan lebih baik dari mikrofon lainnya walaupun tingkat keluarannya jauh lebih rendah, yaitu kurang dari 1 mV.                                 </p>
                                <p>
                                    <div class="row">
                                        <div class="col-12 col-md-6 col-lg-6" style="  display: flex;
                                                                    align-items: center;
                                                                    justify-content: right;">
                                            <img class="" src="{{ asset('img/Page 8_Mikrofon/Gambar/Mikrofon Piezoelektris 1.jpg') }}" alt="..." style="   max-width: 100%;
                                                                                                                                                    width: 364px; 
                                                                                                                                                    height: 301px;"/>
                                        </div>
                                        <div class="col-12 col-md-6 col-lg-6" style="  display: flex;
                                                                    align-items: center;
                                                                    justify-content: left;">
                                            <img class="" src="{{ asset('img/Page 8_Mikrofon/Gambar/Mikrofon Piezoelektris.png') }}" alt="..." style="   max-width: 100%;
                                                                                                                                                    width: 397px;
                                                                                                                                                    height:  397px;"/>
                                        </div>
                                    </div>
                                </p>
                            </li>
                        </ul>
                    </p>
                </div>
            </div>

            <!-- REVISI EKSPLORASI -->
            <div style="margin-top: 40px;">
                <div style="background: #ECC46F; border-radius: 10px; width: 200px; margin-bottom: -4vh; margin-left: -2%;">
                    <p style="font-family: 'Poppins';
                                font-style: normal;
                                font-weight: bold;
                                color: #000000;
                                text-align: left;
                                padding-left: 30px;
                                padding-right: 10px;
                                padding-top: 10px;
                                padding-bottom: 10px;
                                ">
                                Mengamati
                    </p>
                </div>
                <div class="text-justify pt-2" style="background: rgba(236, 196, 111, 0.5);">
                    <p class="p-4" style="font-family: 'Poppins';
                                font-style: normal;
                                font-weight: 600;
                                line-height: 36px;
                                text-align: justify;
                                letter-spacing: 0.01em;

                                color: #000000;">
                        Lakukanlah pengamatan terhadap penggunaan mikrofon dalam penggunaan
                        perekaman atau record musik di studio! Jenis mikrofon apa yang cocok
                        digunakannya? Berikan penjelasannya!
                    </p>
                </div>

            </div>

            <br>




        </div>
        <br>
        <br>
        @elseif ($lesson->slug == 'rangkaian-universal-pre-amplifier')
        <div>
            <!-- Rangkaian Universal Pre-Amplifier -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #555B41;">
                        Rangkaian Universal Pre-Amplifier
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>Penguat depan atau yang disebut pre-amplifier adalah sebuah penyangga dan penyesuai level masing-masing sinyal input sebelum dimasukkan ke pengatur nada. Hal ini bertujuan agar saat proses pengaturan nada tidak terjadi kesalahan dikarenakan pembebanan/loading. Penguat depan harus mempunyai karakteristik penyangga/buffer dan berdesah rendah.</p>
                </div>
            </div>
            
            <!-- Mengenal Pre-Amplifier -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #555B41;">
                        Mengenal Pre-Amplifier
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p style="text-align: center !important;">
                        <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 9_Rangkaian Universal Pre-Amplifier/Gambar dan Tabel/1.png') }}" alt="..."/>
                    </p>
                    <br>
                    <p>
                    Sebuah pre-amplifier merupakan serangkaian blok di mana terdapat pada penguat suara yang memiliki komponen berupa sumber sinyal yang diaplikasikan pada mikrofon, pemungut piringan hitam ataupun lainnya, dan diakhiri dengan sebuah loudspeaker. Inti dari pre-amplifier ini ialah sebuah penguat depan untuk menguatkan sumber sinyal. Selain itu, diperlukan penyesuaian terhadap sumber sinyal apabila memiliki tanggapan frekuensi yang tidak linear.                    </p>
                </div>
            </div>

            <br>

            <!-- Fungi Pre-Amplifier -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #555B41;">
                        Fungi Pre-Amplifier
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>
                    Penguat depan berfungsi sebagai penyangga dan penyesuai level dari masing-masing sinyal input sebelum dimasukkan ke pengatur nada. Hal ini bertujuan agar saat proses pengaturan nada tidak terjadi kesalahan karena pembebanan/loading. Penguat depan harus mempunyai karakteristik penyangga/buffer dan berdesah rendah. Sebuah penguat daya audio adalah penguat elektronik yang memperkuat sinyal audio berdaya rendah (sinyal terutama terdiri atas frekuensi antara 20-20.000 Hz (kisaran pendengaran manusia) ke level cocok untuk menggiring ke pengeras suara. Ini adalah tahap akhir dalam alur pemutaran khas audio. 
                    </p>
                    <p>
                    Tahap sebelumnya dalam alur tersebut ialah audio amplifier daya rendah melakukan tugas seperti pra-amplifikasi (ini khususnya yang berkaitan dengan sinyal catatan turntable), pemerataan, kontrol nada, pencampuran/ efek, atau sumber audio seperti catatan pemain, pemutar CD, dan pemutar kaset. Kebanyakan power amplifier audio yang membutuhkan input tingkat rendah ini untuk mematuhi tingkat baris. Sementara itu, sinyal input ke penguat daya audio dapat mengukur hanya beberapa ratus microwatts, Output-nya mungkin puluhan atau ratusan watt untuk sistem rumah atau ribuan hingga puluhan ribu watt untuk konser sistem penguatan suara. Amplifier dijelaskan sesuai dengan imput dan output mereka properti. Mereka menunjukkan milik gain atau faktor multiplikasi yang berhubungan besarnya sinyal keluaran dengan sinyal imput. Keuntungan tersebut dapat ditentukan sebagai rasio tegangan output ke input tegangan (gain tegangan), daya output daya input (gain power), atau beberapa kombinasi dari arus, tegangan, dan daya. Dalam banyak kasus, dengan input dan output dalam satuan yang sama, gain unitless (meskipun sering dinyatakan dalam desibel (dB)).                    </p>
                </div>
            </div>

            <br>
            
            <!-- Jenis Penguat Depan -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #555B41;">
                        Jenis Penguat Depan
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>
                    Penguat depan atau pre-amplifier disebut universal dengan maksud untur  menguatkan sumber sinyal dengan tanggapan frekuensi yang datar (misalnya mikrofon) dan yang tidak datar (misalnya sinyal dari pemungut suara magnetik).
                    </p>
                    <p>
                    Pada prinsipnya, arsitektur sebuah penguat terdiri atas penguat dengan penguatan terbuka V   (open loop) yang besar dan jaringan umpan balik negatif. Penguat harus memiliki penguatan terbuka yang besar. Berikut ini jenis penggunaan pre-amplifier.                    
                    </p>
                    <p>
                        <ol style="list-style-type: none;">
                            <li><b style="color: #555B41; font-family: 'Poppins';
                                            font-style: normal;
                                            font-weight: 700;
                                            font-size: 25px;
                                            line-height: 48px;
                                            letter-spacing: 0.01em;">A. Penguat Mikrofon</b>
                                <p>
                                Mikrofon dinamik menghasilkan tegangan kira-kira hanya 0,5 mV pada tanggapan frekuensi yang datar. Di sini, penguat mempunyai tugas hanya menaikkan level sinyal karena tanggapan frekuensinya sudah datar. Pada rangkaian in tidak dijumpai komponen yang memengaruhi tanggapan frekuensi. Dengan demikian, akan diperoleh daerah transfer dari 4 Hz 40 kHz. Penguatan sedemikian besarnya sehingga diperoleh tegangan keluaran sebesar maksimum 1,4 V.                                 
                                </p>
                                <p>
                                Jaringan umpan balik harus merupakan komponen yang tidak terpengaruh oleh frekuensi untuk penguat mikrofon karena diperlukan penguatan yang konstan dalam daerah frekuensi. Untuk itu, digunakan komponen tahanan, di mana besar resistansinya tidak berubah dengan berubahnya frekuensi sinyal.
                                </p>
                            </li>
                            <li><b style="color: #555B41; font-family: 'Poppins';
                                            font-style: normal;
                                            font-weight: 700;
                                            font-size: 25px;
                                            line-height: 48px;
                                            letter-spacing: 0.01em;">B. Penguat Pemungut Suara</b>
                                <p>
                                Pemungut suara magnetik atau juga disebut Pick Up (PU) ada beberapa jenisnya, tergantung pengubah (transducer) yang digunakan. Pemungut suara yang banyak digunakan berdasar induksi, secara konstruksi terdiri atas kumparan, magnet, serta jarum. Pemungut dengan magnet yang terhubung dengan jarum disebut dengan moving magnet (MM) dan kumparan yang terhubung jarum disebut dengan moving coil (MC). 
                                </p>
                                <p>
                                Dalam konstruksi pemungut suara magnetik, prinsip kerjanya berdasarkan hukum induksi. Tegangan induksi akan bangkit jika penghantar berada dalam medan magnet yang berubah. Artinya, jika jarum bergetar, magnet akan ikut bergetar (pada MM) dan akan terbangkit tegangan induksi. Pada MC, jarum bergetar dan akan mengakibatkan kumparan bergetar sehingga medan magnet yang mengenainya akan berubah-ubah yang akan menimbulkan tegangan induksi. Bear tegangan induksi yang bangkit akan sebanding dengan frekuensi getaran jarum. Getaran jarum tergantung pada frekuensi sinyal yang tercetak pada piringan hitam. Jadi, tegangan keluaran pemungut suara magnetic akan naik dengan naiknya frekuensi suara. Selain itu, pada nada rendah (bass) memiliki tegangan yang besar sehingga akan menimbulkan alur yang bear pada piringan hitam. Hal ini akan menghabiskan space pada piringan hitam, juga ketidakmampuan jarum untuk mengikuti alur tersebut.
                                </p>
                                <p>
                                Pada sistem perekaman piringan hitam, frekuensi rendah juga ditekan. Penekanan amplitudo ini secara internasional ditetapkan oleh RIAA (Record Industry Association of America). Penguat depan ini disebut penyama (equalizer amplifier). Untuk itu, penguat harus memiliki umpan balik negatif yang besarannya terpengaruh oleh frekuensi sinyal. Oleh sebab itu, digunakan komponen kapasitor yang nilai reaktansinya (tahanan secara arus bolak-balik) berubah dengan berubahnya frekuensi sinyal.                                
                            </p>
                            </li>
                            <li><b style="color: #555B41; font-family: 'Poppins';
                                            font-style: normal;
                                            font-weight: 700;
                                            font-size: 25px;
                                            line-height: 48px;
                                            letter-spacing: 0.01em;">C. Penguat Depan Universal</b>
                                <br>
                                <br>
                                <p style="text-align: center !important;">
                                    <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 9_Rangkaian Universal Pre-Amplifier/Gambar dan Tabel/Rangakain Pre Amp Universal.png') }}" alt="..."/>
                                </p>
                                <br>
                                <p>
                                Penguat depan universal ini merupakan sebuah penguat depan yang dapat digunakan sebagai penguat mikrofon dan dapat sebagai penguat penyama. Dengan mensakelarkan jaringan umpan balik S1 dari "1" ke "2', tanggapan frekuensi dari penguat depan ini akan berubah, dari linear ke tidak linear. Dengan kata lain, dari penguat depan mikrofon menjadi penguat depan pemungut suara magnetik.                                 
                                </p>
                            </li>
                        </ol>
                    </p>
                </div>
            </div>

            <br>

            <!-- Rangkaian Pre-Amplifier Universal -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #555B41;">
                        Rangkaian Pre-Amplifier Universal
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>
                    Pre-amplifier atau penguat depan yang dapat menguatkan tegangan 1-20 mVef menjadi 1-1,4 Vef dapat dibangun dengan satu atau dua buah transistor. Pada bahasan berikut dipilih penguat depan universal dua tingkat yang hubung secara DC (arus searah).                    
                    </p>
                    <p>
                        <ol style="list-style-type: none;">
                            <li><b style="color: #555B41; font-family: 'Poppins';
                                            font-style: normal;
                                            font-weight: 700;
                                            font-size: 25px;
                                            line-height: 48px;
                                            letter-spacing: 0.01em;">1. Mendimensikan Komponen DC</b>
                                <br>
                                <br>
                                <p style="text-align: center !important;">
                                    <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 9_Rangkaian Universal Pre-Amplifier/Gambar dan Tabel/2.png') }}" alt="..."/>
                                </p>
                                <br>
                                <p>
                                Rangkaian terdiri atas dua tingkat yang dibangun oleh transistor TRI dan TR2. Antara keluaran penguat pertama dan kedua disambung secara DC. Umpan balik negatif yang menentukan tanggapan frekuensi, dari keluaran dihubungkan ke daerah masukan dengan penghubung S1, yang bisa dipilih sesuai yang dinginkan. Dengan <b>S1 pada 0, ini berarti penguat tanpa umpan balik atau open loop/terbuka</b>. Jika <b>S1 pada 1, umpan balik berupa jaringan R10-R11 dan C7-C8</b>; penguat memiliki penguatan vang tidak liner berfungsi sebagai <b>penguat pick-up/pemungut suara</b>. Jika <b>S1 pada 2 umpan balik berupa R12, penguatan penguat linier berfungsi sebagai penguat mikrofon</b>. Rangkaian penguat depan universal memuat komponen-komponen berikut ini.                                
                                </p>
                                <p style="text-align: center !important;">
                                    <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 9_Rangkaian Universal Pre-Amplifier/Gambar dan Tabel/3.png') }}" alt="..."/>
                                </p>
                                <p>
                                Rangkaian arus searah sebuah penguat audio terlihat sangat sederhan karena semua komponen yang berpengaruh pada frekuensi sinyal audio dapat ditiadakan. Jadi, semua kapasitor dapat ditiadakan. Setelah proses pensakelaran berlalu, yang tertinggal adalah keadaan statis. Keadaan statis ini membangun titik kerja. Dalam keadaan ini, semua kapasitor mempunyai potensial konstan karena terisi penuh. 
                                </p>
                                <p>
                                Kapasitor yang terisi penuh untuk arus searah seakan terputus, tidak ada arus searah yang mengalir. Akibatnya, kapasitor tidak berpenganuh lagi pada rangkaian arus searah. Untuk penyederhanaan dalam kondisi ini, semua kapasitor dihapus. Hal yang dimaksud dengan UCE tegangan antara kaki kolektor dan emitor sebuah transistor, jika UCE2 artinya tegangan antara kaki kolektor dan emitor untuk transistor 2. Jika ditulis UC1, berarti tegangan kolektor transistor 1 diukur terhadap 0V (massa). Untuk IC2, berarti arus kolektor transistor 2, demikian seterusnya.                                </p>
                            </li>
                            <li><b style="color: #555B41; font-family: 'Poppins';
                                            font-style: normal;
                                            font-weight: 700;
                                            font-size: 25px;
                                            line-height: 48px;
                                            letter-spacing: 0.01em;">2. Mendimensikan Komponen AC</b>
                                <br>
                                <br>
                                <p style="text-align: center !important;">
                                    <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 9_Rangkaian Universal Pre-Amplifier/Gambar dan Tabel/4.png') }}" alt="..."/>
                                </p>
                                <br>
                                <p>
                                Dalam sebuah rangkaian penguat audio, jalannya aliran sinval untuk AC dan DC tidak sama. Sumber tegangan DC untuk sinyal AC membentuk sebuah hubung singkat. Tahanan dalam sumber tegangan idealnya sama dengan 0 ohm. Dengan demikian, elemen-elemen yang terletak antara potensial positif dan negatif untuk sinyal AC terletak paralel. Untuk IDC, RI dan R2 terhubung seri schingga Rt = R1 + R2. Untuk IAC, R1 dan R2 terhubung paralel sehingga Rt = R1 // R2. Masukan diperuntukkan dalam UAC pembagi tegangan R1, R2 terletak paralel sehingga: RIB=R1//R2. Sementara itu, keluaran untuk sinyal AC RI terletak paralel ke RC. Dengan demikian, RIC dikolektor untuk sinyal AC: RtC=RC//RL.                                 
                                </p>
                                <p>
                                Rangkaian dalam penguat depan universal yang dibahas dapat dipilah dalam:
                                </p>
                                <p>
                                a) Jaringan Penguat                            
                                </p>
                                <p>
                                b) Jaringan Umpan Balik Negatif                                
                                </p>
                                <br>
                                <p style="text-align: center !important;">
                                    <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 9_Rangkaian Universal Pre-Amplifier/Gambar dan Tabel/5.png') }}" alt="..."/>
                                </p>
                                <br>
                                <p>
                                Umpan balik negatif maksudnya mengembalikan sebagian tegangan keluaran ke rangkaian masukan dengan efek memperkecil, jika memperbesar disebut dengan umpan balik positif. Cara untuk memperoleh umpan balik negatif, fasa tegangan keluaran yang dikembalikan ke masukan harus berbalikan fasa dengan fasa tegangan masukan sehingga akan berakibat sebuah pengurangan.                                
                                </p>
                                <p>
                                Umpan balik negatif akan memengaruhi penampilan keseluruhan rangkaian. Berikut ini beberapa hal yang dipengaruhi.                          
                                </p>
                                <p>
                                a) Penguatan VU (penguatan tegangan), Vi (penguatan arus)                           
                                </p>
                                <p>
                                b) Lebar band                            
                                </p>
                                <p>
                                c) Tahanan masukan re                            
                                </p>
                                <p>
                                d) Tahanan keluaran rA                         
                                </p>
                                <p>
                                e) Faktor cacat                       
                                </p>
                            </li>
                        </ol>
                    </p>
                </div>
                <br>
                <div style="text-align: justify;">  
                    <p>
                        <ol style="list-style-type: none;">
                            <li><b style="color: #455A64; font-family: 'Poppins';
                                            font-style: normal;
                                            font-weight: 700;
                                            font-size: 25px;
                                            line-height: 48px;
                                            letter-spacing: 0.01em;">Jaringan Penguat dengan Umpan Balik “dalam”</b>
                                <br>
                                <br>
                                <p style="text-align: center !important;">
                                    <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 9_Rangkaian Universal Pre-Amplifier/Gambar dan Tabel/6.png') }}" alt="..."/>
                                </p>
                                <br>
                                <p>
                                Dalam pembahasan sebelumnya telah dihitung dan diterangkan berakibat apa tahanan-tahanan emitor R9, R4, R5. Semua itu mengakibatkan penstabilan arus kolektor supaya titik kerja tidak bergeser. Di mana yang disebut umpan balik negatif arus, yang mana tegangan umpan balik U9 (UE2), U4, 5 (UE1) sebanding dengan arus IE1, IE2. Umpan balik negatif ini bekerja atas setiap perubahan sinyal.                                 
                                </p>
                                <p>
                                Apabila meletakkan tegangan sinyal pada masukan A, menyimpanglah arus basis dalam irama sinyal masukan. Umpan balik negatif akan menstabilkan "penyimpangan" ini sehingga sinyal dari masukan tidak dikuatkan. Padahal penguatan sinyal diperlukan. Oleh karena itu, umpan balik negatif untuk tegangan sinyal harus diperkecil. 
                                </p>
                                <p>
                                Dalam rangkaian yang dibahas, umpan balik negatif melalui R9 untuk tegangan sinyal akan diperkecil dengan cara R9 dihubung- singkat dengan C6. Dengan demikian, arus bolak-balik sinyal tidak membangkitkan tegangan AC umpan balik melalui R9. Kapasitor C6 membuat suatu hubung singkat untuk sinyal AC. Dengan kata lain, C6 berfungsi sebagai peniada umpan balik untuk sinyal AC. Sementara itu, R4 (trimpot) untuk sinyal AC akan dihubung-singkat tergantung posisinya. Umpan balik negatif maksimum apabila penggeser trimpot berada paling atas sehingga tahanan yang berada di emitor sebesar 5,220 . Tahanan atur R4 digunakan untuk mengatur besarnya umpan balik negatif, tetapi hal ini hanya berlaku untuk sinyal AC. Untuk DC, semua kapasitor membentuk rangkaian terputus atau  schingga pada tahanan atur R4 besarya tidak akan berubah walaupun penggeser tahanan atur diubah-ubah. Dengan demikian, R4 bertugas sebagai pengatur penguatan sinyal. 
                                </p>
                                <p>
                                Rangkaian R6, C2 bertugas untuk menyaring (memfilter) tegangan catu TR1 karena tingkat penguat keseluruhan mempunyai penguatan yang besar. Jika tidak disaring (difilter), tegangan dengung akan sangat terdengar di keluaran A. Kapasitor C1, C5 adalah kapasitor penggandeng dan bertugas untuk memisahkan tegangan DC. Tahanan R1 mempunyai pengaruh paling bear dalam menentukan besarnya tahanan masukan rangkaian. Kapasitor C3 adalah umpan balik negatif yang lain dan bekerja pada frekuensi tinggi. Sinyal frekuensi tinggi akan dikembalikan ke basis TR2 maka penguatan pun menurun. Kapasitor C3 bekerja pada frekuensi di atas 20 kHz. Kapasitansi seluruhnya C3' =           ,  jadi dengan penguatan arus yang lebih besar nilai C3' akan sangat besar.                                 
                                </p>
                            </li>
                            <li><b style="color: #455A64; font-family: 'Poppins';
                                            font-style: normal;
                                            font-weight: 700;
                                            font-size: 25px;
                                            line-height: 48px;
                                            letter-spacing: 0.01em;">Jaringan Umpan Balik Negatif “luar”</b>
                                <p>
                                Pengertian jaringan umpan balik "luar" adalah jaringan antara keluaran penguat (C10) ke masukan penguat (emitor TR1 untuk memperoleh umpan balik negatif). Komponen umpan balik dapat diganti dengan memindahkan sakelar penghubung umpan balik S1. Jika sakelar S1 pada 2 sinyal keluaran diumpan-balikkan melalui tahanan R12, di mana komponen ini tidak terpengaruh oleh frekuensi, melalui C10 (C10 nilainya terlalu besar untuk sinyal audio). Jika sakelar S1 pada 1, umpan balik negatif akan bergantung frekuensi dan sesuai dengan penyama (ekualisasi = equalization) untuk piringan hitam RIAA (Recording Industry Association of America = Asosiasi Industri Rekaman Amerika), komponen itu terdiri atas jaringan R10, R11 dan C7 serta C8.                                
                                </p>
                            </li>
                            <li><b style="color: #455A64; font-family: 'Poppins';
                                            font-style: normal;
                                            font-weight: 700;
                                            font-size: 25px;
                                            line-height: 48px;
                                            letter-spacing: 0.01em;">Penguatan dengan Umpan Balik Negatif “luar”</b>
                                <br>
                                <br>
                                <p style="text-align: center !important;">
                                    <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 9_Rangkaian Universal Pre-Amplifier/Gambar dan Tabel/7.png') }}" alt="..."/>
                                </p>
                                <br>
                                <p>
                                Basis dipisah menjadi masukan (+) dan emitor menjadi masukan (-). Tegangan kendali keseluruhan terletak antara basis (+) dan emitor (-) dari TR1 dan dinyatakan sebagai Ul.                                
                                </p>
                                <br>
                                <p style="text-align: center !important;">
                                    <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 9_Rangkaian Universal Pre-Amplifier/Gambar dan Tabel/8.png') }}" alt="..."/>
                                </p>
                                <br>
                                <p>
                                Setelah itu, disederhanakan menjadi seperti gambar di atas di mana impedansi Z2 merupakan sebuah umpan balik negatif antara keluaran dan emitor TR1. Impedansi Z1 adalah umpan balik antara emitor TRI dan massa (0V). Elemen R4 dan R5 telah dijelaskan pada umpan balik 9  negatif arus dalam "jaringan penguat"                                
                                </p>
                            </li>
                        </ol>
                    </p>
                </div>
            </div>
        </div>
        <br>
        <br>
        @elseif ($lesson->slug == 'rangkaian-tone-control')
        <div>
            <!-- Rangkaian Tone Control -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #D1877D;">
                        Rangkaian Tone Control
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>
                    Sebuah rangkaian tone control merupakan salah satu jenis pengatur suara atau nada aktif pada system audio. Tone control atau pengatur nada berfungsi untuk mengatur penguatan level nada bass dan level nada treble. Nada bass adalah sinyal audio pada frekuensi rendah, sedangkan nada treble merupakan sinyal audio pada frekuensi tinggi.                    
                </p>
                </div>
            </div>
            
            <!-- Definisi Rangkaian Tone Control -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #D1877D;">
                        Definisi Rangkaian Tone Control
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>
                    Rangkaian tone control sederhana memiliki output yang bisa dikatakan cukup bagus dan bersih. Sinyal suara yang dihasilkan dari input sebelumnya sudah diatur oleh potensiometer dan kemudian dikuatkan oleh bagian op amp menggunakan transistor yang kemudian dikopling oleh kapasitor yang outputnya akan diatur lagi pada bagian control.                     
                    </p>
                    <br>
                    <p style="text-align: center !important;">
                        <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 10_Rangkaian Tone Control/Gambar/Picture1.png') }}" alt="..."/>
                    </p>  
                    <br>
                    <p>
                    Prinsip kerja dari rangkaian tone control ialah pada frekuensi rendah atau bass dan frekuensi tinggi atau treble. Dari pengaturan di atas kemudian dikuatkan lagi pada bagian pengatur akhir menggunakan transistor yang sama. Tegangan yang dihasilkan dari tone control ini adalah mulai dari 9 volt DC sampai dengan 18 volt DC. Tone control yang memiliki 4 transistor terbagi dalam 3 bagian utama, yaitu bagian penguat depan, bagian pengatur nada (tone control), dan bagian penguat akhir. Pada bagian depan dapat dibangun menggunakan 2 transistor yang disusun dalam penguat 2 tingkat. Selanjutnya, bagian pengatur nada dibangun menggunakan sistem pengatur nada baxandall yang dapat mengontrol nada rendah atau nada tinggi. Setelah itu, bagian akhir digunakan penguat 2 tingkat yang dibangun menggunakan transistor. 
                    </p>  
                    <p>
                    Rangkaian tone control baxandall merupakan rangkaian penguat dengan jaringan umpan balik (feedback) dan rangkaian filter aktif. Rangkaian baxandall hanya tergantung dari pengaturan potensiometer bass. Batas pengaturan maksimum potensiometer bass merupakan maksimum boost (penguatan maksimal bass) dan batas pengaturan minimum potensiometer bass merupakan maksimum cut (pelemahan maksimum). Pada saat frekuensi nada bass meningkat maka akan memberikan efek pada resistor sampai kapasitor sehingga tidak lagi memberikan efek atau respons pada rangkaian. Oleh sebab itu, frekuensi di atas tidak dipengaruhi oleh posisi potensiometer bass pada maksimum boos dan cut atau dibiarkan flat. Untuk nada treble, pada akhir frekuensi tinggi audio kapasitor bertindak seakan short circuit sehingga penguatan akan diatur oleh potensiometer treble. 
                    </p>  
                    <p>
                    Dalam sistem audio, bagian pengatur nada terletak di antara bagian pre- amplifier (penguat depan) dan final amplifier (penguat akhir). Pada bagian pengatur nada bass menguatkan sinyal frekuensi rendah, sedangkan pada bagian nada treble menguatkan sinyal frekuensi tinggi. Kurva penguatan (AV) terhadap besarnya frekuensi yang dikuatkan dapat digambarkan menggunakan kurva berikut.                    
                    </p>
                    <br>
                    <p style="text-align: center !important;">
                        <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 10_Rangkaian Tone Control/Gambar/Picture2.png') }}" alt="..." />
                    </p> 
                    <br> 
                </div>
            </div>

            <br>
            
            <!-- Jenis Tone Control -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #D1877D;">
                        Jenis Tone Control
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>
                        <ul>
                            <li><b>Tone Control Pasif</b>
                                <p>
                                Tone control yang paling sederhana adalah tone control pasif yang hanya terdiri atas potentiometer, resistor, dan kondensator. Pengaturan nada hanya sebatas cut terhadap nada nada tinggi. Pada tone control yang seperti in tidak terjadi boost dan tidak terjadi penguatan sinyal. Jika posisi pengaturan VR minimum, nilai resistansinya adalah maksimal sehingga kondensator C praktis dikatakan tidak berpengaruh terhadap sinyal audio yang melintas di antara input dan output. Apabila posisi VR maksimum, resistansinya minimal (atau nol) sehingga C menghubung-singkat ke ground sebagian sinyal pada frekuensi-frekuensi tertentu. Frekuensi- frekuensi yang dihubung-singkat oleh C adalah frekuensi-frekuensi tinggi dalam spektrum audio di mana reaktansi kapasitansi C adalah kecil terhadapnya. Reaktansi kapasitansi C (disimbolkan dengan Xc) adalah: XC 2. Untuk frekuensi-frekuensi tinggi audio, lazimnya nilai C adalah dalam besaran puluhan hingga ratusan nanoFarad. Semakin besar nilai C. semakin lebar jalur frekuensi tinggi audio yang akan di-cut.
                                </p>
                            </li>
                            <li><b>Tone Control Aktif</b>
                                <p>
                                Tone control yang lengkap adalah tone control aktif yang menerapkan fungsi komponen aktif seperti transistor atau IC. Di dalam tone control aktif terjadi boost dan cut. selain itu terjadi pula penguatan level sinyal Sebuah tone control aktif umumnya mempunyai dua penyetelan nada, yaitu penyetelan boost dan cut untuk nada-nada rendah (bass) serta penyetelan boost dan cut untuk nada-nada tinggi (treble). Nada-nada rendah adalah range frekuensi audio pada kisaran 250 Hz ke bawah dengan frekuensi senter antara 60 atau 80 Hz. Sementara itu, nada-nada tinggi berada pada kisaran 3 kHz ke atas dengan frekuensi senter antara 5 atau 10 kHz. Kadang-kadang tone control dilengkapi pula dengan pengaturan untuk nada-nada tengah (midrange) dengan frekuensi senter 1kHz. 
                                </p>
                                <p>
                                Dengan adanya pengaturan-pengaturan nada ini, sinyal audio dari pre- amp diperbaiki. Jika ada kekurangan pada range frekuensi tertentu yang mungkin kurang menonjol maka dilakukan boost. Jika ada yang terlampau menoniol maka dilakukan cut. Hal in dilakukan karena adanya kemungkinan pick-up sumber yang berbeda-beda tanggapan frekuensinya. Selain itu, juga karena adanya "'selera" pendengaran bagi setiap orang yang mungkin berbeda-beda pula. 
                                </p>
                                <p>
                                Selain memiliki fungsi utama sebagai pengatur nada, sebuah unit tone control secara keseluruhan juga berfungsi sebagai penguat tegangan sinyal audio agar mencapai level yang cukup untuk diberikan kepada power-amplifier (penguat daya). Apabila level tegangan sinyal maksimal yang disyaratkan oleh power-amplifier tidak tercapai, power-amplifier pun tidak akan maksimal mengeluarkan daya-nya kepada speaker. 
                                </p>
                                <p>
                                Sebagai contoh, pada sebuah unit rangkaian power-amplifier tertera di dalam data spesifikasinya: Power-output maks. 45 W dengan kepekaan input 1 V. Ini berarti level sinyal audio yang dikeluarkan oleh rangkaian tone control harus mencapai maks. 1 V agar power-amplifier mengeluarkan daya maksimal 45 W. Rangkaian tone control yang hanya mengeluarkan tegangan sinyal 500 mV tidak akan cocok dengan unit rangkaian power amplifier yang seperti ini. Oleh karena itu, tidak sembarang rangkaian tone control yang dibuat orang selalu cocok dengan suatu rangkaian power-amplifier. Level keluaran/output tone control harus sesuai dengan kepekaan input power-amplifier. Pengaturan boost dan cut untuk bass dan treble dilakukan melalui dua potentiometer. Dalam rangkaian seperti ini, transistor membentuk filter untuk frekuensi- frekuensi tinggi dan rendah dalam spektrum audio. 
                                </p>
                                <p>
                                Apabila VR2 berada pada posisi minimum, kondensator 332 akan berderet dengan resistor 1k dari jalur keluaran T2 sehingga terbentuklah peredaman bagi frekuensi senter. Pada pengaturan bass, apabila VR3 berada pada posisi maksimum maka kondensator 473, resistor 4k7 dan 8k2 membentuk low pass filter bagi jalur masukan T2. Ketika VR3 berada pada posisi minimum maka kondensator 473, resistor 4k7 dan 8k2 menjadikan transistor sebagai peredam aktif bagi frekuensi-frekuensi rendah audio. Output tone control ini mempunyai level tegangan sinyal hingga beberapa ratus milivolt yang cukup untuk mengemudikan sebuah power-amplifier 20 W.                                 
                                </p>
                            </li>
                        </ul>
                    </p>
                </div>
            </div>

            <br>

            <!-- Rangkaian Tapis Lolos (Pass Filter) -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #D1877D;">
                        Rangkaian Tapis Lolos (Pass Filter)
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>
                    Pass filter atau rangkaian tapis merupakan rangkaian yang didesain untuk meloloskan isyarat ada rentang frekuensi tertentu. Hasil dari frekuensi yang diloloskan oleh pass filter atau rangkaian tapis itu sendiri disebut pass band, sedangkan daerah yang tidak diloloskan disebut dengan stop band. 
                    </p>
                    <p>
                    Rangkaian pass filter atau rangkaian tapis terdiri atas dua rangkaian, yaitu rangkaian low pass filter (tapis lolos rendah) dan high pass filter (tapis lolos tinggi).                    
                    </p>
                    <p>
                        <ul>
                            <li>Low Pass Filter
                                <p>
                                Low pass filter atau tapis lolos rendah merupakan rangkaian RC yang meloloskan frekuensi rendah, akan tetapi pada frekuensi tinggi isyarat keluarannya diperkecil.
                                </p>
                            </li>
                            <li>High Pass Filter
                                <p>
                                Filter high pass (HPF) adalah jenis filter yang melewatkan frekuensi tinggi serta meredam atau menahan frekuensi rendah. Bentuk respons HPF seperti memperlemah tegangan keluaran untuk semua frekuensi di bawah frekuensi cut off FC. Di atas FC, besarnya tegangan keluaran tetap.                               
                                </p>
                            </li>
                        </ul>
                    </p>
                </div>
            </div>

            <br>

            <!-- Pemasangan Pengatur Nada -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #D1877D;">
                        Pemasangan Pengatur Nada
                    </p>
                </div>
                <div style="text-align: justify;">  
                    <p>
                    Pengatur nada (tone control) dapat dibuat menggunakan dua cara. Cara yang pertama, yaitu dengan memasang penguat terletak di depan dan penguat terletak di akhir. Bagian pengatur nada berfungsi untuk mengatur nada rendah (bass) dan nada tinggi (treble) secara terpisah. Pada bagian pengatur nada bass, menguatkan sinyal frekuensi rendah, sedangkan pada bagian nada treble menguatkan sinyal frekuensi tinggi.
                    </p>
                    <p>
                        <ul>
                            <li><b>Pengatur nada dipasang sebelum penguat</b>
                                <p>
                                Pengatur nada dipasang sebelum penguat. Secara garis besar, bagian pengatur nada mempunyai prinsip kerja berikut.                                
                                </p>
                                <br>
                                <p style="text-align: center !important;">
                                    <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 10_Rangkaian Tone Control/Gambar/Picture3.png') }}" alt="..."/>
                                </p>  
                                <br>
                                <p>
                                Rangkaian pengatur nada dipasang sebelum rangkaian penguat Penguatan rangkaian ditentukan olch impedansi umpan balk (Z2), dibagi dengan impedansi input (Z1), dan dapat dihitung dengan rumus:
                                </p>
                                <p style="text-align: center !important;">
                                    <img class="img-fluid" src="{{ asset('img/Page 10_Rangkaian Tone Control/Rumus/Rumus 1.png') }}" alt="..." style="
                                    max-width: 100%;
                                                                                                                                                width: 292px;
                                                                                                                                                height: 159px;
                                                                                                                                                max-height: auto;
                                                                                                                                                background: #D1877D;     
                                                                                                                                                box-shadow: 18px 20px 4px rgba(0, 0, 0, 0.1);
                                                                                                                                                padding: 10px;"/>
                                </p>

                                <br>

                                <div style="display: flex;
                                            align-items: center;
                                            justify-content: center;">
                                    <p style="  text-align: left !important;
                                                background: rgba(209, 135, 125, 0.5);
                                                border-radius: 46px;
                                                padding: 30px">
                                        <b>Keterangan : </b>
                                        <br>
                                        <b>Av</b> = faktor penguatan
                                        <br>
                                        <b>Z1</b>= impedansi input
                                        <br>
                                        <b>Z2</b>= impedansi output

                                    </p>
                                </div>
                                <br>
                                <p>
                                Pada pengaturan nada baik bass atau treble pada posisi maksimum maka impedansi input (Z1) menjadi minimum schingga penguatan pada posisi tersebut menjadi bear. Perhitungan penguatannya dijelaskan sebagai berikut.
                                </p>
                                <br>
                                <p style="text-align: center !important;">
                                    <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 10_Rangkaian Tone Control/Gambar/Picture4.png') }}" alt="..."/>
                                </p>  
                                <br>
                                <p>
                                    <ol style="list-style-type: none;">
                                        <li><b>A.  Penguatan Bass</b>
                                            <p>
                                            Pada posisi maksimum kondensator C1 dihubung-singkat potensiometer p1 rumus perhitungannya sebagai berikut.                                            
                                            </p>
                                            <p style="text-align: center !important;">
                                                <img class="img-fluid" src="{{ asset('img/Page 10_Rangkaian Tone Control/Rumus/rumus 2.png') }}" alt="..." style="max-width: 100%;
                                                                                                                                                width: 292px;
                                                                                                                                                height: 159px;
                                                                                                                                                max-height: auto;
                                                                                                                                                            background: #D1877D;     
                                                                                                                                                            box-shadow: 18px 20px 4px rgba(0, 0, 0, 0.1);
                                                                                                                                                            padding: 10px;"/>
                                            </p>
                                            <p>
                                            Pada posisi minimum kondensator C2 dihubung-singkat potensiometer p1 rumus perhitungannya sebagai berikut.                                            
                                            </p>
                                            <p style="text-align: center !important;">
                                                <img class="img-fluid" src="{{ asset('img/Page 10_Rangkaian Tone Control/Rumus/rumus 3.png') }}" alt="..." style="max-width: 100%;
                                                                                                                                                width: 292px;
                                                                                                                                                height: 159px;
                                                                                                                                                max-height: auto;
                                                                                                                                                            background: #D1877D;     
                                                                                                                                                            box-shadow: 18px 20px 4px rgba(0, 0, 0, 0.1);
                                                                                                                                                            padding: 10px;"/>
                                            </p>
                                        </li>
                                        <li><b>B.  Pengaturan Nada Treble</b>
                                            <p>
                                            Pada posisi maksimum, perhitungan penguatan dapat dihitung dengan rumus berikut.                                            
                                            </p>
                                            <p style="text-align: center !important;">
                                                <img class="img-fluid" src="{{ asset('img/Page 10_Rangkaian Tone Control/Rumus/rumus 4.png') }}" alt="..." style="max-width: 100%;
                                                                                                                                                width: 292px;
                                                                                                                                                height: 159px;
                                                                                                                                                max-height: auto;
                                                                                                                                                            background: #D1877D;     
                                                                                                                                                            box-shadow: 18px 20px 4px rgba(0, 0, 0, 0.1);
                                                                                                                                                            padding: 10px;"/>
                                            </p>
                                            <p>
                                            Pada posisi minimum, perhitungan penguatan dapat dihitung dengan rumus berikut.                                            
                                            </p>
                                            <p style="text-align: center !important;">
                                                <img class="img-fluid" src="{{ asset('img/Page 10_Rangkaian Tone Control/Rumus/rumus 5.png') }}" alt="..." style="max-width: 100%;
                                                                                                                                                width: 292px;
                                                                                                                                                height: 159px;
                                                                                                                                                max-height: auto;
                                                                                                                                                            background: #D1877D;     
                                                                                                                                                            box-shadow: 18px 20px 4px rgba(0, 0, 0, 0.1);
                                                                                                                                                            padding: 10px;"/>
                                            </p>
                                        </li>
                                    </ol>
                                </p>
                            </li>
                            <li><b>Rangkaian pengatur nada dipasang setelah penguat input</b>
                                <br>
                                <br>
                                <p style="text-align: center !important;">
                                    <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 10_Rangkaian Tone Control/Gambar/Picture5.png') }}" alt="..."/>
                                </p>  
                                <br>
                                <p>
                                Rangkaian pengatur nada ini dipasang setelah rangkaian penguat. Pada saat posisi pengatur nada treble maksimum, frekuensi sinyal input dilimpihkan ke output melewati kondensator C1. Pada saat posisi pengatur nada bass maksimum, frekuensi sinyal input input rendah dihambat C2. Rangkaian pengatur nada ada yang dilengkapi dengan rangkaian pengatur loudness,high filter, dan low filter.                                
                                </p>
                                
                                <p>
                                    <ol style="list-style-type: none;">
                                        <li><b>A.  Pengatur Loudness</b>
                                            <p>
                                            Rangkaian loudness dipasang pada pengatur volume, loudness (kedalaman) akan mempunyai efek pada posisi lebih dari setengah pengaturan volume minimum sinyal dihambat oleh resistansi dari potensiometer pengatur volume.                                            
                                            </p>
                                            <p style="text-align: center !important;">
                                                <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 10_Rangkaian Tone Control/Gambar/Picture6.png') }}" alt="..."/>
                                            </p>
                                        </li>
                                        <li><b>B.  Pengatur High Filter</b>
                                            <p>
                                            Rangkaian high filter bekerja jika sakelar ditekan. Pada posisi tersebut, kondensator c1 terhubung singkat. Frekuensi sinyal input yang tinggi langsung dihubungkan ke output.                                            
                                            </p>
                                            <p style="text-align: center !important;">
                                                <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 10_Rangkaian Tone Control/Gambar/Picture7.png') }}" alt="..." />
                                            </p>
                                            <p>
                                            Pada posisi minimum, perhitungan penguatan dapat dihitung dengan rumus berikut.                                            
                                            </p>
                                            <p style="text-align: center !important;">
                                                <img class="img-fluid" src="{{ asset('img/Page 10_Rangkaian Tone Control/Rumus/rumus 5.png') }}" alt="..." style="max-width: 100%;
                                                                                                                                                width: 292px;
                                                                                                                                                height: 159px;
                                                                                                                                                max-height: auto;
                                                                                                                                                            background: #D1877D;     
                                                                                                                                                            box-shadow: 18px 20px 4px rgba(0, 0, 0, 0.1);
                                                                                                                                                            padding: 10px;"/>
                                            </p>
                                        </li>
                                        <li><b>C.  Pengatur Low Filter</b>
                                            <p>
                                            Rangkaian low filter bekerja jika sakelar ditekan. Pada posisi tersebut, kondensator c1 terhubung singkat dan frekuensi sinyal input yang rendah langsung di hubungkan singkat dan frekuensi sinyal input yang rendah langsung dihubungkan ke output.                                            
                                            </p>
                                        </li>
                                    </ol>
                                </p>
                            </li>
                            <li><b>Rangkaian pengatur nada dipasang setelah penguat input</b>                                
                                <p>
                                Secara keseluruhan sistem pengatur nada (tone control) dengan penguat amplifier dapat digambarkan dengan skema berikut.                                
                                </p>
                                <br>
                                <p style="text-align: center !important;">
                                    <img class="img-fluid custom-revisi-w-img-lg" src="{{ asset('img/Page 10_Rangkaian Tone Control/Gambar/Picture8.png') }}" alt="..."/>
                                </p>  
                                <br>
                                <p>Diagram audio amplifier terdiri atas bagian-bagian berikut ini.
                                    <ol>
                                        <li>
                                        Input Sinyal
                                        </li>
                                        <li>
                                        Penguat Awal
                                        </li>
                                        <li>
                                        Pengatur Nada
                                        </li>
                                        <li>
                                        Penguat Akhir
                                        </li>
                                        <li>
                                        Speaker
                                        </li>
                                        <li>
                                        Power Supply   
                                        </li>
                                    </ol>
                                </p>
                            </li>
                        </ul>
                    </p>
                </div>
            </div>

            <br>




        </div>
        <br>
        <br>
        @else
        <div>
            <!-- Apa itu gelombang bunyi? -->
            <div>
                <div class="text-left">
                    <p style="font-family: 'Poppins';
                                                        font-style: normal;
                                                        font-weight: 700;
                                                        font-size: 40px;
                                                        line-height: 60px;
                                                        /* identical to box height */

                                                        text-align: left;
                                                        letter-spacing: 0.01em;

                                                        color: #555B41;">
                        {{ $lesson->title }}
                    </p>
                </div>
            </div>
        </div>
        @endif

    @if ($purchased_course || $lesson->free_lesson == 1)
      
    <div class="list-group" style="margin: 10px;">        
        {!! $lesson->full_text !!}
    </div>

    

        @if ($test_exists)
        <hr />
            <h2 class="fw-bolder mb-3"  id="test">{{ $lesson->test->title }}</h2>
            <div class="text-muted fst-italic mb-2">{{ $lesson->test->description }}</div>
            <div class="accordion mb-5">
                <div class="accordion-item">
                    <h3 class="accordion-header" id="headingOne">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        @if (!is_null($test_result))
                        Review Test
                        @else
                        Start Test
                        @endif
                        </button>
                    </h3>
                    @if (!is_null($test_result))
                    <div class="accordion-collapse collapse" id="collapseOne" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <p>
                                Your test score: {{ $test_result->test_result }}
                            </p>
                            <hr>
                            <p>       
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active">
                                    <div style="overflow-x:auto;">
                                        <table class="table table-bordered table-striped">
                                            <tbody>
                                                <tr>
                                                    <th>@lang('global.questions-options.fields.question') & @lang('global.questions-options.fields.option-text')</th>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        @foreach ($test->questions as $singleQuestions)
                                                                {{ $loop->iteration }}. {{ $singleQuestions->question }} 
                                                                <div style="padding-left: 15px;">
                                                                    @foreach ($singleQuestions->options->pluck('option_text') as $array)
                                                                        {{ $array }}<br>
                                                                    @endforeach
                                                                    <span style="color: green">Correct Answer:</span> {{ $singleQuestions->correct_answer()->pluck('option_text')->first() }}<br><br>
                                                                </div>
                                                        @endforeach
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>Your Answer</th>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        @foreach ($test_result->answers as $singleOptions)
                                                                {{ $loop->iteration }}. {{ $singleOptions->option->option_text }} {{ Form::checkbox("correct", 1, $singleOptions->option->correct == 1 ? true : false, ["disabled"]) }} <br>
                                                        @endforeach
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    </div>
                                </div>
                            </p>
                        </div>
                    </div>
                    @else
                    <div class="accordion-collapse collapse" id="collapseOne" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <form action="{{ route('lessons.test', [$lesson->slug]) }}" method="post" style="margin: 10px;">
                                {{ csrf_field() }}
                                @foreach ($lesson->test->questions as $question)
                                    <b>{{ $loop->iteration }}. {{ $question->question }}</b>
                                    <br />
                                    <div style="padding-left: 15px;">
                                    <td>@if($question->question_image)<a href="{{ asset('uploads/' . $question->question_image) }}" target="_blank"><img src="{{ asset('uploads/' . $question->question_image) }}" class="img-fluid img-thumbnail"/></a><br />@endif</td>
                                    
                                    @foreach ($question->options as $option)
                                        <input type="radio" name="questions[{{ $question->id }}]" value="{{ $option->id }}" /> {{ $option->option_text }}<br />
                                    @endforeach
                                    <br />
</div>
                                @endforeach
                                <input type="submit" value=" Submit results " />
                            </form>
                        </div>
                    </div>
                    @endif
                </div>
            </div>  

        @endif

        <style>
            .display-comment .display-comment {
                margin-left: 40px
            }
        </style>

        @if ($lesson->is_forum_active == 1)
            
            <div class="card bg-light p-4" style="background: rgba(196, 196, 196, 0.2) !important; border-radius: 20px;">
                <h2 class="fw-bolder"  id="forum">Leave a Reply</h2>
                <div class="card-body">
                    <!-- Comment form-->
                    <form method="post" action="{{ route('comment.add') }}" class="mb-2">
                        <!-- @csrf -->
                        {{ csrf_field() }}
                        <div class="form-group mb-1">
                            <textarea class="form-control" name="comment_body" rows="3" placeholder="Enter your comment here..." required></textarea>
                            <input type="hidden" name="lesson_id" value="{{ $lesson->id }}" />
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-secondary" value="Add Discussion" style="background: #74927A !important;"/>
                        </div>
                    </form>
                    <!-- Comment with nested comments-->
                    <div class="card-body">
                        @include('partials._comment_replies', ['comments' => $lesson->comments, 'lesson_id' => $lesson->id])
                    </div>
                </div>
            </div>
        @endif



    @else
        Please <a href="{{ route('courses.show', [$lesson->course->slug]) }}">go back</a>, because you're not student in this course.
    @endif
    <hr />
    <center>
    @if ($previous_lesson)
        <p><a href="{{ route('lessons.show', [$previous_lesson->course_id, $previous_lesson->slug]) }}" style="margin: 10px;"><< {{ $previous_lesson->title }}</a></p>
    @endif
    @if ($next_lesson)
        <p><a href="{{ route('lessons.show', [$next_lesson->course_id, $next_lesson->slug]) }}" style="margin: 10px;">{{ $next_lesson->title }} >></a></p>
    @endif
    </center>
    </div>
</section>
@endsection