@extends('layouts.home')


@section('mylesson')

<style>
    .embed-responsive .embed-responsive-item{
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 100%;
        border: 0;
    }
    iframe {
      width: 100%;
      height: 46.25vw; /*16:9*/
    }
</style>

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
            <!-- <iframe src="{{$media->getUrl()}}" style="min-height:100vh;width:100%" frameborder="0"></iframe> -->
            <!--<embed type="application/pdf" src="{{$media->getUrl()}}" style="min-height:100vh;width:100%"></embed>-->
            <object data="{{$media->getUrl()}}" type="application/pdf" style="width:100%;height:100vh;">
              <p style="color: red">Your web browser doesn't have a PDF plugin.
              Instead you can <a href="{{$media->getUrl()}}">click here to
              download the PDF file.</a></p>
            </object>
        </p>
        @endforeach
    </div>
    

        @if ($test_exists)
        <hr />
            <h2 class="fw-bolder mb-3"  id="test">{{ $lesson->test->title }}</h2>
            <div class="text-muted fst-italic mb-2">{{ $lesson->test->description }}</div>
            <div class="accordion mb-5">
                <div class="accordion-item">
                    <h3 class="accordion-header" id="headingOne">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        @if (!is_null($test_result))
                        Review Test
                        @else
                        Start Test
                        @endif
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
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active">
                                    <div style="overflow-x:auto;">
                                        <table class="table table-bordered table-striped">
                                            <tbody>
                                                <tr>
                                                    <th>@lang('global.questions-options.fields.question') & @lang('global.questions-options.fields.option-text')</th>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        @foreach ($test->questions as $singleQuestions)
                                                                {{ $loop->iteration }}. {{ $singleQuestions->question }} 
                                                                <div style="padding-left: 15px;">
                                                                    @foreach ($singleQuestions->options->pluck('option_text') as $array)
                                                                        {{ $array }}<br>
                                                                    @endforeach
                                                                    <span style="color: green">Correct Answer:</span> {{ $singleQuestions->correct_answer()->pluck('option_text')->first() }}<br><br>
                                                                </div>
                                                        @endforeach
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>Your Answer</th>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        @foreach ($test_result->answers as $singleOptions)
                                                                {{ $loop->iteration }}. {{ $singleOptions->option->option_text }} {{ Form::checkbox("correct", 1, $singleOptions->option->correct == 1 ? true : false, ["disabled"]) }} <br>
                                                        @endforeach
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
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
                                    <div style="padding-left: 15px;">
                                    <td>@if($question->question_image)<a href="{{ asset('uploads/' . $question->question_image) }}" target="_blank"><img src="{{ asset('uploads/' . $question->question_image) }}" class="img-fluid img-thumbnail"/></a><br />@endif</td>
                                    
                                    @foreach ($question->options as $option)
                                        <input type="radio" name="questions[{{ $question->id }}]" value="{{ $option->id }}" /> {{ $option->option_text }}<br />
                                    @endforeach
                                    <br />
</div>
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
                            <input type="submit" class="btn btn-secondary" value="Add Discussion"/>
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