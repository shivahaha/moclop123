<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProgramme.aspx.cs" Inherits="MProject.SDApplication.SD.Web.AddProgramme" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 57px;
        }
        .style2
        {
            width: 387px;
        }
        .style3
        {
            width: 41px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1> Program Details</h1>
    <table><tr>
    <td class="style2">&nbsp;</td>
    <td class="style3">
        <asp:Button ID="Button1" runat="server" Text="Deactivate" 
            onclick="Button1_Click" />
        </td>
    <td class="style3">
        <asp:Button ID="Button2" runat="server" Text="Save" onclick="Button2_Click" />
        </td>
    <td class="style3">
        <asp:Button ID="Button3" runat="server" Text="Back" onclick="Button3_Click" />
        </td>
    </tr></table>
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid">
        <table>
        <tr>
        <td>
        Program Name:
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
        </td>
        <td class="style1">
        &nbsp;</td>
        <td>
        Contact: 
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server">Look up</asp:HyperLink>
        </td>
        </tr>
        <tr>
        <td>
        Description:
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        </tr>
        </table>
                </asp:Panel>  
        
    
    </div>
    </form>
</body>
</html>
