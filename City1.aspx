<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="City1.aspx.cs" Inherits="EnquiryForm.City1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>City Page</h1>
                <asp:Label ID="Label1" runat="server" Text="City : "></asp:Label><asp:DropDownList ID="ddlCITY" runat="server" DataSourceID="SqlDataSource1" DataTextField="citynm" DataValueField="cityid">
                    <asp:ListItem>VADODARA</asp:ListItem>
                    <asp:ListItem>RAJKOT</asp:ListItem>
                    <asp:ListItem>SURAT</asp:ListItem>
                    <asp:ListItem>MARGEO</asp:ListItem>
                    <asp:ListItem>PANAJI</asp:ListItem>
                    <asp:ListItem>PUNE</asp:ListItem>
                    <asp:ListItem>MUMBAI</asp:ListItem>
                    <asp:ListItem>JAIPUR</asp:ListItem>
                    <asp:ListItem>UDAIPUR</asp:ListItem>
                    <asp:ListItem>LAHORE</asp:ListItem>
                    <asp:ListItem>AMRITSAR</asp:ListItem>
                    <asp:ListItem>HARIDWAR</asp:ListItem>
                    <asp:ListItem>RISHIKESH</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" SelectCommand="SELECT * FROM [citytbl]"></asp:SqlDataSource>
                <br /><br />
                <asp:Button ID="btnSUBMIT" runat="server" Text="Submit" OnClick="btnSUBMIT_Click" /><br /><br />
                <asp:Label ID="lblCI" runat="server" Text="Cid"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblCN" runat="server" Text="cname"></asp:Label>
            </center>
        </div>
    </form>
</body>
</html>
