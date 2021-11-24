@foreach ($comments as $comment)

<div class="container">
  
      <div class="modal fade" id="{{$comment->id}}" role="dialog">
        <div class="modal-dialog">

          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>

            </div>
            <div class="modal-body">
                <div class="comment-edit">
                    <div class="comment-edit-block">
                        

                        <form action="{{ route('comment.update', $comment->id) }}" method="POST">
                        <!-- @csrf
                        @method('PUT') -->
                        {{ csrf_field() }}
                        {{ method_field('PUT') }}
                          <div class="form-group">
                            <textarea  name="body" class="form-control" value="{{ $comment->body }}">{{ $comment->body }}</textarea>
                        
                          </div>
                          <div class="modal-footer">
                            <button type="submit" class="btn btn-primary" style="float: right;">Update</button>
                          </div>


                        </form>

             
                    </div> 
                    </div>
                    </div>

            </div>
          </div>

        </div>
      
      </div>          
    
                    @endforeach