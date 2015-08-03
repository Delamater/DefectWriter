<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefectEntry_old.aspx.cs" Inherits="DefectWriter.DefectEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="bold" Direction="LeftToRight" 
    Height="100%">
    <br />
    Email Address (Optional):
    <asp:TextBox ID="txtemailAddress" runat="server" Width="400px"></asp:TextBox>
        &nbsp;<asp:RegularExpressionValidator ID="EmailAddrValid" runat="server" 
            ControlToValidate="txtemailAddress" Display="Dynamic" Font-Bold="True" 
            ForeColor="Red" SetFocusOnError="True" 
            ToolTip="Please enter a valid email address or none at all" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Error</asp:RegularExpressionValidator>
        &nbsp;&nbsp;
        <asp:Label ID="lblCaseNumber" runat="server" Font-Bold="True" ForeColor="Blue" 
            Text="Case #"></asp:Label>
&nbsp;<asp:TextBox ID="txtCaseNumber" runat="server" Width="150px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCaseNumber" runat="server" 
            ControlToValidate="txtCaseNumber" Display="Dynamic" ErrorMessage="***" 
            Font-Bold="True" ForeColor="Red" SetFocusOnError="True" 
            ToolTip="Case Number Is Required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regexCaseNumber" runat="server" 
            ControlToValidate="txtCaseNumber" ErrorMessage="Error" Font-Bold="True" 
            ForeColor="Red" SetFocusOnError="True" ToolTip="Must be a valid number" 
            ValidationExpression="\d{10}">Error</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="***Error" ForeColor="Red" ToolTip="Case number is required"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        Summary<br />
    <asp:TextBox ID="txtSummary" runat="server" Width="100%" MaxLength="66"></asp:TextBox>
        <br />
        <br />
        Steps To Duplicate:
        <asp:RequiredFieldValidator ID="rfvStepsToDuplicate" runat="server" ControlToValidate="txtStepsToDuplicate" ErrorMessage="Steps to duplicate are required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
    <asp:TextBox ID="txtStepsToDuplicate" runat="server" Height="100px" 
        TextMode="MultiLine" Width="100%"></asp:TextBox>
        <br />
        <br />
        Expected Results<br />
        <asp:TextBox ID="txtExpectedResults" runat="server" Height="50px" TextMode="MultiLine" Width="100%"></asp:TextBox>
    <br />
    <br />
    Customer Company Name:<br />
    <asp:TextBox ID="txtCustomerCompanyName" runat="server" Width="300px"></asp:TextBox>
    <br />
    <br />
    Partner Company Name:<br />
    <asp:TextBox ID="txtPartnerCompanyName" runat="server" Width="300px"></asp:TextBox>
    <br />
    <br />
    Database Type:<br />
    <asp:DropDownList ID="ddlDatabaseType" runat="server" Width="200px" OnSelectedIndexChanged="ddlDatabaseType_SelectedIndexChanged">
        <asp:ListItem Selected="True">SQL Server</asp:ListItem>
        <asp:ListItem>Oracle</asp:ListItem>
        <asp:ListItem>Unknown</asp:ListItem>
        <asp:ListItem>N/A</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    Database Version:<br />
    <asp:DropDownList ID="ddlSQLVersion" runat="server" Width="200px">
        <asp:ListItem Selected="True">SQL 2008 R2</asp:ListItem>
        <asp:ListItem>SQL 2008</asp:ListItem>
        <asp:ListItem>SQL 2005</asp:ListItem>
        <asp:ListItem>SQL 2000</asp:ListItem>
        <asp:ListItem>Unknown</asp:ListItem>
        <asp:ListItem>N/A</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    Reason For Critical or High:<br />
    <asp:TextBox ID="txtReasonForCriticalOrHigh" runat="server" Height="50px" TextMode="MultiLine" 
        Width="100%"></asp:TextBox>
    <br />
    <br />
    Type of Request<br />
    <asp:DropDownList ID="ddlTypeOfRequest" runat="server" Width="300px">
        <asp:ListItem Selected="True">Defect</asp:ListItem>
        <asp:ListItem>Enhancement</asp:ListItem>
        <asp:ListItem>Question / Information Needed</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    Frequency of occurence:<br />
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
    <br />
    <br />
    <asp:CheckBox ID="chkIsDuplicable" runat="server" Text="Duplicate In House?" />
    <br />
    <asp:CheckBox ID="chkIsWorkaroundAcceptable" runat="server" 
        Text="Workaround Acceptable" />
    <br />
    <br />
    Workaround:<br />
    <asp:TextBox ID="txtWorkaround" runat="server" Height="100px" 
        TextMode="MultiLine" Width="100%"></asp:TextBox>
    <br />
    <br />
    Location and access info for folder were duplicated?<br />
    <asp:TextBox ID="txtLocationOfResource" runat="server" Height="50px" 
        TextMode="MultiLine" Width="100%"></asp:TextBox>
    <br />
    <br />
    Priority Checklist / High Checklist<br />
    <asp:CheckBox ID="chkPreventsUseOfKeyFunction" runat="server" 
        Text="Prevents Use Of Key Function" />
    <br />
    <asp:CheckBox ID="chkNo3rdPartyMods" runat="server" 
        Text="No 3rd Party Modifications" />
    <br />
    <asp:CheckBox ID="chkReproducibleOnUnModifiedCode" runat="server" 
        Text="Reproducible In Unmodified Code" />
    <br />
    <asp:CheckBox ID="chkNoWorkaroundOrWorkaroundUnacceptable" runat="server" 
        Text="No Workaround Or Workaround Is Not Acceptable" />
    <br />
    <asp:CheckBox ID="chkIsEnhancementRequest" runat="server" 
        Text="Is Enhancement Request" />
    <br />
    <br />
    <asp:Button ID="btnBuildDefect" runat="server" onclick="btnBuildDefect_Click" 
        Text="Build Defect" />
    <br />
    <asp:TextBox ID="txtOutput" runat="server" Height="500px" TextMode="MultiLine" 
        Width="100%"></asp:TextBox>
    <br />
</asp:Panel>
</asp:Content>
