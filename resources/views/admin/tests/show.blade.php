@extends('layouts.app')

@section('content')
    <h3 class="page-title">@lang('global.tests.title')</h3>

    <div class="panel panel-default">
        <div class="panel-heading">
            @lang('global.app_view')
        </div>

        <div class="panel-body">
            <div class="row">
                <div class="col-md-6">
                    <table class="table table-bordered table-striped">
                        <tr>
                            <th>@lang('global.tests.fields.course')</th>
                            <td>{{ $test->course->title or '' }}</td>
                        </tr>
                        <tr>
                            <th>@lang('global.tests.fields.lesson')</th>
                            <td>{{ $test->lesson->title or '' }}</td>
                        </tr>
                        <tr>
                            <th>@lang('global.tests.fields.title')</th>
                            <td>{{ $test->title }}</td>
                        </tr>
                        <tr>
                            <th>@lang('global.tests.fields.description')</th>
                            <td>{!! $test->description !!}</td>
                        </tr>
                        <tr>
                            <th>@lang('global.tests.fields.questions')</th>
                            <td>
                                @foreach ($test->questions as $singleQuestions)
                                    <span class="label label-info label-many">{{ $singleQuestions->question }}</span>
                                @endforeach
                            </td>
                        </tr>
                        <tr>
                            <th>@lang('global.tests.fields.published')</th>
                            <td>{{ Form::checkbox("published", 1, $test->published == 1 ? true : false, ["disabled"]) }}</td>
                        </tr>
                    </table>
                </div>
            </div>

            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#testresult" aria-controls="testresult" role="tab" data-toggle="tab">Test Result</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="testresult">
                    <table class="table table-bordered table-striped {{ count($testresult) > 0 ? 'datatable' : '' }}">
                        <thead>
                            <tr>
                                <th>Test</th>
                                <th>Student</th>
                                <th>Test Result</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if (count($testresult) > 0)
                                @foreach ($testresult as $testresult)
                                    <tr data-entry-id="{{ $testresult->id }}">
                                        <td>{{ $testresult->test->title or '' }}</td>
                                        <td>{{ $testresult->user->name or '' }}</td>
                                        <td>{{ $testresult->test_result }}</td>
                                    </tr>
                                @endforeach
                            @else
                                <tr>
                                    <td colspan="7">@lang('global.app_no_entries_in_table')</td>
                                </tr>
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>

            <p>&nbsp;</p>

            <a href="{{ route('admin.tests.index') }}" class="btn btn-default">@lang('global.app_back_to_list')</a>
        </div>
    </div>
@stop