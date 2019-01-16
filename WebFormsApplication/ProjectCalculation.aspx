<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectCalculation.aspx.cs" Inherits="WebFormsApplication.ProjectCalculation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Project Calculation</title>
    <link type="text/css" href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
   
    <form id="form1" runat="server">
        <div class="container">
            <h1>Get a Quote For Your Custom Project.</h1>
            <h4>Base Price: <asp:Literal runat="server" ID="ltBasePrice"></asp:Literal></h4>
            <br />
            <h6>We primarly server the western half of the United States East of Colorado. we charge a flat  state fee rate of $49.99. Select your state below to get your state's rate.</h6>
            <div class="form-group">
                <label>Your state</label>
                <asp:DropDownList ID="ddlStates" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlStates_SelectedIndexChanged" AutoPostBack="true">
                    <asp:ListItem>Select your state</asp:ListItem>
                    <asp:ListItem Value="">Florida</asp:ListItem>
                    <asp:ListItem Value="WA">Washington</asp:ListItem>
                    <asp:ListItem Value="OR">Oregon</asp:ListItem>
                    <asp:ListItem Value="CA">California</asp:ListItem>
                    <asp:ListItem Value="ID">Idaho</asp:ListItem>
                    <asp:ListItem Value="NV">Nevada</asp:ListItem>
                    <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                    <asp:ListItem Value="MT">Montana</asp:ListItem>
                    <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                    <asp:ListItem Value="UT">Utah</asp:ListItem>
                    <asp:ListItem Value="CO">Colorado</asp:ListItem>

                </asp:DropDownList>
                <br />
                <div class="panel">
                    <div class="panel panel-primary">
                        <div class="panel-body">
                            
                            <label id="ltCustomPrice" runat="server">Custom Price: (Select your state to get price)</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <hr />
    <footer>
        <p>&copy; <%: DateTime.Now.Year %> - My ASP.NET Application</p>
    </footer>
</body>
</html>
