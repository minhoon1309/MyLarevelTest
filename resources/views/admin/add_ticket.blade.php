@extends('admin_layout')
@section('admin_content')

<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Add Ticket
            </header>

            <?php
            use Illuminate\Support\Facades\Session;
                $message = Session::get('messageAdd');
                if($message){
                    echo '<span class="text-alert">'.$message.'</span>';
                    Session::put('messageAdd',null);
                }
            ?>

            <div class="panel-body">
                <div class="position-center">
                    <form role="form" action="{{URL::to('/save-ticket')}}" method="post">
                    {{ csrf_field() }}
                        <div class="form-group">
                            <label for="exampleInputEmail1">Username</label>
                            <input type="text" class="form-control" name="name">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Phone</label>
                            <input type="phone" class="form-control" name="phone" >
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Ticket title</label>
                            <input type="text" class="form-control" name="title" >
                        </div>

                        <div class="form-group">
                            <label for="">Department</label>
                            <select name="department_name" class="form-control input-sm m-bot15">
                                <option value="">-- Select One --</option>
                                <!-- <option value="1">Technical Department</option>
                                <option value="2">Maintenance Department</option>
                                <option value="3">Service Department</option> -->
                                @foreach($department as $new)
                                <option value="{{$new->name}}"> {{$new->name}} </option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Reception Form</label>
                            <input type="text" class="form-control" name="reception_form" placeholder="">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Status</label>
                            <input type="text" class="form-control" name="status" placeholder="">
                        </div>
                        <button name="add_ticket" type="submit" class="btn btn-info">Add</button>
                    </form>
                </div>
            </div>
        </section>
    </div>
</div>

@endsection