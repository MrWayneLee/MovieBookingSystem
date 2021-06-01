<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddFilm.aspx.cs" Inherits="Admin_AddFilm" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>添加影片</title>
    <link href="../UI-Extend/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../UI-Extend/css/customstyle.css" rel="stylesheet" type="text/css" />
    <script src="../UI-Extend/js/jquery-3.4.1.min.js"></script>
    <script src="../UI-Extend/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" class="form-horizontal" runat="server">
        <div class="container index-1">
            <div class="panel">
                <div class="panel-body">
                    <h3>上映新影片</h3>
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
                        <label class="col-md-2 addfilm-2">封面图片：</label>
                        <div class="col-md-10">
                            <asp:FileUpload ID="fileImg" runat="server" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-2 col-md-offset-2">
                            <asp:Button ID="btnAdd" class="btn btn-success detail-1" runat="server" Text="上架" OnClick="btnAdd_Click" />
                        </div>
                        <div class="col-md-2">
                            <a class="btn btn-primary detail-1" href="ManageFilm.aspx">返回上一级</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
