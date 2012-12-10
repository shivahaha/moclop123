<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceDetails.aspx.cs" Inherits="Details.ServiceDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <meta charset="utf-8" />
    <title>Service Details</title>
     
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script  type="text/javascript" src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script type ="text/javascript" >
    $(function() {
        $( "#txtFundingstart" ).datepicker();
         $( "#txtFundingEnd" ).datepicker();
         $( "#txtCompleteDate" ).datepicker();
         $( "#txtDonate" ).datepicker();
         $( "#txtServiceStartExpected" ).datepicker();
         $( "#txtServiceStartDate" ).datepicker();
         $( "#txtServiceEndDate" ).datepicker();
         $( "#txtRequireBy" ).datepicker();
    });
    </script>
    
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type ="text/javascript" src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css" />
   
    <script type ="text/javascript" >
    $(function() {
        $( "#tabs" ).tabs();
    });
    </script>
    <style type="text/css">
        .style1
        {
            width: 265px;
        }
        .style3
        {
            width: 222px;
        }
        .style4
        {
            width: 168px;
        }
        .style6
        {
            width: 320px;
        }
        .style7
        {
            width: 202px;
        }
        #Select1
        {
            width: 67px;
        }
        .style8
        {
            width: 428px;
        }
        .style9
        {
            width: 150px;
        }
        .style10
        {
            width: 194px;
        }
        .style11
        {
            width: 114px;
        }
        .style13
        {
            width: 168px;
            height: 37px;
        }
        .style14
        {
            height: 37px;
        }
        .style15
        {
            height: 37px;
            width: 198px;
        }
        .style19
        {
            width: 168px;
            height: 50px;
        }
        .style20
        {
            width: 198px;
            height: 50px;
        }
        .style22
        {
            height: 50px;
        }
        .style23
        {
            width: 198px;
        }
        .style24
        {
            width: 238px;
            height: 37px;
        }
        .style26
        {
            width: 238px;
            height: 50px;
        }
        .style27
        {
            width: 238px;
        }
    </style>
</head>
<body>
 
    <form id="form1" runat="server">
 <h3>Service Details</h3>
