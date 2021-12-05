@extends('layouts.home')

@section('mylesson')

            <!-- Header-->
            <header class="py-5 bg-light">
                <div class="container px-5">
                    <!-- Contact form-->
                <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                    <div class="text-center mb-5">
                        <div class="feature bg-secondary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-person-circle"></i></div>
                        <h1 class="fw-bolder">Profile</h1>
                        <p class="lead fw-normal text-muted mb-0">Click submit if you want to change your data</p>
                    </div>
                    @if(session()->has('message'))
                    <div class="alert alert-success alert-dismissible">
                        <strong>Success!</strong> {{ session('message') }}
                    </div>
                    @endif
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-8 col-xl-6">
                        <form id="contactForm" method="post" action="{{route('users.update', $user)}}">
                            {{ csrf_field() }}
                            {{ method_field('patch') }}

                            <div class="form-floating mb-3">
                                <input class="form-control" id="name" name="name" value="{{ $user->name }}" type="text" placeholder="Enter your name..." required/>
                                <label for="name">Full name</label>
                                <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
                            </div>
                            <div class="form-floating mb-3">
                                <input class="form-control" id="email" name="email" value="{{ $user->email }}" type="email" placeholder="name@example.com" required/>
                                <label for="email">Email address</label>
                                <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
                                <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
                            </div>
                            <div class="form-floating mb-3">
                                <input class="form-control" id="password" name="password" type="password"/>
                                <label for="password">Password</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input class="form-control" id="password_confirmation" name="password_confirmation" type="password"/>
                                <label for="password">Password Confirmation</label>
                            </div>
                            <div class="d-grid"><button type="submit" class="btn btn-secondary btn-lg" id="submitButton">Submit</button></div>

                            

                            <!-- <input type="text" name="name"  value="{{ $user->name }}" />

                            <input type="email" name="email"  value="{{ $user->email }}" />

                            <input type="password" name="password" />

                            <input type="password" name="password_confirmation" />

                            <button type="submit">Send</button> -->
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
            @endsection
            <script>
                setInterval(function(){ $(".alert").fadeOut(); }, 3000);
                </script>

