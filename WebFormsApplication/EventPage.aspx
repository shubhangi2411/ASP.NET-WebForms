<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventPage.aspx.cs" Inherits="WebFormsApplication.EventPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Advance web server controls</h2>
        <div class="form-group">
            <label>Event Name:</label>
            <asp:TextBox runat="server" CssClass="form-control row col-sm-4" ID="txtEvent" ></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Event Date:</label>
           <asp:Calendar runat="server" ID="calenderEvent"></asp:Calendar>
        </div>

        <div class="form-group">
            <label>Event :</label>
            <asp:Button runat="server" CssClass="btn btn-primary btn-large" ID="btnEvent" Text="Add Event" OnClick="btnEvent_Click"></asp:Button>
        </div>
        <h3>Event Repeaters</h3>
        <div>
            <asp:Repeater runat="server" ID="rptEvent" >
                <ItemTemplate>
                    <h3><%# DataBinder.Eval(Container.DataItem,"EventDate") %><%# DataBinder.Eval(Container.DataItem,"EventName" )%></h3>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    </form>
</body>
</html>
