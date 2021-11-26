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
                <a href="#test" class="list-group-item">
                {{ $lesson->test->title }}
                </a>
            </div>
        </div>
    @endif
    <br>
    <!-- FORUM -->
    @if ($lesson->is_forum_active == 1)
        <div class="container">
            <p class="lead">Forum</p>

            <div class="list-group">
                <a href="#forum" class="list-group-item">
                Diskusi
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
        

    @if ($purchased_course || $lesson->free_lesson == 1)
      
    <div class="list-group" style="margin: 10px;">        
        {!! $lesson->full_text !!}
    </div>
    <div class="list-group">
        @foreach($lesson->getMedia('downloadable_files') as $media)
        <p class="form-group" style="margin: 10px;">
            <embed type="application/pdf" src="{{$media->getUrl()}}" width="100%" height="500"></embed>
        </p>
        @endforeach
    </div>
    

        @if ($test_exists)
        <hr />
            <h2 class="fw-bolder mb-3"  id="test">Test</h2>
            <div class="accordion mb-5">
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
                            <hr>
                            <p>
                                Review test:
                                <br>        
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active">
                                        <table class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>@lang('global.questions-options.fields.question') & @lang('global.questions-options.fields.option-text')</th>
                                                    <th>Answer</th>
                                                    <th>@lang('global.questions-options.fields.correct')</th>
                                                    <th>Test Result</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        @foreach ($test->questions as $singleQuestions)
                                                            {{ $loop->iteration }}. {{ $singleQuestions->question }} 
                                                            {!! Form::select($singleQuestions->options->pluck('option_text'), $singleQuestions->options->pluck('option_text'), null, ['style' => 'height: 110px; overflow: auto;', 'class' => 'form-control', 'multiple' => 'multiple', 'selected disabled']) !!}
                                                        @endforeach
                                                    </td>
                                                    <td>
                                                        @foreach ($test_result->answers as $singleOptions)
                                                                {{ $loop->iteration }}. {{ $singleOptions->option->option_text }} <br>
                                                        @endforeach
                                                    </td>
                                                    <td>
                                                        @foreach ($test->questions as $singleOptions)
                                                        {{ $loop->iteration }}. {{ $singleOptions->correct_answer()->pluck('option_text')->first() }} <br>
                                                        @endforeach
                                                    </td>
                                                    <td>
                                                        @foreach ($test_result->answers as $singleOptions)
                                                        {{ $loop->iteration }}. {{ Form::checkbox("correct", 1, $singleOptions->option->correct == 1 ? true : false, ["disabled"]) }} <br>
                                                        @endforeach
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
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
                                    <td>@if($question->question_image)<a href="{{ asset('uploads/' . $question->question_image) }}" target="_blank"><img src="{{ asset('uploads/' . $question->question_image) }}" style="width: 100px; height: 100px;"/></a>@endif</td>
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

        <style>
            .display-comment .display-comment {
                margin-left: 40px
            }
        </style>

        @if ($lesson->is_forum_active == 1)
        <hr />
            <h2 class="fw-bolder mb-3"  id="forum">Forum</h2>
            <div class="card bg-light">
                <div class="card-body">
                    <!-- Comment form-->
                    <form method="post" action="{{ route('comment.add') }}" class="mb-2">
                        <!-- @csrf -->
                        {{ csrf_field() }}
                        <div class="form-group mb-1">
                            <textarea class="form-control" name="comment_body" rows="3" placeholder="Add discussion"></textarea>
                            <input type="hidden" name="lesson_id" value="{{ $lesson->id }}" />
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-primary" value="Add Discussion" style="float: right;"/>
                        </div>
                    </form>
                    <!-- Comment with nested comments-->
                    <div class="card-body">
                        @include('partials._comment_replies', ['comments' => $lesson->comments, 'lesson_id' => $lesson->id])
                    </div>
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