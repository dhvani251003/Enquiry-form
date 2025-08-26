<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StateCity.aspx.cs" Inherits="EnquiryForm.StateCity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>State And City Page</h1>
                <asp:Label ID="Label1" runat="server" Text="State : "></asp:Label><asp:DropDownList ID="ddlSTATE" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="statenm" DataValueField="stateid">
                    <asp:ListItem>GUJARAT</asp:ListItem>
                    <asp:ListItem>MAHARAST</asp:ListItem>
                    <asp:ListItem>RAJESHTHAN</asp:ListItem>
                    <asp:ListItem>GOA</asp:ListItem>
                    <asp:ListItem>PUNJAB</asp:ListItem>
                    <asp:ListItem>UTTRAKHAND</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" SelectCommand="SELECT * FROM [Statetbl]"></asp:SqlDataSource>
                <br/><br/>
                <asp:Label ID="Label2" runat="server" Text="City : "></asp:Label><asp:DropDownList ID="ddlCITY" runat="server" DataSourceID="SqlDataSource2" DataTextField="citynm" DataValueField="cityid">
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" SelectCommand="SELECT * FROM [citytbl] WHERE ([stateid] = @stateid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlSTATE" Name="stateid" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br/><br/>
                <asp:Button ID="btnSUBMIT" runat="server" Text="Submit" OnClick="btnSUBMIT_Click" /><br/><br/>
                <asp:Label ID="lblSID" runat="server" Text="StateID"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblSNM" runat="server" Text="StateNM"></asp:Label><br/><br/>
                <asp:Label ID="lblCID" runat="server" Text="CityID"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblCNM" runat="server" Text="CityNM"></asp:Label>
            </center>
        </div>
    </form>
</body>
</html>
