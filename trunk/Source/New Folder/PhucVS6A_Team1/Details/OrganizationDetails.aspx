<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrganizationDetails.aspx.cs" Inherits="Details.Organization" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <meta charset="utf-8" />
    <title>Organization</title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" />
    <script type ="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type ="text/javascript" src="http://code.jquery.com/ui/1.9.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css" />
   
    <script type ="text/javascript" >
    $(function() {
        $( "#tabs" ).tabs();
    });
    </script>
    <style type="text/css">
        #Select1
        {
            width: 67px;
        }
        .style2
        {
            width: 206px;
        }
        .style4
        {
            width: 201px;
        }
        .style5
        {
            width: 198px;
        }
        .style6
        {
            width: 180px;
        }
        .style7
        {
            width: 231px;
        }
        .style8
        {
            width: 136px;
        }
        .style9
        {
            width: 205px;
        }
        .style10
        {
            width: 361px;
        }
        .style14
        {
            width: 124px;
        }
        .style15
        {
            width: 226px;
        }
        .style17
        {
            height: 25px;
        }
        .style18
        {
            width: 226px;
            height: 25px;
        }
        .style19
        {
            width: 170px;
            height: 25px;
        }
        .style20
        {
            width: 170px;
        }
    </style>
</head>
<body>
 
    <form id="form1" runat="server">
 <h3>Organization Details</h3>
