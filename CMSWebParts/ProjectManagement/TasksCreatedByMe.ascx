<%@ Control Language="C#" AutoEventWireup="true"
    Inherits="CMSWebParts_ProjectManagement_TasksCreatedByMe" CodeFile="~/CMSWebParts/ProjectManagement/TasksCreatedByMe.ascx.cs" %>
<%@ Register Src="~/CMSModules/ProjectManagement/Controls/LiveControls/Tasks.ascx"
    TagPrefix="cms" TagName="Tasks" %>
<%@ Register Src="~/CMSAdminControls/UI/System/PermissionMessage.ascx" TagName="PermissionMessage"
    TagPrefix="cms" %>
<cms:PermissionMessage ID="messageElem" runat="server" Visible="false" EnableViewState="false" />
<cms:Tasks runat="server" ID="ucTasks" IsLiveSite="true" />

