<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication10.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Pixcile">
    <meta name="keyword" content="Trueman">
    <link rel="shortcut icon" href="img/favicon.html">
     <link href="css/vegas.min.css" rel="stylesheet" />
    <title>
        <asp:Literal ID="litPortalName" runat="server"></asp:Literal>
        <asp:Literal ID="Slogon" runat="server"></asp:Literal>
    </title>
        <link href="~/css/bootstrap.min.css" rel="stylesheet">
    <link href="~/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="~/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="~/css/style.css" rel="stylesheet">
    <link href="~/css/style-responsive.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <div class="container">

            <div class="form-signin">
                <h2 class="form-signin-heading">Publisher Sign Up</h2>
                <div class="login-wrap">
                    <asp:PlaceHolder ID="SignupError" runat="server" Visible="false">
                        <div class="alert alert-block alert-danger">
                            Email Already Registered 
                        </div>
                    </asp:PlaceHolder>
                     <asp:PlaceHolder ID="verify" runat="server" Visible="false">
                        <div class="alert alert-block alert-danger">
                           This field must filled.
                        </div>
                    </asp:PlaceHolder>
                       <asp:PlaceHolder ID="statusMessage" runat="server" Visible="false">
                        <div class="alert alert-block alert-success">
                           Succesfully Submitted.<br />
                            Account Registration is Pending... 
                        </div>
                    </asp:PlaceHolder>

                    <asp:TextBox ID="name" runat="server" CssClass="form-control" placeholder="NAME" AutoCompleteType="Disabled" autofocus="true"></asp:TextBox>

                    <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="EMAIL" AutoCompleteType="Disabled" ></asp:TextBox>
                    

                    <asp:TextBox ID="userid" runat="server" CssClass="form-control" placeholder="USER ID" AutoCompleteType="Disabled"></asp:TextBox>

                    <asp:TextBox ID="password" runat="server" CssClass="form-control" placeholder="PASSWORD" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>

                     <asp:Button ID="signupbutton" runat="server" CssClass="btn btn-lg btn-primary btn-block" Text=" &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;REGISTER" OnClick="signupbutton_Click"></asp:Button>
                    <%--<label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
                <span class="pull-right"> <a href="#"> Forgot Password?</a></span>
            </label>--%>
                    <%--<button class="btn btn-lg btn-login btn-block" type="submit">Sign in</button>--%>

                     <p><asp:Literal ID="VresionLiteral1" runat="server"></asp:Literal></p>

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
