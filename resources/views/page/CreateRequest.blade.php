<!-- @extends('master')
@section('content')
<!-- Page Title
		============================================= -->
<section id="page-title">

    <div class="container clearfix">
        <h1>Create Ticket</h1>
        <span>Let us help you</span>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Create ticket</li>
        </ol>
    </div>

</section><!-- #page-title end -->

<!-- Page Sub Menu
		============================================= -->
<div id="page-menu">

    <div id="page-menu-wrap">

        <div class="container clearfix">

            <div class="menu-title">Create <span>Options</span></div>

            <div id="page-submenu-trigger"><i class="icon-reorder"></i></div>

        </div>

    </div>

</div><!-- #page-menu end -->

<!-- Contact Form & Map Overlay Section
		============================================= -->
<section id="map-overlay">

    <div class="container clearfix">

        <!-- Contact Form Overlay
				============================================= -->
        <div id="contact-form-overlay" class="clearfix">

            <div class="fancy-title title-dotted-border">
                <h3>Send us a Ticket</h3>
            </div>

            <div class="contact-widget">

                <div class="contact-form-result"></div>

                <!-- Contact Form
						============================================= -->
                <form action="{{route('createdRequest')}}" class="nobottommargin" id="template-contactform" method="post" enctype="multipart/form-data">

                    <input required type="hidden" name="_token" value="{{csrf_token()}}">
                    <div class="col_half">
                        <label >Your Name <small>*</small></label>                      
                        <!-- <input required type="text" id="name" name="name" value="" class="required" /> -->
                        <input required type="text" id="name" name="name" value="" class="sm-form-control required" />
                    </div>

                    <div class="col_half col_last">
                        <label>Email <small>*</small></label>
                        <input required type="email" id="email" name="email" value="" class="required email sm-form-control" />
                    </div>

                    <div class="clear"></div>

                    <div class="col_half">
                        <label>Phone <small>*</small></label>
                        <input required type="text" id="phone" name="phone" value="" class="sm-form-control required" />
                    </div>

                    <div class="col_half">
                        <label>Ticket Title <small>*</small></label>
                        <input required type="text" id="title" name="title" value="" class="sm-form-control required" />
                    </div>

                    <div class="col_half col_last">
                        <label>Department <small>*</small></label>
                        <select required id="template-contactform-service" name="department" class="sm-form-control required">
                            <option value="">-- Select One --</option>
                            <!-- <option value="1">Technical Department</option>
                            <option value="2">Maintenance Department</option>
                            <option value="3">Service Department</option> -->
                            @foreach($department as $new)
                            <option value="{{$new->id}}"> {{$new->name}} </option>
                            @endforeach
                        </select>
                    </div>

                    <div class="clear"></div>

                    <div class="col_half">
                        <label>Reception Form <small>*</small></label>
                        <input required type="text" id="template-contactform-subject" name="receptionForm" value="" class="required sm-form-control" />
                    </div>

                    <div class="col_half col_last">
                        <label>Upload File</label>
                        <input type="file" id="template-contactform-file" name="template-contactform-file" value="" class="sm-form-control" />
                    </div>

                    <div class="clear"></div>

                    <div class="col_full">
                        <button class="button button-3d nomargin" type="submit" id="" name="" value="submit">Create New Ticket</button>   
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>
</section><!-- Section End -->
@endsection
<!-- @section('javascript')
<script>
    // $('form').submit(function() {
    //     $('form').submit();
    // });

    // $('form').submit(function() {
    //     $.ajax({
    //         url: $('form').attr('action'),
    //         type: 'POST',
    //         data: $('form').serialize(),
    //         success: function() {
    //             console.log('form submitted.');
    //         }
    //     });
    //     $('form').submit();
    //     return false;
    // });
</script>
@endsection -->