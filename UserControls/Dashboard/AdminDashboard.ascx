<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.ascx.cs" Inherits="Portal.UserControls.Dashboard.AdminDashboard" %>



<script src="http://code.highcharts.com/highcharts.js"></script>
<script src="http://code.highcharts.com/highcharts-3d.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>


<section class="panel">
            <div class="panel-body">
                <div class="task-progress">
                    <h1>Admin Dashboard</h1>
                    <p>Select campus to see its stats</p>
                </div>
                 <div class="col-sm-6">
                     <div class="form-group">
                    <label class="control-label col-sm-3">Branch<span class="text-danger">*</span></label>
                         <div class="col-sm-6">
                      
                                <asp:DropDownList ID="ddlBranch" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlBranch_SelectedIndexChanged"></asp:DropDownList>
             
                                        </div>
                    <div style="clear: both;"></div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="control-label col-sm-3">Date<span class="text-danger">*</span></label>
                    <div class="col-sm-6">
                    
                           <asp:DropDownList ID="DateDropDown" runat="server" AutoPostBack="true" CssClass="form-control input-sm" OnSelectedIndexChanged="DateDropDown_SelectedIndexChanged"></asp:DropDownList>



                    </div>
                    <div style="clear: both;"></div>
                </div>
            </div>
                
                
                
                
                
                 
            </div>
        

        </section>

<!--state overview start-->
<div class="row state-overview">
    <div class="col-lg-3 col-sm-6">
        <section class="panel">
            <div class="symbol bluish">
                <i class="fa fa-user"></i>
            </div>
            <div class="value">
                <h1>
                    <asp:Literal ID="litAddmission" runat="server">0</asp:Literal></h1>
                <p>New Admissions</p>
            </div>
        </section>
    </div>
    <div class="col-lg-3 col-sm-6">
        <section class="panel">
            <div class="symbol redish">
                <i class="fa fa-tags"></i>
            </div>
            <div class="value">
                <h1>
                    <asp:Literal ID="litFeeColection" runat="server">0</asp:Literal></h1>
                <p>Fees Collection</p>
            </div>
        </section>
    </div>
    <div class="col-lg-3 col-sm-6">
        <section class="panel">
            <div class="symbol teal">
                <i class="fa fa-users"></i>
            </div>
            <div class="value">
                <h1>
                    <asp:Literal ID="litUnsycEmployee" runat="server">0</asp:Literal></h1>
                <p>Un-sync Attendance</p>
            </div>
        </section>
    </div>
    <div class="col-lg-3 col-sm-6">
        <section class="panel">
            <div class="symbol blue">
                <i class="fa fa-bar-chart"></i>
            </div>
            <div class="value">
                <h1>
                    <asp:Literal ID="litTotalExpense" runat="server">0</asp:Literal></h1>
                <p>Total Expense</p>
            </div>
        </section>
    </div>

    <div class="col-lg-3 col-sm-6">
        <section class="panel">
            <div class="symbol redish">
                <i class="fa  fa-mobile"></i>
            </div>
            <div class="value">
                <h1>
                    <asp:Literal ID="litStdAttSMS" runat="server">0</asp:Literal></h1>
                <p>Total Student Attendance SMS</p>
            </div>
        </section>
    </div>
    <div class="col-lg-3 col-sm-6">
        <section class="panel">
            <div class="symbol teal">
                <i class="fa  fa-mobile"></i>
            </div>
            <div class="value">
                <h1>
                    <asp:Literal ID="litStudentSMS" runat="server">0</asp:Literal></h1>
                <p>Total Student SMS</p>
            </div>
        </section>
    </div>
    <div class="col-lg-3 col-sm-6">
        <section class="panel">
            <div class="symbol blue">
                <i class="fa  fa-mobile"></i>
            </div>
            <div class="value">
                <h1>
                    <asp:Literal ID="litEmployeeSMS" runat="server">0</asp:Literal></h1>
                <p>Total Employee SMS</p>
            </div>
        </section>
    </div>
</div>
<!--state overview end-->

<!--state overview start-->
<div class="row state-overview">
    <div class="col-lg-3 col-sm-6">
        <section class="panel">
            <div class="symbol green">
                <i class="fa fa-bullhorn"></i>
            </div>
            <div class="value">
                <h1>
                    <asp:Literal ID="litComplains" runat="server">0</asp:Literal></h1>
                <p>New Complains</p>
            </div>
        </section>
    </div>
    <div class="col-lg-3 col-sm-6">
        <section class="panel">
            <div class="symbol redo">
                <i class="fa fa-comment-o"></i>
            </div>
            <div class="value">
                <h1>
                    <asp:Literal ID="litStudentLeaves" runat="server">0</asp:Literal></h1>
                <p>Student Leave Requests</p>
            </div>
        </section>
    </div>
