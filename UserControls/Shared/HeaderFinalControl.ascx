<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="HeaderFinalControl.ascx.cs" Inherits="WebApplication10.UserControls.Shared.HeaderFinalControl" %>
<!--header start-->
<header class="header white-bg">


    <div class="sidebar-toggle-box">
        <div data-original-title="Toggle Navigation" data-placement="right" class="fa fa-bars tooltips"></div>
    </div>
    <!--logo start-->
    <a href="#" class="logo"><span> <asp:Literal ID="litPortalName" runat="server"></asp:Literal> </span><asp:Literal ID="Slogon" runat="server"></asp:Literal> </a>
  
    <!--logo end-->
    
    <div class="top-nav ">
        <!--search & user info start-->
        <ul class="nav pull-right top-menu">
            <li>
                <input type="text" class="form-control search hide" placeholder="Search">
            </li>
            <!-- user login dropdown start-->
            <li class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <asp:Image ID="imgStudent" runat="server"  style="width: 20px" />
                    <span runat="server" Id="userName" class="username">
                        <asp:Literal ID="UserNameLit" runat="server"></asp:Literal></span>
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu extended logout">
                    <div class="log-arrow-up"></div>
                    <li><a href="../UpdatePublisher.aspx"><i class=" fa fa-suitcase"></i>Profile</a></li>
                    <%--<li><a href="#"><i class="fa fa-cog"></i>Settings</a></li>--%>
                               
                    <li>
                        <asp:HyperLink ID="LogoutLink" runat="server" NavigateUrl="~/Logout.aspx"><i class="fa fa-key"></i>Log Out</asp:HyperLink></li>
                </ul>
            </li>
            <!-- user login dropdown end -->
        </ul>
        <!--search & user info end-->
    </div>
</header>
<!--header end-->
