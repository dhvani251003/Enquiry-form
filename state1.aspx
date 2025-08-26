<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="state1.aspx.cs" Inherits="EnquiryForm.state1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>State Page</h1>
                <asp:Label ID="Label1" runat="server" Text="STATE : "></asp:Label><asp:DropDownList ID="ddlSTATE" runat="server" DataSourceID="SqlDataSource1" DataTextField="statenm" DataValueField="stateid">
                    <asp:ListItem>Selete</asp:ListItem>
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Maharast</asp:ListItem>
                    <asp:ListItem>Rajeshthan</asp:ListItem>
                    <asp:ListItem>goa</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Uttrakhand</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" SelectCommand="SELECT * FROM [Statetbl]"></asp:SqlDataSource>
                <br /><br />
                <asp:Button ID="btnSUBMIT" runat="server" Text="Submit" OnClick="btnSUBMIT_Click" /><br /><br />
                <asp:Label ID="lbl1" runat="server" Text="lblsid"></asp:Label><br /><br />
                <asp:Label ID="lbl2" runat="server" Text="lblstatenm"></asp:Label><br /><br />
            </center>
        </div>
    </form>
</body>
</html>
