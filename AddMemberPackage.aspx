
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="AddMemberPackage.aspx.cs" Inherits="WebApplication10.AddMemberPackage" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />



    <section class="panel">
        <header class="panel-heading">
            Add Member Package
        </header>

        <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="selectPackageType" class="control-label col-sm-3">Select Package Type</label>

                        <div class="col-sm-9">
                            <asp:DropDownList ID="selectPackageType" CssClass="form-control" runat="server">
                                
                            </asp:DropDownList>
                        </div>
                        
                        <div style="clear: both;"></div>
                    </div>
                </div>
            <div class="col-sm-6">
                    <div class="form-group">
                        <label for="remarks" class="control-label col-sm-3">Remarks</label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="remarks" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                
            </div>
        </div>
    </div>
        <div class="row">
                <div class="col-lg-12">
                    <div class="form-group">
                        <div class="text-center">
                            <a href="" class="btn btn-info">Back</a>
                            <asp:Button ID="btnSave" runat="server" Text="Add Package"
                                CssClass="btn btn-success" ></asp:Button>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
        <hr />
                    <section class="panel">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Package Name</th>
                            <th>Fees</th>
                            <th>Starting Date</th>
                             <th>Ending Date</th>
                            <th>Duration</th>
                            
                            <th>Remarks</th>
                            <th>Actions</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Container.ItemIndex + 1 %></td>
                                    <td><%# Eval("packageName")%></td>
                                    
                                    <td><%# Eval("fees")%></td>
                                    <td><%# Eval("startingDate")%></td>
                                     <td><%# Eval("endingDate")%></td>
                                    
                                    <td><%# Eval("duration")%></td>
                                    <td><%# Eval("remarks")%></td>
                                  <td>
                                      <asp:LinkButton ID="ENameLinkBtn" CssClass="btn btn-danger btn-xs" runat="server" Text="Delete" CommandArgument='<%#Eval("Id")%>' ></asp:LinkButton>
                                        <br />
                                  </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                         <table class='table <%= Repeater1.Items.Count > 0 ? "hide" : "show" %>'>
                    <tr>
                        <td>No Member Package ound</td>
                    </tr>
                </table>
            </section>

    </section>

   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
