<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MessageBox.ascx.cs" Inherits="WebApplication10.MessageBox" %>

<asp:Panel ID="pnlMsgBox" runat="server" CssClass="row">
    <div class="col-lg-12">
        <asp:Panel ID="pnlMessage" runat="server">
            <button data-dismiss="alert" class="close close-sm" type="button" runat="server" id="closebutton">
                <i class="fa fa-remove"></i>
            </button>
              <p>
                <asp:Literal ID="litIcon" runat="server"></asp:Literal>
                <asp:Literal ID="litMsg" runat="server"></asp:Literal></p>
            
          
               
        </asp:Panel>
    </div>
</asp:Panel>

