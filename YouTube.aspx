<%@ Page Language="C#" Async="true" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true"
    CodeBehind="YouTube.aspx.cs" Inherits="Dotnet4Techies.YouTube" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder" runat="server">
  



    <div>
  <table>
   <tr>
    <td>
     YouTube URL:
    td>
    <td>
     <asp:TextBox ID="txtYouTubeURL" runat="server" Text="" Width="450" />
    td>
   tr>
   <tr>
    <td>
    td>
    <td>
     <asp:Button ID="btnProcess" Text="Process" runat="server" OnClick="btnProcess_Click"
       Width="100" />
    td>
   tr>
   <tr>
    <td>
      <asp:DropDownList ID="ddlVideoFormats" runat="server" Visible="false" />          
    <td>
    <td>
      <asp:Button ID="btnDownload" Text="Download" runat="server" OnClick="btnDownload_Click" Width="100" Visible="false" />
    </td>
   </tr>
 </table>
 <br />
 <asp:Label ID="lblMessage" Text="" runat="server" />
</div>




</asp:Content>
