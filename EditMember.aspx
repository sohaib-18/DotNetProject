


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="EditMember.aspx.cs" Inherits="WebApplication10.EditMember" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />



    <section class="panel">
        <header class="panel-heading">
            Edit Member
        </header>
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="memberName" class="control-label col-sm-3">Member Name </label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="memberName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        
                        <div style="clear: both;"></div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="Email" class="control-label col-sm-3">Email </label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="Email" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>




            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="phoneNumber" class="control-label col-sm-3">Phone Number </label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="phoneNumber" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                         
                        <div style="clear: both;"></div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="Address" class="control-label col-sm-3">Address</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="address" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                        
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                 <div class="col-sm-6">
                    <div class="form-group">
                        <label for="RegistrationFees" class="control-label col-sm-3">RegistrationFees</label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="registrationFees" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
                                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="admissionFees" class="control-label col-sm-3">AdmissionFees</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="admissionFees" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>

            </div>
            <div class="row">
                 <div class="col-sm-6">
                    <div class="form-group">
                        <label for="height" class="control-label col-sm-3">Height</label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="height" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
                                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="weight" class="control-label col-sm-3">Weight</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="weight" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>

            </div>
            <div class="row">
                 <div class="col-sm-6">
                    <div class="form-group">
                        <label for="age" class="control-label col-sm-3">Age</label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="age" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
                                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="bodyMass" class="control-label col-sm-3">BodyMass</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="bodyMass" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="profilePic" class="control-label col-sm-3">Upload Profile Pic</label>

                        <div class="col-sm-9">
                            <asp:FileUpload ID="profilePic" runat="server" />
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
                            <asp:Button ID="btnSave" runat="server" Text="Edit Member"
                                CssClass="btn btn-success"></asp:Button>
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


