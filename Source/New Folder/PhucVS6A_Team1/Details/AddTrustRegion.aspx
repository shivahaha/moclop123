<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTrustRegion.aspx.cs" Inherits="CSSfull.AddTrustRegion" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
        .style2
        {
            width: 172px;
        }
        .style3
        {
            height: 23px;
            width: 172px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <b>Trust Region Details</b></div>
    <div>
        Details<br />
        <table style="width:100%;">
            <tr>
                <td class="style2">
                    Nation/Country
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlNation" runat="server" Height="16px" Width="104px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Trust Region Name
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="txtTrustRegionName" runat="server" Width="198px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Description</td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server" Height="130px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btSave" runat="server" Text="Save" />
                    <asp:Button ID="btBack" runat="server" Text="Back" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