</div>
<!--state overview end-->
<div class="row">
    <div class="col-lg-12">
        <!--user info table start-->
        <section class="panel">
            <div class="panel-body">
                <div class="task-progress">
                    <h1>Employee Attendance</h1>
                    <p>Today  </p>
                  
                </div>
            </div>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Branch Name</th>
                        <th>Total Employees</th>
                        <th>Total Present</th>
                        <th>Total Absent</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptAllbranches" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Container.ItemIndex + 1 %></td>
                                <td><%# Eval("BranchName")%></td>
                                <td><%# Eval("TotalEmployees")%></td>
                                <td><%# Eval("TotalPresent")%></td>
                                <td><%# Eval("TotalAbsent")%></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </section>
        <!--user info table end-->
    </div>
</div>

<div class="row hide">
    <div class="col-sm-12 hide">
        <!--custom chart start-->
        <div class="border-head">
            <h3>Fees Earning Graph</h3>
        </div>
        <div class="custom-bar-chart">
            <div id="ChartContainer" style="height: 330px"></div>
        </div>
        <!--custom chart end-->
    </div>
    <div class="col-sm-4 hide">
        <!--new earning start-->
        <div class="panel terques-chart">
            <div class="panel-body chart-texture">
                <div class="chart">
                    <div class="heading">
                        <span>Friday</span>
                        <strong>$ 57,00 | 15%</strong>
                    </div>
                    <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,564,455]"></div>
                </div>
            </div>
            <div class="chart-tittle">
                <span class="title">New Earning</span>
                <span class="value">
                    <a href="#" class="active">Market</a>
                    |            
                        <a href="#">Referral</a>
                    |     
                        <a href="#">Online</a>
                </span>
            </div>
        </div>
        <!--new earning end-->

        <!--total earning start-->
        <div class="panel green-chart">
            <div class="panel-body">
                <div class="chart">
                    <div class="heading">
                        <span>June</span>
                        <strong>23 Days | 65%</strong>
                    </div>
                    <div id="barchart"></div>
                </div>
            </div>
            <div class="chart-tittle">
                <span class="title">Total Earning</span>
                <span class="value">$, 76,54,678</span>
            </div>
        </div>
        <!--total earning end-->
    </div>
</div>
<div class="row ">
    <div class="col-lg-12">
        <!--user info table start-->
        <section class="panel">
            
            <asp:DataList
                ID="EmployeeAttendanceRepeater"
                runat="server"
                CssClass="table table-hover"
                RepeatDirection="Horizontal"
                RepeatColumns="3">
                <ItemTemplate>
                    <td><%# Eval("EmployeeName")%> </td>
                    <td>
                        <span><%#  GetAttendenceStatusByStatus(Convert.ToInt32( Eval("AttendenceType"))) %></span>
                        <span style="margin-top: 5px; display: inline-block;"><%# GetCheckInTime(Eval("CheckINTime"),Convert.ToInt32( Eval("AttendenceType"))) %></span>
                    </td>
                    <td></td>
                </ItemTemplate>
            </asp:DataList>

        </section>
        <!--user info table end-->
    </div>
