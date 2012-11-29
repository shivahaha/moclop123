<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lookup.aspx.cs" Inherits="LookUpGUI.SD.Web.Lookup" %>

<%@ Register assembly="Utilities" namespace="Utilities" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>LookUp</title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
        <asp:Panel ID="Panel1" runat="server" Height="456px" Width="662px">
            <br />
            SearchPostCode<asp:Panel ID="Panel2" runat="server" BackColor="#FF6600" 
                Height="54px" Width="658px">
                <br />
                <asp:Label ID="Label1" runat="server" Text="PostCode:"></asp:Label>
                <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox>
                &nbsp;<asp:Label ID="Label2" runat="server" Text="Street:"></asp:Label>&nbsp;<asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>&nbsp;<asp:Label ID="Label3" runat="server" Text="Town:"></asp:Label><asp:TextBox ID="txtTown" runat="server"></asp:TextBox></asp:Panel>
            <br />
            <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
                Text="SearchAddress" />
            &nbsp;<asp:Button ID="btnNone" runat="server" Text="None" />
            &nbsp;<asp:Button ID="btnClear" runat="server" onclick="btnClear_Click" 
                Text="Clear" />
            <br />
            <asp:Panel ID="Panel3" runat="server" Height="256px" Width="657px">
                <asp:GridView ID="gvPost" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" onselectedindexchanged="btnSearch_Click">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <cc1:GridViewRowSelector ID="GridViewRowSelector2" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                   <%-- <EmptyDataTemplate>
                        <cc1:GridViewRowSelector ID="GridViewRowSelector1" runat="server" />
                    </EmptyDataTemplate>--%>
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
                &nbsp;<asp:Button ID="btnSelect" runat="server" Text="Select" />
                &nbsp;
                <asp:Button ID="btnClose" runat="server" Text="Close" 
                    onclick="btnClose_Click" />
             
            </asp:Panel>
        </asp:Panel>
    </div>
    
    </form>
</body>
</html>
