<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Travel with Jattra</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

 

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Date Picker -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
	<!-- CS Select -->
	<link rel="stylesheet" href="css/cs-select.css">
	<link rel="stylesheet" href="css/cs-skin-border.css">
	
	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="fh5co-wrapper">
		<div id="fh5co-page">

		<header id="fh5co-header-section" class="sticky-banner">
			<div class="container">
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
					<a href="Default.aspx"><img src="images/logo.png" height="120" width="200" /></i></a>
					<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li class="active"><a href="Default.aspx">Home</a></li>
							<li>
								<a href="vacation.html" class="fh5co-sub-ddown">Places</a>
								
							</li>
							<li><a href="Review.aspx">Review</a>
									<%--<ul class="fh5co-sub-menu">
									<li><a href="#">Single-Day Tour</a></li>
									<li><a href="#">Many-Day Tour</a></li>
									<li><a href="#">Family Tour</a></li>
									<li><a href="#">Group Tour</a></li>
									
								</ul>--%>
							</li>
							<li><a href="postReview.aspx">Post Review</a></li>
							<li><a href="contact.aspx">Tour Guide</a></li>
							<li><a href="contact.aspx">Product</a></li>
							<li><a href="contact.aspx">Contact</a></li>
							<%--<li><a href="Signup.aspx"><i class="glyphicon glyphicon-user" style="padding-top: -11px;padding-left: 10px"></i></a></li>--%>
                            <%--<li><asp:Label ID="lblUser" runat="server" Text="Name" style="padding-top: -11px;padding-left: 10px"></asp:Label></li>--%>
                            <li id="vUserName" runat="server"></li>
						</ul>
					</nav>

				</div>
			</div>
		</header>

		<!-- end:header-top -->
	
		<div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover"  style="background-image: url(images/baner1.jpg); background-position: -1400px -71.85px; background-color: #FFF">
				<div class="desc">
					<div class="container">
						<div class="row">
							<div class="col-sm-5 col-md-5">
								<div class="tabulation animate-box">

								  <!-- Nav tabs -->
								   <ul class="nav nav-tabs" role="tablist">
								      <li role="presentation" class="active">
								      	<a href="#packages" aria-controls="packages" role="tab" data-toggle="tab">Tour Plan</a>
								      </li>
								      <li role="presentation">
								    	   <a href="#flights" aria-controls="flights" role="tab" data-toggle="tab">Transport</a>
								      </li>
								      <li role="presentation">
								    	   <a href="#hotels" aria-controls="hotels" role="tab" data-toggle="tab">Residence</a>
								      </li>
								   </ul>

								   <!-- Tab panes -->
									<div class="tab-content">
									 <div role="tabpanel" class="tab-pane active" id="packages">
									 	<div class="row">
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="from">City:</label>
                                                    <asp:DropDownList ID="txtFrom" runat="server" class="form-control">
                                                        <asp:ListItem Enabled="true" Text="city" Value="-1"></asp:ListItem>
                                                        <asp:ListItem Text="BARISAL" Value="BARISAL"></asp:ListItem>
                                                        <asp:ListItem Text="BHOLA" Value="BHOLA"></asp:ListItem>
                                                        <asp:ListItem Text="JHALOKATI" Value="JHALOKATIL"></asp:ListItem>
                                                        <asp:ListItem Text="PATUAKHALI" Value="PATUAKHALI"></asp:ListItem>
                                                        <asp:ListItem Text="PIROJPUR " Value="PIROJPUR "></asp:ListItem>
                                                        <asp:ListItem Text="BANDARBAN" Value="BANDARBAN"></asp:ListItem>
                                                        <asp:ListItem Text="BRAHMANBARIA" Value="BRAHMANBARIA"></asp:ListItem>
                                                        <asp:ListItem Text="BARISAL" Value="BARISAL"></asp:ListItem>
                                                        <asp:ListItem Text="CHANDPUR" Value="CHANDPUR"></asp:ListItem>
                                                        <asp:ListItem Text="CHITTAGONG" Value="CHITTAGONG"></asp:ListItem>
                                                        <asp:ListItem Text="COMILLA" Value="COMILLA"></asp:ListItem>
                                                        <asp:ListItem Text="COXS BAZAR" Value="COX'S BAZAR"></asp:ListItem>
                                                        <asp:ListItem Text="FENI" Value="FENI"></asp:ListItem>
                                                        <asp:ListItem Text="KHAGRACHHARI" Value="KHAGRACHHARI"></asp:ListItem>
                                                        <asp:ListItem Text="LAKSHMIPUR" Value="LAKSHMIPUR"></asp:ListItem>
                                                        <asp:ListItem Text="NOAKHALI" Value="NOAKHALI"></asp:ListItem>
                                                        <asp:ListItem Text="RANGAMATI " Value="RANGAMATI "></asp:ListItem>
                                                        <asp:ListItem Text="DHAKA" Value="DHAKA"></asp:ListItem>
                                                        <asp:ListItem Text="FARIDPUR" Value="FARIDPUR"></asp:ListItem>
                                                        <asp:ListItem Text="GAZIPUR" Value="GAZIPUR"></asp:ListItem>
                                                        <asp:ListItem Text="GOPALGANJ" Value="GOPALGANJ"></asp:ListItem>
                                                        <asp:ListItem Text="JAMALPUR" Value="JAMALPUR"></asp:ListItem>
                                                        <asp:ListItem Text="KISHOREGONJ" Value="KISHOREGONJ"></asp:ListItem>
                                                        <asp:ListItem Text="MADARIPUR" Value="MADARIPUR"></asp:ListItem>
                                                        <asp:ListItem Text="MANIKGANJ" Value="MANIKGANJ"></asp:ListItem>
                                                        <asp:ListItem Text="MUNSHIGANJ" Value="MUNSHIGANJ"></asp:ListItem>
                                                        <asp:ListItem Text="MYMENSINGH" Value="MYMENSINGH"></asp:ListItem>
                                                        <asp:ListItem Text="NARAYANGANJ" Value="NARAYANGANJ"></asp:ListItem>
                                                        <asp:ListItem Text="NARSINGDI" Value="NARSINGDI"></asp:ListItem>
                                                        <asp:ListItem Text="NETRAKONA" Value="NETRAKONA"></asp:ListItem>
                                                        <asp:ListItem Text="SHARIATPUR" Value="SHARIATPUR"></asp:ListItem>
                                                        <asp:ListItem Text="SHERPUR" Value="SHERPUR"></asp:ListItem>
                                                        <asp:ListItem Text="TANGAIL" Value="TANGAIL"></asp:ListItem>
                                                        <asp:ListItem Text="BAGERHAT" Value="BAGERHAT"></asp:ListItem>
                                                        <asp:ListItem Text="CHUADANGA" Value="CHUADANGA"></asp:ListItem>
                                                        <asp:ListItem Text="JESSORE" Value="JESSORE"></asp:ListItem>
                                                        <asp:ListItem Text="JHENAIDAH" Value="JHENAIDAH"></asp:ListItem>
                                                        <asp:ListItem Text="KHULNA" Value="KHULNA"></asp:ListItem>
                                                        <asp:ListItem Text="KUSHTIA" Value="KUSHTIA"></asp:ListItem>
                                                        <asp:ListItem Text="MAGURA" Value="MAGURA"></asp:ListItem>
                                                        <asp:ListItem Text="MEHERPUR" Value="MEHERPUR"></asp:ListItem>
                                                        <asp:ListItem Text="NARAIL" Value="NARAIL"></asp:ListItem>
                                                        <asp:ListItem Text="SATKHIRA" Value="SATKHIRA"></asp:ListItem>
                                                        <asp:ListItem Text="BOGRA" Value="BOGRA"></asp:ListItem>
                                                        <asp:ListItem Text="CHAPAINABABGANJ" Value="CHAPAINABABGANJ"></asp:ListItem>
                                                        <asp:ListItem Text="JOYPURHAT" Value="JOYPURHAT"></asp:ListItem>
                                                        <asp:ListItem Text="PABNA" Value="PABNA"></asp:ListItem>
                                                        <asp:ListItem Text="NAOGAON" Value="NAOGAON"></asp:ListItem>
                                                        <asp:ListItem Text="NATORE" Value="NATORE"></asp:ListItem>
                                                        <asp:ListItem Text="RAJSHAHI" Value="RAJSHAHI"></asp:ListItem>
                                                        <asp:ListItem Text="SIRAJGANJ" Value="SIRAJGANJ"></asp:ListItem>
                                                        <asp:ListItem Text="DINAJPUR" Value="DINAJPUR"></asp:ListItem>
                                                        <asp:ListItem Text="GAIBANDHA" Value="GAIBANDHA"></asp:ListItem>
                                                        <asp:ListItem Text="KURIGRAM" Value="KURIGRAM"></asp:ListItem>
                                                        <asp:ListItem Text="LALMONIRHAT" Value="LALMONIRHAT"></asp:ListItem>
                                                        <asp:ListItem Text="NILPHAMARI" Value="NILPHAMARI"></asp:ListItem>
                                                        <asp:ListItem Text="PANCHAGARH" Value="PANCHAGARH"></asp:ListItem>
                                                        <asp:ListItem Text="RANGPUR" Value="RANGPUR"></asp:ListItem>
                                                        <asp:ListItem Text="THAKURGAON" Value="THAKURGAON"></asp:ListItem>
                                                        <asp:ListItem Text="HABIGANJ" Value="HABIGANJ"></asp:ListItem>
                                                        <asp:ListItem Text="MAULVIBAZAR" Value="MAULVIBAZAR"></asp:ListItem>
                                                        <asp:ListItem Text="SUNAMGANJ" Value="SUNAMGANJ"></asp:ListItem>
                                                        <asp:ListItem Text="SYLHET" Value="SYLHET"></asp:ListItem>

                                                </asp:DropDownList>
													<%--<input type="text" class="form-control" id="txtFrom" placeholder="" runat="server"/>--%>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="from">Destination:</label>
                                                    <asp:DropDownList ID="txtTo" runat="server" class="form-control">
                                                        <asp:ListItem Enabled="true" Text="Destination" Value="-1"></asp:ListItem>
                                                        <asp:ListItem Text="BARISAL" Value="BARISAL"></asp:ListItem>
                                                        <asp:ListItem Text="BHOLA" Value="BHOLA"></asp:ListItem>
                                                        <asp:ListItem Text="JHALOKATI" Value="JHALOKATIL"></asp:ListItem>
                                                        <asp:ListItem Text="PATUAKHALI" Value="PATUAKHALI"></asp:ListItem>
                                                        <asp:ListItem Text="PIROJPUR " Value="PIROJPUR "></asp:ListItem>
                                                        <asp:ListItem Text="BANDARBAN" Value="BANDARBAN"></asp:ListItem>
                                                        <asp:ListItem Text="BRAHMANBARIA" Value="BRAHMANBARIA"></asp:ListItem>
                                                        <asp:ListItem Text="BARISAL" Value="BARISAL"></asp:ListItem>
                                                        <asp:ListItem Text="CHANDPUR" Value="CHANDPUR"></asp:ListItem>
                                                        <asp:ListItem Text="CHITTAGONG" Value="CHITTAGONG"></asp:ListItem>
                                                        <asp:ListItem Text="COMILLA" Value="COMILLA"></asp:ListItem>
                                                        <asp:ListItem Text="COXS BAZAR" Value="COX'S BAZAR"></asp:ListItem>
                                                        <asp:ListItem Text="FENI" Value="FENI"></asp:ListItem>
                                                        <asp:ListItem Text="KHAGRACHHARI" Value="KHAGRACHHARI"></asp:ListItem>
                                                        <asp:ListItem Text="LAKSHMIPUR" Value="LAKSHMIPUR"></asp:ListItem>
                                                        <asp:ListItem Text="NOAKHALI" Value="NOAKHALI"></asp:ListItem>
                                                        <asp:ListItem Text="RANGAMATI " Value="RANGAMATI "></asp:ListItem>
                                                        <asp:ListItem Text="DHAKA" Value="DHAKA"></asp:ListItem>
                                                        <asp:ListItem Text="FARIDPUR" Value="FARIDPUR"></asp:ListItem>
                                                        <asp:ListItem Text="GAZIPUR" Value="GAZIPUR"></asp:ListItem>
                                                        <asp:ListItem Text="GOPALGANJ" Value="GOPALGANJ"></asp:ListItem>
                                                        <asp:ListItem Text="JAMALPUR" Value="JAMALPUR"></asp:ListItem>
                                                        <asp:ListItem Text="KISHOREGONJ" Value="KISHOREGONJ"></asp:ListItem>
                                                        <asp:ListItem Text="MADARIPUR" Value="MADARIPUR"></asp:ListItem>
                                                        <asp:ListItem Text="MANIKGANJ" Value="MANIKGANJ"></asp:ListItem>
                                                        <asp:ListItem Text="MUNSHIGANJ" Value="MUNSHIGANJ"></asp:ListItem>
                                                        <asp:ListItem Text="MYMENSINGH" Value="MYMENSINGH"></asp:ListItem>
                                                        <asp:ListItem Text="NARAYANGANJ" Value="NARAYANGANJ"></asp:ListItem>
                                                        <asp:ListItem Text="NARSINGDI" Value="NARSINGDI"></asp:ListItem>
                                                        <asp:ListItem Text="NETRAKONA" Value="NETRAKONA"></asp:ListItem>
                                                        <asp:ListItem Text="SHARIATPUR" Value="SHARIATPUR"></asp:ListItem>
                                                        <asp:ListItem Text="SHERPUR" Value="SHERPUR"></asp:ListItem>
                                                        <asp:ListItem Text="TANGAIL" Value="TANGAIL"></asp:ListItem>
                                                        <asp:ListItem Text="BAGERHAT" Value="BAGERHAT"></asp:ListItem>
                                                        <asp:ListItem Text="CHUADANGA" Value="CHUADANGA"></asp:ListItem>
                                                        <asp:ListItem Text="JESSORE" Value="JESSORE"></asp:ListItem>
                                                        <asp:ListItem Text="JHENAIDAH" Value="JHENAIDAH"></asp:ListItem>
                                                        <asp:ListItem Text="KHULNA" Value="KHULNA"></asp:ListItem>
                                                        <asp:ListItem Text="KUSHTIA" Value="KUSHTIA"></asp:ListItem>
                                                        <asp:ListItem Text="MAGURA" Value="MAGURA"></asp:ListItem>
                                                        <asp:ListItem Text="MEHERPUR" Value="MEHERPUR"></asp:ListItem>
                                                        <asp:ListItem Text="NARAIL" Value="NARAIL"></asp:ListItem>
                                                        <asp:ListItem Text="SATKHIRA" Value="SATKHIRA"></asp:ListItem>
                                                        <asp:ListItem Text="BOGRA" Value="BOGRA"></asp:ListItem>
                                                        <asp:ListItem Text="CHAPAINABABGANJ" Value="CHAPAINABABGANJ"></asp:ListItem>
                                                        <asp:ListItem Text="JOYPURHAT" Value="JOYPURHAT"></asp:ListItem>
                                                        <asp:ListItem Text="PABNA" Value="PABNA"></asp:ListItem>
                                                        <asp:ListItem Text="NAOGAON" Value="NAOGAON"></asp:ListItem>
                                                        <asp:ListItem Text="NATORE" Value="NATORE"></asp:ListItem>
                                                        <asp:ListItem Text="RAJSHAHI" Value="RAJSHAHI"></asp:ListItem>
                                                        <asp:ListItem Text="SIRAJGANJ" Value="SIRAJGANJ"></asp:ListItem>
                                                        <asp:ListItem Text="DINAJPUR" Value="DINAJPUR"></asp:ListItem>
                                                        <asp:ListItem Text="GAIBANDHA" Value="GAIBANDHA"></asp:ListItem>
                                                        <asp:ListItem Text="KURIGRAM" Value="KURIGRAM"></asp:ListItem>
                                                        <asp:ListItem Text="LALMONIRHAT" Value="LALMONIRHAT"></asp:ListItem>
                                                        <asp:ListItem Text="NILPHAMARI" Value="NILPHAMARI"></asp:ListItem>
                                                        <asp:ListItem Text="PANCHAGARH" Value="PANCHAGARH"></asp:ListItem>
                                                        <asp:ListItem Text="RANGPUR" Value="RANGPUR"></asp:ListItem>
                                                        <asp:ListItem Text="THAKURGAON" Value="THAKURGAON"></asp:ListItem>
                                                        <asp:ListItem Text="HABIGANJ" Value="HABIGANJ"></asp:ListItem>
                                                        <asp:ListItem Text="MAULVIBAZAR" Value="MAULVIBAZAR"></asp:ListItem>
                                                        <asp:ListItem Text="SUNAMGANJ" Value="SUNAMGANJ"></asp:ListItem>
                                                        <asp:ListItem Text="SYLHET" Value="SYLHET"></asp:ListItem>

                                                </asp:DropDownList>

													<%--<input type="text" class="form-control" id="txtTo" placeholder="" runat="server"/>--%>
												</div>
											</div>
											<%--<div class="col-xxs-12 col-xs-6 mt alternate">
												<section>
													<label for="class">Seasson</label>
													<select class="cs-select cs-skin-border">
														<option value="" disabled selected>Select One</option>
														<option value="1">Summer</option>
														<option value="2">Rainy</option>
														<option value="3">Winter</option>
														
													</select>
												</section>
											</div>--%>
											<%--<div class="col-xxs-12 col-xs-6 mt alternate">
												<section>
													<label for="class">Catagoury:</label>
													<select class="cs-select cs-skin-border">
														<option value="" disabled selected>Select One</option>
														<option value="1">Family</option>
														<option value="2">Group</option>
														<option value="3">Couple</option>
														
													</select>
												</section>
											</div>--%>
											<%--<div class="col-sm-12 mt">
												<div class="input-field">
													<label for="date-start">Journey Day:</label>
													<input type="text" class="form-control" id="date-start" placeholder=""/>
												</div>
											</div>--%>
											
											<div class="col-xs-12">
												<%--<input type="submit" class="btn btn-primary btn-block" value="Search Tours">--%>
                                                <asp:Button ID="btnsearch" class="btn btn-primary btn-block" runat="server" Text="Search Tours" OnClick="btnsearch_Click"/>
											</div>
										</div>
									 </div>

									 <div role="tabpanel" class="tab-pane" id="hotels">
									 	<div class="row">
											<div class="col-xxs-12 col-xs-12 mt">
												<div class="input-field">
													<label for="from">City:</label>
													<input type="text" class="form-control" id="from-place" />
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="date-start">Check in:</label>
													<input type="text" class="form-control" id="date-start" placeholder="mm/dd/yyyy"/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="date-end">Check Out:</label>
													<input type="text" class="form-control" id="date-end" placeholder="mm/dd/yyyy"/>
												</div>
											</div>
											<div class="col-sm-12 mt">
												<section>
													<label for="class">Rooms:</label>
													<select class="cs-select cs-skin-border">
														<option value="" disabled selected>1</option>
														<option value="economy">Single</option>
														<option value="first">Double</option>
														<option value="business">Family Delaz</option>
													</select>
												</section>
											</div>
											
											<div class="col-xs-12">
												<input type="submit" class="btn btn-primary btn-block" value="Search Hotel">
											</div>
										</div>
									 </div>
									 <div role="tabpanel" class="tab-pane" id="flights">
										<div class="row">
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="from">From:</label>
													<input type="text" class="form-control" id="from-place" />
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt">
												<div class="input-field">
													<label for="from">To:</label>
													<input type="text" class="form-control" id="to-place" />
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="date-start">Journey Day:</label>
													<input type="text" class="form-control" id="date-start" placeholder="mm/dd/yyyy"/>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<section>
													<label for="class">Transport</label>
													<select class="cs-select cs-skin-border" id="slct1" name="slct1" onchange="populate(this.id,'slct2')">
														<option value="" disabled selected>Select One</option>
														<option value="Bus">BUS</option>
														<option value="Train">TRAIN</option>
														<option value="Launch">LAUNCH</option>
														
													</select>
												</section>
											</div>
											<div class="col-sm-12 mt" id="type">
												<section>
													<label for="class">Class:</label>
													<select class="cs-select cs-skin-border" id="slct2" name="slct2">
														<option value="" disabled selected>---Select One---</option>
														<option value="A/C">A/C</option>
														<option value="Non-A/C">Non-A/C</option>
													</select>
												</section>
											</div>
											
											<div class="col-xs-12">
												<input type="submit" class="btn btn-primary btn-block" value="Search Transport">
											</div>
										</div>
									 </div>
									 
									</div>

								</div>
							</div>
							<div class="desc2 animate-box">
								<div class="col-sm-7 col-sm-push-1 col-md-7 col-md-push-1">
									<p>Travel With Jattra </p>
									<h2>Adventure may hurt you but monotony will kill you</h2>
									<h3>To Travel is to Live</h3>
									
									<!-- <p><a class="btn btn-primary btn-lg" href="#">Get Started</a></p> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		
		<div id="fh5co-tours" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>Seasonal Tours</h3>
						<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="images/summer.jpg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>Summer</h3>
								<span></span>
								<span class="price"></span>
								<a class="btn btn-primary btn-outline" href="#"> <i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="images/rainy.jpg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>Rainy</h3>
								<span></span>
								<span class="price"></span>
								<a class="btn btn-primary btn-outline" href="#"><i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
						<div href="#"><img src="images/winter.jpg" alt="Free HTML5 Website Template by FreeHTML5.co" class="img-responsive">
							<div class="desc">
								<span></span>
								<h3>Winter</h3>
								<span></span>
								<span class="price"></span>
								<a class="btn btn-primary btn-outline" href="#"><i class="icon-arrow-right22"></i></a>
							</div>
						</div>
					</div>
					<div class="col-md-12 text-center animate-box">
						<p><a class="btn btn-primary btn-outline btn-lg" href="#">See All  <i class="icon-arrow-right22"></i></a></p>
					</div>
				</div>
			</div>
		</div>

		<div id="fh5co-features">
			<div class="container">
				<div class="row">
					<div class="col-md-4 animate-box">

						<div class="feature-left">
							<span class="icon">
								<i class="icon-hotairballoon"></i>
							</span>
							<div class="feature-copy">
								<h3>Family Travel</h3>
								<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
								<p><a href="#">Learn More</a></p>
							</div>
						</div>

					</div>

					<div class="col-md-4 animate-box">
						<div class="feature-left">
							<span class="icon">
								<i class="icon-search"></i>
							</span>
							<div class="feature-copy">
								<h3>Travel Plans</h3>
								<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
								<p><a href="#">Learn More</a></p>
							</div>
						</div>
					</div>
					<div class="col-md-4 animate-box">
						<div class="feature-left">
							<span class="icon">
								<i class="icon-wallet"></i>
							</span>
							<div class="feature-copy">
								<h3>Honeymoon</h3>
								<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
								<p><a href="#">Learn More</a></p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 animate-box">

						<div class="feature-left">
							<span class="icon">
								<i class="icon-wine"></i>
							</span>
							<div class="feature-copy">
								<h3>Business Travel</h3>
								<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
								<p><a href="#">Learn More</a></p>
							</div>
						</div>

					</div>

					<div class="col-md-4 animate-box">
						<div class="feature-left">
							<span class="icon">
								<i class="icon-genius"></i>
							</span>
							<div class="feature-copy">
								<h3>Solo Travel</h3>
								<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
								<p><a href="#">Learn More</a></p>
							</div>
						</div>

					</div>
					<div class="col-md-4 animate-box">
						<div class="feature-left">
							<span class="icon">
								<i class="icon-chat"></i>
							</span>
							<div class="feature-copy">
								<h3>Explorer</h3>
								<p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
								<p><a href="#">Learn More</a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		
		<div id="fh5co-destination">
			<div class="tour-fluid">
				<div class="row">
					<div class="col-md-12">
						<ul id="fh5co-destination-list" class="animate-box">
							<li class="one-forth text-center" style="background-image: url(images/place-1.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Cox's Bazar</h2>
									</div>
								</a>
							</li>
							<li class="one-forth text-center" style="background-image: url(images/place-2.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Sundorban</h2>
									</div>
								</a>
							</li>
							<li class="one-forth text-center" style="background-image: url(images/place-3.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Shylet</h2>
									</div>
								</a>
							</li>
							<li class="one-forth text-center" style="background-image: url(images/place-4.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Bandorban</h2>
									</div>
								</a>
							</li>

							<li class="one-forth text-center" style="background-image: url(images/place-5.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Khagrachori</h2>
									</div>
								</a>
							</li>
							<li class="one-half text-center">
								<div class="title-bg">
									<div class="case-studies-summary">
										<h2>Most Popular Destinations</h2>
										<span><a href="#">View All Destinations</a></span>
									</div>
								</div>
							</li>
							<li class="one-forth text-center" style="background-image: url(images/place-6.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Rangamati</h2>
									</div>
								</a>
							</li>
							<li class="one-forth text-center" style="background-image: url(images/place-7.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Sunamganj</h2>
									</div>
								</a>
							</li>
							<li class="one-forth text-center" style="background-image: url(images/place-8.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Hatiya</h2>
									</div>
								</a>
							</li>
							<li class="one-forth text-center" style="background-image: url(images/place-9.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Saint-martin</h2>
									</div>
								</a>
							</li>
							<li class="one-forth text-center" style="background-image: url(images/place-10.jpg); ">
								<a href="#">
									<div class="case-studies-summary">
										<h2>Rajshahi</h2>
									</div>
								</a>
							</li>
						</ul>		
					</div>
				</div>
			</div>
		</div>

		<div id="fh5co-blog-section" class="fh5co-section-gray">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
						<h3>Recent From Blog</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores, perspiciatis accusamus asperiores sint consequuntur debitis.</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row row-bottom-padded-md">
					<div class="col-lg-4 col-md-4 col-sm-6">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/place-1.jpg" alt=""></a>
							<div class="blog-text">
								<div class="prod-title">
									<h3><a href="#">To Travel All Around the World</a></h3>
									<span class="posted_by">Sep. 15th</span>
									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<p><a href="#">Learn More...</a></p>
								</div>
							</div> 
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/place-2.jpg" alt=""></a>
							<div class="blog-text">
								<div class="prod-title">
									<h3><a href="#">Planning for Vacation</a></h3>
									<span class="posted_by">Sep. 15th</span>
									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<p><a href="#">Learn More...</a></p>
								</div>
							</div> 
						</div>
					</div>
					<div class="clearfix visible-sm-block"></div>
					<div class="col-lg-4 col-md-4 col-sm-6">
						<div class="fh5co-blog animate-box">
							<a href="#"><img class="img-responsive" src="images/place-3.jpg" alt=""></a>
							<div class="blog-text">
								<div class="prod-title">
									<h3><a href="#">Visit Cox'sbazar</a></h3>
									<span class="posted_by">Sep. 15th</span>
									<span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
									<p><a href="#">Learn More...</a></p>
								</div>
							</div> 
						</div>
					</div>
					<div class="clearfix visible-md-block"></div>
				</div>

				<div class="col-md-12 text-center animate-box">
					<p><a class="btn btn-primary btn-outline btn-lg" href="#">See All Post <i class="icon-arrow-right22"></i></a></p>
				</div>

			</div>
		</div>
		<!-- fh5co-blog-section -->
		<div id="fh5co-testimonial" style="background-image:url(images/img_bg_1.jpg);">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>Happy Clients</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="box-testimony animate-box">
						<blockquote>
							<span class="quote"><span><i class="icon-quotes-right"></i></span></span>
							<p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
						</blockquote>
						<p class="author">Jasim <a href="http://freehtml5.co/" target="_blank"></a> <span class="subtext">r</span></p>
					</div>
					
				</div>
				<div class="col-md-4">
					<div class="box-testimony animate-box">
						<blockquote>
							<span class="quote"><span><i class="icon-quotes-right"></i></span></span>
							<p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.&rdquo;</p>
						</blockquote>
						<p class="author">Rahim <a href="http://freehtml5.co/" target="_blank"></a> <span class="subtext"></span></p>
					</div>
					
					
				</div>
				<div class="col-md-4">
					<div class="box-testimony animate-box">
						<blockquote>
							<span class="quote"><span><i class="icon-quotes-right"></i></span></span>
							<p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
						</blockquote>
						<p class="author">Karim <a href="#"></a> <span class="subtext">r</span></p>
					</div>
					
				</div>
			</div>
		</div>
	</div>
		<footer>
			<div id="footer">
				<div class="container">
					<div class="row row-bottom-padded-md">
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>About Travel</h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>Top Services</h3>
							<ul>
								<li><a href="#">Transport Booking</a></li>
								<li><a href="#">Residence Booking</a></li>
								<li><a href="#">Make A Tour Plan</a></li>
								<li><a href="#">Tour Guide</a></li>
								<li><a href="#">Travelling Product</a></li>
							</ul>
						</div>
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>Top Hotels</h3>
							<ul>
								<li><a href="#">Grand Sultan</a></li>
								<li><a href="#">Hotel Radison</a></li>
								<li><a href="#">Hotel Taj</a></li>
								<li><a href="#">Keokradong Hotel</a></li>
							</ul>
						</div>
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>Interest</h3>
							<ul>
								<li><a href="#">Beaches</a></li>
								<li><a href="#">Family Travel</a></li>
								<li><a href="#">Budget Travel</a></li>
								<li><a href="#">Food &amp; Drink</a></li>
								<li><a href="#">Honeymoon and Romance</a></li>
							</ul>
						</div>
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>Best Places</h3>
							<ul>
								<li><a href="#">Cox's Bazar Sea Beach</a></li>
								<li><a href="#">Nilghiri</a></li>
								<li><a href="#">Humhum Water falls</a></li>
								<li><a href="#">Tangua</a></li>
							</ul>
						</div>
						<div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
							<h3>Affordable</h3>
							<ul>
								<li><a href="#">Food &amp; Drink</a></li>
								<li><a href="#">Fare Flights</a></li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 col-md-offset-3 text-center">
							<p class="fh5co-social-icons">
								<a href="#"><i class="icon-twitter2"></i></a>
								<a href="#"><i class="icon-facebook2"></i></a>
								<a href="#"><i class="icon-instagram"></i></a>
								<a href="#"><i class="icon-dribbble2"></i></a>
								<a href="#"><i class="icon-youtube"></i></a>
							</p>
							<p>Copyright 2017  <a href="#">Module</a>. All Rights Reserved. <br>Made with <i class="icon-heart3"></i> by <a href="http://jattra.com" target="_blank">jattra.com</a> </p>
						</div>
					</div>
				</div>
			</div>
		</footer>

	

	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- jQuery -->


	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/sticky.js"></script>

	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Superfish -->
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="js/bootstrap-datepicker.min.js"></script>
	<!-- CS Select -->
	<script src="js/classie.js"></script>
	<script src="js/selectFx.js"></script>
	
	<!-- Main JS -->
	<script src="js/main.js"></script>
    </div>
    </form>
</body>
</html>
