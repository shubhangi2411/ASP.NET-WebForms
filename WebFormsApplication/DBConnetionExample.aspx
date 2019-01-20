<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DBConnetionExample.aspx.cs" Inherits="WebFormsApplication.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link type="text/css" href="Content/bootstrap.css" rel="stylesheet" />
    <h1>Database Connection Example</h1>
    <hr />
    <h4>
        <asp:Literal runat="server" ID="ltConnMsg"></asp:Literal>
    </h4>
    <div class="row">
        <ul>
            <asp:Literal runat="server" ID="ltOutput"></asp:Literal>
        </ul>
    </div>

</asp:Content>
