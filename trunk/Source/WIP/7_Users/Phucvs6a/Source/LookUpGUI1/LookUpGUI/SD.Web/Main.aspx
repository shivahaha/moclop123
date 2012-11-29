<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="LookUpGUI.SD.Web.Main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <script  language="javascript">
		function popWin()
		{
			var result = window.showModalDialog("Lookup.aspx","","dialogWidth:900px; dialogHeight:400px; center:yes;resizable: no;dialogLeft:112;scroll:no;");
			if(result!='close') {
				document.getElementById('Address').value = result;
			}
			
		
	}
		
    function popTOB() {
    	var result = window.showModalDialog("BussinessLookUp.aspx","","dialogWidth:900px; dialogHeight:400px; center:yes;resizable: no;dialogLeft:112;scroll:no;");
    	if (result != 'close') {
    		document.getElementById('Address').value = result;
    	}
    }
 
		</script>
</head>

<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="AddressLookUp" />
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Bussiness" />
    
    </div>
    <asp:TextBox ID="Address"
            runat="server" ontextchanged="Address_TextChanged"></asp:TextBox>
    </form>
</body>
</html>
