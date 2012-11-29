<%@ Page Language="C#" MasterPageFile="../../Shares/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="ListProgramme.aspx.cs"  Inherits="SD.Web.Views.Program.ListProgram" %>

<asp:Content ID="Content1" ContentPlaceHolderID="rightsidehere" runat="server">
    <link href="../../Css/Program.css" rel="stylesheet" type="text/css" />
    <!--  Body -->
    <div>
        <h1>
            <b class = "h1">LIST ALL PROGRAM </b>
        </h1>
        <table>
            </table>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" 
            OnRowDataBound="GridView1_RowDataBound" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
            ForeColor="Black" GridLines="Vertical" AllowPaging="True" 
            onpageindexchanging="GridView1_PageIndexChanging" PageSize="5" >
            <FooterStyle BackColor="#CCCCCC" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#CCCCCC" />
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
