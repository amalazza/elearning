@extends('layouts.home')

@section('mylesson')

            <!-- Header-->
            <header class="py-5 bg-light">
                <div class="container px-5">
                    <!-- Contact form-->
                <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                    <div class="text-center mb-5">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-envelope"></i></div>
                        <h1 class="fw-bolder">Get in touch</h1>
                        <p class="lead fw-normal text-muted mb-0">We'd love to hear from you</p>
                    </div>
                    @if(session()->has('message'))
                    <div class="alert alert-success alert-dismissible">
                        <strong>Success!</strong> {{ session('message') }}
                    </div>
                    @endif
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-8 col-xl-6">
                            <!-- * * * * * * * * * * * * * * *-->
                            <!-- * * SB Forms Contact Form * *-->
                            <!-- * * * * * * * * * * * * * * *-->
                            <!-- This form is pre-integrated with SB Forms.-->
                            <!-- To make this form functional, sign up at-->
                            <!-- https://startbootstrap.com/solution/contact-forms-->
                            <!-- to get an API token!-->
                            <form id="contactForm" method="post" action="{{ route('contact.store') }}">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                                <!-- Name input-->
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="name" name="name" type="text" placeholder="Enter your name..." required/>
                                    <label for="name">Full name</label>
                                    <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
                                </div>
                                <!-- Email address input-->
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="email" name="email" type="email" placeholder="name@example.com" required/>
                                    <label for="email">Email address</label>
                                    <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
                                    <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
                                </div>
                                <!-- Phone number input-->
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="subject" name="subject" type="text" placeholder="Enter the subject..." required/>
                                    <label for="subject">Subject</label>
                                    <div class="invalid-feedback" data-sb-feedback="subject:required">A subject is required.</div>
                                </div>
                                <!-- Message input-->
                                <div class="form-floating mb-3">
                                    <textarea class="form-control" id="message" name="message" type="text" placeholder="Enter your message here..." style="height: 10rem" required></textarea>
                                    <label for="message">Message</label>
                                    <div class="invalid-feedback" data-sb-feedback="message:required">A message is required.</div>
                                </div>
                                <!-- Submit Button-->
                                <div class="d-grid"><button type="submit" class="btn btn-primary btn-lg" id="submitButton">Submit</button></div>
                            </form>
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
                    <div class="row gx-5 row-cols-1 row-cols-lg-1 py-5">
                        <div class="text-center mb-5">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-geo-alt"></i></div>
                            <h1 class="fw-bolder">Address</h1>
                            <p class="lead fw-normal text-muted mb-0">                            
                                Jl. Rawamangun Muka Raya No.11, RT.11/RW.14, Rawamangun, Kec. Pulo Gadung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13220
                            </p>
                        </div>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15866.09582526792!2d106.8791516!3d-6.1943826!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2412a91a0f6a01c8!2sUniversitas%20Negeri%20Jakarta!5e0!3m2!1sid!2sid!4v1637415945682!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

                        <!-- <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-envelope"></i></div>
                            <div class="h5 mb-2">Email</div>
                            <p class="text-muted mb-0">infosmkn39jkt@gmail.com</p>
                        </div>
                        <div class="col">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-telephone"></i></div>
                            <div class="h5">Telephone/Fax</div>
                            <p class="text-muted mb-0">021-4246845</p>
                        </div> -->
                    </div>
                </div>
            </section>
            @endsection
            <script>
                setInterval(function(){ $(".alert").fadeOut(); }, 3000);
                </script>

