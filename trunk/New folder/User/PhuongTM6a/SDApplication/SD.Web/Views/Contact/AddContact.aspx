<%@ Page Language="C#" MasterPageFile="~/Shares/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddContact.aspx.cs" Inherits="SD.Web.Views.Contact.AddContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="rightsidehere" runat="server">
    <link href="../../Css/Contact.css" rel="stylesheet" type="text/css" />
    <div>
    
      <h1 class = "h1">  Create New Contact </h1><br />
    
    </div>
    <div>
        <asp:Panel ID="Panel1" runat="server">
            <table class = "tr" style="width:100%;">
                <tr>
                    <td class="style1">
                        First Name<asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label></td>
                    <td class="style2">
                        <asp:TextBox ID="txtFirstName" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style3">
                        Manager ID</td>
                    <td>
                        <asp:TextBox ID="txtManagerName" runat="server"></asp:TextBox>
                        </td>
                        <td>
                        <asp:HyperLink ID="hlLookup" runat="server">Lookup</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Surnme<asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label></td>
                    <td class="style2">
                        <asp:TextBox ID="txtSurname" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style3">
                        Contact Type<asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Known As</td>
                    <td class="style2">
                        <asp:TextBox ID="txtKnownAs" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style3">
                        Best Contact Method</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Office Phone</td>
                    <td class="style2">
                        <asp:TextBox ID="txtOfficePhone" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style3">
                        Job Role</td>
                    <td>
                        <asp:TextBox ID="txtJobRole" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        HomePhone</td>
                    <td class="style2">
                        <asp:TextBox ID="txtMobilePhone" runat="server" Height="22px" Width="160px"></asp:TextBox>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style3">
                        Workbase</td>
                    <td>
                        <asp:TextBox ID="txtWorkbase" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        ST Home Phone</td>
                    <td class="style2">
                        <asp:TextBox ID="txtSTHomePhone" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style3">
                        Job Title</td>
                    <td>
                        <asp:TextBox ID="txtJobTitle" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        Email Address</td>
                    <td class="style2">
                        <asp:TextBox ID="txtEmail" runat="server" Width="160px"></asp:TextBox>
                    </td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style3">
                        Is Active?</td>
                    <td>
                        <asp:CheckBox ID="cbActive" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp;</td>
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btSave" runat="server" Text="Save" onclick="btSave_Click" />
                        &nbsp;<asp:Button ID="btBack" runat="server" Text="Back" Width="56px" 
                            onclick="btBack_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    </asp:Content>
