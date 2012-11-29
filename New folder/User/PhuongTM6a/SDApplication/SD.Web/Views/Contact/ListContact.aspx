<%@ Page Language="C#"   MasterPageFile="~/Shares/MasterPage.Master" AutoEventWireup="true" CodeBehind="ListContact.aspx.cs" Inherits="SD.Web.Views.Contact.ListContact" %>


<asp:Content ID="Content1" ContentPlaceHolderID="rightsidehere" runat="server">
    <link href="../../Css/Contact.css" rel="stylesheet" type="text/css" />
   
    <div>
        <asp:Panel ID="Panel1" runat="server" BorderColor="Black">
           <h1 class = "h1"> Search Contact</h1><br />
            <table class = "tr" style="width:100%;">
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
                Text="Include in-active contacts?"/>
        </asp:Panel>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" 
            onrowdatabound="GridView1_RowDataBound" AllowPaging="True" 
            onpageindexchanging="GridView1_PageIndexChanging" PageSize="5">
        </asp:GridView>
    </div>
    </asp:Content>
