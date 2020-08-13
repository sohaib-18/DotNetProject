<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="ManageUserPermissions.aspx.cs" Inherits="Portal.ManageUserPermissions" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
    <style>
        .label_check {
            cursor: pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <uc1:MessageBox ID="MessageBox1" runat="server" />

    <div class="row">
        <aside class="profile-nav col-lg-3">
            <section class="panel">
                <div class="user-heading round">
                    <a href="#">
                        <asp:Image ID="imgEmployee" runat="server" ImageUrl="img/profile-avatar.jpg" />
                    </a>
                    <h1>
                        <asp:Literal runat="server" ID="employeeNameLiteral"></asp:Literal></h1>
                    <span><span runat="server" id="Span1" visible="true" class="label label-info label-mini">
                        <asp:Literal ID="DesignationLit" runat="server"></asp:Literal></> </span></span>
                </div>
                <ul class="nav nav-pills nav-stacked">
                </ul>
            </section>
        </aside>

        <aside class="profile-info col-lg-9">
            <section class="panel">
                <header class="panel-heading text-info">
                    Employee Information
                </header>
                <div class="panel-body">
                    <asp:Repeater ID="employeePermissionsRepeater" runat="server" OnItemDataBound="employeePermissionsRepeater_ItemDataBound">
                        <ItemTemplate>
                            <div>
                                <label class="label_check">
                                    <asp:HiddenField runat="server" ID="PermissionIdHiddenField" Value='<%# Eval("Id") %>' />
                                    <asp:CheckBox runat="server" ID="PermissionCheckbox" />
                                    <asp:Literal runat="server" ID="adfda" Text='<%# Eval("FriendlyName") %>'></asp:Literal>
                                    |
                                     <asp:Literal runat="server" ID="Literal1" Text='<%# Eval("Name") %>'></asp:Literal>
                                    |
                                     <asp:Literal runat="server" ID="Literal2" Text='<%# Eval("Discription") %>'></asp:Literal>
                                </label>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <section class="panel">
                        <div class="panel-body bio-graph-info">
                            <div class="row">
                                <div class="col-lg-12 text-center">
                                    <a href="EmployeeDirectory.aspx" class="btn  btn-info">Back</a>
                                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn  btn-success" OnClick="btnSave_Click" />
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </section>
        </aside>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
