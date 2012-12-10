<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewGovernmentOfficeRegion.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/Tab.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/Tab1.js" type="text/javascript"></script>
    <script src="Scripts/Tab2.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {

            $("#tabs").tabs();
            $("#remove").click(function () {
                var indexNumber = $("#indexNum").val() - 1;


                $("#tabs").tabs("remove", indexNumber);

            });

            $("#add").click(function () {

                var newLabel = "A New Tab!"

                $("#tabs").tabs("add", "#newTab", newLabel);
            });
        });

  </script>

    <style type="text/css">
        .style2
        {
            width: 319px;
        }
        .style3
        {
            width: 231px;
        }
        .style4
        {
            width: 540px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div class = "detail1">Government Office Region Details
  </div>
    <div id="tabs">

  <table>
  <tr><td class="style3">
  <ul>
  <li><a href="#tabs-1">Details</a></li>
  </ul>
  </td>
  <td align="right" class="style4"> 
      <asp:Button ID="Button3" runat="server" Text="Back" />
      </td>
  </tr>
  </table>

  <div id="tabs-1">
  <p></p>
      <asp:Panel ID="Panel1" runat="server" BackColor="#CCFFCC" BorderColor="Red" 
          BorderWidth="2px">
          <table style="width:100%;">
              <tr>
                  <td class="style2">
                      <asp:Label ID="Label1" runat="server" Text="Government Office Region Name"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox1" runat="server" Width="202px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style2">
                      <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style2">
                      <asp:Label ID="Label3" runat="server" Text="County"></asp:Label>
                  </td>
                  <td>
                      <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                          <asp:ListItem>County 1</asp:ListItem>
                          <asp:ListItem>County 2</asp:ListItem>
                          <asp:ListItem>County 3</asp:ListItem>
                      </asp:CheckBoxList>
                  </td>
              </tr>
          </table>
      </asp:Panel>
  </div>
</div>
    </form>
</body>
</html>
