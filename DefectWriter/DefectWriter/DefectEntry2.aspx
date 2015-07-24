<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefectEntry2.aspx.cs" Inherits="DefectWriter.DefectEntry2" 
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Email Address:"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="txtemailAddress" runat="server" Width="400px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label25" runat="server" Text="Case Number:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCaseNumber" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Summary:"></asp:Label>
            </td>
            <td class="auto-style1" colspan="3">
    <asp:TextBox ID="txtSummary" runat="server" Width="100%" MaxLength="66"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Steps To Duplicate:"></asp:Label>
            </td>
            <td>

            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" class="auto-style1">       
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Expected Results:"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Customer Company Name:"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="txtCustomerCompanyName" runat="server" Width="100%"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Partner Company Name:"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="txtPartnerCompanyName" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Database Type:"></asp:Label>
            </td>
            <td>
    <asp:DropDownList ID="ddlDatabaseType" runat="server" Width="200px">
        <asp:ListItem Selected="True">SQL Server</asp:ListItem>
        <asp:ListItem>Oracle</asp:ListItem>
        <asp:ListItem>Unknown</asp:ListItem>
        <asp:ListItem>N/A</asp:ListItem>
    </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="Label26" runat="server" Text="Database Version:"></asp:Label>
            </td>
            <td>
    <asp:DropDownList ID="ddlSQLVersion" runat="server" Width="200px">
        <asp:ListItem Selected="True">SQL 2008 R2</asp:ListItem>
        <asp:ListItem>SQL 2008</asp:ListItem>
        <asp:ListItem>SQL 2005</asp:ListItem>
        <asp:ListItem>SQL 2000</asp:ListItem>
        <asp:ListItem>Unknown</asp:ListItem>
        <asp:ListItem>N/A</asp:ListItem>
    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Reason For High Or Critical:"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Type Of Request:"></asp:Label>
            </td>
            <td>
    <asp:DropDownList ID="ddlTypeOfRequest" runat="server" Width="300px">
        <asp:ListItem Selected="True">Defect</asp:ListItem>
        <asp:ListItem>Enhancement</asp:ListItem>
        <asp:ListItem>Question / Information Needed</asp:ListItem>
    </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Frequency Of Occurrence:"></asp:Label>
            </td>
            <td>
    <asp:DropDownList ID="ddlFrequency" runat="server" Width="300px">
        <asp:ListItem>100%</asp:ListItem>
        <asp:ListItem>75%</asp:ListItem>
        <asp:ListItem>50%</asp:ListItem>
        <asp:ListItem>25%</asp:ListItem>
        <asp:ListItem>Weekly</asp:ListItem>
        <asp:ListItem>Monthly</asp:ListItem>
        <asp:ListItem>Intermittent</asp:ListItem>
        <asp:ListItem>Unknown</asp:ListItem>
        <asp:ListItem>N/A</asp:ListItem>
    </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
    <asp:CheckBox ID="chkIsWorkaroundAcceptable" runat="server" 
        Text="Workaround Acceptable" />
            </td>
            <td>&nbsp;</td>
            <td>
    <asp:CheckBox ID="chkIsDuplicable" runat="server" Text="Duplicate In House?" />
    <br __designer:mapid="13c" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Workaround:"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Location where duplicated:"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td rowspan="5">
                <asp:Label ID="Label13" runat="server" Text="Priority Checklist:"></asp:Label>
            </td>
            <td>
    <asp:CheckBox ID="chkPreventsUseOfKeyFunction" runat="server" 
        Text="Prevents Use Of Key Function" />
            </td>
            <td rowspan="5">
    <br __designer:mapid="14a" />
    <br __designer:mapid="14c" />
    <br __designer:mapid="14e" />
    <br __designer:mapid="150" />
            </td>
            <td rowspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td>
    <asp:CheckBox ID="chkNo3rdPartyMods" runat="server" 
        Text="No 3rd Party Modifications" />
                ;</td>
        </tr>
        <tr>
            <td>
    <asp:CheckBox ID="chkReproducibleOnUnModifiedCode" runat="server" 
        Text="Reproducible In Unmodified Code" />
            </td>
        </tr>
        <tr>
            <td>
    <asp:CheckBox ID="chkNoWorkaroundOrWorkaroundUnacceptable" runat="server" 
        Text="No Workaround Or Workaround Is Not Acceptable" />
            </td>
        </tr>
        <tr>
            <td>
    <asp:CheckBox ID="chkIsEnhancementRequest" runat="server" 
        Text="Is Enhancement Request" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
