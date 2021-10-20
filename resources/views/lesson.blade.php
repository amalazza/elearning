@extends('layouts.home')

@section('sidebar')
<section class="py-5">
    <!-- LIST LESSON -->
    <div class="container">
        <p class="lead">{{ $lesson->course->title }}</p>

        <div class="list-group">
            @foreach ($lesson->course->publishedLessons as $list_lesson)
                <a href="{{ route('lessons.show', [$list_lesson->course_id, $list_lesson->slug]) }}" class="list-group-item"
                    @if ($list_lesson->id == $lesson->id) style="font-weight: bold" @endif>{{ $loop->iteration }}. {{ $list_lesson->title }}</a>
            @endforeach
        </div>
    </div>
    <br>
    <!-- LIST TEST -->
    @if ($test_exists)
        <div class="container">
            <p class="lead">Test</p>

            <div class="list-group">
                <a href="#accordionExample" class="list-group-item">
                {{ $lesson->test->title }}
                </a>
            </div>
        </div>
    @endif
</section>
@endsection

@section('main')
<section class="py-5">
    <div class="container">

    <div class="text-left">
        <h1 class="fw-bolder mb-1">{{ $lesson->title }}</h1>
        <div class="text-muted fst-italic mb-2">{{ $lesson->updated_at }}</div>
        <hr/>
    </div>

    

    <div class="list-group">
        <!-- @lang('global.lessons.fields.downloadable-files') -->
        @foreach($lesson->getMedia('downloadable_files') as $media)
        <p class="form-group" style="margin: 10px;">
            <!-- <a href="{{ asset('uploads/1/a.ppt') }}" target="_blank">aaa{{ $media->name }} ({{ $media->size }} KB)</a> -->
            <!-- <iframe
                src="{{ asset('uploads/1/a.pdf') }}"
                frameBorder="0"
                scrolling="auto"
                height="100%"
                width="100%">
            </iframe> -->
            <embed type="application/pdf" src="{{$media->getUrl()}}" width="100%" height="500px"></embed>
            <!-- <object data="{{ asset('uploads/1/a.pdf') }}" width="600" height="400"></object>     -->
        </p>
        @endforeach
    </div>

                    

    @if ($purchased_course || $lesson->free_lesson == 1)
      
    <div class="list-group" style="margin: 10px;">        
        {!! $lesson->full_text !!}
    </div>
    

        @if ($test_exists)
        <hr />
            <h2 class="fw-bolder mb-3">Test</h2>
            <div class="accordion mb-5" id="accordionExample">
                <div class="accordion-item">
                    <h3 class="accordion-header" id="headingOne">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        {{ $lesson->test->title }}
                        </button>
                    </h3>
                    @if (!is_null($test_result))
                    <div class="accordion-collapse collapse" id="collapseOne" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <p>
                                Your test score: {{ $test_result->test_result }}
                            </p>
                        </div>
                    </div>
                    @else
                    <div class="accordion-collapse collapse" id="collapseOne" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <form action="{{ route('lessons.test', [$lesson->slug]) }}" method="post" style="margin: 10px;">
                                {{ csrf_field() }}
                                @foreach ($lesson->test->questions as $question)
                                    <b>{{ $loop->iteration }}. {{ $question->question }}</b>
                                    <br />
                                    @foreach ($question->options as $option)
                                        <input type="radio" name="questions[{{ $question->id }}]" value="{{ $option->id }}" /> {{ $option->option_text }}<br />
                                    @endforeach
                                    <br />
                                @endforeach
                                <input type="submit" value=" Submit results " />
                            </form>
                        </div>
                    </div>
                    @endif
                </div>
            </div>  

        @endif


    @else
        Please <a href="{{ route('courses.show', [$lesson->course->slug]) }}">go back</a>, because you're not student in this course.
    @endif
    <hr />
    <center>
    @if ($previous_lesson)
        <p><a href="{{ route('lessons.show', [$previous_lesson->course_id, $previous_lesson->slug]) }}" style="margin: 10px;"><< {{ $previous_lesson->title }}</a></p>
    @endif
    @if ($next_lesson)
        <p><a href="{{ route('lessons.show', [$next_lesson->course_id, $next_lesson->slug]) }}" style="margin: 10px;">{{ $next_lesson->title }} >></a></p>
    @endif
    </center>
    </div>
</section>
@endsection