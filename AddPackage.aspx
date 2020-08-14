


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="AddPackage.aspx.cs" Inherits="WebApplication10.AddPackage" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />



    <section class="panel">
        <header class="panel-heading">
            Add Package
        </header>
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="packageName" class="control-label col-sm-3">Package Name</label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="packageName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        
                        <div style="clear: both;"></div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="packageDetail" class="control-label col-sm-3">Package Detail </label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="packageDetail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>




            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="price" class="control-label col-sm-3">Price </label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="price" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                         
                        <div style="clear: both;"></div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="discountedPrice" class="control-label col-sm-3">Discounted Price</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="discountedPrice" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                        
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                 <div class="col-sm-6">
                    <div class="form-group">
                        <label for="d1" class="control-label col-sm-3">D1</label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="d1" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
                                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="d2" class="control-label col-sm-3">D2</label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="d2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="packageImage" class="control-label col-sm-3">Package Image</label>

                        <div class="col-sm-9">
                            <asp:FileUpload ID="packageImage" accept=".png,.jpg,.jpeg" runat="server" />
                        </div>
                        
                        <div style="clear: both;"></div>
                    </div>
                </div>

                <div class="col-sm-6">
                    <div class="form-group">
                        <label for="packageTypeList" class="control-label col-sm-3">Select Package</label>

                        <div class="col-sm-9">
                            <asp:DropDownList ID="packageTypeList" CssClass="form-control" runat="server">
                                
                            </asp:DropDownList>
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
                            <asp:Button ID="btnSave" runat="server" Text="Add Package"
                                CssClass="btn btn-success" OnClick="btnSave_Click" ></asp:Button>
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

