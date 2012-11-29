<%@ Page Language="C#" MasterPageFile="../../Shares/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="ListProgramme.aspx.cs"  Inherits="SD.Web.Views.Program.ListProgram" %>

<asp:Content ID="Content1" ContentPlaceHolderID="rightsidehere" runat="server">
    <!--  Body -->
    <div>
        <h1>
            <b>LIST ALL PROGRAM </b>
        </h1>
        <table>
            <tr>
                <td>
                    Program Name:
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Search" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div>
        <asp:GridView ID="GridView2" runat="server" OnRowDataBound="GridView1_RowDataBound">
        </asp:GridView>
    </div>
    <div>
        <table>
            <tr>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Add new Program" OnClick="Button2_Click"
                        Width="100px" />
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
