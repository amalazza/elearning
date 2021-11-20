<?php

namespace App\Http\Controllers;

use App\Lesson;
use App\Question;
use App\QuestionsOption;
use App\Test;
use App\TestsResult;
use Illuminate\Http\Request;


use PhpOffice\PhpPresentation\PhpPresentation;
use PhpOffice\PhpPresentation\IOFactory;
use PhpOffice\PhpPresentation\Style\Color;
use PhpOffice\PhpPresentation\Style\Alignment;

use NcJoes\OfficeConverter\OfficeConverter;

class LessonsController extends Controller
{

    public function show($course_id, $lesson_slug)
    {
        $lesson = Lesson::where('slug', $lesson_slug)->where('course_id', $course_id)->firstOrFail();

        if (\Auth::check())
        {
            if ($lesson->students()->where('id', \Auth::id())->count() == 0) {
                $lesson->students()->attach(\Auth::id());
            }
        }

        $test = NULL;
        if ($lesson->test) {
            $test = Test::findOrFail($lesson->test->id);
        }
        

        $test_result = NULL;
        if ($lesson->test) {
            $test_result = TestsResult::where('test_id', $lesson->test->id)
                ->where('user_id', \Auth::id())
                ->first();
        }

        $previous_lesson = Lesson::where('course_id', $lesson->course_id)
            ->where('position', '<', $lesson->position)
            ->orderBy('position', 'desc')
            ->first();
        $next_lesson = Lesson::where('course_id', $lesson->course_id)
            ->where('position', '>', $lesson->position)
            ->orderBy('position', 'asc')
            ->first();

        $purchased_course = $lesson->course->students()->where('user_id', \Auth::id())->count() > 0;
        $test_exists = FALSE;
        if ($lesson->test && $lesson->test->questions->count() > 0) {
            $test_exists = TRUE;
        }

        // $objPHPPowerPoint = new PhpPresentation();
        // $oWriterPPTX = IOFactory::createWriter($objPHPPowerPoint, 'PowerPoint2007');
        // return $oWriterPPTX->save(__DIR__ . "/sample.pptx");
        // foreach($lesson->getMedia('downloadable_files') as $media) {
        //     $oReader = IOFactory::createReader('PowerPoint2007');
        //     // $oReader->load(asset('uploads/' . $media->id. '/' .$media->file_name));
            

        // }

        // $converter = new OfficeConverter(__DIR__ . '/sample.pptx');
        // $converter->convertTo(__DIR__ . 'output-file.pdf'); //generates pdf file in same directory as test-file.docx
        // $converter->convertTo(__DIR__ . 'output-file.html'); //generates html file in same directory as test-file.docx

        // //to specify output directory, specify it as the second argument to the constructor
        // $converter = new OfficeConverter(__DIR__ . '/sample.pptx', __DIR__ . '/output-file.pdf');

        $oreader = IOFactory::createReader('PowerPoint2007');
        // $oreader->load(__DIR__ . '/sample.pptx');


        return view('lesson', compact('lesson', 'previous_lesson', 'next_lesson', 'test', 'test_result',
            'purchased_course', 'test_exists', 'oreader'));
    }

    public function test($lesson_slug, Request $request)
    {
        $lesson = Lesson::where('slug', $lesson_slug)->firstOrFail();
        $answers = [];
        $test_score = 0;
        foreach ($request->get('questions') as $question_id => $answer_id) {
            $question = Question::find($question_id);
            $correct = QuestionsOption::where('question_id', $question_id)
                ->where('id', $answer_id)
                ->where('correct', 1)->count() > 0;
            $answers[] = [
                'question_id' => $question_id,
                'option_id' => $answer_id,
                'correct' => $correct
            ];
            if ($correct) {
                $test_score += $question->score;
            }
            /*
             * Save the answer
             * Check if it is correct and then add points
             * Save all test result and show the points
             */
        }
        $test_result = TestsResult::create([
            'test_id' => $lesson->test->id,
            'user_id' => \Auth::id(),
            'test_result' => $test_score
        ]);
        $test_result->answers()->createMany($answers);

        return redirect()->route('lessons.show', [$lesson->course_id, $lesson_slug])->with('message', 'Test score: ' . $test_score);
    }

}
