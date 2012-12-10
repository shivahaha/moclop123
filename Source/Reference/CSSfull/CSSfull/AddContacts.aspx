<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddContacts.aspx.cs" Inherits="CSSfull.AddContacts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <b>Add New Contact</b>
        </div>
    <table style="width:100%;">
        <tr>
            <td>
                First Name
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
            <td>
                Manager Name</td>
            <td>
                <asp:TextBox ID="txtManagerName" runat="server"></asp:TextBox>
                <asp:HyperLink ID="hlLookup" runat="server">Look up</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                Surname                 <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
            </td>
            <td>
                Contact Type
                <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlContactType" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Known As</td>
            <td>
                <asp:TextBox ID="txtKnownAs" runat="server"></asp:TextBox>
            </td>
            <td>
                Best Contact Method</td>
            <td>
                <asp:DropDownList ID="ddlBestContactMethod" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Office Phone</td>
            <td>
                <asp:TextBox ID="txtOfficePhone" runat="server"></asp:TextBox>
            </td>
            <td>
                Job Role</td>
            <td>
                <asp:TextBox ID="txtJobRole" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Mobile Phone</td>
            <td>
                <asp:TextBox ID="txtMobilePhone" runat="server"></asp:TextBox>
            </td>
            <td>
                Workbase</td>
            <td>
                <asp:TextBox ID="txtWorkbase" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                ST Home Phone</td>
            <td>
                <asp:TextBox ID="txtSTHomePhone" runat="server"></asp:TextBox>
            </td>
            <td>
                Job Title</td>
            <td>
                <asp:TextBox ID="txtJobTitle" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Email Address</td>
            <td>
                <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
            </td>
            <td>
                Is Active?</td>
            <td>
                <asp:CheckBox ID="cbIsActive" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btSave" runat="server" Text="Save" />
                <asp:Button ID="btBack" runat="server" Text="Back" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
