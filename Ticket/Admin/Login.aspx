<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>后台入口</title>
    <link href="../UI-Extend/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../UI-Extend/css/customstyle.css" rel="stylesheet" type="text/css" />
    <script src="../UI-Extend/js/jquery-3.4.1.min.js"></script>
    <script src="../UI-Extend/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="panel panel-default login-1">
            <div class="panel-heading">
                <h4>后台管理入口 | 登录</h4>
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label>用户名：</label>
                    <input type="text" ID="tbUsername" runat="server" class="form-control" placeholder="请输入用户名" />
                </div>
                <div class="form-group">
                    <label>密码：</label>
                    <input type="password" ID="tbPassword" runat="server" class="form-control" placeholder="请输入密码" />
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" />记住密码
                    </label>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <asp:Button ID="btnLogin" class="btn btn-primary detail-1" runat="server" Text="登录" OnClick="btnLogin_Click" />
                    </div>
                    <div class="col-md-4">
                        <a class="btn btn-default" href="../index.aspx">回到主页</a>
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
