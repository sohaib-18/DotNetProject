<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Portal.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


    <div class="">
        <section class="panel">
            <header class="panel-heading">
                Pixcile Cloud Portal
            </header>

            <div class="panel-body">
                <a href="#">
                    <img src="http://pixcile.com/images/logo.png" alt=""></a>
                <p>
                    Pixcile SMS Portal , unlike other school management systems, works on an entirely different model. You don’t install hardware and software, you don’t manage backups, nothing like that. We manage all of that on our end.Simply connect via the Internet to your school site on QuickSchools.com. Log-in, and you’re up and running. In fact, by filling in a simple form right now, we can provide you access to a demo account in minutes.
                </p>
                <br>
                <h5 class="bold">Version</h5>
                <ul class="nav nav-pills nav-stacked labels-info ">
                    <li><i class=" fa fa-circle text-danger"></i>
                        <asp:Literal ID="version" runat="server"></asp:Literal><p></p>
                    </li>
                </ul>
                <h5 class="bold">Contact</h5>
                <ul class="nav nav-pills nav-stacked labels-info ">
                    <li><i class=" fa fa-circle text-danger"></i>info@pixcile.com<p></p>
                    </li>
                </ul>
                <br>
            </div>
        </section>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
