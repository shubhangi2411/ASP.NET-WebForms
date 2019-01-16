<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebFormsApplication.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    
    <div>
        <label>Name</label>
        <asp:TextBox runat="server" CssClass="text-box" ID="Name"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate="Name" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
    </div>
    <div>
        <label>Email</label>
        <asp:TextBox runat="server" ID="Email"></asp:TextBox>
        <asp:RegularExpressionValidator runat="server" ID="revEmail" ControlToValidate="Email" ErrorMessage="valid Email is required" ValidationExpression="^[A-Z0-9._%+-]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$" Display="Dynamic" ></asp:RegularExpressionValidator>
   <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ControlToValidate="Email" ErrorMessage="Required"></asp:RequiredFieldValidator>
         </div>
    <div>
        <label>Age</label>
        <asp:TextBox runat="server" ID="Age"></asp:TextBox>
    </div>
    <div>
        <label>Your Favorite Color:</label>
        <asp:DropDownList runat="server" ID="ddlColor">
            <asp:ListItem Text="Please chose a Color" Value=""></asp:ListItem>
            <asp:ListItem Text="Green" Value="Green"></asp:ListItem>
            <asp:ListItem Text="Blue" Value="Blue"></asp:ListItem>
            <asp:ListItem Text="Red" Value="Red"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ID="rfvcolor" ControlToValidate="ddlColor" ErrorMessage="Required"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Literal runat="server" ID="IdLiteral"></asp:Literal>
     </div>
    <div>
        <asp:Button runat="server" ID="btnsubmit" Text="Submit" OnClick="btnsubmit_Click"/> 
    </div>
    <div runat="server" >Welcome yo the contact page</div> 
</asp:Content>
