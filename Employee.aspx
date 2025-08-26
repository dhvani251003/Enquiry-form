<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="EnquiryForm.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Employee Page</h1>
                <asp:Label ID="Label1" runat="server" Text="Employee : "></asp:Label><asp:DropDownList ID="ddlEMPLOYEE" runat="server" DataSourceID="SqlDataSource1" DataTextField="Ename" DataValueField="Eid">
                    <asp:ListItem>Dhvani Pandya</asp:ListItem>
                    <asp:ListItem>Ritesh Suthar</asp:ListItem>
                    <asp:ListItem>Khushi Pandya</asp:ListItem>
                    <asp:ListItem>Nilesh Patel</asp:ListItem>
                    <asp:ListItem>Nehal Sutariya</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
                <br/><br/>
                <asp:Button ID="btnSUBMIT" runat="server" Text="Submit" OnClick="btnSUBMIT_Click" /><br/><br/>
                <asp:Label ID="lblEID" runat="server" Text="EID"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblENAME" runat="server" Text="ENAME"></asp:Label>
            </center>
        </div>
    </form>
</body>
</html>
