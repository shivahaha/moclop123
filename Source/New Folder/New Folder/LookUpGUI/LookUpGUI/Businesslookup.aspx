<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LookUp.aspx.cs" Inherits="LookUpGUI._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
<link href="CSS/default.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!-- start header -->
<div id="header">
	<div id="logo">
		<h2><a href="#">FUK6A1_Team1 </a></h2>
	</div>
	<div id="menu">
		<ul>
			<li><a href="#">Home</a></li>

			<li><a href="#">Gallery</a></li>

			<li><a href="#">About</a></li>

			<li><a href="#">Contact </a></li>

		</ul>

	</div>

</div>

<hr />

    <form id="form1" runat="server">
 
    <asp:Panel ID="Panel1" runat="server" BackColor="White" Height="492px" 
        Width="629px" BorderWidth="1px" style="margin-left: 144px">
        <asp:Panel ID="Panel2" runat="server" BackColor="White" BorderColor="White" 
            BorderStyle="None" EnableTheming="False" Height="16px" Width="621px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel 
                ID="Panel3" runat="server" BackColor="#FF6600" BorderWidth="1px" Height="51px" 
                style="margin-left: 18px; margin-bottom: 50px" Width="600px" 
                EnableTheming="True">
                <br />
                &nbsp;
                <asp:Label ID="Label4" runat="server" Text="Bussiness Name:"></asp:Label>
                <asp:TextBox ID="txtBussinessName" runat="server" Height="20px" Width="212px" 
                    ontextchanged="Page_Load"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="SIC Code"></asp:Label>
                &nbsp;
                <asp:TextBox ID="SICCode" runat="server" Width="101px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp; &nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;<asp:Button ID="Button6" runat="server" Text="Search" />
                &nbsp;&nbsp; &nbsp;<asp:Button ID="Button7" runat="server" Text="None" />
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button8" runat="server" Text="Clear" />
                <br />
                <br />
                <center>
                    <asp:Panel ID="Panel4" runat="server" Height="329px" Width="595px" 
                    BorderWidth="1px">
                 <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" CellPadding="3" Font-Names="Verdana" DataSourceID="SqlDataSource2" 
                            ForeColor="Black" GridLines="Vertical" Height="223px" Width="576px" 
                            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
  <FooterStyle BackColor="#CCCCCC" />
  <SelectedRowStyle BackColor="#000099" 
          Font-Bold="True" ForeColor="White" />
                     <Columns>
                         <asp:HyperLinkField DataNavigateUrlFormatString="BussinessName" 
                             DataTextField="BussinessName" HeaderText="BussinessName" 
                             NavigateUrl="~/LookUp.aspx" Text="BussinessName" />
                         <asp:BoundField DataField="SIC Code" HeaderText="SIC Code" 
                             SortExpression="SIC Code" />
                     </Columns>
  <PagerStyle BackColor="#999999" 
          ForeColor="Black" HorizontalAlign="Center" />
  <HeaderStyle BackColor="Black" 
          Font-Bold="True" ForeColor="White" />
                     <AlternatingRowStyle BackColor="#CCCCCC" />
</asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MockProjectConnectionString2 %>" 
                            SelectCommand="SELECT * FROM [Bussiness]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MockProjectConnectionString2 %>" 
                            SelectCommand="SELECT * FROM [Add]"></asp:SqlDataSource>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Page"></asp:Label>
                        &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LookUp.aspx">1</asp:HyperLink>
                        &nbsp;<asp:HyperLink ID="HyperLink2" runat="server">2</asp:HyperLink>
                    <br />
                    <br/ >
                     &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;               
                    <br />
                    <asp:Button ID="Button4" runat="server" Text="Select" />
                    &#160;&#160;&#160;&#160;
                    <asp:Button ID="Button5" runat="server" Text="Close" />
                    <br />
                    <br />
                    &#160;&#160;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    </asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
    
    </div>
    </form>
    </body>
</html>
