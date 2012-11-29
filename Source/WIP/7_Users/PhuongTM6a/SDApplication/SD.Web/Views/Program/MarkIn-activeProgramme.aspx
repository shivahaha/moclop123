<%@ Page Language="C#" MasterPageFile="~/Shares/MasterPage.Master" AutoEventWireup="true" CodeBehind="MarkIn-activeProgramme.aspx.cs" Inherits="SD.Web.MarkIn_activeProgramme" %>


<asp:Content ID="Content1" ContentPlaceHolderID="rightsidehere" runat="server">
    <div>
    <table>
    <tr>
    <td class="style3">&nbsp;</td>
    <td>
        <asp:Button ID="Button1" runat="server" Text="Creat" />
    </td>
    <td>
        <asp:CheckBox ID="CheckBox1" runat="server" 
            oncheckedchanged="CheckBox1_CheckedChanged" />
    </td>
    <td>Include In-activate</td>
    </tr>
    </table>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            onpageindexchanging="GridView1_PageIndexChanging" PageSize="5">
        </asp:GridView>
        &nbsp;</div>
</asp:Content>