<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="AddContent.aspx.cs" Inherits="Portal.AddContent" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />

    <div class="alert alert-info fade in" runat="server" id="Messagebox" visible="false">
        <button data-dismiss="alert" class="close close-sm" type="button">
            <i class="fa fa-times"></i>
        </button>
        <strong>Success!</strong> Selected Country has been deleted.
    </div>

  


        <section class="panel">
        <header class="panel-heading">
           Content Details
        </header>
        <div class="panel-body">
         
                <div class="col-sm-6">
                <div class="form-group">
                    <label class="control-label col-sm-3">Name</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="NameTextBox1" runat="server" CssClass="form-control col-lg-12"></asp:TextBox>
                    </div>
                    <div style="clear: both;"></div>
                </div>
            </div>
            
            
               <div class="col-sm-6">
                <div class="form-group">
                    <label class="control-label col-sm-3">Book Type</label>
                    <div class="col-sm-9">
                        <asp:DropDownList ID="ddlBookType" runat="server" CssClass="form-control"  OnSelectedIndexChanged="ddlBranch_SelectedIndexChanged"></asp:DropDownList>
                    </div>                    <div style="clear: both;"></div>
                </div>
            </div>

               <div class="col-sm-6">
                <div class="form-group">
                    <label class="control-label col-sm-3">Icon URL</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="IconTextBox1" runat="server" CssClass="form-control col-lg-12"></asp:TextBox>
                    </div>
                    <div style="clear: both;"></div>
                </div>
            </div>

               <div class="col-sm-6">
                <div class="form-group">
                    <label class="control-label col-sm-3">Description</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="DescTextBox2s" runat="server" CssClass="form-control col-lg-12"></asp:TextBox>
                    </div>
                    <div style="clear: both;"></div>
                </div>
            </div>

         <%--      <div class="col-sm-6">
                <div class="form-group">
                    <label class="control-label col-sm-3">Event Message</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control col-lg-12"></asp:TextBox>
                    </div>
                    <div style="clear: both;"></div>
                </div>
            </div>


            <div class="col-sm-6">
                <div class="form-group">
                    <label class="control-label col-sm-3">Class</label>
                    <div class="col-sm-9">
                        <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control"></asp:DropDownList>
                    </div>
                    <div style="clear: both;"></div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="control-label col-sm-3">Date</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="TxtDate" runat="server" MaxLength="150" CssClass="form-control input-sm date-picker"></asp:TextBox>
                    </div>
                    <div style="clear: both;"></div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="control-label col-sm-3">Event Message</label>
                    <div class="col-sm-9">
                        <asp:TextBox ID="TxtEventMessage" runat="server" CssClass="form-control col-lg-12"></asp:TextBox>
                    </div>
                    <div style="clear: both;"></div>
                </div>
            </div>--%>



        </div>

        <hr />

        <div class="row">
            <div class="col-lg-12">
                <div class="form-group">
                    <div class="text-center">
                        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn  btn-success" OnClick="Button1_Click" ></asp:Button>
                    </div>
                    <div style="clear: both;"></div>
                </div>
            </div>
        </div>

    </section>




    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    My Contents
                </header>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                               <th>Type</th>
                              <th>Status</th>

                            <th>Add Pages</th>
                              <th>Add Sticker</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="ContentRepeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Container.ItemIndex + 1 %></td>
                                    <td> <strong> <%# Eval("BookName")%></strong>
                                        <br />

                                       <i> <%# Eval("BookDisc")%> </i>

                                    </td>


                                    <td>

                                        <%#  GetBookAccessStatus(Convert.ToInt32( Eval("BookType"))) %>

                                    </td>
                                         <td>

                                        <%#  GetBookStatus(Convert.ToBoolean( Eval("IsPubished"))) %>

                                    </td>

                                    <%--<a href="CountryEdit.aspx"></a>--%>
                                    <td><a class="btn btn-info btn-xs" href='AddPages.aspx?ID=<%#Eval("Id")%>'><i class="fa fa-edit"></i></a></td>


                                       <td><a class="btn btn-info btn-xs" href='AddPages.aspx?ID=<%#Eval("Id")%>'><i class="fa fa-bookmark"></i></a></td>   
                                    <td>
                                        <asp:LinkButton ID="ENameLinkBtn" CssClass="btn btn-danger btn-xs" runat="server" Text="Delete" CommandArgument='<%#Eval("Id")%>' OnClick="ENameLinkBtn_Click" OnClientClick="return confirm ('Are you sure you want to delete this Country ?');"></asp:LinkButton>
                                    </td>

                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                <table class='table <%= ContentRepeater1.Items.Count > 0 ? "hide" : "show" %>'>
                    <tr>
                        <td>No Country  found!</td>
                    </tr>
                </table>
            </section>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
