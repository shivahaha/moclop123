<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProgramDetails.aspx.cs" Inherits="Details.UserDetials" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <meta charset="utf-8" />
    <title>Programe Details</title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script>
    $(function() {
        $( "#tabs" ).tabs();
    });
    </script>
</head>
<body>
 
    <form id="form1" runat="server">
 <h3>Programe Details</h3>
<div id="tabs">
    <ul>
        <li><a href="#tabs-1">Details </a>        </li>
        
    </ul>
    <div id="tabs-1">
        <asp:Label ID="Label43" runat="server" Text="Programme Details" Height="16px" 
             Width="239px" ForeColor="Lime" Enabled="False"></asp:Label>
        <p> 
            &nbsp;<asp:Panel ID="Panel2" runat="server" BorderColor="Blue" BorderWidth ="1px">
           
            <asp:Button ID="Button1" runat="server"
                style="margin-left: 380px" Text="Deactivate" />
        &nbsp;<asp:Button ID="Button2" runat="server" style="margin-left: 8px" 
                Text="Save" Width="52px" />
                &nbsp;<asp:Button ID="Button3" runat="server" style="margin-left: 8px" 
                Text="Back" Width="52px" />
        <asp:Panel ID="Panel1" runat="server" Height="231px" Width="632px" 
            BackColor="White" style="margin-left: 0px">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Programe  Name : "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="156px"></asp:TextBox>
            &nbsp;<asp:Label ID="Label2" runat="server" Text="Contact : "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="117px"></asp:TextBox>
            &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue">LookUp</asp:LinkButton>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Description : "></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Height="117px" 
                style="margin-left: 145px; margin-top: 0px" Width="257px"></asp:TextBox>
            </asp:Panel>
         </asp:Panel>
           </p>
    </div>
   
    
        
    </div>
</div>
 
 
</form>
 
 
</body>
</html>
