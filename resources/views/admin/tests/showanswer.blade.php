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
                            <th>Student</th>
                            <td>{{ $testresult->user->name or '' }}</td>
                        </tr>
                        <tr>
                            <th>@lang('global.tests.fields.course')</th>
                            <td>{{ $testresult->test->title</td>
                        </tr>
                        <tr>
                            <th>@lang('global.tests.fields.lesson')</th>
                            <td>{{ $testresult->test_result }}</td>
                        </tr>
                    </table>
                </div>
            </div>



            <p>&nbsp;</p>

            <a href="{{ route('admin.tests.index') }}" class="btn btn-default">@lang('global.app_back_to_list')</a>
        </div>
    </div>
@stop