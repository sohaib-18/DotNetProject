<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="EditVideoURL.aspx.cs" Inherits="WebApplication10.EditVideoURL" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />

    <div class="alert alert-info fade in" runat="server" id="Messagebox" visible="false">
        <button data-dismiss="alert" class="close close-sm" type="button">
            <i class="fa fa-times"></i>
        </button>
        <strong>Success!</strong> Selected URL has been successfulyy edit.
    </div>

    <div class="row panel">
         <section class="panel col-sm-10">
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
                 <div class="col-sm-6">
                      <asp:TextBox ID="systemqrtextbox" runat="server" CssClass="form-control"></asp:TextBox>
                 </div>
            </div>
              <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                        <asp:RadioButton GroupName="qr" ID="customqrradiobtn"  CssClass="radio" Text="Custom QR" runat="server" />
                          
                    </div>
                </div>
                 <div class="col-sm-6">
                      <asp:TextBox ID="customqrtextbox" runat="server" CssClass="form-control"></asp:TextBox>
                 </div>
            </div>
        </div>
    </section>
        <section class="panel col-sm-2">
            <div class="panel-body">
                     <asp:Image ID="qrimage" CssClass ="img-thumbnail" runat="server" />
            </div>
        </section>
    </div>
    
    <section class="panel">
        <header class="panel-heading">
            Add Video URL
        </header>
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">Video URL </label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="videoURL" runat="server" CssClass="form-control"></asp:TextBox>

                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">Chapter ID </label>
                        <div class="col-sm-9">
                            <asp:TextBox ID="chapterID" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
             <div class="row">
                                <div class="col-sm-6">
                    <div class="form-group">
                        <label class="control-label col-sm-3">EN URL To PlayStudent</label>

                        <div class="col-sm-9">
                            <asp:TextBox ID="ENUrlToPlayStudent" runat="server" CssClass="form-control"></asp:TextBox>
                             <label class="alert" runat ="server" visible="false" id="enurlmust">*</label>
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
                            

                            <input id="Button1"  type="button" value="BACK"  onclick="window.history.back();" class="btn btn-info" />
                            <asp:Button ID="save_btn"   runat="server"   Text="SAVE CHANGES"
                                CssClass="btn btn-success"  OnClick="btnSave_Click"></asp:Button>
                        </div>
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
                    $("#ContentPlaceHolder_customqrtextbox").prop("disabled", true);
                    $("#ContentPlaceHolder_customqrtextbox").prop("disabled", true);
    </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
