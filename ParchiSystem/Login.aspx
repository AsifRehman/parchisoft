<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ParchiSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div data-role="header">
            <h1 class="panel-heading">Login</h1>
        </div>

        <div data-role="main" class="ui-content">
            <div class="form-group">
                <label for="email">Email:</label>

                <input class="form-control" runat="server" type="email" name="email" id="email" placeholder="Type email" />
                <label for="password">Password:</label>
                <div class="form-group">
                    <input class="form-control" runat="server" type="password" name="password" id="password" placeholder="Type password.." />
                </div>
                <asp:Button CssClass="btn btn-primary" ID="btnSubmit" runat="server" Text="Login" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </form>
</body>
</html>
