<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExceptionHandlingExample.aspx.cs" Inherits="WebFormsApplication.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link type="text/css" href="Content/bootstrap.css" rel="stylesheet" />
    <div class="container">
        <h3>Exception Handling</h3>
        <br />
        <asp:Label ID="lblmsg" CssClass="alert alert-info" runat="server" ></asp:Label>
        <br />
        <br />
        <div class="form-group">          
       <asp:Label runat="server"  >This should be Decimal</asp:Label>
            <asp:TextBox runat="server" ID="txtdecimal" CssClass="form-control"></asp:TextBox>
          
        </div>
        <asp:Button runat="server" Text="Submit" CssClass="btn btn-success" ID="btnSuccess" OnClick="btnSuccess_Click" />
    </div>
</asp:Content>
