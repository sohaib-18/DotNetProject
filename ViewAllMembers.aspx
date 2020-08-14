

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="ViewAllMembers.aspx.cs" Inherits="WebApplication10.ViewAllMembers" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />

     <script type="text/javascript" src="assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="js/bootstrap-switch.js"></script>

    <section class="panel">
        <header class="panel-heading">
            View All Members
        </header>
       <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <div class="row">
<div class="col-sm-6">
                    <div class="form-group">
                        
                        <label class="control-label col-sm-3" for="classList">Select Date</label>
                        <div class="col-lg-10">
<asp:TextBox ID="datepicker" runat="server" CssClass="form-control date-picker"></asp:TextBox>

                        </div>

                        <div style="clear: both;"></div>
                    </div>
                </div>
            <br />
            
<div class="col-sm-5">
                         <asp:Button ID="search"  runat="server"  Text="SEARCH"
                                CssClass="btn btn-success" OnClick="search_Click"></asp:Button>
    <asp:Button ID="searchAll"  runat="server"  Text="SEARCH ALL"
                                CssClass="btn btn-primary" OnClick="searchAll_Click"></asp:Button>
                </div>
 <script>
     $(function () {
         window.prettyPrint && prettyPrint();
         $('.date-picker').datepicker({

             format: 'yyyy-mm-dd'
         });
     });

 </script> 
        </div>

            </section>
            <section class="panel">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Member Name</th>
                            <th>Email</th>
                            <th>Phone Number</th>
                            <th>Address</th>
                             <th>Registration Fees</th>
                            <th>Admission Fees</th>
                            <th>Registered On</th>
                            <th>Total Package</th>
                            <th>Profile Pic</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Container.ItemIndex + 1 %></td>
                                    <td><%# Eval("memberName")%></td>
                                    
                                    <td><%# Eval("email")%></td>
                                    <td><%# Eval("phoneNumber")%></td>
                                     <td><%# Eval("address")%></td>
                                    <td><%# Eval("registrationFees")%></td>
                                    <td><%# Eval("admissionFees")%></td>
                                    <td><%# Eval("registeredOn")%></td>
                                    <td><%# Eval("totalPackages")%></td>
                                    <td><img alt=""  width="50px" height="50px" src='<%# Eval("profilePic")%> ' /></td>
                                    <td>
                                        <a class="btn btn-info btn-xs " href='EditMember.aspx?ID=<%#Eval("EncryptedId")%>'><i class="fa fa-edit"></i>Edit</a>
                                        <br />
                                        <asp:LinkButton ID="ENameLinkBtn" CssClass="btn btn-danger btn-xs" runat="server" Text="Delete" CommandArgument='<%#Eval("Id")%>' ></asp:LinkButton>
                                        <br />
                                         <a class="btn btn-primary btn-xs" href='Add.aspx?ID=<%#Eval("EncryptedId")%>'><i class="fa fa-edit"></i>Add Details</a>
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
                        <td>No Member found</td>
                    </tr>
                </table>
            </section>
        </div>
    </div>
    </section>

   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>