<div id="tabs">
    <ul>
        <li><a href="#tabs-1">Details 1 </a></li>
        <li><a href="#tabs-2">Details 2 </a></li>
        <li><a href="#tabs-3">Details 3 </a></li>
        <li><a href="#tabs-4">Organization </a></li>
        <li><a href="#tabs-5">Premises </a></li>
        <li><a href="#tabs-6">Contact</a></li>
        <li><a href="#tabs-7">Funding</a></li>
   </ul>
    <asp:Label ID="Label31" runat="server" Text="Sevice Details" Height="16px" 
             Width="163px" ForeColor="Lime"></asp:Label>
    <div id="tabs-1">
        
            <asp:Panel ID="Panel11" runat="server" BorderWidth= "1px" BorderColor ="Blue" >
            
        <p style="height: 38px; width: 800px"> 
            &nbsp;<asp:Button ID="Button2" runat="server" style="margin-left: 632px" 
                Text="Save" />
            <asp:Button ID="Button3" runat="server" style="margin-left: 19px" Text="Back" />
             </p>
   
       
       
        <p>  
            &nbsp;<asp:Panel ID="Panel1" runat="server" BorderWidth="2px">
                <table style="width: 100%;">
                    <tr>
                        <td class="style1">
                            <asp:Label ID="Label1" runat="server" Text="Service name : "></asp:Label>
                            <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="*"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox1" runat="server" Width="232px"></asp:TextBox>
                        </td>
                        <td class="style3">
                            <asp:Label ID="Label3" runat="server" Text="Service Active"></asp:Label>
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked="true" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="Label4" runat="server" Text="Service Short Description"></asp:Label>
                            <asp:Label ID="Label5" runat="server" ForeColor="#FF3300" Text="*"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="232px"></asp:TextBox>
                        </td>
                        <td class="style3">
                            <asp:Label ID="Label6" runat="server" Text="Service Full Description"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="232px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Label ID="Label7" runat="server" Text="Sub Type"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                Height="25px" Width="233px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Dept Code"></asp:Label>
                            <asp:Label ID="Label9" runat="server" ForeColor="#FF3300" Text="*"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Width="232px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="Lead Contact"></asp:Label>
                            <asp:Label ID="Label11" runat="server" ForeColor="#FF3300" Text="*"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="TextBox5" runat="server" Width="148px"></asp:TextBox>
                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#0099FF">LookUp</asp:LinkButton>
                        </td>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text="Service Type"></asp:Label>
                            <asp:Label ID="Label13" runat="server" ForeColor="#FF3300" Text="*"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                Height="25px" Width="233px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text="Client Description"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Height="40px" Width="232px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label15" runat="server" Text="Service Description Delivery"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" Height="40px" Width="232px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label16" runat="server" Text="Service Attendance "></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                                Height="25px" Width="233px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="Label17" runat="server" Text="Service Contract Code"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" Width="232px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label18" runat="server" Text="Service Start Expected"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtServiceStartExpected" runat="server" Width="165px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label19" runat="server" Text="Service Contract Value"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server" Width="232px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label20" runat="server" Text="Service Start Date"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtServiceStartDate" runat="server" Width="167px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label22" runat="server" Text="Contract Staged Payment"></asp:Label>
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox2" runat="server" Checked="false" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label21" runat="server" Text="Service End Date"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtServiceEndDate" runat="server" Width="167px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label23" runat="server" Text="Referral Process/Method"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox13" runat="server" Width="230px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label24" runat="server" Text="Service Extendable"></asp:Label>
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox3" runat="server" Checked="false" />
                        </td>
                        <td>
                            <asp:Label ID="Label25" runat="server" Text="Service Time Limitted"></asp:Label>
                        </td>
                        <td>
                            <asp:CheckBox ID="CheckBox4" runat="server" Checked="false" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:ListBox ID="ListBox1" runat="server" Enabled="False" Height="24px" 
                                Width="50px">
                                <asp:ListItem Value="0"></asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                            </asp:ListBox>
                            <asp:Label ID="Label26" runat="server" Text="Years"></asp:Label>
                            <asp:ListBox ID="ListBox2" runat="server" Enabled="False" Height="25px" 
                                Width="47px">
                                <asp:ListItem Value="0"></asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                            </asp:ListBox>
                            <asp:Label ID="Label27" runat="server" Text="Months"></asp:Label>
                        </td>
                        <td>
                        </td>
                        <td>
                            <asp:ListBox ID="ListBox3" runat="server" Enabled="False" Height="24px" 
                                Width="50px">
                                <asp:ListItem Value="0"></asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                            </asp:ListBox>
                            <asp:Label ID="Label28" runat="server" Text="Years"></asp:Label>
                            <asp:ListBox ID="ListBox4" runat="server" Enabled="False" Height="25px" 
                                Width="47px">
                                <asp:ListItem Value="0"></asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                            </asp:ListBox>
                            <asp:Label ID="Label29" runat="server" Text="Months"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            </asp:Panel>
          </p>
    </div>
    <%--
        tabs2-details2--%>

   <div id="tabs-2">
       <asp:Panel ID="Panel13" runat="server" BorderWidth = "1px" BorderColor="Blue">
      
    <p style="height: 38px; width: 800px"> 
        <asp:Button ID="Button10" runat="server" Text="In-Active" style="margin-left:500px"/>
            <asp:Button ID="Button8" runat="server" style="margin-left:7px" 
                Text="Save" />
            <asp:Button ID="Button9" runat="server" style="margin-left: 7px" Text="Back" />
           </p>
         <p>
         <div id= "Div1">
                 <asp:Panel ID="Panel14" runat="server" BorderWidth="2px">
                
                 <table style="width: 100%;">
                     <tr>
                         <td class="style6">
                             
                             <asp:Label ID="Label32" runat="server" Text="Service Benefits Critetion"></asp:Label>
                             
                         </td>
                         <td class="style7">
                            
                             <asp:Panel ID="Panel2" runat="server" BorderWidth="1px" Height="158px" 
                                 Width="237px">
                                 <asp:CheckBox ID="CheckBox5" runat="server" Text="Disablebility Living Allowance " />
                                 <br />
                                 <asp:CheckBox ID="CheckBox6" runat="server" Text="Employment And Support Allowance" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox7" runat="server" Text="Incapacity Benefits" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox8" runat="server" Text="Income Support" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox9" runat="server" Text="Jopsekker Allowance " />
                                 <br />
                             </asp:Panel>
                            
                         </td>
                         <td class="style8">
                             
                             <asp:Label ID="Label33" runat="server" Text="Service Disablebility Criterion"></asp:Label>
                             
                         </td>
                         <td>
                             
                             <asp:Panel ID="Panel3" runat="server" BorderWidth="1px" Height="148px" 
                                 Width="242px">
                                 <asp:CheckBox ID="CheckBox10" runat="server" Text="Chest,Breathing proplems" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox11" runat="server" 
                                     Text="Condition redistring mobility" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox38" runat="server" Text="Diabetes" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox39" runat="server" Text="Difficult in  hearing" />
                             </asp:Panel>
                            
                         </td>
                     </tr>
                     <tr>
                         <td class="style6">
                             
                             <asp:Label ID="Label34" runat="server" Text="Service Benefits  Criterion"></asp:Label>
                             
                         </td>
                         <td class="style7">
                             
                             <asp:Panel ID="Panel4" runat="server" BorderWidth="1px" Height="136px" 
                                 Width="236px">
                                 <asp:CheckBox ID="CheckBox12" runat="server" Text="Lone Parrent" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox13" runat="server" Text="ELOS" Checked= "true" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox14" runat="server" Text="Refugees" Checked ="true" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox15" runat="server" Text="Basic Skills" />
                                 
                             </asp:Panel>
                            
                         </td>
                         <td class="style8">
                            
                             <asp:Label ID="Label35" runat="server" 
                                 Text="Service Personal  Circumtance Criterion"></asp:Label>
                             
                         </td>
                         <td>
                             
                             <asp:Panel ID="Panel8" runat="server" BorderWidth="1px" Height="152px" 
                                 Width="226px">
                                 <asp:CheckBox ID="CheckBox40" runat="server" 
                                     Text="Carer Responsibilities" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox41" runat="server" 
                                     Text="Lone Parent" Checked ="true" />
                                 <br />
                                 <br />
                             </asp:Panel>
                         </td>
                     </tr>
                     <tr>
                          <td class="style6">
                             
                             <asp:Label ID="Label36" runat="server" Text="Service Ethnicity Criterion"></asp:Label>
                             
                         </td>
                         <td class="style7">
                            
                             <asp:Panel ID="Panel15" runat="server" BorderWidth="1px" Height="132px" 
                                 Width="237px">
                                 <asp:CheckBox ID="CheckBox33" runat="server" Text="White British" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox34" runat="server" Text="White Irish" Checked ="true"   />
                                 <br />
                                 <asp:CheckBox ID="CheckBox35" runat="server" Text="Other White" Checked ="true" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox36" runat="server" 
                                     Text="White &amp; Black Caribean" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox37" runat="server" Text="White &amp; Black African" />
                             </asp:Panel>
                            
                         </td>
                         <td class="style8">
                             
                             <asp:Label ID="Label37" runat="server" 
                                 Text="Other Service Patitcipartion Criterion"></asp:Label>
                             
                         </td>
                         <td>
                             
                             <asp:Panel ID="Panel7" runat="server" BorderWidth="1px" Height="132px" 
                                 Width="237px">
                                 <asp:CheckBox ID="CheckBox28" runat="server" Text="Refferal to Mainstream Service First " Checked ="true"/>
                                 <br />
                                 <asp:CheckBox ID="CheckBox29" runat="server" 
                                     Text="Only Acces Service One" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox30" runat="server" Text="Only Acces Service One Per year" Checked ="true" />
                                 <br />
                                 
                                 <br />
                                 
                             </asp:Panel>
                            
                         </td>
                     </tr>
                     <tr>
                             <td>
                             
                                 &nbsp;</td>
                             <td>
                            
                                 &nbsp;</td>
                             <td></td>
                             <td></td>
                     </tr>
                 </table>
              </asp:Panel>
             </div>
             <p>
             </p>
         </p>
          </asp:Panel>
      </div>
      
    <%--  tabs3-details 3--%>
     <div id="tabs-3">
         <asp:Panel ID="Panel24" runat="server" BorderWidth = "1px" BorderColor = "Blue">
        
     <p style="height: 38px; width: 800px"> 
            &nbsp;<asp:Button ID="Button11" runat="server" style="margin-left: 632px" 
                Text="Save" />
            <asp:Button ID="Button12" runat="server" style="margin-left: 19px" Text="Back" />
      </p>
        <p>
            &nbsp;<asp:Panel ID="Panel5" runat="server" BorderWidth="2px">
                <table style="width: 100%;">
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label38" runat="server" Text="Client Support Process"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:Panel ID="Panel6" runat="server" BorderWidth="1px" Height="158px" 
                                Width="237px">
                                <asp:CheckBox ID="CheckBox16" runat="server" Text="Refferal " />
                                <br />
                                <asp:CheckBox ID="CheckBox17" runat="server" Text="Initial Contact  " />
                                <br />
                                <asp:CheckBox ID="CheckBox18" runat="server" Text="Pre-Employment " />
                                <br />
                                <asp:CheckBox ID="CheckBox19" runat="server" Text="In Work Support " />
                                <br />
                                <br />
                            </asp:Panel>
                        </td>
                        <td class="style8">
                            <asp:Label ID="Label39" runat="server" Text="Client Outcome"></asp:Label>
                        </td>
                        <td>
                            <asp:Panel ID="Panel16" runat="server" BorderWidth="1px" Height="136px" 
                                Width="236px">
                                <asp:CheckBox ID="CheckBox51" runat="server" />
                                <br />
                                <asp:CheckBox ID="CheckBox52" runat="server" />
                                <br />
                                <br />
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label40" runat="server" Text="Intervention"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:Panel ID="Panel10" runat="server" BorderWidth="1px" Height="136px" 
                                Width="236px">
                                <asp:CheckBox ID="CheckBox25" runat="server" />
                                <br />
                                <asp:CheckBox ID="CheckBox26" runat="server" />
                                <br />
                                <br />
                            </asp:Panel>
                        </td>
                        <td class="style8">
                            <asp:Label ID="Label44" runat="server" Text="Target Client"></asp:Label>
                        </td>
                        <td>
                            <asp:Panel ID="Panel18" runat="server" BorderWidth="1px" Height="136px" 
                                Width="236px">
                                <asp:CheckBox ID="CheckBox55" runat="server" />
                                <br />
                                <asp:CheckBox ID="CheckBox56" runat="server" />
                                <br />
                                <br />
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label42" runat="server" Text="Client Journey  "></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:Panel ID="Panel12" runat="server" BorderWidth="1px" Height="132px" 
                                Width="237px">
                                <asp:CheckBox ID="CheckBox20" runat="server" />
                                <br />
                                <asp:CheckBox ID="CheckBox27" runat="server" />
                                <br />
                            </asp:Panel>
                        </td>
                        <td class="style8">
                            <asp:Label ID="Label43" runat="server" Text="Accreditations"></asp:Label>
                        </td>
                        <td>
                            <asp:Panel ID="Panel17" runat="server" BorderWidth="1px" Height="136px" 
                                Width="236px">
                                <asp:CheckBox ID="CheckBox53" runat="server" />
                                <br />
                                <asp:CheckBox ID="CheckBox54" runat="server" />
                                <br />
                                <br />
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label45" runat="server" Text="Other Service"></asp:Label>
                        </td>
                        <td>
                            <asp:Panel ID="Panel19" runat="server" BorderWidth="1px" Height="132px" 
                                Width="237px">
                                <br />
                                <br />
                            </asp:Panel>
                        </td>
                        <td>
                            <asp:Label ID="Label46" runat="server" Text="refferal Resource"></asp:Label>
                        </td>
                        <td>
                            <asp:Panel ID="Panel20" runat="server" BorderWidth="1px" Height="132px" 
                                Width="237px">
                                <br />
                                <br />
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label47" runat="server" Text="Support Centre"></asp:Label>
                        </td>
                        <td>
                            <asp:Panel ID="Panel21" runat="server" BorderWidth="1px" Height="132px" 
                                Width="237px">
                                <br />
                                <br />
                            </asp:Panel>
                        </td>
                        <td>
                            <asp:Label ID="Label48" runat="server" Text="Programme"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList4" runat="server" Height="78px" Width="214px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
         </asp:Panel>
             </div>
           <%--  tabs4--%>
       <div id = "tabs-4">
           <asp:Panel ID="Panel25" runat="server" BorderColor= "Blue" BorderWidth="1px">
           
        <p style="height: 38px; width: 800px"> 
        <asp:Button ID="Button1" runat="server" Text="In-Active" style="margin-left:500px"/>
            <asp:Button ID="Button4" runat="server" style="margin-left:7px" 
                Text="Save" />
            <asp:Button ID="Button5" runat="server" style="margin-left: 7px" Text="Back" />
           </p>
       <p>
           <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
               AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
               <Columns>
                   <asp:BoundField DataField="OrganizationName" HeaderText="OrganizationName" 
                       SortExpression="OrganizationName" />
                   <asp:BoundField DataField="ShortDescription" HeaderText="ShortDescription" 
                       SortExpression="ShortDescription" />
                   <asp:HyperLinkField Text="Edit Roles" />
               </Columns>
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
               ConnectionString="<%$ ConnectionStrings:MockProject2ConnectionString %>" 
               SelectCommand="SELECT [OrganizationName], [ShortDescription] FROM [Organizations]">
           </asp:SqlDataSource>
       </p>
       </asp:Panel>
       </div>
      <%-- tabs5--%>
      
       <div id ="tabs-5">
           <asp:Panel ID="Panel26" runat="server" BorderColor = "Blue" BorderWidth ="1px">
          
       <p style="height: 38px; width: 800px"> 
        <asp:Button ID="Button6" runat="server" Text="In-Active" style="margin-left:500px"/>
            <asp:Button ID="Button7" runat="server" style="margin-left:7px" 
                Text="Save" />
            <asp:Button ID="Button13" runat="server" style="margin-left: 7px" Text="Back" />
           </p>
            <p>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="PremiseName" HeaderText="PremiseName" 
                            SortExpression="PremiseName" />
                        <asp:BoundField DataField="County" HeaderText="County" 
                            SortExpression="County" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" 
                            SortExpression="PhoneNumber" />
                        <asp:BoundField DataField="ProjectCode" HeaderText="ProjectCode" 
                            SortExpression="ProjectCode" />
                        <asp:HyperLinkField HeaderText="Remove" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:MockProject2ConnectionString %>" 
                    SelectCommand="SELECT [PremiseName], [County], [PhoneNumber], [ProjectCode] FROM [Premises]">
                </asp:SqlDataSource>
                <asp:Button ID="Button14" runat="server" Text="Associate new Premises" 
                    style="margin-left: 550px"  />
            </p>
        </asp:Panel>
       </div>
      <%-- tabs 6 : Contact--%>
       <div id = "tabs-6">
           <asp:Panel ID="Panel27" runat="server" BorderColor = "Blue" BorderWidth = "1px">
        
        <p style="height: 38px; width: 800px"> 
        <asp:Button ID="Button15" runat="server" Text="In-Active" style="margin-left:500px"/>
            <asp:Button ID="Button16" runat="server" style="margin-left:7px" 
                Text="Save" />
            <asp:Button ID="Button17" runat="server" style="margin-left: 7px" Text="Back" />
           </p>
           <p>
               &nbsp;<asp:Panel ID="Panel9" runat="server" BorderWidth="2px" Height="206px" 
                   Width="801px">
                   <table style="width: 100%;">
                       <tr>
                           <td class="style9">
                               <asp:Label ID="Label49" runat="server" Text="Contact Outcome"></asp:Label>
                           </td>
                           <td class="style10">
                               <asp:Panel ID="Panel22" runat="server" BorderWidth="1px" Height="135px" 
                                   Width="213px">
                                   <asp:CheckBox ID="CheckBox21" runat="server" Text="Refferal taken" />
                                   <br />
                                   <asp:CheckBox ID="CheckBox59" runat="server" Text="Jobs Starts" />
                                   <br />
                                   <asp:CheckBox ID="CheckBox57" runat="server" Text="Retention" />
                                   <br />
                                   <asp:CheckBox ID="CheckBox60" runat="server" Text="Accrided Training" />
                                   <br />
                                   <asp:CheckBox ID="CheckBox61" runat="server" 
                                       Text="Motivation Improved Training" />
                               </asp:Panel>
                           </td>
                           <td class="style11">
                               <asp:Label ID="Label50" runat="server" Text="Contact Obigatin"></asp:Label>
                           </td>
                           <td>
                               <asp:Panel ID="Panel23" runat="server" BorderWidth="1px" Height="135px" 
                                   Width="213px">
                                   <asp:CheckBox ID="CheckBox62" runat="server" Text="Phone weekly " />
                                   <br />
                                   <asp:CheckBox ID="CheckBox63" runat="server" Text="Email Monthly" />
                                   <br />
                                   <br />
                                   <br />
                               </asp:Panel>
                           </td>
                       </tr>
                       <tr>
                           <td class="style9">
                               <asp:Label ID="Label51" runat="server" Text="Participation"></asp:Label>
                           </td>
                           <td class="style10">
                               <asp:DropDownList ID="DropDownList5" runat="server" Height="26px" Width="203px">
                               </asp:DropDownList>
                           </td>
                           <td class="style11">
                           </td>
                       </tr>
                   </table>
               </asp:Panel>
               <p>
               </p>
               <p>
               </p>
           </p>
              </asp:Panel>
       </div>
       
      <%-- tabs 7 - funding--%>
        <div id = "tabs-7">
            <asp:Panel ID="Panel28" runat="server" BorderColor="Blue" BorderWidth="1px">
               <p style="height: 38px; width: 800px"> 
          <asp:Button ID="Button18" runat="server" Text="Save" style="margin-left:500px"/>
            <asp:Button ID="Button19" runat="server" style="margin-left:7px" 
                Text="Back" />
           
           </p>
                <asp:Panel ID="Panel29" runat="server" BorderWidth="2px" Width="792px">
                    <table style="width: 100%; margin-right: 41px;">
                        <tr>
                            <td class="style13">
                                <asp:Label ID="Label30" runat="server" ForeColor="Blue" Height="22px" 
                                    Text="General" Width="110px"></asp:Label>
                            </td>
                            <td class="style15">
                            </td>
                            <td class="style24">
                            </td>
                            <td class="style14">
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label52" runat="server" Text="Funding Source"></asp:Label>
                                <asp:Label ID="Label57" runat="server" ForeColor="#FF0066" Text="*"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:DropDownList ID="DropDownList6" runat="server" Height="22px" Width="222px">
                                </asp:DropDownList>
                            </td>
                            <td class="style27">
                                <asp:Label ID="Label60" runat="server" Text="Funding Needs"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label53" runat="server" Text="Funding Contact Details "></asp:Label>
                                <asp:Label ID="Label58" runat="server" ForeColor="#FF0066" Text="*"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:TextBox ID="TextBox14" runat="server" Enabled="False" Width="138px"></asp:TextBox>
                                <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#3399FF">LookUp</asp:LinkButton>
                            </td>
                            <td class="style27">
                                <asp:Label ID="Label61" runat="server" Text="Funding Continuation Needed"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox64" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label54" runat="server" Text="Funding Amount"></asp:Label>
                                <asp:Label ID="Label59" runat="server" ForeColor="#FF0066" Text="*"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:TextBox ID="TextBox15" runat="server" Width="105px"></asp:TextBox>
                            </td>
                            <td class="style27">
                                <asp:Label ID="Label62" runat="server" Text="Funding Continuation Amount"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox17" runat="server" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label55" runat="server" Text="Funding Start"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:TextBox ID="txtFundingstart" runat="server"></asp:TextBox>
                            </td>
                            <td class="style27">
                                <asp:Label ID="Label63" runat="server" Text="Funding Continuation Details"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox18" runat="server" Enabled="False" Height="79px" 
                                    Width="171px" style="margin-left: 0px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label56" runat="server" Text="Funding End"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:TextBox ID="txtFundingEnd" runat="server"></asp:TextBox>
                            </td>
                            <td class="style27">
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="style19">
                                <asp:Label ID="Label64" runat="server" ForeColor="Blue" Height="32px" 
                                    Text="Fundraising For Service Project " Width="161px"></asp:Label>
                            </td>
                            <td class="style20">
                            </td>
                            <td class="style26">
                            </td>
                            <td class="style22">
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label65" runat="server" Text="Fundraising For Text"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:TextBox ID="TextBox19" runat="server" Height="50px" Width="230px"></asp:TextBox>
                            </td>
                            <td class="style27">
                                <asp:Label ID="Label70" runat="server" Text="Fundraising Needs"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label66" runat="server" Text="Fundraising Why"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:TextBox ID="TextBox20" runat="server" Height="50px" Width="230px"></asp:TextBox>
                            </td>
                            <td class="style27">
                                <asp:Label ID="Label71" runat="server" Text="Fundraising Required by"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtRequireBy" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style23">
                            </td>
                            <td class="style27">
                                <asp:Label ID="Label72" runat="server" Text="Fundraising Complete"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox65" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style23">
                            </td>
                            <td class="style27">
                                <asp:Label ID="Label73" runat="server" Text="Fundraising Completed Date"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCompleteDate" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:Label ID="Label75" runat="server" ForeColor="Blue" Height="32px" 
                                    Text="Fundraising Donor" Width="161px"></asp:Label>
                            </td>
                            <td class="style23">
                            </td>
                            <td class="style27">
                                &nbsp;</td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label76" runat="server" Text="Fundraising Donor Anomyous"></asp:Label>
                            </td>
                            <td class="style23">
                                <asp:CheckBox ID="CheckBox66" runat="server" />
                            </td>
                            <td class="style27">
                                <asp:Label ID="Label78" runat="server" Text="Fundraising Donation Date"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDonateDate" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Label ID="Label77" runat="server" Text="Fundraising Donor Amount"></asp:Label>
                             </td>
                            <td class="style23">
                                <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                             </td>
                            <td class="style27">
                                <asp:Label ID="Label79" runat="server" Text="Fundraising Donation Incremental "></asp:Label>
                             </td>
                            <td>
                                <asp:CheckBox ID="CheckBox67" runat="server" />
                             </td>
                        </tr>
                    </table>
                </asp:Panel>
                <p>
                </p>
                <p>
                </p>
                <p>
                </p>
                <p>
                </p>
                <p>
                </p>
                <p>
                </p>
                <p>
                </p>
                <p>
                </p>
                <p>
                </p>
            </asp:Panel>
        </div>
       
     </div>
     
     
     
     
    
</form>

</body>
</html>
