<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="LookUpGUI.SD.Web.Main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    
    <script type="text/javascript" > function Pop() {
            var answer = window.showModalDialog("Lookup.aspx")
        }
        function PopBus() { var answer1 = window.showModalDialog("BussinessLookUp.aspx") }
           </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
        <asp:Button ID="Button1" runat="server" Text="SearchByPostcode" />  
    
    &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="SearchByBussiness"/>    
    </div>
    <div>
    &nbsp;
    </div>
    <div>
    <asp:TextBox ID="Address" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
