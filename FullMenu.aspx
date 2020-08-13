<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="FullMenu.aspx.cs" Inherits="Portal.FullMenu" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />
    <section class="panel">
      
          <div runat="server" id="tags"></div>
    </section>

  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
