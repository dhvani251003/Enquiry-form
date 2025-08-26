<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnquiryList.aspx.cs" Inherits="EnquiryForm.EnquiryList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Enquiry List Page</h1>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Eid" HeaderText="Enquiry ID" />
                        <asp:BoundField DataField="Ename" HeaderText="Enquiry Name" />
                        <asp:BoundField DataField="Econtact" HeaderText="Enquiry Contact" />
                        <asp:BoundField DataField="Eemail" HeaderText="Enquiry Email" />
                        <asp:BoundField DataField="Egender" HeaderText="Enquiry Gender" />
                        <asp:BoundField DataField="Emessage" HeaderText="Enquiry Message" />
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/delete.png" OnClick="ImageButton1_Click" Width="45px" CommandArgument='<% #Eval("Eid", "{0}") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </center>
        </div>
    </form>
</body>
</html>