</div>
<%--<div class="row">
    <div class="col-lg-12">
        <!--timeline start-->
        <section class="panel">
            <div class="panel-body">
                <div class="text-center mbot30">
                    <h3 class="timeline-title">Calender</h3>
                    <p class="t-info">This is a project timeline</p>
                </div>

                <div class="timeline">
                    <article class="timeline-item">
                        <div class="timeline-desk">
                            <div class="panel">
                                <div class="panel-body">
                                    <span class="arrow"></span>
                                    <span class="timeline-icon red"></span>

                                    <h1 class="red">12 July | Sunday</h1>
                                    <p><a href="#">Test Event 1 </a>Admin added new milestone <span><a href="#" class="green">Mid Terms</a></span></p>
                                </div>
                            </div>
                        </div>
                    </article>
                    <article class="timeline-item alt">
                        <div class="timeline-desk">
                            <div class="panel">
                                <div class="panel-body">
                                    <span class="arrow-alt"></span>
                                    <span class="timeline-icon green"></span>

                                    <h1 class="green">10 July | Wednesday</h1>
                                    <p><a href="#">Test Event 1 </a>Admin added new milestone <span><a href="#" class="green">School Inspection</a></span></p>
                                </div>
                            </div>
                        </div>
                    </article>
                    <article class="timeline-item">
                        <div class="timeline-desk">
                            <div class="panel">
                                <div class="panel-body">
                                    <span class="arrow"></span>
                                    <span class="timeline-icon red"></span>

                                    <h1 class="red">12 July | Sunday</h1>
                                    <p><a href="#">Test Event 1 </a>Admin added new milestone <span><a href="#" class="green">EID</a></span></p>
                                </div>
                            </div>
                        </div>
                    </article>
                    <article class="timeline-item alt">
                        <div class="timeline-desk">
                            <div class="panel">
                                <div class="panel-body">
                                    <span class="arrow-alt"></span>
                                    <span class="timeline-icon green"></span>

                                    <h1 class="green">10 July | Wednesday</h1>
                                    <p><a href="#">Test Event 1 </a>Admin added new milestone <span><a href="#" class="green">Summer Vocation</a></span></p>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>

                <div class="clearfix">&nbsp;</div>
            </div>
        </section>
        <!--timeline end-->
    </div>
    <div class="col-lg-4 hide">
        <!--revenue start-->
        <section class="panel">
            <div class="revenue-head">
                <span>
                    <i class="fa fa-bar-chart"></i>
                </span>
                <h3>Revenue</h3>
                <span class="rev-combo pull-right">June 2013
                </span>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6 col-sm-6 text-center">
                        <div class="easy-pie-chart">
                            <div class="percentage" data-percent="35"><span>35</span>%</div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-6">
                        <div class="chart-info chart-position">
                            <span class="increase"></span>
                            <span>Revenue Increase</span>
                        </div>
                        <div class="chart-info">
                            <span class="decrease"></span>
                            <span>Revenue Decrease</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-footer revenue-foot">
                <ul>
                    <li class="first active">
                        <a href="javascript:;">
                            <i class="fa fa-bullseye"></i>
                            Graphical
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class=" fa fa-th-large"></i>
                            Tabular
                        </a>
                    </li>
                    <li class="last">
                        <a href="javascript:;">
                            <i class=" fa fa-align-justify"></i>
                            Listing
                        </a>
                    </li>
                </ul>
            </div>
        </section>
        <!--revenue end-->
        <!--features carousel start-->
        <section class="panel hide">
            <div class="flat-carousal">
                <div id="owl-demo" class="owl-carousel owl-theme">
                    <div class="item">
                        <h1>Flatlab is new model of admin dashboard for happy use</h1>
                        <div class="text-center">
                            <a href="javascript:;" class="view-all">View All</a>
                        </div>
                    </div>
                    <div class="item">
                        <h1>Fully responsive and build with Bootstrap 3.0</h1>
                        <div class="text-center">
                            <a href="javascript:;" class="view-all">View All</a>
                        </div>
                    </div>
                    <div class="item">
                        <h1>Responsive Frontend is free if you get this.</h1>
                        <div class="text-center">
                            <a href="javascript:;" class="view-all">View All</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <ul class="ft-link">
                    <li class="active">
                        <a href="javascript:;">
                            <i class="fa fa-reorder"></i>
                            Sales
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class=" fa fa-calendar-empty"></i>
                            promo
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class=" fa fa-camera"></i>
                            photo
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class=" fa fa-circle"></i>
                            other
                        </a>
                    </li>
                </ul>
            </div>
        </section>
        <!--features carousel end-->
    </div>
</div>--%>
<section class="panel">
    <header class="panel-heading">
        My Events
    </header>
   
</section>

<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                My Events
            </header>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Branch</th>
                        <th>Class</th>
                        <th>Date</th>
                        <th>Event Message</th>

                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Container.ItemIndex + 1 %></td>
                                <td><%# Eval("BranchName")%></td>
                                <td><%# Eval("ClassName")%></td>
                                <td><%# Convert.ToDateTime(Eval("Date")).ToString("dd-MMM-yyyy")%></td>
                                <td><%# Eval("EventMessage")%></td>

                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
            <table class='table <%= Repeater1.Items.Count > 0 ? "hide" : "show" %>'>
                <tr>
                    <td>No Event found!</td>
                </tr>
            </table>
        </section>
    </div>
