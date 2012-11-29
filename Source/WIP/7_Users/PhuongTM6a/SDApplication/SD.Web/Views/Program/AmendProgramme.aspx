<%@ Page Language="C#" MasterPageFile="~/Shares/MasterPage.Master" AutoEventWireup="true" CodeBehind="AmendProgramme.aspx.cs" Inherits="SD.Web.AmendProgramme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="rightsidehere" runat="server">
   
    <div>
    <h1>
    <b> Amend Programme</b>
    </h1>
    </div>
    <div>
    <table>
    <tr>
    <td>
    Programme ID:    
    </td>
    <td>    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </td>
    </tr>
    <tr>
    <td>
    Programme Name:
    </td>
    <td>
        <asp:TextBox ID="TextBox1" runat="server" Width="176px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    Contact:
    </td>
    <td>
        <asp:TextBox ID="TextBox2" runat="server" Width="176px"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    Decription:
    </td>
    <td>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
        <asp:Button ID="Button1" runat="server" Text="Save" Width="81px" 
            onclick="Button1_Click" />
    </td>
    <td>    
         <asp:Button ID="Button2" runat="server" Text="Cancel" Width="81px" 
             onclick="Button2_Click" />    
    </td>
    </tr>
    </table>
    </div>
    </asp:Content>
