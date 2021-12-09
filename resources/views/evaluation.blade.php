@extends('layouts.home')

@section('mylesson')

<section class="py-4">
    <div class="container">
            <div class="text-center mb-5" style="margin-top: 20px;">
                    <h1 class="fw-bolder">My Evaluation</h1>
            </div>
            <div class="row" style="margin-bottom: 25px;">
            @foreach($purchased_courses as $courses)
            @foreach($courses->publishedLessonsEvaluation as $lesson)
            <div class="col-sm-12 col-lg-4 col-md-4" style="margin-bottom: 20px;">
                <div class="card h-100 shadow border-0">
                    @if ($lesson->lesson_image && File::exists(public_path("uploads/".$lesson->lesson_image)))
                    <img class="card-img-top" src=" {{ asset('uploads/' . $lesson->lesson_image) }}" alt="..."  style="width: 100%; height: 200px;"/>
                    @else 
                    <img class="card-img-top" src=" {{ asset('uploads/no-image.png') }}" alt="..."  style="width: 100%; height: 200px;"/>
                    @endif
                    <div class="card-body p-4 caption" style="margin-bottom: 15px;">
                        <!-- <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div> -->
                        <a class="text-decoration-none link-dark stretched-link" href="{{ route('lessons.show', [$lesson->course_id, $lesson->slug]) }}">
                            <h5 class="card-title mb-3">
                            @if (!is_null($lesson->test['title']) and $lesson->test['published']==1)
                                {{  $lesson->test['title'] }}
                            @else
                                <span style="color: red;">Evaluation not yet available</span>
                            @endif
                            </h5>
                        </a>
                        <p class="card-text mb-0">
                            {{ $lesson->short_text }}                                    
                        </p>
                    </div>
                    <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                        <div class="d-flex align-items-end justify-content-between">
                            <div class="d-flex align-items-center">
                                <!-- <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." /> -->
                                <div class="small">
                                    <table class="table table-sm" style="border: none;">
                                        <tr style="border: none;">
                                            <td style="border: none;"><div class="fw-bold">Course: </div></td>
                                            <td style="border: none;"><div class="text-muted right"> {{ $lesson->course->title }} </div></td>
                                        </tr>
                                        <tr>
                                            <td style="border: none;"><div class="fw-bold">Teacher: </div></td>
                                            <td style="border: none;"><div class="text-muted right"> {{ $lesson->course->teachers()->pluck('name')->first() }} </div></td>
                                        </tr>
                                        <tr>
                                            <td style="border: none;"><div class="fw-bold">All Students: </div></td>
                                            <td style="border: none;"><div class="text-muted right"> {{ $lesson->course->students()->count() }} </div></td>
                                        </tr>
                                    </table>
                                    <!-- <div class="fw-bold">Course: {{ $lesson->course->pluck('title')->first() }}</div>
                                    <div class="fw-bold">Teacher: {{ $lesson->course->teachers()->pluck('name')->first() }}</div>
                                    <div class="text-muted right">All Students: {{ $lesson->course->students()->count() }}</div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        @endforeach

    </div>
</section>

@endsection
