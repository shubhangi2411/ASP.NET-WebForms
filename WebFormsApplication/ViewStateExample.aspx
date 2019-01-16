<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStateExample.aspx.cs" Inherits="WebFormsApplication.ViewStateExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View State Example</title>
    <link type="text/css" href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    <h1>View State Example</h1>
        
        <asp:Literal runat="server" ID="ltPostback">
        </asp:Literal>
        <div class="form-group">
            <label>Nick Name</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="nickname"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Name</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="name"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Email</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="email"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Phone</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="phone"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>City</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="city"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>State</label>
            <asp:DropDownList runat="server" CssClass="form-control">
                <asp:ListItem>Select your state</asp:ListItem>
                <asp:ListItem Value="Jaipur">Jaipur</asp:ListItem>
                <asp:ListItem Value="Bangalore">Bangalore</asp:ListItem>
                <asp:ListItem Value="Delhi">Delhi</asp:ListItem>
                <asp:ListItem Value="Pune">Pune</asp:ListItem>
                <asp:ListItem Value="Mumbai">Mumbai</asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:Button runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btnSubmit_Click"/>
    </div>
    </form>
</body>
</html>