</div>


<%--<div class="row hide">
    <div class="col-lg-8">
        <!--latest product info start-->
        <section class="panel post-wrap pro-box">
            <aside>
                <div class="post-info">
                    <span class="arrow-pro right"></span>
                    <div class="panel-body">
                        <h1><strong>popular</strong>
                            <br>
                            Brand of this week</h1>
                        <div class="desk yellow">
                            <h3>Dimond Ring</h3>
                            <p>Lorem ipsum dolor set amet lorem ipsum dolor set amet ipsum dolor set amet</p>
                        </div>
                        <div class="post-btn">
                            <a href="javascript:;">
                                <i class="fa fa-chevron-sign-left"></i>
                            </a>
                            <a href="javascript:;">
                                <i class="fa fa-chevron-sign-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </aside>
            <aside class="post-highlight yellow v-align">
                <div class="panel-body text-center">
                    <div class="pro-thumb">
                        <img src="img/ring.jpg" alt="">
                    </div>
                </div>
            </aside>
        </section>
        <!--latest product info end-->
        <!--twitter feedback start-->
        <section class="panel post-wrap pro-box">
            <aside class="post-highlight terques v-align">
                <div class="panel-body">
                    <h2>Flatlab is new model of admin dashboard <a href="javascript:;">http://demo.com/</a> 4 days ago  by jonathan smith</h2>
                </div>
            </aside>
            <aside>
                <div class="post-info">
                    <span class="arrow-pro left"></span>
                    <div class="panel-body">
                        <div class="text-center twite">
                            <h1>Twitter Feed</h1>
                        </div>

                        <footer class="social-footer">
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                </li>
                                <li class="active">
                                    <a href="#">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-pinterest"></i>
                                    </a>
                                </li>
                            </ul>
                        </footer>
                    </div>
                </div>
            </aside>
        </section>
        <!--twitter feedback end-->
    </div>
    <div class="col-lg-4">
        <div class="row">
            <div class="col-xs-6">
                <!--pie chart start-->
                <section class="panel">
                    <div class="panel-body">
                        <div class="chart">
                            <div id="pie-chart"></div>
                        </div>
                    </div>
                    <footer class="pie-foot">
                        Free: 260GB
                                 
                    </footer>
                </section>
                <!--pie chart start-->
            </div>
            <div class="col-xs-6">
                <!--follower start-->
                <section class="panel">
                    <div class="follower">
                        <div class="panel-body">
                            <h4>Jonathan Smith</h4>
                            <div class="follow-ava">
                                <img src="img/follower-avatar.jpg" alt="">
                            </div>
                        </div>
                    </div>

                    <footer class="follower-foot">
                        <ul>
                            <li>
                                <h5>2789</h5>
                                <p>Follower</p>
                            </li>
                            <li>
                                <h5>270</h5>
                                <p>Following</p>
                            </li>
                        </ul>
                    </footer>
                </section>
                <!--follower end-->
            </div>
        </div>
        <!--weather statement start-->
        <section class="panel">
            <div class="weather-bg">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-xs-6">
                            <i class="fa fa-cloud"></i>
                            California
                                     
                        </div>
                        <div class="col-xs-6">
                            <div class="degree">
                                24°
                                         
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <footer class="weather-category">
                <ul>
                    <li class="active">
                        <h5>humidity</h5>
                        56%
                    </li>
                    <li>
                        <h5>precip</h5>
                        1.50 in
                    </li>
                    <li>
                        <h5>winds</h5>
                        10 mph
                    </li>
                </ul>
            </footer>

        </section>
        <!--weather statement end-->
    </div>
</div>--%>
<script type="text/javascript">

    $(function () {
        $('#ChartContainer').length && $('#ChartContainer').highcharts({
            chart: {
                type: 'column',
                margin: 75,
                options3d: {
                    enabled: true,
                    alpha: 10,
                    beta: 25,
                    depth: 70
                }
            },
            title: {
                text: 'Expense for the Year 2015'
            },

            plotOptions: {
                column: {
                    depth: 25
                }
            },
            xAxis: {
                categories: Highcharts.getOptions().lang.shortMonths
            },
            yAxis: {
                title: {
                    text: null
                }
            },
            tooltip: {
                pointFormat: "Amount: {point.y:,.0f}"
            },
            series: [{
                name: 'Expense',
                data: [<%= TotalExpense %>],
            }]
        });
    });
</script>

