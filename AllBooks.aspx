<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="AllBooks.aspx.cs" Inherits="WebApplication10.AllBooks" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />



    <section class="panel">
        <header class="panel-heading">
            All Books
        </header>
       <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Book Name</th>
                            <th>Status</th>
                            <th>Publisher Name</th>
                            <th>ISBN NO</th>
                             <th>Total QR Codes</th>
                            <th>Details</th>
                            <th>Book Code</th>
                            <th>Category</th>
                            <th>Edit Book</th>
                            <th>Delete Book </th>
                            <th>Add Video URL </th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Container.ItemIndex + 1 %></td>
                                    <td><%# Eval("BookName")%></td>
                                    <td><%# GetBookStatus(Convert.ToString(Eval("Status"))) %></td>
                                    <td><%# Eval("PublisherName")%></td>
                                    <td><%# Eval("ISBN")%></td>
                                     <td><%# Eval("TotalQRCodes")%></td>
                                    
                                    <td><%# Eval("Details")%></td>
                                    <td><%# Eval("BookCode")%></td>
                                    <td><%# Eval("Category")%></td>

                                    <td>
                                        <a class="btn btn-info btn-xs" href='EditBook.aspx?ID=<%#Eval("EncryptedId")%>'><i class="fa fa-edit"></i></a>

                                    </td>
                                    <td>
                                        <asp:LinkButton ID="ENameLinkBtn" CssClass="btn btn-danger btn-xs" runat="server" Text="DELETE" CommandArgument='<%#Eval("Id")%>' OnClick="ENameLinkBtn_Click"></asp:LinkButton>
                                    </td>
                                     <td>
                                        <a class="btn btn-info btn-xs" href='AddVideoURL.aspx?ID=<%#Eval("EncryptedId")%>'>
                                            Add QR Code
                                        </a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </section>
        </div>
    </div>
    </section>

   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
