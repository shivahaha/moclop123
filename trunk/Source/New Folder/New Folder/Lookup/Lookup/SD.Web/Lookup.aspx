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
       <script type="text/javascript">
        function rtAddress()
		{
//		
			window.returnValue = document.getElementById('HiddenField1').value;
			window.close();
     
		}
		function none() {
			window.returnValue = document.getElementById('HiddenField2').value;
			window.close();
		}
		function pclose() {
			window.returnValue = 'close';
			window.close();
		}
  
        </script>
        <asp:Panel ID="Panel1" runat="server" Height="456px" Width="662px">
            <br />
            
            SearchPostCode<asp:Panel ID="Panel2" runat="server" BackColor="#FF6600" 
                Height="54px" Width="658px">
                <br />
                <asp:Label ID="Label1" runat="server" Text="PostCode:"></asp:Label>
                <asp:TextBox ID="txtPostCode" runat="server"></asp:TextBox>
                &nbsp;<asp:Label ID="Label2" runat="server" Text="Street:"></asp:Label>
                &nbsp;<asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
                &nbsp;<asp:Label ID="Label3" runat="server" Text="Town:"></asp:Label>
                <asp:TextBox ID="txtTown" runat="server"></asp:TextBox>
            </asp:Panel>
            <br />
            <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
                Text="SearchAddress" />
            &nbsp;<asp:Button ID="btnNone" runat="server" Text="None" 
                onclick="btnNone_Click" />
            &nbsp;<asp:Button ID="btnClear" runat="server" onclick="btnClear_Click" 
                Text="Clear" />
            <br />
            <asp:Panel ID="Panel3" runat="server" Height="256px" Width="657px">
                <asp:GridView style="margin-left: 20px" ID="gvPost" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" onselectedindexchanged="gvPost_SelectedIndexChanged" 
                onrowcreated="gvPost_RowCreated" PageSize="2" Height="74px" 
                Width="628px" 
                onpageindexchanged="gvPost_PageIndexChanged" 
                onpageindexchanging="gvPost_PageIndexChanging" 
                HorizontalAlign="Justify" ForeColor="#333333" GridLines="None">
                <PagerSettings FirstPageText="First" 
                    LastPageText="Last" />
                <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                <RowStyle ForeColor="#333333" Height="5px" BackColor="#FFFBD6" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <cc1:GridViewRowSelector ID="GridViewRowSelector1" runat="server" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:TemplateField>
                    <asp:BoundField AccessibleHeaderText="Address" DataField="Address" 
                        HeaderText="Address" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="PostCode" HeaderText="Post code" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Town" HeaderText="Town" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="County" HeaderText="County" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Country" HeaderText="Country" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" 
                    Height="20px" />
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
                <asp:Button ID="btnClose" runat="server" Text="Close"  />
              <input id="Hidden2" type="hidden" value="nothing yet"/>
            <asp:HiddenField ID="HiddenField2" runat="server" />
            <asp:HiddenField ID="HiddenField1" runat="server" 
                onvaluechanged="HiddenField1_ValueChanged" />
            </asp:Panel>
        </asp:Panel>
    </div>
    
    </form>
</body>
</html>
