<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="PermissionGroupsEdit.aspx.cs" Inherits="Portal.PermissionGroupsEdit" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />
    <div class="alert alert-info fade in" runat="server" id="Messagebox" visible="false">
        <button data-dismiss="alert" class="close close-sm" type="button">
            <i class="fa fa-times"></i>
        </button>
        <strong>Success!</strong> Selected Group has been deleted.
    </div>

    <section class="panel">
        <header class="panel-heading">
            Add New Department
        </header>
        <div class="panel-body">
            <div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>
                            Group Name
                        </label>
                        <asp:TextBox ID="txtName" CssClass="form-control col-lg-12" runat="server"></asp:TextBox>
                    </div>
                    <div style="clear: both;"></div>
                </div>
            </div>
        </div>
    </section>
    <section class="panel">
        <div class="panel-body bio-graph-info">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <a href="#" class="btn btn-info">Back</a>
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" OnClick="btnSave_Click" />
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
