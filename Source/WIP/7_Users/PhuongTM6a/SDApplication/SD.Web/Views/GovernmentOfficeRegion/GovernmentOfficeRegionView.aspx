<%@ Page Title="" Language="C#" MasterPageFile="~/Shares/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="GovernmentOfficeRegionView.aspx.cs" Inherits="SD.Web.Views.GovernmentOfficeRegion.GovernmentOfficeRegionView" %>
<asp:Content ID="head" ContentPlaceHolderID="rightsidehere" runat="server">

    <div style="height: 160px">
        <table style="height: 146px; width: 397px">
            <tr>
                <td  colspan = "2" class="style1">
                   <h1> Government Office Region Details </h1>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    Government Office Region Name                 </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td class="style1">Description</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            </tr>
             <tr>
            <td class="style1">Country</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            </tr>
            
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style1
        {
            width: 231px;
        }
    </style>

</asp:Content>
