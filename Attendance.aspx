


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="WebApplication10.Attendance" %>

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
                        <label for="selectMemberName" class="control-label col-sm-3">Select Member Name</label>

                        <div class="col-sm-9">
                            <asp:DropDownList ID="selectMemberName" CssClass="form-control" runat="server">
                                
                            </asp:DropDownList>
                        </div>
                        
                        <div style="clear: both;"></div>
                    </div>
                </div>
            <div class="col-sm-6">
                    <div class="form-group">
                        <label for="selectAttendanceStatus" class="control-label col-sm-5">Select Attendance Status</label>

                        <div class="col-sm-7">
                            <asp:DropDownList ID="selectAttendanceStatus" CssClass="form-control" runat="server">
                                
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
                            <asp:Button ID="btnSave" runat="server" Text="Mark Attendance"
                                CssClass="btn btn-success" ></asp:Button>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
        </section>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
