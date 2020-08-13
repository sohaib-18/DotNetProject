<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="AddVideoURL.aspx.cs" EnableEventValidation="true" Inherits="WebApplication10.AddVideoURL" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" Visible="false" runat="server" />

    <section class="panel">
        <header class="panel-heading">
            QR Setting
        </header>
        <div class="panel-body">
             <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                        <asp:RadioButton ID="systemqrradiobtn"  GroupName="qr"  CssClass="radio" Text="System QR" runat="server" />
                          
                    </div>
                </div>
                 <div class="col-sm-8">
                      <asp:TextBox ID="systemqrtextbox" runat="server" CssClass="form-control"></asp:TextBox>
                 </div>
            </div>
              <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                        <asp:RadioButton GroupName="qr" ID="customqrradiobtn"  CssClass="radio" Text="Custom QR" runat="server" />
                          
                    </div>
                </div>
                 <div class="col-sm-8">
                      <asp:TextBox ID="customqrtextbox" runat="server" CssClass="form-control"></asp:TextBox>
                 </div>
            </div>
        </div>
    </section>
    <section class="panel">
        <header class="panel-heading">
            Add Video URL
        </header>
        <div class="panel-body">
           
             <div class="row">
                                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">EN URL To PlayStudent</label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="ENUrlToPlayStudent" runat="server" CssClass="form-control"></asp:TextBox>
                              <label class="alert alert-danger" runat ="server" visible="false" id="enurlmust">*</label>
                        </div>
                      
                        <div style="clear: both;"></div>
                    </div>
                </div>
                 <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">EN URL To PlayTeacher</label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="ENUrlToPlayTeacher" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                
                                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">UR URL TO PlayStudent</label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="URUrlToPlayStudent" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
                    <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">UR URL To PlayTeacher</label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="URUrlToPlayTeacher" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>      
            </div>
            </div>
                    




            








            <hr />
    </section>


     <section class="panel">
        <header class="panel-heading">
           Chapter Details
        </header>
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">Chapter Name </label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="ChapterNameTextBox1" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">Details  </label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="DetailsTextBox2" runat="server" CssClass="form-control"></asp:TextBox>
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
                            <a href="../AllBooks.aspx" class="btn btn-info">BACK</a>
                            <asp:Button ID="Button1"  runat="server"  Text="ADD VIDEO URL"
                                CssClass="btn btn-success" OnClick="btn_save"></asp:Button>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script>
        $(function () {
            $('#ContentPlaceHolder_systemqrradiobtn').change(function () {
                if ($(this).is(':checked')) {
                    //$("#ContentPlaceHolder_systemqrtextbox").prop("disabled", false);
                    $("#ContentPlaceHolder_customqrtextbox").prop("disabled", true);
                }
                else {
                  // $("#ContentPlaceHolder_systemqrtextbox").prop("disabled", false);
                   $("#ContentPlaceHolder_customqrtextbox").prop("disabled", false);
                }
            })
        });
        $(function () {
            $('#ContentPlaceHolder_customqrradiobtn').change(function () {
                if ($(this).is(':checked')) {
                    $("#ContentPlaceHolder_systemqrtextbox").prop("disabled", true);
                    $("#ContentPlaceHolder_customqrtextbox").prop("disabled", false);
                }
                else {
                    $("#ContentPlaceHolder_systemqrtextbox").prop("disabled", false);
                    $("#ContentPlaceHolder_customqrtextbox").prop("disabled", false);
                }
            })
        });
    </script>
       

    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    VIDEO URL
                </header>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                          
                           
                           
                             <th>QR Type</th>
                            <th>Detail</th>
                              <th>QR Code</th>
                            <th>Student URL (EN) <br/>
                                Teacher URL (EN) <br/> 
                                Student URL (UR) <br/> 
                                Teacher URL (UR) <br/> 
                            </th>
                         
                              <th>QR Image</th>
                            <th>Edit URL <br /> Delete</th>
                          
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Container.ItemIndex + 1 %></td>
                                  
                                 
                                 
<%--                                    <td><%# IsSystemCode(Convert.ToString(Eval("IsSystemCode"))) %></td>--%>
                                    <td><%# Eval("Details")%></td>
                                    <td><%# Eval("QrCode")%></td>
                                    <td>
                                        
                                 <strong>  Student URL (EN) :</strong> <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl =' <%# Eval("ENUrlToPlayStudent")%>'><%# Eval("ENUrlToPlayStudent")%>'</asp:HyperLink>     <br/>
                                 <strong>     Teacher URL (EN) :</strong> <%# Eval("ENUrlToPlayTeacher")%> <br/>
                                  <strong>  Student URL (UR) :</strong>  <%# Eval("URUrlToPlayStudent")%><br/>
                                 <strong>  Teacher URL (UR) :</strong>   <%# Eval("URUrlToPlayTeacher")%></td>
                                      <td>      <img alt=""  width="50px" height="50px" src='<%# Eval("QrCodeUrl")%> ' />

                                           <asp:LinkButton ID="download" CssClass="btn btn-primary btn-xs" OnClick="btn_download" runat="server" Text="download" CommandArgument='<%#Eval("Id")%>'></asp:LinkButton>
                                      </td>
                                
                                    
                                    <td>
                                        <a class="btn btn-info btn-xs" href='EditVideoURL.aspx?ID=<%#Eval("EncryptedId")%>'><i class="fa fa-edit"></i></a>
                                        <br />    <asp:LinkButton ID="ENameLinkBtn" CssClass="btn btn-danger btn-xs" OnClick="btn_delete" runat="server" Text="DELETE" CommandArgument='<%#Eval("Id")%>'></asp:LinkButton>
                                
                                    </td>
                                   
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                <table class='table <%= Repeater1.Items.Count > 0 ? "hide" : "show" %>'>
                    <tr>
                        <td>No URL found</td>
                    </tr>
                </table>
            </section>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
