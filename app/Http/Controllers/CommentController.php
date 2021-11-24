<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Comment;
use App\Lesson;

class CommentController extends Controller
{
    public function store(Request $request)
    {
        $comment = new Comment;
        $comment->body = $request->get('comment_body');
        $comment->user()->associate($request->user());
        $lesson = Lesson::find($request->get('lesson_id'));
        $lesson->comments()->save($comment);

        return back();
    }

    public function replyStore(Request $request)
    {
        $reply = new Comment();
        $reply->body = $request->get('comment_body');
        $reply->user()->associate($request->user());
        $reply->parent_id = $request->get('comment_id');
        $lesson = Lesson::find($request->get('lesson_id'));

        $lesson->comments()->save($reply);

        return back();

    }

    public function edit( $id)
    {
       
       
        $comment=Comment::findOrFail($id);
   
        return view('comment.edit', compact('comment'));
        
    }

    public function update( Request $request, Comment $comment)
    {   
        
     
        $comment=Comment::findOrFail($comment->id);
        $comment->body = $request->body;

      

        $comment->save();

        
        return back()->with(['status' => 'success', 'message' => 'Comment updated successfully.']);
    
    }
    public function delete($id)
    {   
        $comment = Comment::findOrFail($id);
        $comment->delete();
       
        return back()->with(['status' => 'success', 'message' => 'Comment deleted successfully.']);
    
    }

}
