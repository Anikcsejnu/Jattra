<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
    <link rel="stylesheet" href="css/signup.css">
</head>

<body>
    <form id="form1" runat="server">
    <div>
    <div class="login-wrap">
  <div class="login-html">
    <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab"/>Sign In</label>
    <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"/>Sign Up</label>
    <div class="login-form">
      <div class="sign-in-htm">
        <div class="group">
          <%--<label for="user" class="label">Username</label>--%>
            <input type='text' id="txtUserName" name='username' class="input" placeholder='User name' runat="server" />
          <%--<input id="user" type="text" class="input">--%>
        </div>
        <div class="group">
          <%--<label for="pass" class="label">Password</label>--%>
          <%--<input id="pass" type="password" class="input" data-type="password">--%>
            <input type='password' id='txtPassword' name='password' class="input" placeholder='Password' runat="server" />
        </div>
        <%--<div class="group">
          <input id="check" type="checkbox" class="check" checked>
          <label for="check"><span class="icon"></span> Keep me Signed in</label>
        </div>--%>
        <div class="group">
          <%--<input type="submit" class="button" value="Sign In">--%>
            <asp:Button ID="btnSignIn" class="button" runat="server" Text="Sign In" onclick="btnSignIn_Click"/>
        </div>
        <div class="hr"></div>
        <div class="foot-lnk">
          <a href="#forgot">Forgot Password?</a>
        </div>
      </div>
      <div class="sign-up-htm">
        <div class="group">
          <%--<label for="user" class="label">Name</label>--%>
          <%--<input id="user" type="text" class="input">--%>
            <input type='text' id="txtName" name='name' class="input" placeholder='Name' runat="server" />
        </div>
        <div class="group">
          <%--<label for="user" class="label">Username</label>
          <input id="user" type="text" class="input">--%>
            <input type='text' id="txtUser" name='user' class="input" placeholder='User name' runat="server" />
        </div>
        <div class="group">
          <%--<label for="pass" class="label">Password</label>
          <input id="pass" type="password" class="input" data-type="password">--%>
            <input type='text' id="txtPass" name='pass' class="input" placeholder='Password' runat="server" />
        </div>
        <div class="group">
          <%--<label for="pass" class="label">Repeat Password</label>
          <input id="pass" type="password" class="input" data-type="password">--%>
            <input type='text' id="txtRepeatPass" name='repeatpass' class="input" placeholder='Repeat Password' runat="server" />
        </div>
        <div class="group">
          <%--<label for="pass" class="label">Contact No</label>
          <input id="pass" type="text" class="input">--%>
            <input type='text' id="txtContact" name='contact' class="input" placeholder='Contact No' runat="server" />
        </div>
        <div class="group">
          <%--<label for="pass" class="label">Email Address</label>
          <input id="pass" type="text" class="input">--%>
            <input type='text' id="txtEmail" name='email' class="input" placeholder='Email Address' runat="server" />
        </div>
        <div class="group">
          <%--<input type="submit" class="button" value="Sign Up">--%>
            <asp:Button ID="btnSignUp" class="button" runat="server" Text="Sign Up" onclick="btnSignUp_Click"/>
        </div>
        <div class="hr"></div>
<%--        <div class="foot-lnk">
          <label for="tab-1">Already Member?</a>
        </div>--%>
      </div>
    </div>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    </div>
    </form>
</body>
</html>
