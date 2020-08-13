<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="AllPermissions.aspx.cs" Inherits="Portal.AllPermissions" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />

    <div class="alert alert-info fade in" runat="server" id="Messagebox" visible="false">
        <button data-dismiss="alert" class="close close-sm" type="button">
            <i class="fa fa-times"></i>
        </button>
        <strong>Success!</strong> Selected Campus has been deleted.

    </div>



    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    Permission 
                </header>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Permission Name</th>
                             <th>Assigned To</th>
                            <th>Visible</th>
                            <th>Url</th>
                             <th>FriendlyName</th>
                             <th>PermissionGroupName</th>
                           <th>Discription</th>

                             <th>EDIT</th> 
                                <th>A P</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Container.ItemIndex + 1 %></td>
                                    <td><%#Eval("Name")%>   </td>
                                      <td> <b> <%#Eval("DefaultPermissionFor")%></b> </td>
                                    <td><%#Eval("ShowInMenu")%></td>
                                    
                                    <td><a href="<%# Eval("Url")%>" target="_blank"><i class="fa fa-arrow-right"></i></a></td>  
                                     
                                    <td><%# Eval("FriendlyName")%></td>
                                    <td><%# Eval("PermissionGroupName")%></td>
                                      <td><%# Eval("Discription")%></td>
                                    
                                    <td>
                                         <a href="AssignPermissions.aspx?Id=<%# Eval("Id")%>&name=<%# Eval("FriendlyName")%>"  target="_blank" ><i class="fa fa-edit"></i></a>
                                    </td>
                                      <td>
                                         <asp:LinkButton ID="ENameLinkBtn" CssClass="btn btn-danger btn-xs" runat="server"  CommandArgument='<%#Eval("Id")%>' OnClick="ENameLinkBtn_Click1" ><i class="fa fa-adjust"></i></asp:LinkButton>

                                    </td>

                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                <table class='table <%= Repeater1.Items.Count > 0 ? "hide" : "show" %>'>
                    <tr>
                        <td>No Campus found!</td>
                    </tr>
                </table>
            </section>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
