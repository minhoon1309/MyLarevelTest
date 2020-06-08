@extends('master')
@section('content')

<!-- Page Title
		============================================= -->
<section id="page-title">

    <div class="container clearfix">
        <h1>Manage Your Department</h1>
        <span>We found {{count($employee)}} employees. </span>  
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Manage Department</a></li>
        </ol>
    </div>

</section><!-- #page-title end -->

<!-- Content
		============================================= -->
<section id="content">

    <!-- <div class="content-wrap"> -->

    <div class="container clearfix">

        <!-- Post Content
					============================================= -->
        <div class="postcontent nobottommargin clearfix">

            <div class="divider"><i class="icon-circle"></i></div>

            <div class="table-responsive">                
                <table class="table table-bordered nobottommargin responsive-utilities">
                    <thead>
                        <tr>
                            <th>
                                Code
                            </th>
                            <th>
                                Full Name
                            </th>
                            <th>
                                Child Department
                            </th>
                            <th>
                                Phone
                            </th>
                            <th>
                                Email
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($employee as $new) 
                        <tr>
                            <td class="success">{{$new->id}}</td>                      
                            <th><code>{{$new->name}}</code></th>                          
                            <td class="active">{{$new->business->name}}</td>
                            <td class="active">{{$new->phone}}</td>
                            <td class="active">{{$new->email}}</td>                      
                        </tr>
                    @endforeach

                    </tbody>
                </table>              
            </div>

            <div class="divider"><i class="icon-circle"></i></div>
        </div><!-- .postcontent end -->

    </div>

</section><!-- #content end -->
@endsection