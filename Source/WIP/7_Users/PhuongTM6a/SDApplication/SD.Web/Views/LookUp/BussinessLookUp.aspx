<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BussinessLookUp.aspx.cs" Inherits="LookUpGUI.SD.Web.BussinessLookUp" %>

<%@ Register assembly="Utilities" namespace="Utilities" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" Height="475px" Width="638px">
            <asp:Label ID="Label1" runat="server" Text="BussinessLookUp"></asp:Label>
            <br />
            <asp:Panel ID="Panel2" runat="server" BackColor="#FF6600" Height="68px" 
                style="margin-top: 0px" Width="632px">
                <br />
                <asp:Label ID="Label2" runat="server" Text="Bussiness:"></asp:Label>
                <asp:TextBox ID="txtBussiness" runat="server"></asp:TextBox>
                &nbsp;<asp:Label ID="Label3" runat="server" Text="SICCode"></asp:Label>:<asp:TextBox ID="txtSIC" runat="server"></asp:TextBox><br />
                <br />
                <br />
                <asp:Button ID="btnSearch1" runat="server" onclick="btnSearch1_Click" 
                    Text="Search" />
                &nbsp;<asp:Button ID="btnNone" runat="server" Text="None" />
                &nbsp;<asp:Button ID="btnClear" runat="server" onclick="btnClear_Click" 
                    Text="Clear" />
                <br />
                <asp:Panel ID="Panel3" runat="server" Height="260px" Width="633px">
                    <br />
                    <asp:GridView ID="gvBussiness" runat="server" CellPadding="4" 
                        ForeColor="#333333" GridLines="None">
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <Columns>
                           
                        </Columns>
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <EmptyDataTemplate>
                            <cc1:GridViewRowSelector ID="GridViewRowSelector1" runat="server" />
                        </EmptyDataTemplate>
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="bntSelect" runat="server" Text="Select" />
                    &nbsp;<asp:Button ID="btnClose1" runat="server" onclick="Page_Load" Text="Close" />
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
