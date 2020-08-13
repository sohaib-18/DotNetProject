<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="EmployeeDirectory.aspx.cs" Inherits="Portal.EmployeeDirectory" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <uc1:MessageBox ID="MessageBox1" runat="server" />

    <div class="row">
        <div class="col-xs-12">

            <section class="panel">
                <header class="panel-heading">
                    Manage Employee
                </header>
                <div class="panel-body">
                    <div class="row">

                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="control-label col-sm-2">Branch</label>
                                <div class="col-sm-9">
                                    <asp:DropDownList ID="ddlBranch" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="ddlBranch_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>
                                <div style="clear: both;"></div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label class="control-label col-sm-2">Department</label>
                                <div class="col-sm-9">
                                    <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlDepartment_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>
                                <div style="clear: both;"></div>
                            </div>
                        </div>

                    </div>
                    <hr />
                    <div class="form-group">
                        <div class="col-lg-12 text-center">

                            <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-info" Text="Search" OnClick="btnSearch_Click" />
                        </div>
                        <div style="clear: both;"></div>
                    </div>


                </div>
            </section>

        </div>
    </div>


    <ul class="directory-list" runat="server" id="NavigationCharacter">
    </ul>
    <span runat="server" id="EmployeeCount" class="label label-primary pull-right r-activity"></span>


    <div class="directory-info-row">
        <div class="row">

            <asp:Repeater ID="rptEmployees" runat="server">
                <ItemTemplate>
                    <div class="col-md-6 col-sm-6">
                        <div class="panel">
                            <div class="panel-body">
                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="thumb media-object" width="175px" height="175px" src="<%# string.IsNullOrEmpty( Convert.ToString(Eval("ImageLocation"))) ? "/img/noprofile.jpg" : Eval("ImageLocation") %>" alt="<%# Eval("EmployeeName") %>">
                                    </a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    
                                    <div class="media-body">
                                        <h4><%# Eval("EmployeeName") %>
                                            <br />
                                            <span class="text-muted small"><%# Eval("DesignationName") %></span>
                                        </h4>
                                        <address>
                                            <strong>Employee Code:&nbsp; <%# Eval("EmployeeCodeNew") %></strong><br>
                                            Cell No:&nbsp; <%# Eval("CellNo") %><br>
                                            Timings:&nbsp; <%# Eval("EmployeeShiftsInfo") !=null ?  Eval("EmployeeShiftsInfo.GroupName") + " (" + ((TimeSpan)Eval("EmployeeShiftsInfo.TimeIn")).ToString(@"hh\:mm") + " to " + ((TimeSpan)Eval("EmployeeShiftsInfo.TimeOut")).ToString(@"hh\:mm") + ")" : "" %>
                                            <br />
                                            Machine Code:&nbsp;<strong> <%# Eval("EmployeeMachineCode") %></strong><br>
                                            Employment Status:<strong>  <span class="<%#  GetAttendenceStatusByStatus( Eval("IsActive")) %>"><%#  GetEmploymentStatus( Eval("IsActive")) %></span> </strong>
                                            <br />
                                            Employee Type:&nbsp;<strong>    <%# Eval("PayTypeName") %></strong><br>
                                            <br>

                                            <ul class="social-links">
                                                <li><a title="Edit" data-placement="top" data-toggle="tooltip" class="tooltips" href="Admin_Employee_Edit.aspx?id=<%# Eval("Id") %>" data-original-title="Edit"><i class="fa fa-edit"></i></a></li>
                                                <li><a title="Manage User Permissions" data-placement="top" data-toggle="tooltip" class="tooltips" href="SetGroupPermission.aspx?eid=<%# Eval("Id") %>&utid=<%# Eval("EmployeeType") %>" data-original-title="Manage User Permissions"><i class="fa fa-lock"></i></a></li>
                                                <li>
                                                    <asp:LinkButton title="Assign Default Permissions" data-placement="top" data-toggle="tooltip" class="tooltips" ID="LinkButton1" runat="server" CommandArgument='<%#Eval("Id")%>' OnClick="LinkButton1_Click"><i class="fa fa-sign-in"></i></asp:LinkButton></li>
                                            </ul>
                                        </address>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <% if (rptEmployees.Items.Count < 1)
               { %>
            <div class="col-sm-12">
                <div class="panel">
                    <div class="panel-body">
                        <div class="media">
                            No employee found!
                        </div>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    </div>


    <!-- page end-->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
