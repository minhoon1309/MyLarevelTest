@extends('master')
@section('content')
		<!-- Page Title
		============================================= -->
		<section id="page-title">

			<div class="container clearfix">
				<h1>Support Services</h1>
			</div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

					<section class="section pricing-section header-stick dark nomargin" style="background-color: #333;">

						<div class="container clearfix">
							<!-- <h2 class="pricing-section--title center">Sonam</h2> -->
							<div class="pricing pricing--sonam">
								<div class="pricing--item">
									<h3 class="pricing--title">Create Ticket</h3>									
									<p class="pricing--sentence">For Customers</p>
									<button class="pricing--action"><a href="{{url('create-request')}}">Choose</a></button>
								</div>
								<div class="pricing--item">
									<h3 class="pricing--title">Manage Your Ticket</h3>
									<p class="pricing--sentence">For Customers</p>
									<button class="pricing--action"><a href={{url('manage-request')}}>Choose</a></button>
								</div>
								<div class="pricing--item">
									<h3 class="pricing--title">Manage Department</h3>
									<p class="pricing--sentence">For Staff</p>
									<button class="pricing--action"><a href={{url('manage-department')}}>Choose</a></button>
								</div>
							</div>
						</div>
					</section>					
				</div>

			</div>

        </section><!-- #content end -->
        
@endsection