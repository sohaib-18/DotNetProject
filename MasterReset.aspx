<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="MasterReset.aspx.cs" Inherits="WebApplication10.MasterReset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <div class="alert alert-block alert-danger fade in" runat="server" Id="MessageBox" visible="false" >
                                  <button data-dismiss="alert" class="close close-sm" type="button">
                                      <i class="fa fa-times"></i>
                                  </button>
                                  <strong>Oh snap!</strong> <asp:Label ID="messageText" runat="server" Text=""></asp:Label>
                              </div>
    <section class="panel">
        <header class="panel-heading">
            Reset/Set Default Permission to All Students
        </header>
        <div class="panel-body">
            <p class="text-muted">Click on below buttons to Set/Reset default permissions to all students in portal. This action will reset all permission givien previously.</p> <br />
            <p class="text-muted">Last Run Status: <b><asp:Literal ID="StudenTPermissionLit" runat="server"></asp:Literal></b> </p> <br />
          
            
           
           
            <br />
             <asp:Button ID="btnSave" runat="server" Text="Reset Student Permission"
                                CssClass="btn btn-success"  OnClick="btnSave_Click" ></asp:Button>
         
        </div>
    </section>

    <section class="panel">
        <header class="panel-heading">
            Reset/Set Default Permission to Admin (Admin Id define in app stting)
        </header>
        <div class="panel-body">
            <p class="text-muted">Click on below buttons to Set/Reset default permissions to admin in portal. This action will reset all permission givien previously and skip Super Admin Permission</p> <br />
           
           
            <br />
             <asp:Button ID="Button1" runat="server" Text="Reset Admin Permission"
                                CssClass="btn btn-success"  OnClick="Button1_Click" ></asp:Button>
         
        </div>
    </section>

    <section class="panel">
        <header class="panel-heading">
            Reset/Set All Permission to Super Admin (Admin Id define in app stting)
        </header>
        <div class="panel-body">
            <p class="text-muted">Click on below buttons to Set/Reset and Add all new permissions to Super Admin in portal. This action will reset all permission givien previously</p> <br />
           
           
            <br />
             <asp:Button ID="Button2" runat="server" Text="Reset Super Admin Permission"
                                CssClass="btn btn-danger"  OnClick="Button2_Click" ></asp:Button>
         
        </div>
    </section>


     <section class="panel">
        <header class="panel-heading">
            Reset/Set All Machine id of students to DB id
        </header>
        <div class="panel-body">
            <p class="text-muted">Click on below buttons to Set/Reset all machine ids of students to its DB ID. </p> <br />
           
           
            <br />
             <asp:Button ID="Button3" runat="server" Text="Reset Machine ID od all Students"
                                CssClass="btn btn-danger"  OnClick="Button3_Click" ></asp:Button>
         
        </div>
    </section>


     <section class="panel">
        <header class="panel-heading">
           Query Setup
        </header>
        <div class="panel-body">
            <p class="text-muted">Click on below buttons to Set/Reset all machine ids of students to its DB ID. </p> <br />
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                     
                        <div class="col-sm-12">
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
           
            <br />
             <asp:Button ID="Button4" runat="server" Text="Run"
                                CssClass="btn btn-danger"  OnClick="Button4_Click" ></asp:Button><br />


                <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                     
                        <div class="col-sm-12">

                            <asp:GridView ID="GridView1" runat="server"></asp:GridView>

                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
         
        </div>
    </section>


        <section class="panel">
        <header class="panel-heading">
          Update Fee Head Amount with Basic Tuition Fees
        </header>
        <div class="panel-body">
            <p class="text-muted">This action will update fee head with tuition fee amount and will ignore paid fees </p> <br />
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                     
                        <div class="col-sm-12">
                            <asp:TextBox ID="feetypeTextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
           
            <br />
             <asp:Button ID="ResetFeeAmountButton5" runat="server" Text="Run"
                                CssClass="btn btn-danger"  OnClick="ResetFeeAmountButton5_Click" ></asp:Button><br />


         
        </div>
    </section>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
