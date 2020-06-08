@extends('master')
@section('content')

<!-- Page Title
		============================================= -->
<section id="page-title">

    <div class="container clearfix">
        <h1>Manage Your Ticket</h1>
        <span>We found {{count($ticket)}} tickets. </span>  
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Manage Ticket</a></li>
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
                                Ticket Title
                            </th>
                            <th>
                                Ticket Code
                            </th>
                            <th>
                                Department
                            </th>
                            <th>
                                Reply Time
                            </th>
                            <th>
                                Supported By
                            </th>
                            <th>
                                Status
                            </th>
                            <th>
                                Time Create
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($ticket as $new) 
                        <tr>                      
                            <th><code>{{$new->title}}</code></th>
                            <td class="active">({{$new->customer->name}})-{{$new->id}}</td>
                            <td class="active">{{$new->department->name}}</td>
                            <td class="active">{{$new->reply}}</td>
                            <td class="active">{{$new->employee->name}}</td>
                            <td class="active">{{$new->status}}</td>
                            <td class="active">{{$new->created_at}}</td>                        
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