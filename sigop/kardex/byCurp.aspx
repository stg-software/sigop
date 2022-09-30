<%@ Page Title="" Language="C#" MasterPageFile="~/kardex/MasterPageKardex.master" AutoEventWireup="true" CodeFile="byCurp.aspx.cs" Inherits="kardex_byCurp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Busqueda por CURP</h2>
    <div class="ksearch form-div">
        <asp:Label ID="lblCurp" runat="server" Text="Label">Nombre:</asp:Label>
        <asp:TextBox ID="txtCurp" CssClass="txtBox" runat="server" placeholder="CURP"></asp:TextBox>
        <asp:Button ID="btnBuscarCurp" CssClass="kBuscarBtn btn" runat="server" Text="Buscar" />
    </div>
</asp:Content>

