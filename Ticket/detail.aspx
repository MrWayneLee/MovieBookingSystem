<%@ Page Language="C#" AutoEventWireup="true" CodeFile="detail.aspx.cs" Inherits="detail" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>电影详情</title>
    <link href="../UI-Extend/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../UI-Extend/css/customstyle.css" rel="stylesheet" type="text/css" />
    <script src="../UI-Extend/js/jquery-3.4.1.min.js"></script>
    <script src="../UI-Extend/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container index-1">
            <div class="jumbotron">
                <h2 class="index-2">WAYNE | 淘院线</h2>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">功能菜单</div>
                        <div class="panel-body">
                            <a class="btn btn-primary form-control" href="selectOrder.aspx">查询订单</a>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <a class="btn btn-primary form-control" href="index.aspx">返回主页</a>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            按照日期查询场次
                            <asp:Calendar ID="Calendar1" class="detail-4" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                <OtherMonthDayStyle ForeColor="#CC9966" />
                                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                <SelectorStyle BackColor="#FFCC66" />
                                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                            </asp:Calendar>
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:Button class="btn btn-primary detail-1" ID="btnQueryDate" runat="server" Text="查询" OnClick="btnQueryDate_Click" />
                                </div>
                                <div class="col-md-6">
                                    <asp:Button class="btn btn-primary detail-1" ID="btnQueryAll" runat="server" Text="查询全部" OnClick="btnQueryAll_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="panel">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-3">
                                    <asp:Image class="img-thumbnail" ID="imgFilm" runat="server" />
                                </div>
                                <div class="col-md-9">
                                    <p class="index-4"><span class="index-5"><asp:Label ID="lblTitle" runat="server"></asp:Label></span></p>
                                    <p class="index-4"><span class="index-6"><span class="index-7">导演：</span><asp:Label ID="lblDirector" runat="server"></asp:Label></span></p>
                                    <p class="index-4"><span class="index-6"><span class="index-7">主演：</span><asp:Label ID="lblActor" runat="server"></asp:Label></span></p>
                                    <p class="index-4"><span class="index-6"><span class="index-7">类型：</span><asp:Label ID="lblType" runat="server"></asp:Label></span></p>
                                    <p class="index-4"><span class="index-6"><span class="index-7">地区：</span><asp:Label ID="lblRegion" runat="server"></asp:Label></span></p>
                                    <p class="index-4"><span class="index-6"><span class="index-7">语言：</span><asp:Label ID="lblLanguage" runat="server"></asp:Label></span></p>
                                    <p class="index-4"><span class="index-6"><span class="index-7">片长：</span><asp:Label ID="lblLength" runat="server"></asp:Label>分钟</span></p>
                                    <p class="index-4"><span class="index-6"><span class="index-7">剧情介绍：</span></span></p>
                                    <p class="index-4"><span class="index-6"><asp:Label ID="lblDescription" runat="server"></asp:Label></span></p>
                                    <p class="index-4"><span class="index-6"><span class="index-7">票价：</span><span class="index-5"><asp:Label ID="lblPrice" runat="server"></asp:Label></span>元</span></p>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-md-4">日期</div>
                                <div class="col-md-3">场次</div>
                                <div class="col-md-2">大厅</div>
                            </div>
                            <asp:DataList ID="dlShows" runat="server" class="detail-1">
                                <ItemTemplate>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="detail-2 ">
                                                <asp:Label ID="lblDate" runat="server" Text='<%#GetCut(Eval("Date").ToString()) %>'></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="detail-2">
                                                <asp:Label ID="lblTime" runat="server" Text='<%#Eval("Time") %>'></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="detail-2">
                                                <asp:Label ID="lblHall" runat="server" Text='<%#Eval("Hall") %>'></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <asp:Button class="btn btn-lg btn-primary detail-3 btnPurchase" ID="btnPurchase" runat="server" Text="预定" OnClick="btnPurchase_Click" date='<%#Eval("Date") %>' time='<%#Eval("Time") %>' hall='<%#Eval("Hall") %>'></asp:Button>
                                        </div>
                                    </div>
                                </ItemTemplate>
                                <SeparatorTemplate>
                                    <hr />
                                </SeparatorTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
