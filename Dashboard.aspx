<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Global.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApplication10.Dashboard" %>

<%@ Register Src="UserControls/Shared/MessageBox.ascx" TagName="MessageBox" TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <uc1:MessageBox ID="MessageBox1" runat="server" />


    <section class="panel">
        <header class="panel-heading">
            DASHBOARD
        </header>
        <div class="panel-body">
            <hr />
            <div class="row">
                <div class="col-lg-12">
                    <div class="form-group">
                        
                        
                        <div class="row state-overview">
                  <div class="col-lg-3 col-sm-6">
                      <section class="card">
                          <div class="symbol terques">
                              <i class="fa fa-book"></i>
                          </div>
                          <div class="value">
                              <h1 class="count" runat="server" id="numberofbooks"></h1>
                              <p>Total Books</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="card">
                          <div class="symbol red">
                              <i class="fa fa-qrcode"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count2" id="totalqr" runat="server"></h1>
                              <p>Total QR</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="card">
                          <div class="symbol yellow">
                              <i class="fa fa-eye"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count3" runat="server" id="totalviews"></h1>
                              <p>New Views</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="card">
                          <div class="symbol blue">
                              <i class="fa fa-sign-in"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count4" runat="server" id="numberoflogin"></h1>
                              <p>Number of Login</p>
                          </div>
                      </section>
                  </div>
              </div>
                        
                        
                        <div style="clear: both;"></div>
                    </div>
                </div>
            </div>
        </div>
        <script>

        </script>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
