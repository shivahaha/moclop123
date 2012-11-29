<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AmendProgramme.aspx.cs" Inherits="SD.Web.AmendProgramme" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
    <b> Amend Programme</b>
    </h1>
    </div>
    <div>
    <table>
    <tr>
    <td>
    Programme ID:    
    </td>
    <td>    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </td>
    </tr>
    <tr>
    <td>
    Programme Name:
    </td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server" Width="176px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    Contact:
    </td>
    <td>
        <asp:TextBox ID="TextBox2" runat="server" Width="176px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    Decription:
    </td>
    <td>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Button ID="Button1" runat="server" Text="Save" Width="81px" 
            onclick="Button1_Click" />
    </td>
    <td>    
         <asp:Button ID="Button2" runat="server" Text="Cancel" Width="81px" 
             onclick="Button2_Click" />    
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
