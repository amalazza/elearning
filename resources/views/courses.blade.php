@extends('layouts.home')

@section('mylesson')

    @if (!is_null($purchased_courses))
        <h3 style="margin-bottom: 10px;">My courses</h3>
        <div class="row" style="margin-bottom: 25px;">
        <!-- <iframe src="https://view.officeapps.live.com/op/view.aspx?src={{url('https://file-examples.com/wp-content/uploads/2017/02/file-sample_100kB.doc')}}" frameborder="0" style="width: 62%; min-height: 562px;"></iframe> -->


        @foreach($purchased_courses as $course)
            <div class="col-sm-4 col-lg-4 col-md-4" style="margin-bottom: 20px;">
                <div class="card h-100 shadow border-0">
                    <img class="card-img-top" src=" {{ asset('uploads/' . $course->course_image) }}" alt="..."  style="width: 100%; height: 200px;"/>
                    <div class="card-body p-4 caption" style="margin-bottom: 15px;">
                        <!-- <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div> -->
                        <a class="text-decoration-none link-dark stretched-link" href="{{ route('courses.show', [$course->slug]) }}"><h5 class="card-title mb-3">{{ $course->title }}</h5></a>
                        <p class="card-text mb-0">
                            {{ $course->description }}                                    
                        </p>
                    </div>
                    <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                        <div class="d-flex align-items-end justify-content-between">
                            <div class="d-flex align-items-center">
                                <!-- <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." /> -->
                                <div class="small">
                                    <!-- <div class="fw-bold">Kelly Rowan</div> -->
                                    <div class="text-muted">Students: {{ $course->students()->count() }}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
        </div>
        <hr/>

    @endif

    <h3 style="margin-bottom: 10px;">All courses</h3>
    <div class="row" style="margin-bottom: 25px;">

        @foreach($courses as $course)
            <div class="col-sm-4 col-lg-4 col-md-4" style="margin-bottom: 20px;">
                <div class="card h-100 shadow border-0">
                    @if (empty($course->course_image))
                        <img src="http://placehold.it/320x150" alt=""class="card-img-top" style="width: 100%; height: 200px;">
                    @else
                        <img class="card-img-top" src=" {{ asset('uploads/' . $course->course_image) }}" alt="..."  style="width: 100%; height: 200px;"/>
                    @endif
                    <div class="card-body p-4 caption" style="margin-bottom: 15px;">
                        <!-- <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div> -->
                        <a class="text-decoration-none link-dark stretched-link" href="{{ route('courses.show', [$course->slug]) }}"><h5 class="card-title mb-3">{{ $course->title }}</h5></a>
                        <p class="card-text mb-0">
                            {{ $course->description }}                                    
                        </p>
                    </div>
                    <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                        <div class="d-flex align-items-end justify-content-between">
                            <div class="d-flex align-items-center">
                                <!-- <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." /> -->
                                <div class="small">
                                    <!-- <div class="fw-bold">Kelly Rowan</div> -->
                                    <div class="text-muted">Students: {{ $course->students()->count() }}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>

@endsection