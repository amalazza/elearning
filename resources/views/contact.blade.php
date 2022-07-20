@extends('layouts.home')

@section('mylesson')

            <!-- Header-->
            <header class="py-5 bg-light">
                <div class="container">
                    <!-- Contact form-->
                <div class="bg-light rounded-3 py-5 px-md-5 mb-5">
                    <div class="text-center mb-5">
                        <h1 class="fw-bolder">Get in touch</h1>
                        <p class="lead fw-normal text-muted mb-5">We'd love to hear from you</p>
                        <img class="mb-5 img-fluid" src="{{ asset('img/Page 12_Get In Touch/Pict.svg') }}" alt="..."/>
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
                                    <input class="form-control" id="name" name="name" type="text" placeholder="Enter your name..." required stle="background: #FFFFFF;
                                                                                                                                                    border: 1px solid #000000;
                                                                                                                                                    box-sizing: border-box;
                                                                                                                                                    border-radius: 12px;"/>
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
                                <div class="d-grid"><button type="submit" class="btn btn-secondary btn-lg" id="submitButton" style="background: #74927A; border-radius: 12px;">Submit</button></div>
                            </form>
                        </div>
                    </div>
                </div>
                </div>
            </header>
            @endsection
            <script>
                setInterval(function(){ $(".alert").fadeOut(); }, 3000);
                </script>

