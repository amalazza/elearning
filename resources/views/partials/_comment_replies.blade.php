@foreach($comments as $comment)
<!-- Parent comment-->
<div class="flex-shrink-0">
    
    <div class="fw-bold"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." style="border-radius: 50% !important;"/> {{ $comment->user->name }}</div>
</div>
<div class="ms-3 display-comment" style="margin-top: -10px; margin-left: 1rem !important;">
    <p style="margin-bottom: 5px; margin-left: 40px;">{{ $comment->body }}</p>
    <a href="" id="reply"></a>
    @can('lesson_edit')
    <a class="btn btn-xs btn-info" data-toggle="modal" href="#{{$comment->id}}" style="float: left; margin-left: 40px;">@lang('global.app_edit')</a>
    @endcan
    @can('lesson_delete')
    {!! Form::open(array(
        'class' => 'mb-2',
        'style' => 'float: left;',
        'method' => 'DELETE',
        'onsubmit' => "return confirm('".trans("global.app_are_you_sure")."');",
        'route' => ['comment.delete', $comment->id])) !!}
    {!! Form::submit(trans('global.app_delete'), array('class' => 'btn btn-xs btn-danger')) !!}
    {!! Form::close() !!}
    @endcan
    <form method="post" action="{{ route('reply.add') }}" class="mb-2" style="margin-left: 40px;">
        {{ csrf_field() }}
        <div class="form-group mb-1">
            <!-- <input type="text" name="comment_body" class="form-control" /> -->
            <textarea class="form-control" name="comment_body" rows="1" placeholder="Join the discussion"></textarea>
            <input type="hidden" name="lesson_id" value="{{ $lesson_id }}" />
            <input type="hidden" name="comment_id" value="{{ $comment->id }}" />
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-xs btn-secondary" value="Reply" style="float: right;"/>
        </div>
    </form>

    @include('partials._comment_replies', ['comments' => $comment->replies])   
    @include('partials.editcomment', ['comments' => $lesson->comments, 'lesson_id' => $lesson->id]) 
    @include('partials.editreply', ['comments' => $comment->replies]) 
</div>
@endforeach