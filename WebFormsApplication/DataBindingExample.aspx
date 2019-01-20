<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DataBindingExample.aspx.cs" Inherits="WebFormsApplication.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link type="text/css" href="Content/bootstrap.css" rel="stylesheet" />
      <link type="text/css" href="Content/MyCSS.css" rel="stylesheet" />
    <div class="container">
        <h1>DataBinding Example</h1>
       
        <h4>
            <asp:Literal runat="server" ID="ltError"></asp:Literal>

        </h4>
        <asp:GridView ID="gvColors" runat="server" CssClass="table table-bordered table-hover" AutoGenerateColumns="false" OnRowDeleting="gvColors_RowDeleting" OnRowEditing="gvColors_RowEditing" OnRowUpdating="gvColors_RowUpdating" OnRowCancelingEdit="gvColors_RowCancelingEdit">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HiddenField runat="server" ID="hdnColorId" Value='<%# DataBinder.Eval(Container.DataItem,"ColorId") %>' Visible="false"/>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:BoundField DataField="name" HeaderText="Name" />   
                <asp:BoundField DataField="hex" HeaderText="Hex" />
                <asp:TemplateField HeaderText="Color Swatch">
                    <ItemTemplate>
                        <div class="color-swatch">
                            <div class="color-swatch" style='<%# "background-color:#"+Eval("Hex")+";" %>'></div>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField  ShowEditButton="true"/>
                <asp:CommandField ShowDeleteButton="true"/>
            </Columns>

        </asp:GridView>

        <div class="row color-table">
            <asp:Button  runat="server" Text="Add New Row"  CssClass="btn btn-primary " ID="btnAddRow" OnClick="btnAddRow_Click"/>
        </div>
    </div>
</asp:Content>
