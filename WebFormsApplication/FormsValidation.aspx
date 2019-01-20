<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormsValidation.aspx.cs" Inherits="WebFormsApplication.FormsValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="valgroup" runat="server">
        <div class="container">
            <h3>Validation Example</h3>
            <asp:Literal runat="server" ID="LtMessage"></asp:Literal>
            <div class="form-group">
                <label><span style="color: red;">*</span>Name</label>
                <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="rqvName"  CssClass="bg-error" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Name Field is Required"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label><span style="color: red;">*</span>Age</label>
                <asp:TextBox runat="server" ID="txtAge" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ID="rqvAge" CssClass="bg-error" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="Age Field is Required"></asp:RequiredFieldValidator>
                <asp:RangeValidator runat="server" Type="Integer" CssClass="bg-error"  ControlToValidate="txtAge" MaximumValue="120" MinimumValue="5" ErrorMessage="Age must be Between 5 Yrs to 120 Yrs" Display="Dynamic" ValidationGroup="valgroup"> </asp:RangeValidator>
            </div>

             <div class="form-group">
                <label><span style="color: red;">*</span>Name a Price (in USD)</label>
                <asp:TextBox runat="server" ID="txtPrice" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"  CssClass="bg-error" ID="RequiredFieldValidator1" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="Age Field is Required"></asp:RequiredFieldValidator>
                <asp:CompareValidator runat="server" ID="cvPrice" CssClass="bg-error"  ControlToValidate="txtPrice" Operator="DataTypeCheck" Type="Currency"  ErrorMessage="Please enter a valid price" Display="Dynamic" ValidationGroup="valgroup"> </asp:CompareValidator>
            </div>

            <div class="form-group">
                <asp:Button runat="server"  CssClass="btn btn-success" Text="Submit" OnClick="btnSubmit_Click"/>
            </div>





        </div>
    </form>
</body>
</html>
