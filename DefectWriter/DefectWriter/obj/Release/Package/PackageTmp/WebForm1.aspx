<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DefectWriter.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="ckeditor/ckeditor.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <textarea name="editor1" id="editor1">This is my textarea</textarea>
        <script>
            CKEDITOR.replace('editor1');
        </script>
    
    </div>
    </form>
</body>
</html>
