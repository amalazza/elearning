@extends('layouts.home')

@section('mylesson')

    @if (!is_null($purchased_courses))
        <h3>My courses</h3>
        <div class="row">
        <!-- <iframe src="https://view.officeapps.live.com/op/view.aspx?src={{url('https://file-examples.com/wp-content/uploads/2017/02/file-sample_100kB.doc')}}" frameborder="0" style="width: 62%; min-height: 562px;"></iframe> -->


        @foreach($purchased_courses as $course)
            <div class="col-sm-4 col-lg-4 col-md-4">
                <div class="card h-100 shadow border-0">
                    <img class="card-img-top" src=" {{ asset('uploads/' . $course->course_image) }}" alt="..." class="img-thumbnail" style="width: 100%; height: 200px;"/>
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
                                <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." />
                                <div class="small">
                                    <div class="fw-bold">Kelly Rowan</div>
                                    <div class="text-muted">March 12, 2021 &middot; 6 min read</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
        </div>
        <hr />

    @endif

    <h3>All courses</h3>
    <!-- <iframe src="https://view.officeapps.live.com/op/view.aspx?src={{url('https://file-examples.com/wp-content/uploads/2017/02/sample.ppt')}}" frameborder="0" style="width: 62%; min-height: 562px;"></iframe> -->

    <div class="row">
    @foreach($courses as $course)
        <div class="col-sm-4 col-lg-4 col-md-4">
            <div class="thumbnail">
            @if (empty($course->course_image))
                <img src="http://placehold.it/320x150" alt="" class="img-thumbnail" style="width: 100%; height: 200px;">
            @else
                <img src=" {{ asset('uploads/' . $course->course_image) }}" alt="" class="img-thumbnail" style="width: 100%; height: 200px;">
            @endif
                <div class="caption">
                    <!-- <h4 class="pull-right">${{ $course->price }}</h4> -->
                    <h4><a href="{{ route('courses.show', [$course->slug]) }}">{{ $course->title }}</a>
                    </h4>
                    <p>{{ $course->description }}</p>
                </div>
                <div class="ratings">
                    <p align="right">Students: {{ $course->students()->count() }}</p>
                    <!-- <p>
                        @for ($star = 1; $star <= 5; $star++)
                            @if ($course->rating >= $star)
                                <span class="glyphicon glyphicon-star"></span>
                            @else
                                <span class="glyphicon glyphicon-star-empty"></span>
                            @endif
                        @endfor
                    </p> -->
                </div>
            </div>
        </div>
    @endforeach
    </div>

@endsection