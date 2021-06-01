<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>首页 | Main</title>
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
                            <div class="row">
                                <div class="col-md-12">
                                    <a class="btn btn-primary detail-1" href="selectOrder.aspx">查询订单</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <a class="btn btn-default detail-1" href="Admin/Login.aspx">后台管理</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="panel">
                        <div class="panel-body">
                            <h3 class="index-3">>> 正在热映 <<</h3>
                            <hr />
                            <asp:DataList ID="dlList" runat="server">
                                <ItemTemplate>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <a href='Detail.aspx?movieId=<%#Eval("MovieId") %>'>
                                                <img class="img-thumbnail index-4" src='UI-Extend/images/<%#Eval("MovieId") %>.jpg' />
                                            </a>
                                        </div>
                                        <div class="col-md-9">
                                            <p class="index-4"><span class="index-5"><asp:Label ID="lblTitle" runat="server" Text='<%#Eval("MovieTitle") %>'></asp:Label></span></p>
                                            <p class="index-4"><span class="index-6"><span class="index-7">导演：</span><asp:Label ID="lblDirector" runat="server" Text='<%#Eval("MovieDirector") %>'></asp:Label></span></p>
                                            <p class="index-4"><span class="index-6"><span class="index-7">主演：</span><asp:Label ID="lblActor" runat="server" Text='<%#Eval("MovieActor") %>'></asp:Label></span></p>
                                            <p class="index-4"><span class="index-6"><span class="index-7">类型：</span><asp:Label ID="lblType" runat="server" Text='<%#Eval("MovieType") %>'></asp:Label></span></p>
                                            <p class="index-4"><span class="index-6"><span class="index-7">片长：</span><asp:Label ID="lblLength" runat="server" Text='<%#Eval("MovieLength") %>'></asp:Label>分钟</span></p>
                                            <p class="index-4"><a class="btn btn-lg btn-info" href='Detail.aspx?movieId=<%#Eval("MovieId") %>'>预定购票</a></p>
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
