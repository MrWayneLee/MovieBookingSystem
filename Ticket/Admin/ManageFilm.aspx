<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageFilm.aspx.cs" Inherits="Admin_ManageFilm" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>影片管理页</title>
    <link href="../UI-Extend/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../UI-Extend/css/customstyle.css" rel="stylesheet" type="text/css" />
    <script src="../UI-Extend/js/jquery-3.4.1.min.js"></script>
    <script src="../UI-Extend/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container index-1">
            <div class="panel">
                <div class="panel-body">
                    <h3>当前上映的影片</h3>
                    <hr />
                    <asp:DataList ID="dlList" runat="server">
                        <ItemTemplate>
                            <div class="row">
                                <div class="col-md-1">
                                    <img class="img-thumbnail index-4" src='../UI-Extend/images/<%#Eval("MovieId") %>.jpg' />
                                </div>
                                <div class="col-md-11">
                                    <p class="index-4"><span class="index-5"><asp:Label ID="lblTitle" runat="server" Text='<%#Eval("MovieTitle") %>'></asp:Label></span></p>
                                    <div class="row">
                                        <div class="col-md-2 col-md-offset-6">
                                            <a class="btn btn-warning detail-1" href='AlterFilm.aspx?movieId=<%#Eval("MovieId") %>'>修改影片</a>
                                        </div>
                                        <div class="col-md-2">
                                            <a class="btn btn-info detail-1" href='ArrangeFilm.aspx?movieId=<%#Eval("MovieId") %>'>排片</a>

                                        </div>
                                        <div class="col-md-2">
                                            <asp:Button class="btn btn-danger detail-1" ID="btnRemove" runat="server" Text="删除影片" OnClick="btnRemove_Click" CommandArgument='<%#Eval("MovieId") %>' />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <hr />
                    <div class="row">
                        <div class="col-md-3"><a class="btn btn-success detail-1" href="AddFilm.aspx">添加影片</a></div>
                        <div class="col-md-3 col-md-offset-6"><a class="btn btn-primary detail-1" href="Main.aspx">返回上一级</a></div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
