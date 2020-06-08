<!DOCTYPE html>

<head>
    <title>Admin | Registration </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- bootstrap-css -->
    <link rel="stylesheet" href="source2/css/bootstrap.min.css">
    <!-- //bootstrap-css -->
    <!-- Custom CSS -->
    <link href="source2/css/style.css" rel='stylesheet' type='text/css' />
    <link href="source2/css/style-responsive.css" rel="stylesheet" />
    <!-- font CSS -->
    <link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="css/font.css" type="text/css" />
    <link href="source2/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <script src="source2/js/jquery2.0.3.min.js"></script>
</head>

<body>
    <div class="reg-w3">
        <div class="w3layouts-main">

            <h2>Register Now</h2>

            @if(count($errors)>0)
            <div class="alert alert-danger">
                @foreach($errors->all() as $err)
                {{$err}}
                @endforeach
            </div>
            @endif

             <?php

                use Illuminate\Support\Facades\Session;

                    $message = Session::get('success');
                     if ($message) {
                        echo '<div class="text-alert">' . $message . '</div>';
                       Session::put('success', null);
                    }
            ?>
            
            <form role="form" action="{{URL::to('/save-register')}}" method="post">

                <input type="hidden" name="_token" value="{{csrf_token()}}">

                <input type="text" class="ggg" name="Name" placeholder="NAME" required="">
                <input type="email" class="ggg" name="Email" placeholder="E-MAIL" required="">
                <input type="text" class="ggg" name="Phone" placeholder="PHONE" required="">
                <input type="password" class="ggg" name="Password" placeholder="PASSWORD" required="">
                <div class="clearfix"></div>
                <button name="register" type="submit" class="btn btn-info">Register</button>
            </form>
            <p>Already Registered.<a href="{{URL::to('/admin')}}">Login</a></p>
        </div>
    </div>
    <script src="source2/js/bootstrap.js"></script>
    <script src="source2/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="source2/js/scripts.js"></script>
    <script src="source2/js/jquery.slimscroll.js"></script>
    <script src="source2/js/jquery.nicescroll.js"></script>

    <script src="source2/js/jquery.scrollTo.js"></script>
</body>

</html>