@extends('layouts.home')

@section('mylesson')

            <!-- Header-->
            <header class="py-5 bg-light">
                <div class="container px-5">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-xxl-6">
                            <div class="text-center my-5">
                                <h1 class="fw-bolder mb-3">Intruction</h1>
                                <p class="lead fw-normal text-muted mb-4">
                                Intruction how to use this website</p>
                                <a class="btn btn-primary btn-lg" href="#scroll-target">More Info</a>
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
                    <div class="row gx-5 row-cols-2 row-cols-lg-4 py-5">
                        <div class="col">
                            <!-- <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-question-circle"></i></div> -->
                            <div class="h3">Intruction &nbsp;:</div>
                            <!-- <p class="text-muted mb-0">Browse FAQ's and support articles to find solutions.</p> -->
                        </div>
                        <div class="col">
                            <!-- <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-geo-alt"></i></div> -->
                            <div class="h5">Courses</div>
                            <p class="text-muted mb-0">
                                <p class="text-muted mb-0" style="margin: 0px; padding: 0px">My courses&nbsp;:</p>
                                <ol>
                                    <li>Login</li>
                                    <li>Click Courses in navbar</li>
                                    <li>Go to My Courses</li>
                                </ol>
                                <p class="text-muted mb-0" style="margin: 0px; padding: 0px">All courses&nbsp;:</p>
                                <ol>
                                    <li>Login</li>
                                    <li>Click Courses in navbar</li>
                                    <li>Go to All Courses</li>
                                </ol>
                            </p>
                        </div>
                        <div class="col">
                            <!-- <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-geo-alt"></i></div> -->
                            <div class="h5">Course</div>
                            <p class="text-muted mb-0">
                                <p class="text-muted mb-0" style="margin: 0px; padding: 0px">How to see all lesson in course&nbsp;:</p>
                                <ol>
                                    <li>Login</li>
                                    <li>Click Courses in navbar</li>
                                    <li>Go to My Courses</li>
                                    <li>Click one of the following course in My Coures</li>
                                </ol>
                            </p>
                        </div>
                        <div class="col">
                            <!-- <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-geo-alt"></i></div> -->
                            <div class="h5">Lesson</div>
                            <p class="text-muted mb-0">
                                <p class="text-muted mb-0" style="margin: 0px; padding: 0px">How to see lesson in course&nbsp;:</p>
                                <ol>
                                    <li>Login</li>
                                    <li>Click Courses in navbar</li>
                                    <li>Go to My Courses</li>
                                    <li>Click one of the following course in My Coures</li>
                                    <li>Click one of the following lesson in course</li>
                                </ol>
                                <p class="text-muted mb-0" style="margin: 0px; padding: 0px">Test&nbsp;:</p>
                                <ol>
                                    <li>Login</li>
                                    <li>Click Courses in navbar</li>
                                    <li>Go to My Courses</li>
                                    <li>Click one of the following course in My Coures</li>
                                    <li>Click one of the following lesson in course</li>
                                    <li>Click Test in lesson</li>
                                </ol>
                                <p class="text-muted mb-0" style="margin: 0px; padding: 0px">Forum&nbsp;:</p>
                                <ol>
                                    <li>Login</li>
                                    <li>Click Courses in navbar</li>
                                    <li>Go to My Courses</li>
                                    <li>Click one of the following course in My Coures</li>
                                    <li>Click one of the following lesson in course</li>
                                    <li>Click Forum in lesson</li>
                                </ol>
                            </p>
                        </div>
                    </div>
                </div>
            </section>
            @endsection

