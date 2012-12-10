<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="PhucVS6A_Team1.UserControls.UserDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <script type="text/javascript">
  $(function(){
  
  $("#tabs").tabs();  
  $("#remove").click(function() {
  var indexNumber = $("#indexNum").val() - 1;
  

  $("#tabs").tabs("remove", indexNumber);
  
  });
  
  $("#add").click(function() {
  
  var newLabel = "A New Tab!"
  
  $("#tabs").tabs("add", "#newTab", newLabel);
  });
  });

  </script>



<div id="tabs">

  <ul>
  <li><a href="#tabs-1">T1</a></li>
  <li><a href="#tabs-2">T2</a></li>
  <li><a href="#tabs-3">T3</a></li>
  </ul>
  <div id="tabs-1">
  <p>Tab 1 display here.</p>
  </div>
  <div id="tabs-2">
  <p>Tab 2 display here.</p>
  </div>
  <div id="tabs-3">
  <p>Tab 3 display here.</p>
  </div>
</div>
    </div>
    </form>
</body>
</html>
