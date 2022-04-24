@extends('layouts.auth')

@section('content')
    <!-- <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">{{ ucfirst(config('app.name')) }} Login</div>
                <div class="panel-body">
                    
                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <strong>Whoops!</strong> There were problems with input:
                            <br><br>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form class="form-horizontal"
                          role="form"
                          method="POST"
                          action="{{ url('login') }}">
                        <input type="hidden"
                               name="_token"
                               value="{{ csrf_token() }}">

                        <div class="form-group">
                            <label class="col-md-4 control-label">Email</label>

                            <div class="col-md-6">
                                <input type="email"
                                       class="form-control"
                                       name="email"
                                       value="{{ old('email') }}">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">Password</label>

                            <div class="col-md-6">
                                <input type="password"
                                       class="form-control"
                                       name="password">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <a href="{{ route('auth.password.reset') }}">Forgot your password?</a>
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <label>
                                    <input type="checkbox"
                                           name="remember"> Remember me
                                </label>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit"
                                        class="btn btn-primary"
                                        style="margin-right: 15px;">
                                    Login
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div> -->

     <!-- Custom styles for this template-->
     <link href="https://cdnjs.cloudflare.com/ajax/libs/startbootstrap-sb-admin-2/4.1.4/css/sb-admin-2.css" rel="stylesheet">
     <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
     <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap" rel="stylesheet">
     <style>
        body {
        font-family: 'Poppins';
        margin: 0;
        font-size: 1rem;
        font-weight:400;
        line-height: 1.5;
        color: #212529;
        background-color: #fff;
        -webkit-text-size-adjust: 100%;
        -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
        }
    </style>

    <div class="row" style="height: 735px; margin-top: -11%; margin-right: -15px; margin-left: -15px;">
        <div class="col-lg-7 d-none d-lg-block" style="  padding: 0px; display: flex;
                                                                        align-items: center;
                                                                        justify-content: center;">
            <img class="img-fluid" src="{{ asset('uploads/img/2.jpg') }}" alt="..." style="height: 735px; filter: brightness(55%)"/></div>
        <div class="col-lg-5" style="padding: 0px; margin: auto; display: flex;
                                                                        align-items: center;
                                                                        justify-content: center;">
            <div class="p-5">
                <div class="text-center">
                    <img class="" src="{{ asset('img/Page 1_Login Menu/Logo SMK.png') }}" alt="..." style="width: 60px; height: 60px; margin-right: 20px;"/>
                    <img class="" src="{{ asset('img/Page 1_Login Menu/Logo UNJ.png') }}" alt="..." style="width: 60px; height: 60px;"/>
                    <br>
                    <br>
                    <h1 class="h4 text-gray-900 mb-4 text-center" style="
                                                                height: 51px;
                                                                font-family: 'Poppins';
                                                                font-style: normal;
                                                                font-weight: 700;
                                                                font-size: 36px;
                                                                line-height: 54px;
                                                                text-align: center;
                                                                letter-spacing: 0.01em;

                                                                color: #555B41;">Login</h1>
                </div>
                <br>
                <br>
                <br>
                <br>

                @if (count($errors) > 0)
                    <div class="alert alert-danger">
                        <strong>Whoops!</strong> There were problems with input:
                        <br><br>
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif


                <form class="form-horizontal"
                          role="form"
                          method="POST"
                          action="{{ url('login') }}">
                        <input type="hidden"
                               name="_token"
                               value="{{ csrf_token() }}">
                    <div class="form-floating mb-3">
                        <label for="email" style="  font-family: 'Poppins';
                                                    font-style: normal;
                                                    font-weight: 400;
                                                    font-size: 18px;
                                                    line-height: 27px;
                                                    letter-spacing: 0.01em;

                                                    color: #000000;">Email</label>
                        <input class="form-control" 
                                type="email"
                                name="email"
                                value="{{ old('email') }}"
                                placeholder="Masukkan email anda" required 
                                style=" background: #FFFFFF;
                                        border: 1px solid #A6A6A6;
                                        box-sizing: border-box;
                                        border-radius: 12px;
                                        width: 436px;
                                        height: 43px;
                                        font-family: 'Poppins';
                                        font-style: normal;
                                        font-weight: 400;
                                        font-size: 16px;
                                        line-height: 24px;
                                        display: flex;
                                        align-items: center;
                                        letter-spacing: 0.01em;"/>
                    </div>
                    <br>
                    <div class="form-floating mb-3">
                        <label for="email" style="  font-family: 'Poppins';
                                                    font-style: normal;
                                                    font-weight: 400;
                                                    font-size: 18px;
                                                    line-height: 27px;
                                                    letter-spacing: 0.01em;

                                                    color: #000000;">Password</label>
                        <input class="form-control" 
                                type="password"
                                name="password"
                                placeholder="Masukkan password anda" required
                                style=" background: #FFFFFF;
                                        border: 1px solid #A6A6A6;
                                        box-sizing: border-box;
                                        border-radius: 12px;
                                        width: 436px;
                                        height: 43px;
                                        font-family: 'Poppins';
                                        font-style: normal;
                                        font-weight: 400;
                                        font-size: 16px;
                                        line-height: 24px;
                                        display: flex;
                                        align-items: center;
                                        letter-spacing: 0.01em;"/>
                    </div>
                    <br>
                    <button type="submit"
                            class="btn btn-primary btn-user btn-block"
                            style=" width: 436px;
                                    background: #74927A;
                                    border-radius: 12px;
                                    font-family: 'Poppins';
                                    font-style: normal;
                                    font-weight: 600;
                                    font-size: 24px;
                                    line-height: 36px;
                                    /* identical to box height */

                                    letter-spacing: 0.01em;

                                    color: #FFFFFF;">
                        Login
                    </button>
            </div>
        </div>
    </div>
    <!-- Custom scripts for all pages-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/startbootstrap-sb-admin-2/4.1.4/js/sb-admin-2.min.js"></script>



@endsection