<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ckgl.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 44%;
            height: 235px;
            margin-right: 0px;
            margin-top: 0px;
        }
        .auto-style3 {
            height: 80px;
            position: absolute;
            font-size: large;
            }
        .auto-style5 {
            text-align: center;
        }
        .auto-style8 {
            height: 71px;
            width: 196px;
            text-align: center;
        }
        .auto-style9 {
            height: 71px;
        }
        .auto-style10 {
            height: 58px;
            width: 196px;
            text-align: center;
        }
        .auto-style11 {
            height: 58px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style1" style="background-color: #99CCFF">
                <tr>
                    <td class="auto-style3" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 登录窗口</td>
                </tr>
                <tr>
                    <td class="auto-style8">用户名：</td>
                    <td class="auto-style9">
                       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">密码：</td>
                    <td class="auto-style11">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </div>
    </form>
</body>
</html>
