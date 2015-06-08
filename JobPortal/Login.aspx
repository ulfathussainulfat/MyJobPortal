<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="JobPortal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="Scripts/AjaxController.js"></script>
    <script src="Scripts/Login.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    Email
                </td>
                <td>
                    <input id="txtEmail" runat="server" type="text" required="required" />
                </td>
            </tr>
            <tr>
                <td>
                    Password
                </td>
                <td>
                    <input id="txtPassword" runat="server" type="password" required="required" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td><label runat="server" id="lblInvalidEmailPassword" ></label></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    <input type="button" id="btn" onclick="DoAjax()" value="Click me" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