<div id="tabs">
    <ul>
        <li><a href="#tabs-1">Details 1 </a></li>
        <li><a href="#tabs-2">Details 2 </a></li>
        <li><a href="#tabs-3">Details 3 </a></li>
        <li><a href="#tabs-4">Details 4 </a></li>
        <li><a href="#tabs-5">Details 5 </a></li>
        <li><a href="#tabs-6">BU/Directorates </a></li>
        
   </ul>
   <asp:Label ID="Label43" runat="server" Text="Organization Details" Height="16px" 
             Width="239px" ForeColor="Lime"></asp:Label>
    <div id="tabs-1">
           
        <asp:Panel ID="Panel16" runat="server" BorderColor="Blue" BorderWidth ="1px">
        
         <p style="height: 38px; width: 800px"> 
            
            <asp:Button ID="Button1" runat="server" style="margin-left:550px" 
                Text="Save" />
            <asp:Button ID="Button2" runat="server" style="margin-left: 7px" Text="Back" />
            
             </p>
           <p> 
           <div id = "Div1">
               <asp:Panel ID="Panel13" runat="server" BorderWidth="2px">
              
               <table style="width: 100%;">
                   <tr>
                       <td class="style4">
                        
                           <asp:Label ID="Label1" runat="server" Text="Organization Name"></asp:Label>
                       
                           <asp:Label ID="Label2" runat="server" ForeColor="#FF0066" Text="*"></asp:Label>
                       
                       </td>
                       <td class="style2">
                           &nbsp;
                           <asp:TextBox ID="TextBox1" runat="server" Width="209px"></asp:TextBox>
                       </td>
                       <td class="style5">
                         
                           <asp:Label ID="Label3" runat="server" Text="Preferred Organization"></asp:Label>
                       </td>
                       <td>
                           
                           <asp:CheckBox ID="CheckBox1" runat="server" />
                       </td>
                   </tr>
                   <tr>
                       <td class="style4">
                           
                           <asp:Label ID="Label4" runat="server" Text="Organization Short Description"></asp:Label>
                       
                           <asp:Label ID="Label5" runat="server" ForeColor="#FF0066" Text="*"></asp:Label>
                       
                       </td>
                       <td class="style2">
                           <asp:TextBox ID="TextBox2" runat="server" Width="207px"></asp:TextBox>
                       </td>
                       <td class="style5">
                          
                           <asp:Label ID="Label7" runat="server" Text="Expression Interest"></asp:Label>
                          
                       </td>
                       <td>
                           <asp:CheckBox ID="CheckBox2" runat="server" />
                       </td>
                   </tr>
                   <tr>
                       <td class="style4">
                          
                           <asp:Label ID="Label6" runat="server" Text="Lead Contact "></asp:Label>
                       </td>
                       <td class="style2">
                          
                           <asp:TextBox ID="TextBox3" runat="server" Width="103px"></asp:TextBox>
                           <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#0066FF">LookUp</asp:LinkButton>
                       </td>
                       <td class="style5">
                           <asp:Label ID="Label8" runat="server" Text="Type Of Bussiness"></asp:Label>
                       
                           <asp:Label ID="Label9" runat="server" ForeColor="#FF0066" Text="*"></asp:Label>
                       
                       </td>
                       <td>
                        
                           <asp:TextBox ID="TextBox4" runat="server" Width="89px"></asp:TextBox>
                           <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#0066FF">LookUp</asp:LinkButton>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           <asp:Label ID="Label10" runat="server" Text="Address Line 1"></asp:Label>
                       
                           <asp:Label ID="Label11" runat="server" ForeColor="#FF0066" Text="*"></asp:Label>
                       
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox5" runat="server" Width="209px"></asp:TextBox>
                       </td>
                       <td>
                           <asp:Label ID="Label12" runat="server" Text="SICCode"></asp:Label>
                       </td>
                       <td>
                        
                           <asp:TextBox ID="TextBox6" runat="server" Width="89px"></asp:TextBox>
                       </td>
                       
                   </tr>
                   <tr>
                       <td>
                           <asp:Label ID="Label13" runat="server" Text="Address Line 2"></asp:Label>
                       
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox7" runat="server" Width="209px"></asp:TextBox>
                       </td>
                       <td>
                           
                           <asp:Label ID="Label15" runat="server" Text="Organization Full Description"></asp:Label>
                       
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox9" runat="server" Height="48px" Width="173px"></asp:TextBox>
                       </td>
                       
                   </tr>
                    <tr>
                       <td>
                           <asp:Label ID="Label14" runat="server" Text="Address Line 3"></asp:Label>
                       
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox8" runat="server" Width="209px"></asp:TextBox>
                       </td>
                       <td>
                           <asp:Label ID="Label16" runat="server" Text="Phone Number"></asp:Label>
                       </td>
                       <td>
                          
                           <asp:TextBox ID="TextBox10" runat="server" Width="173px"></asp:TextBox>
                       </td>
                       
                   </tr>
                    <tr>
                       <td>
                           <asp:Label ID="Label17" runat="server" Text="Post Code"></asp:Label>
                       </td>
                       <td>
                          
                           <asp:TextBox ID="TextBox11" runat="server" Width="103px"></asp:TextBox>
                           <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#0066FF">LookUp</asp:LinkButton>
                       </td>
                       <td>
                           <asp:Label ID="Label18" runat="server" Text="Fax"></asp:Label>
                       </td>
                       <td>
                          
                           <asp:TextBox ID="TextBox12" runat="server" Width="173px"></asp:TextBox>
                       </td>
                       
                   </tr>
                    <tr>
                       <td>
                           <asp:Label ID="Label19" runat="server" Text="City/Town"></asp:Label>
                       </td>
                       <td>
                           <asp:TextBox ID="TextBox13" runat="server" Width="209px"></asp:TextBox>
                       </td>
                       <td>
                           <asp:Label ID="Label20" runat="server" Text="Email"></asp:Label>
                       </td>
                       <td>
                          
                           <asp:TextBox ID="TextBox14" runat="server" Width="173px"></asp:TextBox>
                       </td>
                       
                   </tr>
                     <tr>
                            <td>
                           <asp:Label ID="Label21" runat="server" Text="Country"></asp:Label>
                            </td>
                            <td>
                           <asp:TextBox ID="TextBox15" runat="server" Width="209px"></asp:TextBox>
                            </td>
                            <td>
                           <asp:Label ID="Label22" runat="server" Text="Web Address"></asp:Label>
                            </td>
                            <td>
                          
                           <asp:TextBox ID="TextBox16" runat="server" Width="173px"></asp:TextBox>
                            </td>
                     </tr>
                      <tr>
                            <td>
                           <asp:Label ID="Label23" runat="server" Text="Nation/Country"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" 
                                    style="width: 180px" Width="156px">
                                </asp:DropDownList>
                            </td>
                            <td>
                           <asp:Label ID="Label24" runat="server" Text="Charity Number"></asp:Label>
                            </td>
                            <td>
                          
                           <asp:TextBox ID="TextBox18" runat="server" Width="173px"></asp:TextBox>
                            </td>
                     </tr>
                     <tr>
                          <td></td>
                          <td></td>
                          <td>
                           <asp:Label ID="Label25" runat="server" Text="Company Number"></asp:Label>
                            </td>
                          <td>
                          
                           <asp:TextBox ID="TextBox19" runat="server" Width="173px"></asp:TextBox>
                            </td>
                     </tr>
               </table>
                </asp:Panel>
           </div>
             </asp:Panel>
           </p>
         
    </div>
    
