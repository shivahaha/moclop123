<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListProgramme.aspx.cs" Inherits="MProject.SDApplication.SD.Web.ListProgram" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1><b>LIST ALL PROGRAM </b></h1>
    <table>
    <tr>
    <td>
    Program Name: 
    </td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td>
    <td>
        <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
    </td>
    </tr>
    </table>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </div>
    <div>
    <table>
    <tr>
    <td>
    <asp:Button ID="Button2" runat="server" Text="Add new Program" 
            onclick="Button2_Click" Width="100px" />
    </td>
    <td> 
        <asp:Button ID="Button3" runat="server" Text="Update" onclick="Button3_Click" /></td>
    </tr>
    </table>
        
    </div>
    </form>
</body>
</html>
