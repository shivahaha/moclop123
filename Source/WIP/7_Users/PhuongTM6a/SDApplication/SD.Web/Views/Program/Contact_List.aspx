<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact_List.aspx.cs" Inherits="Mock_Project.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Contacts</title>
    <style type="text/css">

        .style1
        {
            width: 73px;
        }
        .style3
        {
            width: 175px;
        }
        .style2
        {
            width: 56px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        CONTACTS<br />
        <br />
    </div>
    <div>
        <asp:Panel ID="Panel1" runat="server" BorderColor="Black">
            Search<br />
            <table style="width:100%;">
                <tr>
                    <td class="style1">
                        First Name:</td>
                    <td class="style3">
                        <asp:TextBox ID="txtFirstName" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td class="style2">
                        Surname:</td>
                    <td>
                        <asp:TextBox ID="txtSurname" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="btSearch" runat="server" Text="Search Contact" 
                onclick="btSearch_Click" />
            &nbsp;<asp:Button ID="btNone" runat="server" Text="None" 
                onclick="btNone_Click" />
            &nbsp;<asp:Button ID="btClear" runat="server" Text="Clear" 
                onclick="btClear_Click" />
            &nbsp;<asp:Button ID="btCreate" runat="server" Text="Create" 
                onclick="btCreate_Click" />
            <br />
            <asp:CheckBox ID="cbInActive" runat="server" 
                Text="Include in-active contacts?" 
                oncheckedchanged="cbInActive_CheckedChanged" />
        </asp:Panel>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" ForeColor="Black" GridLines="Vertical" 
            onrowdatabound="GridView1_RowDataBound">
            <FooterStyle BackColor="#CCCC99" />
            <RowStyle BackColor="#F7F7DE" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    </div>
    </form>
</body>
</html>
