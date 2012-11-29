<%@ Page Language="C#" MasterPageFile="../Shares/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="SD.Web.Views.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="rightsidehere" runat="server">
    <asp:Login ID="Login1" runat="server" Height="133px" OnAuthenticate="Login1_Authenticate"
        Width="284px">
    </asp:Login>
</asp:Content>
