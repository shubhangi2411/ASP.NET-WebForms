<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageLifeCycle.aspx.cs" Inherits="WebFormsApplication.PageLifeCycle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link type="text/css" href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
            <h2>Page Life Cycle Events</h2>
    <p>
        <asp:Label runat="server" ID="lblInit"></asp:Label>
    </p>

    <p>
        <asp:Label runat="server" ID="lblPageLoad"></asp:Label>
    </p>

    <p>
        <asp:Label runat="server" ID="lblPostback"></asp:Label>
    </p>

    <p>
        <asp:Label runat="server" ID="lblButtonEvent"></asp:Label>
    </p>
    <asp:Button runat="server" ID="btnSubmit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" Text="Submit"/>
        </form>

</body>
</html>
