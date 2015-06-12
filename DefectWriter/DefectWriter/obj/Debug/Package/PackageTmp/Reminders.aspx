<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reminders.aspx.cs" Inherits="DefectWriter.Reminders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblTeammate" runat="server" Font-Bold="True" 
        Text="X3 Team Member: "></asp:Label>
    <asp:DropDownList ID="ddlEmployee" runat="server" DataSourceID="sqldsEmployee" 
    DataTextField="FullName" DataValueField="EmployeeID">
</asp:DropDownList>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblCaseNumber" runat="server" Text="Case #:"></asp:Label>
&nbsp;<asp:TextBox ID="txtCaseNumber" runat="server" Width="200px"></asp:TextBox>
&nbsp;&nbsp;
    <asp:RegularExpressionValidator ID="regexCaseNumber" runat="server" 
        ControlToValidate="txtCaseNumber" ErrorMessage="***" Font-Bold="True" 
        ForeColor="Red" ValidationExpression="\d+$" 
        ToolTip="Case Number must be a positive number" Display="Dynamic">***</asp:RegularExpressionValidator>
&nbsp;<asp:RequiredFieldValidator ID="rfvCaseNumber" runat="server" 
        ControlToValidate="txtCaseNumber" ErrorMessage="***" Font-Bold="True" 
        ForeColor="Red" ToolTip="Case Number is a required field" 
        Display="Dynamic"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblReminderDate" runat="server" Font-Bold="True" 
        Text="Set Reminder Date"></asp:Label>
    <asp:Calendar ID="calReminderDate" runat="server" BackColor="White" 
        BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
        ForeColor="#003399" Height="200px" Width="220px" 
        onselectionchanged="calReminderDate_SelectionChanged">
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
            Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar>
    <br />
    <asp:Button ID="btnCreateReminder" runat="server" 
        onclick="btnCreateReminder_Click" Text="Create Reminder" />
    <br />
    <hr />
    <br />
        <asp:GridView ID="gvReminders" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="sqldsRemindersForGrid" 
            EnableSortingAndPagingCallbacks="True" ForeColor="#333333" GridLines="None" 
            PageSize="20">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="CaseNumber" HeaderText="CaseNumber" 
                    SortExpression="CaseNumber" />
                <asp:BoundField DataField="FullName" HeaderText="FullName" 
                    SortExpression="FullName" ReadOnly="True" />
                <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" 
                    SortExpression="EmailAddress" />
                <asp:BoundField DataField="ReminderDate" HeaderText="ReminderDate" 
                    SortExpression="ReminderDate" DataFormatString="{0:MM/dd/yyyy}" />
                <asp:CheckBoxField DataField="IsEmailSent" HeaderText="IsEmailSent" 
                    SortExpression="IsEmailSent" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </script>
<asp:SqlDataSource ID="sqldsEmployee" runat="server" 
    ConnectionString="<%$ ConnectionStrings:SupportConnectionString %>" 
    
        SelectCommand="SELECT [EmployeeID], [FirstName], [LastName], [FirstName] + ' ' + [LastName] FullName, [EmailAddress] FROM [Employee] ORDER BY [FirstName], [LastName]">
</asp:SqlDataSource>
    <asp:SqlDataSource ID="sqldsReminder" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:SupportConnectionString %>" 
        DeleteCommand="DELETE FROM Reminder WHERE (ReminderID = @original_ReminderID) AND (CaseNumber = @original_CaseNumber) AND (EmployeeID = @original_EmployeeID) AND (ReminderDate = @original_ReminderDate)" 
        InsertCommand="INSERT INTO Reminder(CaseNumber, EmployeeID, ReminderDate, IsEmailSent) VALUES (@CaseNumber, @EmployeeID, @ReminderDate, @IsEmailSent)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT ReminderID, CaseNumber, EmployeeID, ReminderDate, IsEmailSent FROM Reminder ORDER BY ReminderID DESC" 
        UpdateCommand="UPDATE Reminder SET CaseNumber = @CaseNumber, EmployeeID = @EmployeeID, ReminderDate = @ReminderDate, IsEmailSent = WHERE (ReminderID = @original_ReminderID) AND (CaseNumber = @original_CaseNumber) AND (EmployeeID = @original_EmployeeID) AND (ReminderDate = @original_ReminderDate)">
        <DeleteParameters>
            <asp:Parameter Name="original_ReminderID" Type="Int32" />
            <asp:Parameter Name="original_CaseNumber" Type="Int64" />
            <asp:Parameter Name="original_EmployeeID" Type="Int32" />
            <asp:Parameter Name="original_ReminderDate" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CaseNumber" Type="Int64" />
            <asp:Parameter Name="EmployeeID" Type="Int32" />
            <asp:Parameter Name="ReminderDate" Type="DateTime" />
            <asp:Parameter Name="IsEmailSent" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CaseNumber" Type="Int64" />
            <asp:Parameter Name="EmployeeID" Type="Int32" />
            <asp:Parameter Name="ReminderDate" Type="DateTime" />
            <asp:Parameter Name="original_ReminderID" Type="Int32" />
            <asp:Parameter Name="original_CaseNumber" Type="Int64" />
            <asp:Parameter Name="original_EmployeeID" Type="Int32" />
            <asp:Parameter Name="original_ReminderDate" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sqldsRemindersForGrid" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SupportConnectionString %>" SelectCommand="SELECT r.CaseNumber, e.FirstName + ' ' + e.LastName AS FullName, e.EmailAddress, r.ReminderDate, r.IsEmailSent
FROM Reminder r
	INNER JOIN Employee e
		ON r.EmployeeID = e.EmployeeID
ORDER BY IsEmailSent ASC, ReminderDate ASC
"></asp:SqlDataSource>
</asp:Content>
