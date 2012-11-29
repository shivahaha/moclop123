<%@ Page Language="C#" MasterPageFile="Shares/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="AddProgramme.aspx.cs" Inherits="SD.Web.AddProgramme"%>

<asp:Content ID="Content1" ContentPlaceHolderID="rightsidehere" runat="server">
    <h1>
        Program Details</h1>
    <table>
        <tr>
            <td class="style2">
                &nbsp;
            </td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Text="Deactivate" OnClick="Button1_Click" />
            </td>
            <td class="style3">
                <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" />
            </td>
            <td class="style3">
                <asp:Button ID="Button3" runat="server" Text="Back" OnClick="Button3_Click" />
            </td>
        </tr>
    </table>
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
                    &nbsp;
                </td>
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
</asp:Content>
