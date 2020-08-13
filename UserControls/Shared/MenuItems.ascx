<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuItems.ascx.cs" Inherits="WebApplication10.UserControls.Shared.CustomMenuItems" %>
<!--Menu Items start-->

<!-- Menu Items start-->
<div class="col-sm-12">
    <div class="form-group">
        <section class="panel">
            <header class="panel-heading">
                <strong>
                    <asp:Literal ID="moduelName" runat="server"></asp:Literal></strong>

            </header>
            <div class="panel-body">
                <asp:DataList runat="server" ID="MenuItemList" RepeatColumns="2" Width="70%">
                    <ItemTemplate>

                        <div class="xtimeline ">
                            <article class="timeline-item pull-left">
                                <div class="timeline-desk">



                                    <h1 class="red"><a href='<%# Eval("Url") %>'><%# Eval("FriendlyName") %> </a>

                                        <%if (ShowButton)
                                          { %>
                                        <a href='/PermissionEdit.aspx?ID=<%# Eval("Id") %>'>EDIT </a>

                                        <%} %>
                                        <%else
                                          { %>

                                        <%} %>
                                        
                                      

                                    </h1>
                                    <p><%# Eval("Discription") %></p>
                                    <br />

                                </div>
                            </article>



                        </div>



                    </ItemTemplate>
                </asp:DataList>

            </div>
        </section>

    </div>
</div>








<!-- Menu Items end-->

