<%@ Page Language="C#" MasterPageFile="~/Shares/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="AddProgramme.aspx.cs" Inherits="SD.Web.AddProgramme"%>
<asp:Content ID="Content1" ContentPlaceHolderID="rightsidehere" runat="server">
    <link href="../../Css/Program.css" rel="stylesheet" type="text/css" />
     
    <script type="text/javascript" > function Pop() {
            var answer = window.showModalDialog("../LookUp/Lookup.aspx")
        }
        function PopBus() { var answer1 = window.showModalDialog("BussinessLookUp.aspx") }
           </script>
    <h1 class = "h1">Program Details</h1>
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
                <td class = "td" >
                    Program Name:
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="style1">
                    &nbsp;
                </td>
                <td class = "td">
                    Contact:
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">LinkButton</asp:LinkButton>
                    </td>
                    <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class = "td">
                    Description:
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
