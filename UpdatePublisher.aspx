<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="UpdatePublisher.aspx.cs" Inherits="WebApplication10.UpdatePublisher" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />

    <div class="alert alert-info fade in" runat="server" id="Messagebox" visible="false">
        <button data-dismiss="alert" class="close close-sm" type="button">
            <i class="fa fa-times"></i>
        </button>
        <strong>Success!</strong> Selected Publisher has been Added.
    </div>

    <section class="panel">
        <header class="panel-heading">
            Update Publisher
        </header>
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                       <label class="control-label col-sm-3">Publisher Name </label>
                        
                        <div class="col-sm-9">
                             <asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>
                        
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
                    <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">Email </label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="email" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                       
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>




             <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                       <label class="control-label col-sm-3">Address  </label>
                        
                        <div class="col-sm-9">
                             <asp:TextBox ID="adress" runat="server" CssClass="form-control"></asp:TextBox>
                        
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
                    <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">Details </label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="detail" runat="server" CssClass="form-control"></asp:TextBox>
                        
                            </div>

                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>



            
             <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                       <label class="control-label col-sm-3">Profile Deatails  </label>
                        
                        <div class="col-sm-9">
                             <asp:TextBox ID="profiledetail" runat="server" CssClass="form-control"></asp:TextBox>
                        
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
                    <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">CNIC </label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="cnic" runat="server" CssClass="form-control"></asp:TextBox>
                        
                            </div>

                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>




             
             <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                       <label class="control-label col-sm-3">LoginId   </label>
                        
                        <div class="col-sm-9">
                             <asp:TextBox ID="loginid" runat="server" CssClass="form-control"></asp:TextBox>
                        
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
                    <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">Password </label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="password" runat="server" CssClass="form-control"></asp:TextBox>
                        
                            </div>

                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                       <label class="control-label col-sm-3">Publisher Code </label>
                        
                        <div class="col-sm-9">
                             <asp:TextBox ID="pubishercode" runat="server" CssClass="form-control"></asp:TextBox>
                        <label class="alert" runat ="server" visible="false" id="pubcode">*</label>
                        </div>
                         
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>


            <hr />
            <div class="row">
                <div class="col-lg-12">
                    <div class="form-group">
                        <div class="text-center">
                            <a href="../Dashboard.aspx" class="btn btn-info" >Back</a>
                            <asp:Button ID="btnSave" runat="server" Text="SAVE CHANGES"
                                CssClass="btn btn-success"  OnClick="btnSave_Click" ></asp:Button>
                            
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
