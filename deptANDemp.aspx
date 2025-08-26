<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deptANDemp.aspx.cs" Inherits="EnquiryForm.deptANDemp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Department And Employee</h1>
                <asp:Label ID="Label1" runat="server" Text="Department : "></asp:Label><asp:DropDownList ID="ddlDEPARTMENT" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Dname" DataValueField="Did">
                    <asp:ListItem>Software Developemnt</asp:ListItem>
                    <asp:ListItem>Web Development</asp:ListItem>
                    <asp:ListItem>Digital Marketing</asp:ListItem>
                    <asp:ListItem>Advanced Excel</asp:ListItem>
                    <asp:ListItem>Android Development</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
                <br/><br/>
                <asp:Label ID="Label2" runat="server" Text="Employee : "></asp:Label><asp:DropDownList ID="ddlEMPLOYEE" runat="server" DataSourceID="SqlDataSource2" DataTextField="Ename" DataValueField="Ename" AutoPostBack="True">
                    <asp:ListItem>Dhvani Pandya</asp:ListItem>
                    <asp:ListItem>Ritesh Suthar</asp:ListItem>
                    <asp:ListItem>Khushi Pandya</asp:ListItem>
                    <asp:ListItem>Nilesh Patel</asp:ListItem>
                    <asp:ListItem>Nehal Sutariya</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" SelectCommand="SELECT * FROM [Employee] WHERE ([Did] = @Did)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlDEPARTMENT" Name="Did" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br/><br/>
                <asp:Button ID="btnSUBMIT" runat="server" Text="Submit" OnClick="btnSUBMIT_Click" /><br/><br/>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Eid" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Eid" HeaderText="Eid" InsertVisible="False" ReadOnly="True" SortExpression="Eid" />
                        <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
                        <asp:BoundField DataField="Did" HeaderText="Did" SortExpression="Did" />
                        <asp:BoundField DataField="Esalary" HeaderText="Esalary" SortExpression="Esalary" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" SelectCommand="SELECT * FROM [Employee] WHERE ([Ename] = @Ename)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlEMPLOYEE" Name="Ename" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                &nbsp;&nbsp;&nbsp; <br/><br/>
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
            </center>
        </div>
    </form>
</body>
</html>
