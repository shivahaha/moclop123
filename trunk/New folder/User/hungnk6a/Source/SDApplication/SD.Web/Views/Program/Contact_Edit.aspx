<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact_Edit.aspx.cs" Inherits="Mock_Project.Contact_Edit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
<form id="form1" runat="server">
    <div>
    
        Edit Contact<br />
    
    </div>
    <div>
        <asp:Panel ID="Panel1" runat="server">
            <table style="width:100%;">
                <tr>
                    <td class="style1">
                        <asp:Label ID="Label4" runat="server" Text="ContactID"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:Label ID="lblID" runat="server"></asp:Label>
                    </td>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1">
                        First Name<asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtFirstName" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td class="style3">
                        <asp:Label ID="errFirstName" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="style3">
                        Manager Name</td>
                    <td>
                        <asp:TextBox ID="txtManagerName" runat="server"></asp:TextBox>
                        <asp:HyperLink ID="hlLookup" runat="server">Lookup</asp:HyperLink>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1">
                        Surnme<asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:TextBox ID="txtSurname" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td class="style3">
                        <asp:Label ID="errSurname" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="style3">
                        Contact Type<asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlContactType" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="ContactType" 
                            DataValueField="ContactType">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:absdConnectionString %>" 
                            SelectCommand="SELECT DISTINCT [ContactType] FROM [Contact]">
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Label ID="errContactType" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Known As</td>
                    <td class="style2">
                        <asp:TextBox ID="txtKnownAs" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style3">
                        Best Contact Method</td>
                    <td>
                        <asp:DropDownList ID="ddlContactMethod" runat="server" 
                            DataSourceID="SqlDataSource2" DataTextField="ContactMethod" 
                            DataValueField="ContactMethod">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:absdConnectionString %>" 
                            SelectCommand="SELECT DISTINCT [ContactMethod] FROM [Contact]">
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1">
                        Office Phone</td>
                    <td class="style2">
                        <asp:TextBox ID="txtOfficePhone" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style3">
                        Job Role</td>
                    <td>
                        <asp:TextBox ID="txtJobRole" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1">
                        Mobile Phone</td>
                    <td class="style2">
                        <asp:TextBox ID="txtMobilePhone" runat="server" Height="22px" Width="160px"></asp:TextBox>
                    </td>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style3">
                        Workbase</td>
                    <td>
                        <asp:TextBox ID="txtWorkbase" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1">
                        ST Home Phone</td>
                    <td class="style2">
                        <asp:TextBox ID="txtSTHomePhone" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style3">
                        Job Title</td>
                    <td>
                        <asp:TextBox ID="txtJobTitle" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1">
                        Email Address</td>
                    <td class="style2">
                        <asp:TextBox ID="txtEmail" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style3">
                        Is Active?</td>
                    <td>
                        <asp:CheckBox ID="cbActive" runat="server" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp;</td>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btSave" runat="server" Text="Save" onclick="btSave_Click1" />
                        &nbsp;<asp:Button ID="btBack" runat="server" Text="Back" Width="56px" 
                            onclick="btBack_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
