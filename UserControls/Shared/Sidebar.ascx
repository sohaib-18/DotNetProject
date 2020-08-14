<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Sidebar.ascx.cs" Inherits="WebApplication10.UserControls.Shared.Sidebar" %>
<!--sidebar start-->
<aside>
    
        <div id="sidebar" class="nav-collapse " tabindex="0" style="overflow: hidden; background-color:white; outline: none;">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
                  <li>
                      <a href="../AddMember.aspx">
                          <i class="fa fa-user fa-lg "></i>
                          <span>Add Member</span>
                      </a>
                  </li>
                  
                  <li>
                      <a href="../AddPackage.aspx" class="dcjq-parent">
                          <i class="fa fa-plus"></i>
                          <span>Add Package</span>
                       </a>
                  </li>
                  <li>
                      <a href="../Attendance.aspx">
                          <i class="fa fa-calendar-o"></i>
                          <span>Mark Attendance</span>
                      </a>
                  </li>
                  <li>
                      <a href="../Fees.aspx">
                          <i class="fa fa-money"></i>
                          <span>Pay Fees</span>
                      </a>
                  </li>
                   <li>
                      <a href="../ViewAllMembers.aspx">
                          <i class="fa fa-users"></i>
                          <span>All Members</span>
                      </a>
                  </li>
                   <li>
                      <a href="../AllBooks.aspx">
                          <i class="fa fa-th-large"></i>
                          <span>All Packages</span>
                      </a>
                  </li>
                   <li>
                      <a href="../AllBooks.aspx">
                          <i class="fa fa-calendar"></i>
                          <span>Attendance Record</span>
                      </a>
                  </li>
                 
                  

                  <!--multi level menu start-->
                 
                  <!--multi level menu end-->

              </ul>
              <!-- sidebar menu end-->
          </div>


        <!-- sidebar menu start-->

         <!--
        <ul class="sidebar-menu"  id="nav-accordion">
            <li>
                      <a href="fullmenu.aspx">
                          <i class="fa fa-list-ul red"></i>
                          <span>See Full Menu</span>
                      </a>
                  </li>
             <li>
                      <a href="default.aspx">
                          <i class="fa fa-desktop red"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>
            <asp:Repeater runat="server" ID="MenuGroupRepeater" OnItemDataBound="MenuGroupRepeater_ItemDataBound">
                <ItemTemplate>

                    <li class="sub-menu">

                        <a href='<%# "menus.aspx?id=" + Eval("PermissionGroupId") %>' class="">
                            <i class="fa  fa-arrow-right "></i>
                            <span><%# Eval("PermissionGroupName") %></span>
                        </a>
                    <%--    <ul class="sub">

                            <asp:Repeater runat="server" ID="MenuItemRepeater">
                                <ItemTemplate>
                                    <li>
                                        <asp:HyperLink ID="MenuLink" runat="server" CssClass="" NavigateUrl='<%# "~/" + Eval("Url") %>'>
                                       
                                        <span><%# Eval("FriendlyName") %></span>
                                        </asp:HyperLink>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>

                        </ul>--%>

                    </li>

                </ItemTemplate>
            </asp:Repeater>

        </ul>



        <!-- sidebar menu end-->
        -->
    
</aside>
<!--sidebar end-->
