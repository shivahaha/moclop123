<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SD.Web.Views.Login.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <center> <p> Login Dung Moi Vao Duoc He Thong </p></center>
    <div>
        <asp:Login ID="Login1" runat="server" onauthenticate="Login1_Authenticate">
        </asp:Login>
    </div>
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Views/Login/GetPass.aspx">ForgetPassword</asp:HyperLink>
    </div>
     <div>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Views/Login/CreateUser.aspx">Creat new account</asp:HyperLink>
    </div>
    </form>
</body>
</html>
