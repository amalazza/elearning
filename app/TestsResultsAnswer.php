<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TestsResultsAnswer extends Model
{

    protected $fillable = ['tests_result_id', 'question_id', 'option_id', 'correct'];

    public function testresult()
    {
        return $this->belongsTo(\App\TestsResult::class, 'tests_result_id ');
    }

    public function question()
    {
        return $this->belongsTo(\App\Question::class, 'question_id ');
    }

    public function option()
    {
        return $this->belongsTo(\App\QuestionsOption::class);
    }

}
