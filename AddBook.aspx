<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="WebApplication10.AddBook" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />



    <section class="panel">
        <header class="panel-heading">
            Add Book
        </header>
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">Book Name </label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="bookname" runat="server" CssClass="form-control"></asp:TextBox>
                            <label  runat ="server" visible="false" id="namemust">*</label>
                        </div>
                        
                        <div style="clear: both;"></div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">Category </label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="category" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>




            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">ISBN NUMBER  </label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="isbnnumber" runat="server" CssClass="form-control"></asp:TextBox>
                            <label  runat ="server" visible="false" id="isbnmust">*</label>
                        </div>
                         
                        <div style="clear: both;"></div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">Book Type </label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="booktype" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                        
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">Book Status</label>
                        <div class="col-sm-9">
                            <asp:DropDownList ID="status" CssClass="form-control" runat="server">
                                <asp:ListItem Value="0" Text="Select Book Status"> </asp:ListItem>
                                <asp:ListItem Value="1" Text="Publish"> </asp:ListItem>
                                 <asp:ListItem Value="2" Text="Draft"> </asp:ListItem>
                            </asp:DropDownList>

                        </div>

                        <div style="clear: both;"></div>
                    </div>
                </div>
                 <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">Deatails</label>

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
                        <label class="control-label col-sm-3">Book Code </label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="bookcode" runat="server" CssClass="form-control"></asp:TextBox>
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
                            <a href="../Dashboard.aspx" class="btn btn-info">Back</a>
                            <asp:Button ID="btnSave" runat="server" Text="Add Book"
                                CssClass="btn btn-success" OnClick="btnSave_Click"></asp:Button>
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
