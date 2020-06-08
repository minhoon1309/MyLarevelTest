@extends('admin_layout')
@section('admin_content')

<div class="table-agile-info">
    <div class="panel panel-default">
        <div class="panel-heading">
            List Out Ticket
        </div>
        <div class="table-responsive">
            <table class="table table-striped b-t b-light">
                <thead>
                    <tr>
                        <th style="width:20px;">
                        </th>
                        <th>Ticket Title</th>
                        <th>Customer Name</th>
                        <th>Department</th>
                        <th>Date Create</th>
                        <th>Date Update</th>
                        <th style="width:30px;"></th>
                    </tr>
                </thead>
                <tbody>

                    @foreach($all_ticket as $key => $new)

                    <tr>
                        <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
                        <td> {{ $new->title }} </td>
                        <td> {{ $new->username }} </td>
                        <td> {{ $new->department_name }} </td>
                        <td> {{ $new->created_at }} </td>
                        <td> {{ $new->updated_at }} </td>
                        <td>
                            <a href="{{URL::to('/edit-ticket/'.$new->id)}}" class="active" ui-toggle-class="">
                                <i class="fa fa-pencil-square-o text-success text-active"></i></a>

                            <a onclick="return confirm('Are you sure to delete')" href="{{URL::to('/delete-ticket/'.$new->id)}}" class="active" ui-toggle-class="">
                                <i class="fa fa-times text-danger text"></i></a>
                        </td>
                    </tr>

                    @endforeach

                </tbody>
            </table>
        </div>
        <footer class="panel-footer">
            <div class="row">
                <div class="col-sm-7 text-right text-center-xs">
                    <ul class="pagination pagination-sm m-t-none m-b-none">
                        <li><a href=""><i class="fa fa-chevron-left"></i></a></li>
                        <li><a href="">1</a></li>
                        <li><a href="">2</a></li>
                        <li><a href="">3</a></li>
                        <li><a href="">4</a></li>
                        <li><a href=""><i class="fa fa-chevron-right"></i></a></li>
                    </ul>
                </div>
            </div>
        </footer>
    </div>
</div>

@endsection