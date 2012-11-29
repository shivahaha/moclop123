<%@ Page Title="" Language="C#" MasterPageFile="~/Shares/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="GovernmentOfficeRegionList.aspx.cs" Inherits="SD.Web.Views.GovernmentOfficeRegion.GovernmentOfficeRegionList" %>
<asp:Content ID="head" ContentPlaceHolderID="rightsidehere" runat="server">
    <div>
        <div class="titleh">
            <h3 class="sorting_range">
                <asp:LinkButton ID="LinkButtonAll" runat="server" CssClass="hg-blue" CommandName="all">All</asp:LinkButton>
                <asp:LinkButton ID="LinkButton09" runat="server" CommandName="09">0-9</asp:LinkButton>
                <asp:LinkButton ID="LinkButtonAE" runat="server" CommandName="ae">A B C D E</asp:LinkButton>
                <asp:LinkButton ID="LinkButtonFJ" runat="server" CommandName="fj">F G H I J</asp:LinkButton>
                <asp:LinkButton ID="LinkButtonKN" runat="server" CommandName="kn">K L M N </asp:LinkButton>
                <asp:LinkButton ID="LinkButtonOR" runat="server" CommandName="or">O P Q R</asp:LinkButton>
                <asp:LinkButton ID="LinkButtonSV" runat="server" CommandName="sv">S T U V</asp:LinkButton>
                <asp:LinkButton ID="LinkButtonWZ" CssClass="last" runat="server" CommandName="wz">W X Y Z</asp:LinkButton>
                <span class="right">
                    <asp:CheckBox ID="CheckBoxInactive" runat="server" Text="Include In-active" AutoPostBack="True" />
                </span>
            </h3>
        </div>
        <div>
        <asp:GridView ID="GridView1" runat="server" onrowdatabound="GridView1_RowDataBound" 
                AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging"></asp:GridView>
        </div>
    </div>
</asp:Content>

