<%@ Page Language="C#" AutoEventWireup="true" CodeFile="postReview.aspx.cs" Inherits="postReview" %>
<html>
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
<style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 15px;
}
</style>
<body>

 <form id="review" runat="server">

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
<div>
 

      <label for="country">Starting point</label>
      <asp:DropDownList ID="txtStartingPoint" runat="server">
            <asp:ListItem Enabled="true" Text="Starting point" Value="-1"></asp:ListItem>
             <asp:ListItem Text="Borguna" Value="Borguna"></asp:ListItem>
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

</div>

<div>
  
 

    <label for="country">Destination</label>
        <asp:DropDownList ID="txtDestination" runat="server">
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
 </div>
 <div>
    <label for="country">Number of place</label>
    <input type='text' id="NumberofPlace" name="txtNumOfplace" placeholder='Number of place' runat="server" />
    <label for="country">Review</label>
    <input type='text' id="txtDetailReview" name="txtReview" placeholder='Details' runat="server" />
 
</div>
<div>
  Date:<br />
   <asp:TextBox ID="txtcalendar" runat="server" placeholder="From" type="date"></asp:TextBox>
  Duration:<br/>
&nbsp;<asp:DropDownList ID="txtDays" runat="server">
            <asp:ListItem Enabled="true" Text="How many day" Value="-1"></asp:ListItem>
             <asp:ListItem Text="two nights one day" Value="Two nights One day"></asp:ListItem>
            <asp:ListItem Text="Three nights two days" Value="Three nights two days"></asp:ListItem>
            <asp:ListItem Text="Four nights three days" Value="Four nights three days"></asp:ListItem>
            
    </asp:DropDownList>


</div>
<div>
	<label for="fname">Total Cost</label>
    <input type="text" id="txtcost" name="cost" placeholder="Total Cost" runat="server">
   <%-- <label for="descriotion">ছবি যুক্ত করুন</label>
    <input type="file" name="upload image" placeholder="যুক্ত করুন">
    <input type="file" name="upload image" placeholder="যুক্ত করুন">
    <input type="file" name="upload image" placeholder="যুক্ত করুন">--%>
</div>

<div>
	<asp:Button ID="btnReview"  runat="server" Text="Post Review" onclick="btnPostReview_Click"/>
</div>
</form>

</body>
</html>
