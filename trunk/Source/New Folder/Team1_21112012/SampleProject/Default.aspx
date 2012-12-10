<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SampleProject.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="rightsidehere" runat="server">

<asp:HyperLink ID="HyperLink1" NavigateUrl= "~/Manage.aspx?obj=user&act=viewall" runat="server">User</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink2" NavigateUrl= "~/Manage.aspx?obj=trustregion&act=viewall" runat="server">trustregion</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink3" NavigateUrl= "~/Manage.aspx?obj=trustdistrict&act=viewall" runat="server">trustdistrict</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink4" NavigateUrl= "~/Manage.aspx?obj=team&act=viewall" runat="server">Team</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink5" NavigateUrl= "~/Manage.aspx?obj=supportingmaterials&act=viewall" runat="server">SupportingMaterials</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink6" NavigateUrl= "~/Manage.aspx?obj=service&act=viewall" runat="server">Service</asp:HyperLink><br />
<%--<asp:HyperLink ID="HyperLink7" NavigateUrl= "~/Manage.aspx?obj=SupportingMaterials&act=viewall" runat="server">SupportingMaterials</asp:HyperLink>--%><br />
<%--<asp:HyperLink ID="HyperLink8" NavigateUrl= "~/Manage.aspx?obj=Service&act=viewall" runat="server">Service</asp:HyperLink>--%><br />


<asp:HyperLink ID="HyperLink7" NavigateUrl= "~/Manage.aspx?obj=programme&act=viewall" runat="server">Program</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink8" NavigateUrl= "~/Manage.aspx?obj=organization&act=viewall" runat="server">Organization</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink9" NavigateUrl= "~/Manage.aspx?obj=permises&act=viewall" runat="server">Permises</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink10" NavigateUrl= "~/Manage.aspx?obj=govermentofficeregion&act=viewall" runat="server">GovermentOfficeRegion</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink11" NavigateUrl= "~/Manage.aspx?obj=directory&act=viewall" runat="server">Directory</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink12" NavigateUrl= "~/Manage.aspx?obj=department&act=viewall" runat="server">Department</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink13" NavigateUrl= "~/Manage.aspx?obj=county&act=viewall" runat="server">County</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink14" NavigateUrl= "~/Manage.aspx?obj=country&act=viewall" runat="server">Country</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink15" NavigateUrl= "~/Manage.aspx?obj=contact&act=viewall" runat="server">Contact</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink16" NavigateUrl= "~/Manage.aspx?obj=commons&act=viewall" runat="server">Commons</asp:HyperLink><br />
<asp:HyperLink ID="HyperLink17" NavigateUrl= "~/Manage.aspx?obj=address&act=viewall" runat="server">Address</asp:HyperLink><br />
</asp:Content>
