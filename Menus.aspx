<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="Menus.aspx.cs" Inherits="WebApplication10.Menus" %>

<%@ Register Src="~/UserControls/Shared/MenuItems.ascx" TagPrefix="uc1" TagName="MenuItems" %>




<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
   
    <uc1:MenuItems runat="server" ID="MenuItemsControl" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