<%-- tabs2-detail2--%>
   <div id="tabs-2">
       <asp:Panel ID="Panel17" runat="server" BorderColor="Blue" BorderWidth = "1px">
       
            <p style="height: 38px; width: 800px"> 
            
            <asp:Button ID="Button3" runat="server" style="margin-left:550px" 
                Text="Save" />
            <asp:Button ID="Button4" runat="server" style="margin-left: 7px" Text="Back" />
           </p>
           <p>
             <div id= "Div2">
                 <asp:Panel ID="Panel14" runat="server" BorderWidth="2px">
                
                 <table style="width: 100%;">
                     <tr>
                         <td class="style6">
                             
                             <asp:Label ID="Label26" runat="server" Text="Organization Specialims"></asp:Label>
                             
                         </td>
                         <td class="style7">
                            
                             <asp:Panel ID="Panel1" runat="server" BorderWidth="1px" Height="124px" 
                                 Width="226px">
                                 <asp:CheckBox ID="CheckBox3" runat="server" Text="Blind/Partially Sighted" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox4" runat="server" Text="Deaf/Hard of Hearing" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox5" runat="server" Text="Dyslexia" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox6" runat="server" Text="Learning Disablity" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox7" runat="server" Text="Mental Hearth" />
                                 <br />
                             </asp:Panel>
                            
                         </td>
                         <td class="style8">
                             
                             <asp:Label ID="Label27" runat="server" Text="Service Personal Circumtances capabilities"></asp:Label>
                             
                         </td>
                         <td>
                             
                             <asp:Panel ID="Panel2" runat="server" BorderWidth="1px" Height="124px" 
                                 Width="226px">
                                 <asp:CheckBox ID="CheckBox8" runat="server" Text="Carer Responsibility" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox9" runat="server" Text="Lone Parent" />
                                 <br />
                                
                             </asp:Panel>
                            
                         </td>
                     </tr>
                     <tr>
                         <td class="style6">
                             
                             <asp:Label ID="Label28" runat="server" Text="Service Disablebility Capabilities"></asp:Label>
                             
                         </td>
                         <td class="style7">
                             
                             <asp:Panel ID="Panel3" runat="server" BorderWidth="1px" Height="130px" 
                                 Width="229px">
                                 <asp:CheckBox ID="CheckBox10" runat="server" Text="Chest,Breathing proplems" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox11" runat="server" Text="Condition redistring mobility" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox12" runat="server" Text="Diabetes" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox13" runat="server" Text="Difficult in  hearing" />
                                 
                             </asp:Panel>
                            
                         </td>
                         <td class="style8">
                            
                             <asp:Label ID="Label29" runat="server" 
                                 Text="Service Ethnicity Capabilities"></asp:Label>
                             
                         </td>
                         <td>
                             
                             <asp:Panel ID="Panel5" runat="server" BorderWidth="1px" Height="132px" 
                                 Width="237px">
                                 <asp:CheckBox ID="CheckBox19" runat="server" Text="White British" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox20" runat="server" 
                                     Text="White Irish" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox21" runat="server" Text="Other White" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox22" runat="server" Text="White & Black Caribean" />
                                 
                                 <br />
                                 <asp:CheckBox ID="CheckBox23" runat="server" 
                                     Text="White &amp; Black African" />
                                 
                             </asp:Panel>
                            
                         </td>
                     </tr>
                     <tr>
                          <td class="style6">
                             
                             <asp:Label ID="Label30" runat="server" Text="Service Barriers Capabilities"></asp:Label>
                             
                         </td>
                         <td class="style7">
                            
                             <asp:Panel ID="Panel6" runat="server" BorderWidth="1px" Height="124px" 
                                 Width="226px">
                                 <asp:CheckBox ID="CheckBox24" runat="server" Text="Lone Parent" 
                                      />
                                 <br />
                                 <asp:CheckBox ID="CheckBox25" runat="server" 
                                     Text="ESOL" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox26" runat="server" Text="Refugee" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox27" runat="server" Text="Difficult in  hearing" />
                                 
                             </asp:Panel>
                            
                         </td>
                         <td class="style8">
                             
                             <asp:Label ID="Label31" runat="server" 
                                 Text="Accreditation"></asp:Label>
                             
                         </td>
                         <td>
                             
                             <asp:Panel ID="Panel7" runat="server" BorderWidth="1px" Height="132px" 
                                 Width="237px">
                                 <asp:CheckBox ID="CheckBox28" runat="server" Text="Two Ticks"/>
                                 <br />
                                 <asp:CheckBox ID="CheckBox29" runat="server" 
                                     Text="Invertor in  People" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox30" runat="server" Text="ISO 9001" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox31" runat="server" Text="ISO 14001" />
                                 
                                 <br />
                                 <asp:CheckBox ID="CheckBox32" runat="server" 
                                     Text="ISO 27001" />
                                 
                             </asp:Panel>
                            
                         </td>
                     </tr>
                     <tr>
                             <td>
                             
                             <asp:Label ID="Label32" runat="server" Text="Service Benefits Capabilities"></asp:Label>
                             
                             </td>
                             <td>
                            
                             <asp:Panel ID="Panel8" runat="server" BorderWidth="1px" Height="152px" 
                                 Width="226px">
                                 <asp:CheckBox ID="CheckBox33" runat="server" Text="Disablebility Living Allowance " />
                                 <br />
                                 <asp:CheckBox ID="CheckBox34" runat="server" 
                                     Text="Employment and Support Allowance" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox35" runat="server" Text="Incapacity Benefits" />
                                 <br />
                                 <asp:CheckBox ID="CheckBox36" runat="server" Text="Income Support" />
                                 
                             </asp:Panel>
                            
                             </td>
                             <td></td>
                             <td></td>
                     </tr>
                 </table>
              </asp:Panel>
             </div>
             </asp:Panel>
            </p>
      </div>
      
      <%--tabs3--%>
     <div id="tabs-3">
            <asp:Panel ID="Panel18" runat="server" BorderColor="Blue" BorderWidth ="1px">
            <p style="height: 38px; width: 800px"> 
            
            <asp:Button ID="Button5" runat="server" style="margin-left:550px" 
                Text="Save" />
            <asp:Button ID="Button6" runat="server" style="margin-left: 7px" Text="Back" />
           </p>
          <p>
              &nbsp;<asp:Panel ID="Panel4" runat="server" BorderWidth="1px">
              
                  <table style="width: 100%;">
                      <tr>
                          <td class="style9">
                            
                              <asp:Label ID="Label34" runat="server" Text="EOI Programmes"></asp:Label>
                          </td>
                          <td class="style10">
                            
                              <asp:Panel ID="Panel9" runat="server" BorderWidth="1px" Height="122px" 
                                  Width="374px">
                              
                                  <asp:CheckBox ID="CheckBox37" runat="server" Text="Programme 1" />
                              
                                  <br />
                                  <asp:CheckBox ID="CheckBox38" runat="server" 
                                      Text="Programme 2" />
                              
                                  <br />
                                  <asp:CheckBox ID="CheckBox39" runat="server" Text="Programme 3" />
                                  <br />
                                  <asp:CheckBox ID="CheckBox40" runat="server" Text="Programme 4" />
                                  <br />
                              
                              </asp:Panel>
                          </td>
                          <td>
                             
                          </td>
                      </tr>
                      <tr>
                          <td class="style9">
                             
                              <asp:Label ID="Label35" runat="server" Text="EOI Services"></asp:Label>
                          </td>
                          <td class="style10">
                              
                              <asp:Panel ID="Panel10" runat="server" BorderWidth="1px" Height="122px" 
                                  Width="374px">
                                  <asp:CheckBox ID="CheckBox41" runat="server" Text="Services 1" />
                                  <br />
                                  <asp:CheckBox ID="CheckBox42" runat="server" Text="Services 2" />
                                  <br />
                                  <asp:CheckBox ID="CheckBox43" runat="server" Text="Services 3" />
                                  <br />
                                  <asp:CheckBox ID="CheckBox44" runat="server" Text="Services 4" />
                                  <br />
                              </asp:Panel>
                          </td>
                          <td>
                             
                          </td>
                      </tr>
                      <tr>
                          <td class="style9">
                             
                          </td>
                          <td class="style10">
                              
                          </td>
                          <td>
                             
                          </td>
                      </tr>
                  </table>
              </asp:Panel>
              </asp:Panel>
          </p>
          
     </div>
     <%--tabs4--%>
     <div id="tabs-4">
      <p style="height: 38px; width: 800px"> 
          <asp:Panel ID="Panel19" runat="server" BorderColor="Blue" BorderWidth ="1px">
          
          <asp:Button ID="Button9" runat="server" Text="In-Active" style="margin-left:500px"/>
            <asp:Button ID="Button7" runat="server" style="margin-left:7px" 
                Text="Save" />
            <asp:Button ID="Button8" runat="server" style="margin-left: 7px" Text="Back" />
           </p>
         <p>
             <asp:Panel ID="Panel11" runat="server" GroupingText="Premises" >
                 <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                     AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                     <Columns>
                         <asp:BoundField DataField="PremiseName" HeaderText="PremiseName" 
                             SortExpression="PremiseName" />
                         <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" 
                             SortExpression="PhoneNumber" />
                         <asp:CheckBoxField DataField="PrimaryLocation" HeaderText="PrimaryLocation" 
                             SortExpression="PrimaryLocation" />
                         <asp:BoundField DataField="County" HeaderText="County" 
                             SortExpression="County" />
                     </Columns>
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:MockProject2ConnectionString %>" 
                     SelectCommand="SELECT [PremiseName], [PhoneNumber], [PrimaryLocation], [County] FROM [Premises]">
                 </asp:SqlDataSource>
             </asp:Panel>
             <asp:Panel ID="Panel12" runat="server" GroupingText="LockedIn" 
             Height="240px" Width="799px">
             
                 <table style="width: 100%; height: 110px;">
                     <tr>
                         <td class="style14">
                             <asp:Label ID="Label33" runat="server" Text="Ward"></asp:Label>
                         </td>
                         <td class="style15">
                             
                             <asp:TextBox ID="TextBox17" runat="server" Enabled="False" Width="232px"></asp:TextBox>
                         </td>
                         <td class="style20">
                             
                             <asp:Label ID="Label39" runat="server" Text="NHS Authority"></asp:Label>
                             
                         </td>
                         <td>
                            
                             <asp:TextBox ID="TextBox23" runat="server" Enabled="False" Width="195px" 
                                 style="margin-left: 2px"></asp:TextBox>
                            
                         </td>
                     </tr>
                     <tr>
                         <td class="style14">
                             
                             <asp:Label ID="Label36" runat="server" Text="Borough"></asp:Label>
                             
                         </td>
                         <td class="style15">
                            
                             <asp:TextBox ID="TextBox20" runat="server" Enabled="False" Width="232px"></asp:TextBox>
                            
                         </td>
                         <td class="style20">
                            
                             <asp:Label ID="Label40" runat="server" Text="GOV's Office Region"></asp:Label>
                            
                         </td>
                         <td>
                            
                             <asp:DropDownList ID="DropDownList2" runat="server" Height="28px" Width="157px">
                                 <asp:ListItem>Gov&#39;s Office 2</asp:ListItem>
                                 <asp:ListItem>Gov&#39;s Office 1</asp:ListItem>
                                 <asp:ListItem>Gov&#39;s Office 3</asp:ListItem>
                             </asp:DropDownList>
                            
                         </td>
                     </tr>
                     <tr>
                          <td class="style14">
                             
                              <asp:Label ID="Label37" runat="server" Text="Local Authority"></asp:Label>
                             
                         </td>
                         <td class="style15">
                             
                             <asp:TextBox ID="TextBox21" runat="server" Enabled="False" Width="234px"></asp:TextBox>
                             
                         </td>
                         <td class="style20">
                             
                             <asp:Label ID="Label41" runat="server" Text="Trust Region"></asp:Label>
                             
                         </td>
                         <td>
                            
                             <asp:DropDownList ID="DropDownList3" runat="server" Height="28px" Width="157px">
                                 <asp:ListItem>Scoland</asp:ListItem>
                                 <asp:ListItem>England</asp:ListItem>
                                 <asp:ListItem>Viet Nam</asp:ListItem>
                             </asp:DropDownList>
                            
                         </td>
                     </tr>
                     <tr>
                        <td class="style17">
                            <asp:Label ID="Label38" runat="server" Text="UnitaryA Authority"></asp:Label>
                        </td>
                        <td class="style18">
                             
                             <asp:TextBox ID="TextBox22" runat="server" Enabled="False" Width="234px"></asp:TextBox>
                             
                        </td>
                        <td class="style19">
                            <asp:Label ID="Label42" runat="server" Text="District Region"></asp:Label>
                        </td>
                        <td class="style17">
                            <asp:DropDownList ID="DropDownList4" runat="server" Height="28px" Width="157px">
                                <asp:ListItem>Cau Giay</asp:ListItem>
                                <asp:ListItem>Ba Dinh</asp:ListItem>
                                <asp:ListItem>Gotham</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                     </tr>
                 </table>
                 </asp:Panel>
                 </asp:Panel>
         </p>
      </div>
     <%--tabs 5--%>
      <div id="tabs-5">
              <p style="height: 38px; width: 800px"> 
              <asp:Panel ID="Panel20" runat="server" BorderColor="Blue" BorderWidth ="1px">
          <asp:Button ID="Button10" runat="server" Text="In-Active" style="margin-left:500px"/>
            <asp:Button ID="Button11" runat="server" style="margin-left:7px" 
                Text="Save" />
            <asp:Button ID="Button12" runat="server" style="margin-left: 7px" Text="Back" />
           </p>
             <p>
                 <asp:Panel ID="Panel15" runat="server" BorderWidth = "2px" 
                  GroupingText="Current List for Supporting Materials">
                
                 <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                     AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                     <Columns>
                         <asp:BoundField DataField="Url" HeaderText="Url" SortExpression="Url" />
                         <asp:BoundField DataField="Description" HeaderText="Description" 
                             SortExpression="Description" />
                         <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                         <asp:BoundField DataField="AddedDate" HeaderText="AddedDate" 
                             SortExpression="AddedDate" />
                         <asp:BoundField DataField="UserId" HeaderText="UserId" 
                             SortExpression="UserId" />
                     </Columns>
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:MockProject2ConnectionString %>" 
                     SelectCommand="SELECT [Url], [Description], [Type], [AddedDate], [UserId] FROM [SupportingMaterials]">
                 </asp:SqlDataSource>
                 </asp:Panel>
                 </asp:Panel>
             </p>
      </div>
      
     <div id="tabs-6">
         <p>
         </p>
      </div>
 
     </div>
</form>

</body>
</html>
