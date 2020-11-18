<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ArrangeFilm.aspx.cs" Inherits="Admin_ArrangeFilm" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>排片页</title>
    <link href="../UI-Extend/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../UI-Extend/css/customstyle.css" rel="stylesheet" type="text/css" />
    <script src="../UI-Extend/js/jquery-3.4.1.min.js"></script>
    <script src="../UI-Extend/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container index-1">
            <div class="row">
                <div class="col-md-5">
                    <div class="panel">
                        <div class="panel-body">
                            <h3>影片
                                <asp:Label ID="lblTitle" runat="server"></asp:Label>
                                的所有排场</h3>
                            <hr />
                            <div class="row">
                                <div class="col-md-6">
                                    <a class="btn btn-primary detail-1" href="ManageFilm.aspx">返回上一级</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel">
                        <div class="panel-body">
                            <h3>添加排场</h3>
                            <hr />
                            <div class="row">
                                <div class="col-md-6">
                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">
                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" HorizontalAlign="Center" />
                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                        <SelectorStyle BackColor="#FFCC66" />
                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    </asp:Calendar>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>日期</label>
                                        <asp:Label class="form-control" ID="lblDate" runat="server"></asp:Label>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>时间</label>
                                                <asp:TextBox class="form-control" ID="tbTime" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>大厅</label>
                                                <asp:TextBox class="form-control" ID="tbHall" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:Button class="btn btn-primary" ID="btnShowAdd" runat="server" Text="添加排场" OnClick="btnShowAdd_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="panel">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4">日期</div>
                                <div class="col-md-3">场次</div>
                                <div class="col-md-2">大厅</div>
                            </div>
                            <asp:DataList class="detail-1" ID="dlShows" runat="server">
                                <ItemTemplate>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="detail-2 ">
                                                <asp:Label class="lblDate" ID="lblDate" runat="server" Text='<%#GetCut(Eval("Date").ToString()) %>'></asp:Label>
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
                                            <asp:Button class="btn btn-lg btn-primary detail-3 btnRmove" ID="btnRemove" runat="server" Text="删除" OnClick="btnRemove_Click" date='<%#Eval("Date") %>' time='<%#Eval("Time") %>'></asp:Button>
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
