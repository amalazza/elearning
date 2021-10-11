@extends('layouts.home')

@section('sidebar')
    <p class="lead">{{ $lesson->course->title }}</p>

    <div class="list-group">
        @foreach ($lesson->course->publishedLessons as $list_lesson)
            <a href="{{ route('lessons.show', [$list_lesson->course_id, $list_lesson->slug]) }}" class="list-group-item"
                @if ($list_lesson->id == $lesson->id) style="font-weight: bold" @endif>{{ $loop->iteration }}. {{ $list_lesson->title }}</a>
        @endforeach
    </div>
@endsection

@section('main')

    <h2 style="margin: 10px;">{{ $lesson->title }}</h2>

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
            <h3 style="margin: 10px;">Test: {{ $lesson->test->title }}</h3>
            @if (!is_null($test_result))
                <div class="alert alert-info" style="margin: 10px;">Your test score: {{ $test_result->test_result }}</div>
            @else
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
            @endif
            <hr />
        @endif
    @else
        Please <a href="{{ route('courses.show', [$lesson->course->slug]) }}">go back</a>, because you're not student in this course.
    @endif

    @if ($previous_lesson)
        <p><a href="{{ route('lessons.show', [$previous_lesson->course_id, $previous_lesson->slug]) }}" style="margin: 10px;"><< {{ $previous_lesson->title }}</a></p>
    @endif
    @if ($next_lesson)
        <p><a href="{{ route('lessons.show', [$next_lesson->course_id, $next_lesson->slug]) }}" style="margin: 10px;">{{ $next_lesson->title }} >></a></p>
    @endif

@endsection