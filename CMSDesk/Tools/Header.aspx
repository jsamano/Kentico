<%@ Page Language="C#" AutoEventWireup="true" Inherits="CMSDesk_Tools_Header" Theme="Default"
    CodeFile="Header.aspx.cs" Title="Tools / Header" MasterPageFile="~/CMSMasterPages/UI/EmptyPage.master" %>

<%@ Register Src="~/CMSAdminControls/UI/PageElements/FrameResizer.ascx" TagName="FrameResizer"
    TagPrefix="cms" %>
<%@ Register Src="~/CMSAdminControls/UI/UIProfiles/UIToolbar.ascx" TagName="UIToolbar"
    TagPrefix="cms" %>
<asp:Content ID="cntBody" runat="server" ContentPlaceHolderID="plcContent">
    <asp:Panel runat="server" ID="pnlBody" CssClass="ContentMenu">
        <cms:FrameResizer ID="frmResizer" runat="server" MinSize="6, *;0, 0, 0, *" Vertical="True"
            CssPrefix="Vertical" />
        <asp:Panel runat="server" ID="pnlContentMenu" CssClass="ContentMenuLeft">
            <cms:UIToolbar ID="uiToolbarElem" TargetFrameset="toolscontent" runat="server" ModuleName="CMS.Tools"
                QueryParameterName="resourcename" RememberSelectedItem="true"  />
        </asp:Panel>
    </asp:Panel>
</asp:Content>
