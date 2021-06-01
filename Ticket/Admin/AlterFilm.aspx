<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlterFilm.aspx.cs" Inherits="Admin_AlterFilm" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>影片修改页</title>
    <link href="../UI-Extend/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../UI-Extend/css/customstyle.css" rel="stylesheet" type="text/css" />
    <script src="../UI-Extend/js/jquery-3.4.1.min.js"></script>
    <script src="../UI-Extend/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" class="form-horizontal" runat="server">
        <div class="container order-2">
            <div class="panel">
                <div class="panel-body">
                    <h3>影片 <asp:Label ID="lblTitle" runat="server"></asp:Label>的信息<asp:Button class="btn btn-default alterfilm-1" ID="btnInit" runat="server" Text="获取信息" OnClick="btnInit_Click" /></h3>
                    <hr />
                    <div class="form-group">
                        <label class="col-md-2 addfilm-2">片名：</label>
                        <div class="col-md-10">
                            <asp:TextBox ID="tbTitle" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 addfilm-2">导演：</label>
                        <div class="col-md-10">
                            <asp:TextBox ID="tbDirector" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 addfilm-2">主演：</label>
                        <div class="col-md-10">
                            <asp:TextBox ID="tbActor" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 addfilm-2">类型：</label>
                        <div class="col-md-10">
                            <asp:TextBox ID="tbType" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 addfilm-2">地区：</label>
                        <div class="col-md-10">
                            <asp:TextBox ID="tbRegion" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 addfilm-2">语言：</label>
                        <div class="col-md-10">
                            <asp:TextBox ID="tbLanguage" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 addfilm-2">片长：</label>
                        <div class="col-md-10">
                            <asp:TextBox ID="tbLength" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 addfilm-2">剧情介绍：</label>
                        <div class="col-md-10">
                            <asp:TextBox ID="tbDescription" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 addfilm-2">票价：</label>
                        <div class="col-md-10">
                            <asp:TextBox ID="tbPrice" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2 col-md-offset-2">
                            <asp:Button ID="btnAlter" class="btn btn-success detail-1" runat="server" Text="修改内容" OnClick="btnAlter_Click" />
                        </div>
                        <div class="col-md-2">
                            <a class="btn btn-primary detail-1" runat="server" href="ManageFilm.aspx">取消修改</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
