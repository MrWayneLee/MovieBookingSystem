<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="order" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>订单页</title>
    <link href="../UI-Extend/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../UI-Extend/css/customstyle.css" rel="stylesheet" type="text/css" />
    <script src="../UI-Extend/js/jquery-3.4.1.min.js"></script>
    <script src="../UI-Extend/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container order-1">
            <div class="panel">
                <div class="panel-body">
                    <h3>订单页</h3>
                    <hr />
                    <div class="row check-4">
                        <div class="col-md-12 index-3">片名</div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 index-3 detail-2">
                            <asp:Label ID="lblTitle" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="row check-4 order-2">
                        <div class="col-md-3 col-md-offset-1 index-3">日期</div>
                        <div class="col-md-4 index-3">场次</div>
                        <div class="col-md-2 index-3">数量</div>
                        <div class="col-md-2 index-3">大厅</div>
                    </div>
                    <div class="row">
                        <div class="col-md-3 col-md-offset-1 index-3 detail-2">
                            <asp:Label ID="lblDate" runat="server"></asp:Label>
                        </div>
                        <div class="col-md-4 index-3 detail-2">
                            <asp:Label ID="lblTime" runat="server"></asp:Label>
                        </div>
                        <div class="col-md-2 index-3 detail-2">
                            <asp:Label ID="lblAmount" runat="server"></asp:Label>
                        </div>
                        <div class="col-md-2 index-3 detail-2">
                            <asp:Label ID="lblHall" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div class="row check-4 order-2">
                        <div class="col-md-4 index-3">购买用户</div>
                        <div class="col-md-8 index-3">订单号</div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 index-3 detail-2">
                            <asp:Label ID="lblUser" runat="server"></asp:Label>
                        </div>
                        <div class="col-md-8 index-3 detail-2">
                            <asp:Label ID="lblOrderId" runat="server"></asp:Label>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-4">
                            <asp:Button ID="btnPay" class="btn btn-info detail-1" runat="server" Text="我已支付" OnClick="btnPay_Click" />
                        </div>
                        <div class="col-md-4">
                            <asp:Button ID="btnCancel" class="btn btn-danger detail-1" runat="server" Text="再看看别的" OnClick="btnCancel_Click" />
                        </div>
                        <div class="col-md-4">
                            <a class="btn btn-primary detail-1" href="index.aspx">取消支付</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
