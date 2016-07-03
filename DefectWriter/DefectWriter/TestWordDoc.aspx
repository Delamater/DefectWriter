<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestWordDoc.aspx.cs" Inherits="DefectWriter.TestWordDoc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click" Text="Create" />
        <asp:Button ID="btnModify" runat="server" OnClick="btnModify_Click" Text="Modify" />
        <asp:Button ID="btnCreateWithStyle" runat="server" OnClick="btnCreateWithStyle_Click" Text="CreateWithStyle" />
    
    </div>
    </form>
</body>
</html>
