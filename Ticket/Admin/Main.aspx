<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Admin_Main" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>功能主页</title>
    <link href="../UI-Extend/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../UI-Extend/css/customstyle.css" rel="stylesheet" type="text/css" />
    <script src="../UI-Extend/js/jquery-3.4.1.min.js"></script>
    <script src="../UI-Extend/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container login-1">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="panel-body">
                            <p class="index-3 main-3">就这点功能...</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <a class="btn btn-default panel detail-1 main-1" href="ManageFilm.aspx"><span class="main-2">影片管理</span></a>
                </div>
                <div class="col-md-6">
                    <a class="btn btn-default panel detail-1 main-1" href="ArrangeOrder.aspx"><span class="main-2">订单管理</span></a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <a class="btn btn-default panel detail-1" href="Login.aspx">返回</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
