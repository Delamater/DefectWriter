<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChangeLog.aspx.cs" Inherits="DefectWriter.ChangeLog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="txtChangeLog" runat="server" TextMode="MultiLine" Width="100%" BorderStyle="None" ReadOnly="True" Rows="25"></asp:TextBox>
</asp:Content>
