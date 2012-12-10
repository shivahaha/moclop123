<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTeam.aspx.cs" Inherits="CSSfull.AddTeam" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 152px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <b>Team Details</b>
        <br />
        Details</div>
    <div>
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    Team Name</td>
                <td>
                    <asp:TextBox ID="txtTeamName" runat="server"></asp:TextBox>
                </td>
                <td>
                    Type of Business</td>
                <td>
                    <asp:TextBox ID="txtTypeofBusiness" runat="server"></asp:TextBox>
                    <asp:HyperLink ID="hlTypeofBusiness" runat="server">Look up</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Team Short Description</td>
                <td>
                    <asp:TextBox ID="txtTeamShortDescription" runat="server"></asp:TextBox>
                </td>
                <td>
                    SIC Code</td>
                <td>
                    <asp:TextBox ID="txtSICCode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Lead Contact</td>
                <td>
                    <asp:TextBox ID="txtLeadContact" runat="server"></asp:TextBox>
                    <asp:HyperLink ID="hlLeadContact" runat="server">Look up</asp:HyperLink>
                </td>
                <td>
                    Team Full Description</td>
                <td>
                    <asp:TextBox ID="txtTeamFullDescription" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Copy Address from</td>
                <td>
                    <asp:RadioButton ID="rbOrganisation" runat="server" Text="Organisation" />
                    <asp:RadioButton ID="rbParent" runat="server" Text="Parent" />
                </td>
                <td>
                    Phone Number</td>
                <td>
                    <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Address Line 1</td>
                <td>
                    <asp:TextBox ID="txtAddressLine1" runat="server"></asp:TextBox>
                </td>
                <td>
                    Fax</td>
                <td>
                    <asp:TextBox ID="txtFax" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Address Line 2</td>
                <td>
                    <asp:TextBox ID="txtAddressLine2" runat="server"></asp:TextBox>
                </td>
                <td>
                    Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Address Line 3</td>
                <td>
                    <asp:TextBox ID="txtAddressLine3" runat="server"></asp:TextBox>
                </td>
                <td>
                    Web Address</td>
                <td>
                    <asp:TextBox ID="txtWebAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Postcode</td>
                <td>
                    <asp:TextBox ID="txtPostcode" runat="server"></asp:TextBox>
                    <asp:HyperLink ID="HyperLink2" runat="server">HyperLink</asp:HyperLink>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Town/Village/City</td>
                <td>
                    <asp:TextBox ID="txtTown" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    County</td>
                <td>
                    <asp:TextBox ID="txtCounty" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Nation/Country</td>
                <td>
                    <asp:DropDownList ID="ddlNation" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btSave" runat="server" Text="Save" />
                    <asp:Button ID="txtBack" runat="server" Text="Back" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
