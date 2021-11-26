@extends('layouts.home')

@section('mylesson')
<section class="py-1">
<div class="container">


    <!-- <h3 style="margin-bottom: 10px;">All courses</h3> -->
    <div class="text-center mb-5" style="margin-top: 20px;">
            <h1 class="fw-bolder">All Evaluation</h1>
            <!-- <p class="lead fw-normal text-muted mb-0">How can we help you?</p> -->
    </div>
    <div class="row" style="margin-bottom: 25px;">

        @foreach($evaluation as $course)
            <div class="col-sm-12 col-lg-4 col-md-4" style="margin-bottom: 20px;">
                <div class="card h-100 shadow border-0">
                    @if ($course->lesson_image && File::exists(public_path("uploads/".$course->lesson_image)))
                    <img class="card-img-top" src=" {{ asset('uploads/' . $course->lesson_image) }}" alt="..."  style="width: 100%; height: 200px;"/>
                    @else 
                    <img class="card-img-top" src=" {{ asset('uploads/no-image.png') }}" alt="..."  style="width: 100%; height: 200px;"/>
                    @endif
                    <div class="card-body p-4 caption" style="margin-bottom: 15px;">
                        <!-- <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div> -->
                        <a class="text-decoration-none link-dark stretched-link" href="{{ route('lessons.show', [$course->slug]) }}"><h5 class="card-title mb-3">{{ $course->title }}</h5></a>
                        <p class="card-text mb-0">
                            {{ $course->short_text }}                                    
                        </p>
                    </div>
                    <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                        <div class="d-flex align-items-end justify-content-between">
                            <div class="d-flex align-items-center">
                                <!-- <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." /> -->
                                <div class="small">
                                    <div class="fw-bold">Teacher: {{ $course->teachers()->pluck('name')->first() }}</div>
                                    <div class="text-muted right">All Students: {{ $course->students()->count() }}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
</section>
@endsection


