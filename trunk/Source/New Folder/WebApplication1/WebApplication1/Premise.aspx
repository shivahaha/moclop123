<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Premise.aspx.cs" Inherits="WebApplication1.Premise" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat = "server">
    <title></title>
  <%-- datetime function--%>
     <meta charset="utf-8" />
    <link href="Css/Datetime.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/Datetime1.js" type="text/javascript"></script>
    <script src="Scripts/Datetime2.js" type="text/javascript"></script>
  
    <script>
        $(function () {
            $("#txtLocationstatusdate").datepicker();
            $("#txtShopflagdate").datepicker();
            $("#txtLastnegotiatedrate").datepicker();
            $("#txtRenegotiatedrate").datepicker();
            $("#txtStartdate").datepicker();
            $("#txtEnddate").datepicker();
            $("#txtPmwenquirydate").datepicker();
            $("#txtAuthoriseddate").datepicker();
            $("#txtActualstartdate").datepicker();
            $("#txtAnticipatedcompletion").datepicker(); 
            $("#txtactualcompletiondate").datepicker();
        });
    </script>
    
    
    <%-- tab function--%>
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
            width: 152px;
        }
        .style4
        {
            width: 177px;
        }
        .style5
        {
            width: 152px;
            height: 28px;
        }
        .style6
        {
            width: 185px;
            height: 28px;
        }
        .style7
        {
            width: 228px;
            height: 28px;
        }
        .style8
        {
            height: 28px;
        }
        .style9
        {
            width: 152px;
            height: 26px;
        }
        .style10
        {
            width: 185px;
            height: 26px;
        }
        .style11
        {
            width: 236px;
        }
        .style14
        {
            width: 174px;
            height: 23px;
        }
        .style15
        {
            height: 23px;
        }
        .style27
        {
            width: 174px;
        }
        .style34
        {
            width: 159px;
            height: 23px;
        }
        .style35
        {
            width: 159px;
        }
        .style36
        {
            width: 234px;
        }
        .style42
        {
            width: 214px;
        }
        .style46
        {
            width: 179px;
        }
        .style47
        {
            width: 192px;
        }
        .style50
        {
            width: 194px;
        }
        .style53
        {
            width: 172px;
        }
        .style54
        {
            width: 212px;
        }
        .style56
        {
            height: 23px;
            width: 188px;
        }
        .style57
        {
            width: 188px;
        }
        .style61
        {
            width: 217px;
            height: 23px;
        }
        .style66
        {
            width: 217px;
        }
        .style67
        {
            width: 163px;
        }
        .style68
        {
            width: 163px;
            height: 23px;
        }
        .style70
        {
            width: 288px;
        }
        .style74
        {
            width: 168px;
            height: 26px;
        }
        .style76
        {
            height: 26px;
        }
        .style80
        {
            width: 197px;
            height: 26px;
        }
        .style83
        {
            width: 216px;
            height: 26px;
        }
        .style84
        {
            width: 216px;
            height: 23px;
        }
        .style86
        {
            width: 168px;
        }
        .style87
        {
            width: 197px;
        }
        .style88
        {
            width: 216px;
        }
        #datepicker
        {
            width: 183px;
        }
        .style89
        {
            width: 185px;
        }
        .style90
        {
            width: 228px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
  <div class = "detail1">
  Premise Details
  </div>
  <div id="tabs">
  <table>
  <tr><td>
  <ul>
  <li><a href="#tabs-1">Details 1</a></li>
  <li><a href="#tabs-2">Details 2</a></li>
  <li><a href="#tabs-3">Details 3</a></li>
  <li><a href="#tabs-4">Details 4</a></li>
  <li><a href="#tabs-5">Facilities</a></li>
  <li><a href="#tabs-6">Volunteering</a></li>
  <li><a href="#tabs-7">Minor works</a></li>
  </ul>
  </td>
  <td> 
      <asp:Button ID="Button3" runat="server" Text="In-active" />
      </td>
  <td> 
      <asp:Button ID="Button1" runat="server" Text="Save" />
      </td>
  <td> 
      <asp:Button ID="Button2" runat="server" Text="Back" />
      </td>
  </tr>
  </table>
  <div id="tabs-1">
  <p>&nbsp;</p>
      <asp:Panel ID="Panel1" runat="server" Height="562px" BorderWidth="2px" 
          BackColor="#CCFFCC" BorderColor="Red">
          <table style="width:100%; height: 526px;">
              <tr>
                  <td class="style2">
                      <asp:Label ID="Label1" runat="server" Text="Location Name"></asp:Label>
                  </td>
                  <td class="style89">
                      <asp:TextBox ID="TextBox1" runat="server" Width="185px"></asp:TextBox>
                  </td>
                  <td class="style90">
                      <asp:Label ID="Label13" runat="server" Text="Primary Location"></asp:Label>
                  </td>
                  <td>
                      <asp:CheckBox ID="CheckBox1" runat="server" />
                  </td>
              </tr>
              <tr>
                  <td class="style2">
                      <asp:Label ID="Label2" runat="server" Text="Know As"></asp:Label>
                  </td>
                  <td class="style89">
                      <asp:TextBox ID="TextBox2" runat="server" Width="185px"></asp:TextBox>
                  </td>
                  <td class="style90">
                      <asp:Label ID="Label14" runat="server" Text="Location Managed"></asp:Label>
                  </td>
                  <td>
                      <asp:CheckBox ID="CheckBox2" runat="server" />
                  </td>
              </tr>
              <tr>
                  <td class="style2">
                      <asp:Label ID="Label3" runat="server" Text="Location Organisation"></asp:Label>
                  </td>
                  <td class="style89">
                      <asp:TextBox ID="TextBox3" runat="server" Width="103px"></asp:TextBox>
                      &nbsp;&nbsp;&nbsp;
                      <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3399FF">Lookup</asp:LinkButton>
                  </td>
                  <td class="style90">
                      <asp:Label ID="Label15" runat="server" Text="ST Network Connectivity"></asp:Label>
                  </td>
                  <td>
                      <asp:CheckBox ID="CheckBox3" runat="server" />
                  </td>
              </tr>
              <tr>
                  <td class="style2">
                      <asp:Label ID="Label4" runat="server" Text="Location Status"></asp:Label>
                  </td>
                  <td class="style89">
                      <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="184px">
                      </asp:DropDownList>
                  </td>
                  <td class="style90" rowspan="2">
                      <asp:Label ID="Label24" runat="server" Text="Location Type"></asp:Label>
                  </td>
                  <td rowspan="2">
                      <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                          <asp:ListItem>Enterprise</asp:ListItem>
                          <asp:ListItem>Support Centre</asp:ListItem>
                          <asp:ListItem>Project</asp:ListItem>
                      </asp:CheckBoxList>
                  </td>
              </tr>
              <tr>
                  <td class="style2">
                      <asp:Label ID="Label5" runat="server" Text="Location Status Date"></asp:Label>
                  </td>
                  <td class="style89">
                      <asp:TextBox ID="txtLocationstatusdate" runat="server" Width="124px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style2">
                      <asp:Label ID="Label6" runat="server" Text="Address Line 1"></asp:Label>
                  </td>
                  <td class="style89">
                      <asp:TextBox ID="TextBox6" runat="server" Width="185px"></asp:TextBox>
                  </td>
                  <td class="style90" rowspan="2">
                      <asp:Label ID="Label25" runat="server" Text="Location Desctiption"></asp:Label>
                  </td>
                  <td rowspan="2">
                      <asp:TextBox ID="TextBox15" runat="server" TextMode="MultiLine" Width="192px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style9">
                      <asp:Label ID="Label7" runat="server" Text="Address Line 2"></asp:Label>
                  </td>
                  <td class="style10">
                      <asp:TextBox ID="TextBox7" runat="server" Width="185px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style2">
                      <asp:Label ID="Label8" runat="server" Text="Address Line 3"></asp:Label>
                  </td>
                  <td class="style89">
                      <asp:TextBox ID="TextBox8" runat="server" Width="185px"></asp:TextBox>
                  </td>
                  <td class="style90">
                      <asp:Label ID="Label18" runat="server" Text="Phone Number"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox14" runat="server" Width="192px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style2">
                      <asp:Label ID="Label9" runat="server" Text="Postcode"></asp:Label>
                  </td>
                  <td class="style89">
                      <asp:TextBox ID="TextBox16" runat="server" Width="103px"></asp:TextBox>
                      &nbsp;&nbsp;
                      <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#3399FF">Lookup</asp:LinkButton>
                  </td>
                  <td class="style90">
                      <asp:Label ID="Label19" runat="server" Text="General Fax Number"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox13" runat="server" Width="192px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style2">
                      <asp:Label ID="Label10" runat="server" Text="City/Town"></asp:Label>
                  </td>
                  <td class="style89">
                      <asp:TextBox ID="TextBox10" runat="server" Width="185px"></asp:TextBox>
                  </td>
                  <td class="style90">
                      <asp:Label ID="Label20" runat="server" Text="Minicom Number"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox12" runat="server" Width="192px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style2">
                      <asp:Label ID="Label11" runat="server" Text="Country"></asp:Label>
                  </td>
                  <td class="style89">
                      <asp:TextBox ID="TextBox11" runat="server" Width="185px"></asp:TextBox>
                  </td>
                  <td class="style90">
                      <asp:Label ID="Label21" runat="server" Text="Is New Shop ?"></asp:Label>
                  </td>
                  <td>
                      <asp:CheckBox ID="CheckBox5" runat="server" />
                  </td>
              </tr>
              <tr>
                  <td class="style5">
                      <asp:Label ID="Label12" runat="server" Text="Nation/Country"></asp:Label>
                  </td>
                  <td class="style6">
                      <asp:DropDownList ID="DropDownList2" runat="server" Height="28px" Width="184px">
                      </asp:DropDownList>
                  </td>
                  <td class="style7">
                      <asp:Label ID="Label22" runat="server" Text="Shop Flag Date"></asp:Label>
                  </td>
                  <td class="style8">
                      <asp:TextBox ID="txtShopflagdate" runat="server" Width="128px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style2">
                      <asp:Localize ID="Localize1" runat="server"></asp:Localize>
                      <asp:Localize ID="Localize2" runat="server"></asp:Localize>
                      <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Small" 
                          ForeColor="#0000CC">Location Opening Times</asp:HyperLink>
                  </td>
                  <td class="style89">
                      &nbsp;</td>
                  <td class="style90">
                      <asp:Label ID="Label23" runat="server" Text="Specialist Shop"></asp:Label>
                  </td>
                  <td>
                      <asp:CheckBox ID="CheckBox4" runat="server" />
                  </td>
              </tr>
          </table>
      </asp:Panel>
  </div>
  <div id="tabs-2">
  <p></p>
      <asp:Panel ID="Panel3" runat="server" BackColor="#CCFFCC" BorderColor="Red" 
          BorderWidth="2px">
          <table style="width:100%;">
              <tr>
                  <td class="style27">
                      <asp:Label ID="Label26" runat="server" Text="Accreditations"></asp:Label>
                  </td>
                  <td class="style36">
                      <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                          <asp:ListItem>Two Ticks</asp:ListItem>
                          <asp:ListItem>Investor In People</asp:ListItem>
                          <asp:ListItem>ISO 9001</asp:ListItem>
                          <asp:ListItem>ISO 14001</asp:ListItem>
                          <asp:ListItem>ISO 27001</asp:ListItem>
                      </asp:CheckBoxList>
                  </td>
                  <td class="style35">
                      <asp:Label ID="Label31" runat="server" Text="JCP Offices"></asp:Label>
                  </td>
                  <td>
                      <asp:CheckBoxList ID="CheckBoxList4" runat="server">
                          <asp:ListItem></asp:ListItem>
                          <asp:ListItem></asp:ListItem>
                      </asp:CheckBoxList>
                  </td>
              </tr>
              <tr>
                  <td class="style27">
                      <asp:Label ID="Label27" runat="server" Text="Media Contact"></asp:Label>
                  </td>
                  <td class="style36">
                      <asp:CheckBox ID="CheckBox6" runat="server" />
                  </td>
                  <td class="style35">
                      <asp:Label ID="Label32" runat="server" Text="Catering Facilities"></asp:Label>
                  </td>
                  <td>
                      <asp:CheckBox ID="CheckBox7" runat="server" />
                  </td>
              </tr>
              <tr>
                  <td class="style14">
                      <asp:Label ID="Label28" runat="server" Text="Media Contact Name"></asp:Label>
                  </td>
                  <td class="style36">
                      <asp:TextBox ID="TextBox17" runat="server" Width="108px"></asp:TextBox>
                      &nbsp;&nbsp;
                      <asp:LinkButton ID="Lookup" runat="server" ForeColor="#3399FF">Lookup</asp:LinkButton>
                  </td>
                  <td class="style34">
                      <asp:Label ID="Label33" runat="server" Text="Catering Contact"></asp:Label>
                  </td>
                  <td class="style15">
                      <asp:TextBox ID="TextBox19" runat="server" Width="109px"></asp:TextBox>
                      &nbsp;&nbsp;
                      <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#3399FF">Lookup</asp:LinkButton>
                  </td>
              </tr>
              <tr>
                  <td class="style27" rowspan="4">
                      <asp:Label ID="Label29" runat="server" Text="Local Demographic Issues"></asp:Label>
                  </td>
                  <td class="style36" rowspan="4">
                      <asp:CheckBoxList ID="CheckBoxList3" runat="server">
                          <asp:ListItem>High Un-employment</asp:ListItem>
                          <asp:ListItem>Rural</asp:ListItem>
                      </asp:CheckBoxList>
                  </td>
                  <td class="style35">
                      <asp:Label ID="Label34" runat="server" Text="Catering Type"></asp:Label>
                  </td>
                  <td>
                      <asp:DropDownList ID="DropDownList3" runat="server" Height="22px" Width="130px">
                      </asp:DropDownList>
                  </td>
              </tr>
              <tr>
                  <td class="style34">
                      <asp:Label ID="Label35" runat="server" Text="IS/Network"></asp:Label>
                  </td>
                  <td class="style15">
                      <asp:DropDownList ID="DropDownList4" runat="server" Height="22px" Width="130px">
                      </asp:DropDownList>
                  </td>
              </tr>
              <tr>
                  <td class="style35">
                      <asp:Label ID="Label36" runat="server" Text="City IT Facilities"></asp:Label>
                  </td>
                  <td>
                      <asp:CheckBox ID="CheckBox8" runat="server" />
                  </td>
              </tr>
              <tr>
                  <td class="style35" rowspan="2">
                      <asp:Label ID="Label37" runat="server" Text="City IT Facilities Details"></asp:Label>
                  </td>
                  <td rowspan="2">
                      <asp:TextBox ID="TextBox20" runat="server" TextMode="MultiLine"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style27" rowspan="3">
                      <asp:Label ID="Label30" runat="server" Text="Local Demographic Notes"></asp:Label>
                  </td>
                  <td class="style36" rowspan="3">
                      <asp:TextBox ID="TextBox18" runat="server" TextMode="MultiLine" Width="199px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style35">
                      Room Availability</td>
                  <td>
                      <asp:CheckBox ID="CheckBox9" runat="server" />
                  </td>
              </tr>
              <tr>
                  <td class="style35">
                      Volunteering Opportunities</td>
                  <td>
                      <asp:CheckBox ID="CheckBox10" runat="server" />
                  </td>
              </tr>
          </table>
      </asp:Panel>
      <asp:Panel ID="Panel2" runat="server">
      </asp:Panel>
  </div>
  <div id="tabs-3">
  <p></p>
      <asp:Panel ID="Panel4" runat="server" BackColor="#CCFFCC" BorderColor="Red" 
          BorderWidth="2px">
          <table style="width:100%;">
              <tr>
                  <td class="style46">
                      <asp:Label ID="Label38" runat="server" Text="Outreach Location"></asp:Label>
                  </td>
                  <td class="style42">
                      <asp:CheckBoxList ID="CheckBoxList5" runat="server">
                          <asp:ListItem></asp:ListItem>
                          <asp:ListItem></asp:ListItem>
                      </asp:CheckBoxList>
                  </td>
                  <td class="style47">
                      <asp:Label ID="Label45" runat="server" Text="Local Hotels"></asp:Label>
                  </td>
                  <td>
                      <asp:CheckBoxList ID="CheckBoxList6" runat="server">
                          <asp:ListItem></asp:ListItem>
                          <asp:ListItem></asp:ListItem>
                      </asp:CheckBoxList>
                  </td>
              </tr>
              <tr>
                  <td class="style46">
                      <asp:Label ID="Label39" runat="server" Text="Travel Details"></asp:Label>
                  </td>
                  <td class="style42">
                      <asp:TextBox ID="TextBox21" runat="server" Width="150px"></asp:TextBox>
                  </td>
                  <td class="style47">
                      <asp:Label ID="Label46" runat="server" Text="Visitor Parking Onsite"></asp:Label>
                  </td>
                  <td>
                      <asp:CheckBox ID="CheckBox12" runat="server" />
                  </td>
              </tr>
              <tr>
                  <td class="style46">
                      <asp:Label ID="Label40" runat="server" Text="Travel Nearest -  Bus"></asp:Label>
                  </td>
                  <td class="style42">
                      <asp:TextBox ID="TextBox29" runat="server" Width="150px"></asp:TextBox>
                  </td>
                  <td class="style47">
                      <asp:Label ID="Label47" runat="server" Text="Visitor Parking Spaces"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox32" runat="server">0</asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style46">
                      <asp:Label ID="Label41" runat="server" Text="Travel Nearest - Rail"></asp:Label>
                  </td>
                  <td class="style42">
                      <asp:TextBox ID="TextBox30" runat="server" Width="150px"></asp:TextBox>
                  </td>
                  <td class="style47" rowspan="2">
                      <asp:Label ID="Label48" runat="server" Text="Visitor Parking Alternative"></asp:Label>
                  </td>
                  <td rowspan="2">
                      <asp:TextBox ID="TextBox33" runat="server" TextMode="MultiLine" Width="152px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style46">
                      <asp:Label ID="Label42" runat="server" Text="Travel Nearest - Airport"></asp:Label>
                  </td>
                  <td class="style42">
                      <asp:TextBox ID="TextBox31" runat="server" Width="150px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style46">
                      <asp:Label ID="Label43" runat="server" Text="Host Visit"></asp:Label>
                  </td>
                  <td class="style42">
                      <asp:CheckBox ID="CheckBox11" runat="server" />
                  </td>
                  <td class="style47">
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="style46">
                      <asp:Label ID="Label44" runat="server" Text="Hosting Contact"></asp:Label>
                  </td>
                  <td class="style42">
                      <asp:TextBox ID="TextBox22" runat="server" Width="100px"></asp:TextBox>
                      &nbsp;&nbsp;
                      <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="#3399FF">Lookup</asp:LinkButton>
                  </td>
                  <td class="style47">
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
          </table>
      </asp:Panel>
  </div>
  <div id="tabs-4">
  <p></p>
      <asp:Panel ID="Panel5" runat="server" BackColor="#CCFFCC" BorderColor="Red" 
          BorderWidth="2px">
          <table style="width:100%;">
              <tr>
                  <td class="style53">
                      <asp:Label ID="Label49" runat="server" Text="Room Only Rate"></asp:Label>
                  </td>
                  <td class="style54">
                      <asp:TextBox ID="TextBox34" runat="server" Width="107px"></asp:TextBox>
                  </td>
                  <td class="style50">
                      <asp:Label ID="Label59" runat="server" Text="Negotiated Room Only Rate"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox42" runat="server" Width="107px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style53">
                      <asp:Label ID="Label50" runat="server" Text="B&amp;B Rate"></asp:Label>
                  </td>
                  <td class="style54">
                      <asp:TextBox ID="TextBox35" runat="server" Width="107px"></asp:TextBox>
                  </td>
                  <td class="style50">
                      <asp:Label ID="Label60" runat="server" Text="B&amp;B Negotiated Rate"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox43" runat="server" Width="107px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style53">
                      <asp:Label ID="Label51" runat="server" Text="DBB Rate"></asp:Label>
                  </td>
                  <td class="style54">
                      <asp:TextBox ID="TextBox36" runat="server" Width="107px"></asp:TextBox>
                  </td>
                  <td class="style50">
                      <asp:Label ID="Label61" runat="server" Text="DBB Negotiated Rate"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox44" runat="server" Width="107px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style53">
                      <asp:Label ID="Label52" runat="server" Text="DD Rate"></asp:Label>
                  </td>
                  <td class="style54">
                      <asp:TextBox ID="TextBox37" runat="server" Width="107px"></asp:TextBox>
                  </td>
                  <td class="style50">
                      <asp:Label ID="Label62" runat="server" Text="DD Negotiated Rate"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox45" runat="server" Width="107px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style53">
                      <asp:Label ID="Label53" runat="server" Text="24hr Rate"></asp:Label>
                  </td>
                  <td class="style54">
                      <asp:TextBox ID="TextBox38" runat="server" Width="107px"></asp:TextBox>
                  </td>
                  <td class="style50">
                      <asp:Label ID="Label63" runat="server" Text="24hr Negotiated Rate"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox46" runat="server" Width="107px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style53">
                      <asp:Label ID="Label54" runat="server" Text="Tea anf Coffee"></asp:Label>
                  </td>
                  <td class="style54">
                      <asp:TextBox ID="TextBox39" runat="server" Width="107px"></asp:TextBox>
                  </td>
                  <td class="style50">
                      <asp:Label ID="Label64" runat="server" Text="Last Negotiated Rate"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="txtLastnegotiatedrate" runat="server" Width="107px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style53">
                      <asp:Label ID="Label55" runat="server" Text="Lunch"></asp:Label>
                  </td>
                  <td class="style54">
                      <asp:CheckBox ID="CheckBox13" runat="server" />
                  </td>
                  <td class="style50">
                      <asp:Label ID="Label65" runat="server" Text="Re-negotiate On"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="txtRenegotiatedrate" runat="server" 
                          Width="107px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style53">
                      <asp:Label ID="Label56" runat="server" Text="No of Meeting Room"></asp:Label>
                  </td>
                  <td class="style54">
                      <asp:TextBox ID="TextBox40" runat="server" Width="107px"></asp:TextBox>
                  </td>
                  <td class="style50">
                      <asp:Label ID="Label66" runat="server" Text="Preferred Rate"></asp:Label>
                  </td>
                  <td>
                      <asp:DropDownList ID="DropDownList6" runat="server" Height="35px" Width="168px">
                      </asp:DropDownList>
                  </td>
              </tr>
              <tr>
                  <td class="style53">
                      <asp:Label ID="Label57" runat="server" Text="Meeting Room Rate Per Day"></asp:Label>
                  </td>
                  <td class="style54">
                      <asp:TextBox ID="TextBox41" runat="server" Width="107px"></asp:TextBox>
                  </td>
                  <td class="style50" rowspan="2">
                      <asp:Label ID="Label67" runat="server" Text="Comments"></asp:Label>
                  </td>
                  <td rowspan="2">
                      <asp:TextBox ID="TextBox47" runat="server" TextMode="MultiLine"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style53">
                      <asp:Label ID="Label58" runat="server" Text="Codings"></asp:Label>
                  </td>
                  <td class="style54">
                      <asp:DropDownList ID="DropDownList5" runat="server" Height="16px" Width="165px">
                      </asp:DropDownList>
                  </td>
              </tr>
          </table>
      </asp:Panel>
  </div>
  <div id="tabs-5">
  <p></p>
      <asp:Panel ID="Panel6" runat="server" BackColor="#CCFFCC" BorderColor="Red" 
          BorderWidth="2px">
          <table style="width:100%;">
              <tr>
                  <td class="style57">
                      <asp:Label ID="Label68" runat="server" Text="Facility Type"></asp:Label>
                  </td>
                  <td class="style66">
                      <asp:DropDownList ID="DropDownList7" runat="server" Height="32px" Width="158px">
                      </asp:DropDownList>
                  </td>
                  <td class="style67">
                      <asp:Label ID="Label74" runat="server" Text="Lead Contact"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox52" runat="server"></asp:TextBox>
                      &nbsp;&nbsp;
                      <asp:LinkButton ID="LinkButton5" runat="server" ForeColor="#3399FF">Lookup</asp:LinkButton>
                  </td>
              </tr>
              <tr>
                  <td class="style57" rowspan="2">
                      &nbsp;</td>
                  <td class="style66" rowspan="2">
                      &nbsp;</td>
                  <td class="style67">
                      <asp:Label ID="Label75" runat="server" Text="Room Host"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox53" runat="server"></asp:TextBox>
                      &nbsp;&nbsp;
                      <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#3399FF">Lookup</asp:LinkButton>
                  </td>
              </tr>
              <tr>
                  <td class="style67">
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="style56">
                      <asp:Label ID="Label69" runat="server" Text="Room Capacity"></asp:Label>
                  </td>
                  <td class="style61">
                      <asp:TextBox ID="TextBox50" runat="server" Width="106px"></asp:TextBox>
                  </td>
                  <td class="style68">
                      <asp:Label ID="Label76" runat="server" Text="Equipment Available"></asp:Label>
                  </td>
                  <td class="style15">
                      <asp:CheckBox ID="CheckBox15" runat="server" />
                  </td>
              </tr>
              <tr>
                  <td class="style57">
                      <asp:Label ID="Label70" runat="server" Text="Room Size"></asp:Label>
                  </td>
                  <td class="style66">
                      <asp:TextBox ID="TextBox49" runat="server" Width="106px"></asp:TextBox>
                  </td>
                  <td class="style67" rowspan="3">
                      <asp:Label ID="Label77" runat="server" Text="Room Equipment &amp; Notes"></asp:Label>
                  </td>
                  <td rowspan="3">
                      <asp:TextBox ID="TextBox51" runat="server" Height="52px" TextMode="MultiLine" 
                          Width="187px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style57">
                      <asp:Label ID="Label71" runat="server" Text="Room Connectivity"></asp:Label>
                  </td>
                  <td class="style66">
                      <asp:CheckBox ID="CheckBox14" runat="server" />
                  </td>
              </tr>
              <tr>
                  <td class="style57">
                      <asp:Label ID="Label72" runat="server" Text="Connectivity Type"></asp:Label>
                  </td>
                  <td class="style66">
                      <asp:DropDownList ID="DropDownList8" runat="server" Height="32px" Width="158px">
                      </asp:DropDownList>
                  </td>
              </tr>
              <tr>
                  <td class="style57">
                      <asp:Label ID="Label73" runat="server" Text="Wireless Access Information"></asp:Label>
                  </td>
                  <td class="style66">
                      <asp:TextBox ID="TextBox48" runat="server" Width="158px"></asp:TextBox>
                  </td>
                  <td class="style67">
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
          </table>
      </asp:Panel>
  </div>
  <div id="tabs-6">
  <p></p>
      <asp:Panel ID="Panel7" runat="server" BackColor="#CCFFCC" BorderColor="Red" 
          BorderWidth="2px">
          <table style="width:100%;">
              <tr>
                  <td class="style70">
                      <asp:Label ID="Label78" runat="server" Text="Volunteering Contact"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox54" runat="server" Width="150px"></asp:TextBox>
                      &nbsp;&nbsp;
                      <asp:LinkButton ID="LinkButton7" runat="server" ForeColor="#3399FF">Lookup</asp:LinkButton>
                  </td>
              </tr>
              <tr>
                  <td class="style70">
                      <asp:Label ID="Label79" runat="server" Text="Volunteer Purpose"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox55" runat="server" TextMode="MultiLine"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style70">
                      <asp:Label ID="Label80" runat="server" Text="Volunteering Contact Details"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox56" runat="server" TextMode="MultiLine"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style70">
                      <asp:Label ID="Label81" runat="server" Text="Start Date"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="txtStartdate" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style70">
                      <asp:Label ID="Label82" runat="server" Text="End Date"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="txtEnddate" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style70">
                      <asp:Label ID="Label83" runat="server" Text="Volunteer Nos"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox57" runat="server" Width="205px">12</asp:TextBox>
                  </td>
              </tr>
          </table>
      </asp:Panel>
  </div>
  <div id="tabs-7">
  <p></p>
      <asp:Panel ID="Panel8" runat="server" BackColor="#CCFFCC" BorderColor="Red" 
          BorderWidth="2px">
          <table style="width:100%;">
              <tr>
                  <td class="style86" rowspan="2">
                      <asp:Label ID="Label84" runat="server" Text="P/MW Description"></asp:Label>
                  </td>
                  <td class="style87" rowspan="2">
                      <asp:TextBox ID="TextBox62" runat="server" TextMode="MultiLine" Width="156px"></asp:TextBox>
                  </td>
                  <td class="style88">
                      <asp:Label ID="Label90" runat="server" Text="Contact"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox64" runat="server" Width="116px"></asp:TextBox>
                      &nbsp;&nbsp;
                      <asp:LinkButton ID="LinkButton8" runat="server" ForeColor="#3399FF">Lookup</asp:LinkButton>
                  </td>
              </tr>
              <tr>
                  <td class="style88">
                      <asp:Label ID="Label91" runat="server" Text="Authorised by Name"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="TextBox65" runat="server" Width="116px"></asp:TextBox>
                      &nbsp;&nbsp;
                      <asp:LinkButton ID="LinkButton9" runat="server" ForeColor="#3399FF">Lookup</asp:LinkButton>
                  </td>
              </tr>
              <tr>
                  <td class="style74">
                      <asp:RadioButton ID="RadioButton1" runat="server" Text="Project" />
                  </td>
                  <td class="style80">
                      <asp:RadioButton ID="RadioButton2" runat="server" Text="Minor Works" />
                  </td>
                  <td class="style83">
                      <asp:Label ID="Label94" runat="server" Text="Status"></asp:Label>
                  </td>
                  <td class="style76">
                      <asp:TextBox ID="TextBox66" runat="server" Width="114px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style86">
                      <asp:Label ID="Label85" runat="server" Text="Is TBA ?"></asp:Label>
                  </td>
                  <td class="style87">
                      <asp:CheckBox ID="CheckBox16" runat="server" />
                  </td>
                  <td class="style88">
                      <asp:Label ID="Label92" runat="server" Text="P/MW Enquiry Received Date"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="txtPmwenquirydate" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style86" rowspan="2">
                      <asp:Label ID="Label89" runat="server" Text=" Notes Actions"></asp:Label>
                  </td>
                  <td class="style87" rowspan="2">
                      <asp:TextBox ID="TextBox63" runat="server" TextMode="MultiLine" Width="156px"></asp:TextBox>
                  </td>
                  <td class="style88">
                      <asp:Label ID="Label93" runat="server" Text="Authorised Date"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="txtAuthoriseddate" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style84">
                      <asp:Label ID="Label95" runat="server" Text="Actual Start Date"></asp:Label>
                  </td>
                  <td class="style15">
                      <asp:TextBox ID="txtActualstartdate" runat="server"></asp:TextBox>
                      </td>
              </tr>
              <tr>
                  <td class="style86">
                      <asp:Label ID="Label86" runat="server" Text="Estimated Cost"></asp:Label>
                  </td>
                  <td class="style87">
                      <asp:TextBox ID="TextBox58" runat="server" Width="102px"></asp:TextBox>
                  </td>
                  <td class="style88">
                      <asp:Label ID="Label96" runat="server" Text="Anticipated Completion"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="txtAnticipatedcompletion" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style86">
                      <asp:Label ID="Label87" runat="server" Text="Actual Cost"></asp:Label>
                  </td>
                  <td class="style87">
                      <asp:TextBox ID="TextBox60" runat="server" Width="102px"></asp:TextBox>
                  </td>
                  <td class="style88">
                      <asp:Label ID="Label97" runat="server" Text="Actual Completion Date"></asp:Label>
                  </td>
                  <td>
                      <asp:TextBox ID="txtactualcompletiondate" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="style86">
                      <asp:Label ID="Label88" runat="server" Text="Directorate"></asp:Label>
                  </td>
                  <td class="style87">
                      <asp:DropDownList ID="DropDownList9" runat="server" Height="33px" Width="138px">
                      </asp:DropDownList>
                  </td>
                  <td class="style88">
                      &nbsp;</td>
                  <td>
                      &nbsp;</td>
              </tr>
          </table>
      </asp:Panel>
  </div>
</div>
    </form>
</body>
</html>
