<%@ Page Language="C#" AutoEventWireup="true" CodeFile="check.aspx.cs" Inherits="check" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>确认订单页</title>
    <link href="../UI-Extend/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../UI-Extend/css/customstyle.css" rel="stylesheet" type="text/css" />
    <script src="../UI-Extend/js/jquery-3.4.1.min.js"></script>
    <script src="../UI-Extend/js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $("#Amount").val(0)
            $("#amountlist > a").click(function () {
                $(this).addClass("btn-primary").siblings().removeClass("btn-primary")
                $("#Amount").val($(this).html())
                $("#lbTotal").html($("#lblPrice").html() * $(this).html())
            })
        })
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron index-1">
                <p class="check-1">确认订单页</p>
            </div>
            <div class="panel">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-3 col-md-offset-2">
                            <asp:Image ID="movieImg" class="img-thumbnail" runat="server" />
                        </div>
                        <div class="col-md-6">
                            <p class="index-4"><span class="index-5"><asp:Label ID="lblTitle" runat="server"></asp:Label></span></p>
                            <p class="index-4"><span class="index-6"><span class="index-7">导演：</span><asp:Label ID="lblDirector" runat="server"></asp:Label></span></p>
                            <p class="index-4"><span class="index-6"><span class="index-7">主演：</span><asp:Label ID="lblActor" runat="server"></asp:Label></span></p>
                            <p class="index-4"><span class="index-6"><span class="index-7">类型：</span><asp:Label ID="lblType" runat="server"></asp:Label></span></p>
                            <p class="index-4"><span class="index-6"><span class="index-7">语言：</span><asp:Label ID="lblLanguage" runat="server"></asp:Label></span></p>
                            <p class="index-4"><span class="index-6"><span class="index-7">片长：</span><asp:Label ID="lblLength" runat="server"></asp:Label>分钟</span></p>
                            <p class="index-4"><span class="index-6"><span class="index-7">票价：</span><span class="index-5 check-4"><asp:Label ID="lblPrice" runat="server"></asp:Label></span>元</span></p>
                            <hr />
                            <div class="row">
                                <div class="col-md-5">
                                    <p class="index-4"><span class="index-5">日期：<span class="check-4"><asp:Label ID="lblDate" runat="server"></asp:Label></span></span></p>
                                </div>
                                <div class="col-md-4">
                                    <p class="index-4"><span class="index-5">场次：<span class="check-4"><asp:Label ID="lblTime" runat="server"></asp:Label></span></span></p>
                                </div>
                                <div class="col-md-3">
                                    <p class="index-4"><span class="index-5">大厅：<span class="check-4"><asp:Label ID="lblHall" runat="server"></asp:Label></span></span></p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="index-5">数量：</label>
                                    <span id="amountlist">
                                        <a class="btn btn-default">1</a>
                                        <a class="btn btn-default">2</a>
                                        <a class="btn btn-default">3</a>
                                        <a class="btn btn-default">4</a>
                                        <a class="btn btn-default">5</a>
                                    </span>
                                    <label class="index-5">张</label>
                                    <input type="hidden" id="Amount" runat="server" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="index-5">金额：<label id="lbTotal" class="index-5 check-4">0</label>元</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-5">
                                    <asp:Button ID="btnCheck" class="btn btn-primary detail-1" runat="server" Text="确认支付" OnClick="btnCheck_Click" />
                                </div>
                                <div class="col-md-5">
                                    <asp:Label ID="lblMessage2" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="check-2" runat="server" id="back"></div>
        <div class="panel check-3" runat="server" id="back2">
            <div class="panel-body">
                <h4>请先验证身份</h4>
                <hr />
                <div class="form-group">
                    <label>用户名：</label>
                    <asp:TextBox class="form-control" ID="tbUsername" runat="server" placeholder="键入用户名"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>密码：</label>
                    <asp:TextBox type="password" class="form-control" ID="tbPassword" runat="server" placeholder="键入密码"></asp:TextBox>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <asp:Button class="btn btn-primary detail-1" ID="btnConfilm" runat="server" Text="验证" OnClick="btnConfilm_Click" />
                    </div>
                    <div class="col-md-3 col-md-offset-6">
                        <a class="btn btn-default detail-1" onclick=" javascript :window.close()">返回</a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <p class="index-3"><asp:Label ID="lblMassage" runat="server"></asp:Label></p>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
