@extends('layouts.home')

@section('mylesson')

<!-- Page Content-->
<section class="py-2">
    <div class="container">
        <div class="text-center mb-5">
            <h1 class="fw-bolder">{{ $course->title }}</h1>
            <p class="lead fw-normal text-muted mb-0">{{ $course->description }}</p>
        </div>
        <div class="row gx-5">
            <div class="col-xl-12">
                
                @if (\Auth::check())
                    @if ($course->students()->where('user_id', \Auth::id())->count() == 0)
                    <p style="color: red; text-align: center;"> Sorry, you're not student in this course
                    @endif
                @else
                @endif

                @if ($course->students()->where('user_id', \Auth::id())->count() == 0)

                @else
                    @foreach ($course->publishedLessons as $lesson)
                        <div class="accordion mb-2">
                            <div class="accordion-item">
                                <h3 class="accordion-header" >
                                    <a href="{{ route('lessons.show', [$lesson->course_id, $lesson->slug]) }}" class="accordion-button" style="text-decoration: none;"> @if ($lesson->free_lesson)@endif {{ $loop->iteration }}. {{ $lesson->title }}</a>
                                </h3>
                                <div class="accordion-collapse collapse show">
                                    <div class="accordion-body">
                                        <p>{{ $lesson->short_text }}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
            
                    @endforeach
                @endif
            </div>
        </div>
    </div>
</section>
@endsection
