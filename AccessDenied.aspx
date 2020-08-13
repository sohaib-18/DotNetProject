<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="AccessDenied.aspx.cs" Inherits="Portal.AccessDenied" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">


<section class="error-wrapper">
          <i class="icon-500"></i>
          <h1>Ouch!  </h1>
          <h2>Access Denied.</h2>
          <p class="page-500">You are not allowed to access this page. Please contact server administrator. </p>
      </section>

   



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
