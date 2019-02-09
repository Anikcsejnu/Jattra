<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewProfile.aspx.cs" Inherits="viewProfile" %>


<!DOCTYPE html>
<style>
table, th, td {
    border: 1px solid black;
}

th, td {
    padding: 100%;
}
</style>
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
    <form id="form" runat="server">
    <div>
    <div id="fh5co-wrapper">
		<div id="fh5co-page">

		<%--<header id="fh5co-header-section" class="sticky-banner">
			<div class="container">
				<div class="nav-header">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
					<h1 id="fh5co-logo"><a href="index.html"><i class="icon-airplane"></i>যাত্রা</a></h1>
                    
					<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap" role="navigation">
                        
						<ul class="sf-menu" id="fh5co-primary-menu">
                            <li><asp:Button ID="btnSignout" class="sf-menu" runat="server" Text="Sign out" onclick="btnSignout_Click"/></li>
       
						</ul>
                        
					</nav>

				</div>
			</div>
		</header>--%>
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
                            <li><asp:Button ID="btnSignout" class="sf-menu" runat="server" Text="Sign out" onclick="btnSignout_Click"/></li>
						</ul>
					</nav>

				</div>
			</div>
		</header>

    

        <h1 align="center">Hello<h1 id="vUserName" runat="server" align="center"></h1></h1>
       
		<%--<div>
            <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label><asp:Label ID="lblName" runat="server" Text=""></asp:Label>
		</div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Email :"></asp:Label><asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
		</div>
        <div>
            <asp:Label ID="Label6" runat="server" Text="Contact :"></asp:Label><asp:Label ID="lblContact" runat="server" Text=""></asp:Label>
		</div>--%>

        <table>
            <tr>
                <td>Name</td>
                <td>Email</td>
                <td>Contact</td>
            </tr>
            <tr>
                <td><asp:Label ID="lblName" runat="server" Text=""></asp:Label></td>
                <td><asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></td>
                <td><asp:Label ID="lblContact" runat="server" Text=""></asp:Label></td>
            </tr>		
      </table>
         

<%--<%--<body>
    <form id="form1" runat="server">
    
        <div class="group">
          <%--<input type="submit" class="button" value="Sign Up">--%>
            
     </div>
    </form>
</body>
</html>
