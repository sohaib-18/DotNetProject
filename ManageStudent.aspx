<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="ManageStudent.aspx.cs" Inherits="Portal.ManageStudent" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <uc1:MessageBox ID="MessageBox1" runat="server" />
    <div class="row">
        <div class="col-lg-12">

            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Manage Students <div class="pull-right"> Download Report As <asp:DropDownList ID="DwonloadTypeDropDownList1" runat="server">
                <asp:ListItem Text="PDF" Selected="True" Value="PDF"></asp:ListItem>
                <asp:ListItem Text="EXCEL" Value="EXCEL"></asp:ListItem>

                                                       </asp:DropDownList>

                              </div>
                        </header>
                        <div class="panel-body">
                            <div class="row">

                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Branch<span class="text-danger">*</span></label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="DDLBranch" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DDLBranch_SelectedIndexChanged"></asp:DropDownList>
                                        </div>
                                        <div style="clear: both;"></div>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Select Class</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlClass_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </div>
                                        <div style="clear: both;"></div>
                                    </div>
                                </div>


                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="control-label col-sm-3">Student Status</label>
                                        <div class="col-sm-9">
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">

                                                <asp:ListItem Value="0">All</asp:ListItem>
                                                <asp:ListItem Value="1">Active</asp:ListItem>
                                                <asp:ListItem Value="2">Left</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div style="clear: both;"></div>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="text-center">
                                        <asp:Button ID="btnSave" runat="server" Text="Search Students"
                                            CssClass="btn  btn-success" OnClick="btnSave_Click"></asp:Button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">


                    <section class="panel">
                        <header class="panel-heading">
                            Student List  <span runat="server" id="StudentCount" class="label label-info pull-right r-activity"></span>
                            <span runat="server" id="Female" class="label label-danger pull-right r-activity"></span>
                            <span runat="server" id="Male" class="label label-success pull-right r-activity"></span>

                        </header>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th><span class="checkboxes select-all-checkbox">
                                        <label class="label_check">
                                            <asp:CheckBox ID="ckbSelectAll" runat="server" Checked="false" CssClass="ckbSelectAll"></asp:CheckBox>
                                            &nbsp;
                                        </label>
                                    </span>

                                    </th>

                                    <th>#</th>
                                    <th>Picture</th>
                                    <th>Student Details                                     

                                    </th>

                                    <th>Admission Date<br />
                                        Date Of Birth</th>
                                    <th>Contact No</th>

                                    <th>Active/Left
                                       
                                    </th>





                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>

                                            <td>
                                                <div class="checkboxes">
                                                    <label class="label_check">
                                                        <asp:CheckBox ID="ckbSelect" runat="server" Checked="false" CssClass="ckbSelect"></asp:CheckBox>
                                                        &nbsp;
                                                    </label>
                                                </div>
                                                <asp:HiddenField ID="hfStudentId" runat="server" Value='<%# Eval("Id") %>' />
                                            </td>

                                            <td><%# Container.ItemIndex + 1 %></td>
                                            <td><a href="#" class="cmt-thumb">
                                                <img class="thumb media-object" width="100" height="120px" src="<%# string.IsNullOrEmpty( Convert.ToString(Eval("PictureURL"))) ? "/img/noprofile.jpg" : Eval("PictureURL") %>" alt="<%# Eval("Name") %>">
                                            </a></td>

                                            <td>Name :  <strong><%# Eval("Name")%></strong>
                                                <br />
                                                S/O,D/O : <strong><%# Eval("FatherName")%></strong>
                                                <br />
                                                System Code :  <strong><%# Eval("GRNo")%></strong>
                                                <br />
                                                GRNO :   <strong><%# Eval("GRNoOld")%></strong>
                                                <br />
                                                Machine Id :   <strong><%# Eval("MachineIds")%></strong>
                                                <br />
                                                Gender :   <strong><%# Eval("Gender")%></strong>


                                            </td>


                                            <td>Addmission Date :<strong> <%# Convert.ToDateTime(Eval("AddmissionDate")).ToString("dd-MMM-yyyy")%></strong>
                                                <br />
                                                Date of Birth <strong><%# Convert.ToDateTime(Eval("DOB")).ToString("dd-MMM-yyyy")%></strong>
                                            </td>


                                            <td>SMS Notification NO :  <strong><%# Eval("MotherCellNo")%></strong>
                                                <br />
                                                Father Contact NO :  <strong><%# Eval("FatherContactNo")%>
                                                    <br />
                                                    Tuition Fee : <%# Eval("TuitionFee")%>
                                            </td>

                                            <td><span class="label <%# Eval("IsLeftSchool") != null ? ( Convert.ToBoolean(Eval("IsLeftSchool")) ? "label-danger" : "label-success" ) : "label-danger" %> "><%# Eval("LeftSchoolOrNot")%></span>

                                            </td>

                                            <td>
                                                <asp:LinkButton Visible="false" ID="SendSmS" class="tooltips" runat="server" Text="Send SMS" CommandArgument='<%#Eval("Id")%>' OnClick="SendSmS_Click" OnClientClick="return confirm ('Are you sure you want to Send SmS?');"></asp:LinkButton>
                                            </td>
                                            <%--<asp:LinkButton title="Assign Default Permissions" data-placement="top" data-toggle="tooltip" class="tooltips" ID="LinkButton1" runat="server" CommandArgument='<%#Eval("Id")%>' OnClick="LinkButton1_Click"><i class="fa fa-sign-in"></i></asp:LinkButton></li>--%>

                                            <%--  <td>
                                       

                                    </td>--%>
                                            <td><a href='Admin_Edit_Student.aspx?Id=<%# Eval("Id")%>' target="_blank">Edit User</a> </td>


                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                        <table class='table <%= Repeater1.Items.Count > 0 ? "hide" : "show" %>'>
                            <tr>
                                <td>No Student found!</td>
                            </tr>
                        </table>
                    </section>
                </div>
            </div>
            <section class="panel">
                <div class="panel-body">
                    <div class="form-group">
                        <div class="col-lg-12 text-center">
                            <asp:Button ID="btnDownload" runat="server" CssClass="btn btn-info" Text="Download All" OnClick="btnDownload_Click" />
                             <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Download Selected" OnClick="Button1_Click" />
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </section>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
     <script src="js/checkboxes.js"></script>
</asp:Content>
