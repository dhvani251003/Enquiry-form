<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnquriFormCreate.aspx.cs" Inherits="EnquiryForm.EnquriFormCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Create Enquiry Form</h1>
                <asp:Label ID="Label1" runat="server" Text="Name : "></asp:Label><asp:TextBox ID="txtNAME" runat="server"></asp:TextBox></br></br>
                <asp:Label ID="Label2" runat="server" Text="Contact : "></asp:Label><asp:TextBox ID="txtCONTACT" runat="server" TextMode="Number"></asp:TextBox></br></br>
                <asp:Label ID="Label3" runat="server" Text="Email : "></asp:Label><asp:TextBox ID="txtEMAIL" runat="server" TextMode="Email"></asp:TextBox></br></br>
                <asp:Label ID="lblGENDER" runat="server" Text="Gender : "></asp:Label><asp:RadioButton ID="rbMALE" runat="server" Checked="True" Text="Male" GroupName="Gender" /><asp:RadioButton ID="rbFEMALE" runat="server" Text="Female" GroupName="Gender" /></br></br>
                <asp:Label ID="lblCITY" runat="server" Text="City : "></asp:Label><asp:DropDownList ID="ddlCITY" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Vadodara</asp:ListItem>
                    <asp:ListItem>Ahmedabad</asp:ListItem>
                    <asp:ListItem>Surat</asp:ListItem>
                    <asp:ListItem>Rajkot</asp:ListItem>
                </asp:DropDownList></br></br>
                <asp:Label ID="Label6" runat="server" Text="Message : "></asp:Label><asp:TextBox ID="txtMESSAGE" runat="server" TextMode="MultiLine"></asp:TextBox></br></br>
                <asp:Button ID="btnSUBMIT" runat="server" Text="Submit" OnClick="btnSUBMIT_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnRESET" runat="server" Text="Reset" OnClick="btnRESET_Click"/>
            </center>
        </div>
    </form>
</body>
</html>
