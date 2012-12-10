<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LookUp.aspx.cs" Inherits="LookUpGUI._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="" rel="stylesheet" type="text/css" />
<%--<link href="CSS/default.css" rel="stylesheet" type="text/css" />--%>
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
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Search 
            PostCode&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel 
                ID="Panel3" runat="server" BackColor="#FF6600" BorderWidth="1px" Height="51px" 
                style="margin-left: 18px; margin-bottom: 50px" Width="600px" 
                EnableTheming="True">
                <br />
                &nbsp;
                <asp:Label ID="Label4" runat="server" Text="PostCode"></asp:Label>
                <asp:TextBox ID="txtPostCode" runat="server" Height="20px" Width="95px" 
                    ontextchanged="Page_Load"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Street"></asp:Label>
                &nbsp;
                <asp:TextBox ID="txtStreet" runat="server" Width="96px"></asp:TextBox>
                &nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label5" runat="server" Text="Town:"></asp:Label>
                <asp:TextBox ID="txtTown" runat="server" Width="139px"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;<asp:Button ID="btnSearch" runat="server" Text="Search Address" 
                  />
                &nbsp;&nbsp; &nbsp;<asp:Button ID="btnNone" runat="server" Text="None" />
                &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" 
                    onclick="Button1_Click" Text="Button" />
                <br />
                <br />
                <center>
                    <asp:Panel ID="Panel4" runat="server" Height="315px" Width="588px" 
                    BorderWidth="1px">
                 <asp:GridView ID="gvPost" runat="server" 
        AutoGenerateColumns="False" CellPadding="3" Font-Names="Verdana" 
                            Height="223px" Width="579px" 
                            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" 
                            BorderWidth="1px" 
                            style="margin-left: 0px">
  <FooterStyle BackColor="White" ForeColor="#000066" />
                     <EmptyDataTemplate>
                         <asp:RadioButton ID="RadioButton1" runat="server" 
                             Checked='<%# Eval("Address") %>' />
                     </EmptyDataTemplate>
  <SelectedRowStyle BackColor="#669999" 
          Font-Bold="True" ForeColor="White" />
                     <RowStyle ForeColor="#000066" />
  <PagerStyle BackColor="White" 
          ForeColor="#000066" HorizontalAlign="Left" />
  <HeaderStyle BackColor="#006699" 
          Font-Bold="True" ForeColor="White" />
</asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:MockProjectConnectionString2 %>" 
                            SelectCommand="SELECT * FROM [Add]"></asp:SqlDataSource>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Page"></asp:Label>
                        &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LookUp.aspx">1</asp:HyperLink>
                        &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/LookUp.aspx">2</asp:HyperLink>
                    <br />
                    <br/ >
                     &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;               
                    <br />
                    <asp:Button ID="btnSelect" runat="server" Text="Select" />
                    &#160;&#160;&#160;&#160;
                    <asp:Button ID="btnClose" runat="server" Text="Close" />
                    <br />
                    <br />
                    &#160;&#160;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    </asp:Panel>
                    </center>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
    
    </div>
    </form>
    </body>
</html>
