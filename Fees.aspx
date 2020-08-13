






<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="Fees.aspx.cs" Inherits="WebApplication10.Fees" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />



    <section class="panel">
        <header class="panel-heading">
            Pay Fees
        </header>

        <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="selectMember" class="control-label col-sm-3">Select Member</label>

                        <div class="col-sm-9">
                            <asp:DropDownList ID="selectMember" CssClass="form-control" runat="server">
                                
                            </asp:DropDownList>
                        </div>
                        
                        <div style="clear: both;"></div>
                    </div>
                </div>
            <div class="col-sm-6">
                    <div class="form-group">
                        <label for="datepicker" class="control-label col-sm-3">Select Date</label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="datepicker" runat="server" CssClass="form-control date-picker"></asp:TextBox>

                                
                            
                        </div>
                        
                        <div style="clear: both;"></div>
                    </div>
                </div>
            
            </div>
        <div class="row">
                
            <div class="col-sm-6">
                    <div class="form-group">
                        <label for="enterFeesAmount" class="control-label col-sm-4">Enter Fees Amount</label>

                        <div class="col-sm-7">
                            <asp:TextBox ID="enterFeesAmount" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                
            </div>
        </div>
            
            </div>
        <br />
        <div class="row">
                <div class="col-lg-12">
                    <div class="form-group">
                        <div class="text-center">
                           <asp:Button ID="Button1" runat="server" Text="Back"
                                CssClass="btn btn-primary" ></asp:Button>
                            <asp:Button ID="btnSave" runat="server" Text="Submit"
                                CssClass="btn btn-success" ></asp:Button>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
        <script>
            $(function () {
                window.prettyPrint && prettyPrint();
                $('.date-picker').datepicker({

                    format: 'yyyy-mm-dd'
                });
            });

        </script> 
        </section>
    <section class="panel">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Member Name</th>
                            <th>Date</th>
                            <th>TotalFees</th>
                            <th>PaidFees</th>
                            <th>RemainingFees</th>
                            <th>FeesStatus</th>
                            
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Container.ItemIndex + 1 %></td>
                                    <td><%# Eval("memberName")%></td>
                                    <td><%# Eval("date")%></td>
                                    <td><%# Eval("totalFees")%></td>
                                    <td><%# Eval("paidFees")%></td>
                                    <td><%# Eval("remainingFees")%></td>
                                    <td><%# Eval("feesStatus")%></td>
                                    
                                    <td>
                                         <a class="btn btn-primary btn-xs" href='Edit.aspx?ID=<%#Eval("EncryptedId")%>'><i class="fa fa-edit"></i>Edit</a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                 <table class='table <%= Repeater1.Items.Count > 0 ? "hide" : "show" %>'>
                    <tr>
                        <td>
                            No Record Found

                        </td>
                    </tr>
                </table>
            </section>

    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>


