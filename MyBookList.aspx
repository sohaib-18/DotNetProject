<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="MyBookList.aspx.cs" Inherits="Portal.MyBookList" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />
    <section class="panel">
        <header class="panel-heading">
            Book List
        </header>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Title</th>
                    <th>Attachment</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptSchoolRule" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Container.ItemIndex + 1 %></td>
                            <td><%# Eval("Title")%></td>
                            <td><a href='<%# AttachmentPath.Replace("~/","") + Eval("FileName") %>' target="_blank">Take a look</a></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
        <table class='table <%= rptSchoolRule.Items.Count > 0 ? "hide" : "show" %>'>
            <tr>
                <td>No Rules found!</td>
            </tr>
        </table>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
