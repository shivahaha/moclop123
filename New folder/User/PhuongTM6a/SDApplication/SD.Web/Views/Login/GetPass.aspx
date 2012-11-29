<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetPass.aspx.cs" Inherits="SD.Web.Views.Login.GetPass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Forgot Your Password Page</title>
</head>
<body>
    <form id="form1" runat="server">
<div>

            <table border="0">
            <tr>
              <td align="center" colspan="2">Forgot Your Password?</td>
            </tr>
            <tr>
              <td align="center" colspan="2">Enter your User Name and Your Email to receive your password.</td>
            </tr>            
            <tr>
                <td align="right">User Name:</td>
                <td>
                    <asp:textbox runat="server" id="UserName"></asp:textbox>
                    <asp:requiredfieldvalidator runat="server" 
                      controltovalidate="UserName" 
                      errormessage="User Name." 
                      id="UserNameRequired">
                      *
                    </asp:requiredfieldvalidator>
                </td>
            </tr>
            <tr>
                <td align="right">Email:</td>
                <td>
                    <asp:TextBox ValidationGroup="PWRecovery" 
                       runat="server" ID="EmailAddressTB">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" colspan="2">
                    <asp:button runat="server" 
                      commandname="Submit" 
                      text="Submit" 
                      id="Button" onclick="Button_Click">
                    </asp:button>
                    <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="color:Red;">
                    <asp:literal runat="server" id="FailureText"></asp:literal>
                </td>
            </tr>                       
            </table> 

            </div>
 <div style="color:Red;"> 
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>      
    </form>
</body>
</html>
