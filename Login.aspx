<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication10.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Pixcile">
    <meta name="keyword" content="Trueman">
    <link rel="shortcut icon" href="img/favicon.html">
  
    <link href="css/vegas.min.css" rel="stylesheet" />

    <title>
        <asp:Literal ID="litPortalName" runat="server"></asp:Literal>
        &mdash;
        <asp:Literal ID="Slogon" runat="server"></asp:Literal></title>

    <!-- Bootstrap core CSS -->
    <link href="~/css/bootstrap.min.css" rel="stylesheet">
    <link href="~/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="~/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="~/css/style.css" rel="stylesheet">
    <link href="~/css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="~/js/html5shiv.js"></script>
    <script src="~/js/respond.min.js"></script>
    <![endif]-->
</head>
<body class="login-body">
    

    <form id="form1" runat="server">
        <div class="container">

            <div class="form-signin">
                <h2 class="form-signin-heading">User Sign In</h2>
                <div class="login-wrap">
                    <asp:PlaceHolder ID="LoginError" runat="server" Visible="false">
                        <div class="alert alert-block alert-danger">
                            Invalid Login ID or Password
                        </div>
                    </asp:PlaceHolder>
                     <asp:PlaceHolder ID="statuserror" runat="server" Visible="false">
                        <div class="alert alert-block alert-danger">
                            Your Account is not yet Approved please try again later...
                        </div>
                    </asp:PlaceHolder>
                    <%--<input type="text" class="form-control" placeholder="User ID" autofocus>--%>
                    <%--<input type="password" class="form-control" placeholder="Password">--%>
                    <%--<select class="form-control">
                        <option>Student</option>
                        <option>Teacher</option>
                        <option>Admin</option>
                    </select>--%>

                    <asp:TextBox ID="LoginTextBox" runat="server" CssClass="form-control" placeholder="Login ID" autofocus></asp:TextBox>

                    <asp:TextBox ID="PasswordTextBox" runat="server" CssClass="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>


                    <%--<label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
                <span class="pull-right"> <a href="#"> Forgot Password?</a></span>
            </label>--%>
                    <%--<button class="btn btn-lg btn-login btn-block" type="submit">Sign in</button>--%>
                    <asp:Button ID="LoginButton" runat="server" CssClass="btn btn-lg btn-login btn-block" OnClick="LoginButton_Click" Text=" &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sign in"></asp:Button>
                     <asp:Button ID="Button1" runat="server" CssClass="btn btn-lg btn-primary btn-block" OnClick="btn_signup" Text=" &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SIGN UP"></asp:Button>
                     <p><asp:Literal ID="VresionLiteral1" runat="server"></asp:Literal></p>
           <%--  <div class="login-social-link">
                <a href="index.html" class="facebook">
                    <i class="icon-facebook"></i>
                    Facebook
                </a>
                <a href="index.html" class="twitter">
                    <i class="icon-twitter"></i>
                    Twitter
                </a>
            </div>--%>
                </div>

            </div>

         
      
        </div>
    </form>
    <script src="http://code.jquery.com/jquery.min.js"></script>

    <script src="js/vegas.min.js"></script>
 
    <%-- Animation form http://vegas.jaysalvat.com/--%>
    <script>

        $("#example, body").vegas({
            slides: [
                { src: "img/slides/1.jpg" },
                { src: "img/slides/2.jpg" },
                { src: "img/slides/3.jpg" },
                { src: "img/slides/4.jpg" },
                 { src: "img/slides/5.jpg" }
            ],
            animation: ['kenburnsUp', 'kenburnsDown', 'kenburnsLeft', 'kenburnsRight']
        });


    </script>

</body>

   
</html>
