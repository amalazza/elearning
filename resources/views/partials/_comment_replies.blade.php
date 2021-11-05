@foreach($comments as $comment)
<!-- Parent comment-->
<div class="flex-shrink-0">
    
    <div class="fw-bold"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /> {{ $comment->user->name }}</div>
</div>
<div class="ms-3 display-comment">
    
    <p style="margin-bottom: 5px;">{{ $comment->body }}</p>
    <a href="" id="reply"></a>
    <form method="post" action="{{ route('reply.add') }}" class="mb-2">
        {{ csrf_field() }}
        <div class="form-group mb-1">
            <!-- <input type="text" name="comment_body" class="form-control" /> -->
            <textarea class="form-control" name="comment_body" rows="1" placeholder="Join the discussion"></textarea>
            <input type="hidden" name="lesson_id" value="{{ $lesson_id }}" />
            <input type="hidden" name="comment_id" value="{{ $comment->id }}" />
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-primary" value="Reply" style="float: right;"/>
        </div>
    </form>
    @include('partials._comment_replies', ['comments' => $comment->replies])
</div>
@endforeach