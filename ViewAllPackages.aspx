

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="ViewAllPackages.aspx.cs" Inherits="WebApplication10.ViewAllPackages" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />



    <section class="panel">
        <header class="panel-heading">
            View All Packages
        </header>
       <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Package Name</th>
                            <th>Package Details</th>
                            <th>Price</th>
                            <th>Discounted Price</th>
                             <th>D1</th>
                            <th>D2</th>
                            <th>Package Type</th>
                            <th>Package Image</th>
                            <th>Actions</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Container.ItemIndex + 1 %></td>
                                    <td><%# Eval("packageName")%></td>
                                    
                                    <td><%# Eval("packageDetails")%></td>
                                    <td><%# Eval("price")%></td>
                                     <td><%# Eval("discountedPrice")%></td>
                                    
                                    <td><%# Eval("d1")%></td>
                                    <td><%# Eval("d2")%></td>
                                    <td><%# Eval("packageType")%></td>
                                    <td><img alt=""  width="50px" height="50px" src='<%# Eval("packageImage")%> ' /></td>
                                    <td>
                                       <asp:LinkButton ID="ENameLinkBtn" CssClass="btn btn-danger btn-xs" runat="server" Text="Delete" CommandArgument='<%#Eval("Id")%>'></asp:LinkButton>
                                        <br />
                                         <a class="btn btn-warning btn-xs" href='EditMember.aspx?ID=<%#Eval("EncryptedId")%>'><i class="fa fa-edit"></i>Add Package</a>

                                    </td>
                                    
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                 <table class='table <%= Repeater1.Items.Count > 0 ? "hide" : "show" %>'>
                    <tr>
                        <td>No Package Found</td>
                    </tr>
                </table>
            </section>
        </div>
    </div>
    </section>

   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>

