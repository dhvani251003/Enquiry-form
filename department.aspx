<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="department.aspx.cs" Inherits="EnquiryForm.department" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Department Page</h1>
                <asp:Label ID="Label1" runat="server" Text="Department : "> </asp:Label><asp:DropDownList ID="ddlDEPARTMENT" runat="server" />
                    
                </asp:DropDownList>
                
            </center>
        </div>
    </form>
</body>
</html>
