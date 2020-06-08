@extends('admin_layout')
@section('admin_content')

<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Edit Ticket
            </header>

            <?php
            use Illuminate\Support\Facades\Session;
                $message = Session::get('messageUpdate');
                if($message){
                    echo '<span class="text-alert">'.$message.'</span>';
                    Session::put('messageUpdate',null);
                }
            ?>

            <div class="panel-body">

            @foreach($edit_ticket as $key => $edit_value)

                <div class="position-center">
                    <form role="form" action="{{URL::to('/update-ticket/'.$edit_value->id)}}" method="post">
                    {{ csrf_field() }}
                        <div class="form-group">
                            <label for="exampleInputEmail1">Customer's Name</label>
                            <input type="text" value="{{ $edit_value->username }}" class="form-control" name="name">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Phone</label>
                            <input type="phone" value="{{ $edit_value->user_phone }}" class="form-control" name="phone" >
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Ticket title</label>
                            <input type="text" value="{{ $edit_value->title }}" class="form-control" name="title" >
                        </div>

                        <div class="form-group">
                            <label for="">Department</label>
                            <select name="department_name" class="form-control input-sm m-bot15">
                                <option value="{{ $edit_value->department_name }}"> {{ $edit_value->department_name }} </option>
                                <option value="Technical Department">Technical Department</option>
                                <option value="Maintenance Department">Maintenance Department</option>
                                <option value="Service Department">Service Department</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Reception Form</label>
                            <input type="text" value="{{ $edit_value->reception_form }}" class="form-control" name="reception_form" >
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Status</label>
                            <input type="text" value="{{ $edit_value->status }}" class="form-control" name="status" >
                        </div>

                        <button name="update_ticket" type="submit" class="btn btn-info">Update</button>
                    </form>
                </div>
                @endforeach
            </div>
        </section>
    </div>
</div>

@endsection