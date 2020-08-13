




<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="AddMemberDetails.aspx.cs" Inherits="WebApplication10.AddMemberDetails" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />



    <section class="panel">
        <header class="panel-heading">
            Add Member Details
        </header>
        

            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="selectDetailType" class="control-label col-sm-3">Select Detail Type</label>

                        <div class="col-sm-9">
                            <asp:DropDownList ID="selectDetailType" CssClass="form-control" runat="server">
                                
                            </asp:DropDownList>
                        </div>
                        
                        <div style="clear: both;"></div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="enterDetail" class="control-label col-sm-3">Enter Detail</label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="enterDetail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        
                        <div style="clear: both;"></div>
                    </div>
                </div>

                
                
            </div>




           

           
            <div class="row">
                <div class="col-lg-12">
                    <div class="form-group">
                        <div class="text-center">
                            <a href="" class="btn btn-info">Back</a>
                            <asp:Button ID="btnSave" runat="server" Text="Add Member Details"
                                CssClass="btn btn-success" ></asp:Button>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>


