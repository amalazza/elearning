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
                        <img class="" src="{{ asset('img/Page 6_Gelombang Suara/Gambar/Rapatan Renggangan.png') }}" alt="..." style="    width: 100%;
                                                                                                                                                height: 400px;"/>
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
                                                                                                                                    width: 438px; 
                                                                                                                                    height: 85px; 
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
                                                                                                                                    width: 438px; 
                                                                                                                                    height: 85px; 
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
                        <img class="" src="{{ asset('img/Page 6_Gelombang Suara/Rumus/Efek Doppler.png') }}" alt="..." style="max-width: 100%; width: 438px; 
                                                                                                                                    height: 85px; 
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
                                        <img class="" src="{{ asset('img/Page 6_Gelombang Suara/Rumus/Kedalaman Laut.png') }}" alt="..." style="max-width: 100%; width: 70%;
                                                                                                                                        height: 100px;
                                                                                                                                        background: #9EBBA4;       
                                                                                                                                        box-shadow: 18px 20px 4px rgba(0, 0, 0, 0.1);
                                                                                                                                        padding: 10px;"/>
                                        <br>
                                        <br>
                                        <br>
                                        <p style="  text-align: left !important;
                                                    background: rgba(158, 187, 164, 0.4);
                                                    padding: 30px;
                                                    width: 70%;">
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
                                    <img class="" src="{{ asset('img/Page 6_Gelombang Suara/Gambar/gif.gif') }}" alt="..." style="  max-width: 100%; border-radius: 97px;
                                                                                                                                    width: 80%;
                                                                                                                                    height: 380px;"/>
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
                        Pendahuluan
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
                            <div class="col-4" style="display: flex;
                                                    align-items: center;
                                                    justify-content: right;">
                                <button style="max-width: 100%;
                                                width: 230px;
                                                height: 60px;
                                                background: #D1877D;
                                                border-radius: 56px;
                                                color: white;
                                                border: none">   
                                            <b>Sumber suara</b>
                                </button>
                            </div>
                            <div class="col-4" style="display: flex;
                                                    align-items: center;
                                                    justify-content: center;">
                                <button style="max-width: 100%;
                                                width: 230px;
                                                height: 60px;
                                                background: #D1877D;
                                                border-radius: 56px;
                                                color: white;
                                                border: none">   
                                            <b>Intensitas Suara</b>
                                </button>
                            </div>
                            <div class="col-4" style="display: flex;
                                                    align-items: center;
                                                    justify-content: left;">
                                <button style="max-width: 100%;
                                                width: 230px;
                                                height: 60px;
                                                background: #D1877D;
                                                border-radius: 56px;
                                                color: white;
                                                border: none">   
                                            <b>Perambatan Suara</b>
                                </button>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-6" style="display: flex;
                                                    align-items: center;
                                                    justify-content: right;">
                                <button style="max-width: 100%;
                                                width: 230px;
                                                height: 60px;
                                                background: #D1877D;
                                                border-radius: 56px;
                                                color: white;
                                                border: none">   
                                            <b>Penerimaan Suara</b>
                                </button>
                            </div>
                            <div class="col-6" style="display: flex;
                                                    align-items: center;
                                                    justify-content: left;">
                                <button style="max-width: 100%;
                                                width: 230px;
                                                height: 60px;
                                                background: #D1877D;
                                                border-radius: 56px;
                                                color: white;
                                                border: none">   
                                            <b>Frekuensi Suara</b>
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
                    <div class="col-7">  
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
                    <div class="col-5"> 
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
                        <img class="" src="{{ asset('img/Page 7_Psikoakustik Anatomi/Rumus/Dengung.png') }}" alt="..." style="max-width: 100%;
                                                                                                                                    width: 438px; 
                                                                                                                                    height: 100px; 
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
                        <img class="" src="{{ asset('img/Page 7_Psikoakustik Anatomi/Gambar/Telinga.png') }}" alt="..." style="max-width: 100%;
                                                                                                                            width: 800px;
                                                                                                                            height: 600.29px;
                                                                                                                            max-height: auto;"/> 
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
                        <img class="" src="{{ asset('img/Page 7_Psikoakustik Anatomi/Gambar/Kurva Isofonik.png') }}" alt="..." style="max-width: 100%;
                                                                                                                            width: 800px;
                                                                                                                            height: 600.29px;
                                                                                                                            max-height: auto;"/> 
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
                                                                                                                                        width: 800px;
                                                                                                                                        height: 600.29px;
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






        </div>
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