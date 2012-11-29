<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MarkIn-activeProgramme.aspx.cs" Inherits="SD.Web.MarkIn_activeProgramme" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style3
        {
            width: 294px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
    <tr>
    <td class="style3">&nbsp;</td>
    <td>
        <asp:Button ID="Button1" runat="server" Text="Creat" />
    </td>
    <td>
        <asp:CheckBox ID="CheckBox1" runat="server" 
            oncheckedchanged="CheckBox1_CheckedChanged" />
    </td>
    <td>Include In-activate</td>
    </tr>
    </table>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </div>
    </form>
</body>
</html>
