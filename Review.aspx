<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Review.aspx.cs" Inherits="Review" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<style>
    .myGridClass {
  width: 100%;
  /*this will be the color of the odd row*/
  background-color: #fff;
  margin: 5px 0 10px 0;
  border: solid 1px #525252;
  border-collapse:collapse;
}

/*data elements*/
.myGridClass td {
  padding: 2px;
  border: solid 1px #c1c1c1;
  color: #717171;
}

/*header elements*/
.myGridClass th {
  padding: 4px 2px;
  color: #fff;
  background: #424242;
  border-left: solid 1px #525252;
  font-size: 0.9em;
}

/*his will be the color of even row*/
.myGridClass .myAltRowClass { background: #fcfcfc repeat-x top; }

/*and finally, we style the pager on the bottom*/
.myGridClass .myPagerClass { background: #424242; }

.myGridClass .myPagerClass table { margin: 5px 0; }

.myGridClass .myPagerClass td {
  border-width: 0;
  padding: 0 6px;
  border-left: solid 1px #666;
  font-weight: bold;
  color: #fff;
  line-height: 12px;
}

.myGridClass .myPagerClass a { color: #666; text-decoration: none; }

.myGridClass .myPagerClass a:hover { color: #000; text-decoration: none; } 
</style>
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
    
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Sort :"></asp:Label>
&nbsp;<asp:DropDownList ID="ddlCriteria" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCriteria_SelectedIndexChanged">
            <asp:ListItem>Date</asp:ListItem>
            <asp:ListItem>Place</asp:ListItem>
            <asp:ListItem>Cost</asp:ListItem>
        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddlSort" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSort_SelectedIndexChanged">
            <asp:ListItem Value="Asc">Ascending</asp:ListItem>
            <asp:ListItem Value="Dsc">Descending</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:GridView class="myGridClass" ID="grdData" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnRowDataBound="grdData_RowDataBound" OnSelectedIndexChanged="grdData_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select">View Detail</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <asp:TextBox ID="txtReview" runat="server" AutoPostBack="True" BorderStyle="None" Height="508px" ReadOnly="True" TextMode="MultiLine" Width="100%"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
