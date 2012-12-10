<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTrustDistrict.aspx.cs" Inherits="CSSfull.AddTrustDistrict" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div>
    <b>Trust District Details</b>
        <br />
        Details</div>
    
    </div>
    <div>
        <table style="width:100%;">
            <tr>
                <td>
                    Trust Region Name</td>
                <td>
                    <asp:TextBox ID="txtTrustRegionName" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Trust District Name
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTrustDistrictName" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Description</td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server" Height="130px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
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
