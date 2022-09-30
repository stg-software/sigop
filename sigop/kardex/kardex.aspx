<%@ Page Title="" Language="C#" MasterPageFile="~/kardex/MasterPageKardex.master" AutoEventWireup="true" CodeFile="kardex.aspx.cs" Inherits="kardex_kardex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Busqueda por nombre</h2>
    <div class="ksearch form-div">
        <asp:Label ID="lblNom" runat="server" Text="Label">Nombre:</asp:Label>
        <asp:TextBox ID="txtNom" CssClass="txtBox" runat="server" placeholder="Nombre"></asp:TextBox>
        <asp:Label ID="lblApPat" runat="server" Text="Label">Apellido Paterno:</asp:Label>
        <asp:TextBox ID="txtApPat" CssClass="txtBox" runat="server" placeholder="Apellido Paterno"></asp:TextBox>
        <asp:Label ID="lblApMat" runat="server" Text="Label">Apellido Materno:</asp:Label>
        <asp:TextBox ID="txtApMat" CssClass="txtBox" runat="server" placeholder="Apellido Materno"></asp:TextBox>
        <asp:Button ID="bntBuscarNom" CssClass="kBuscarBtn btn" runat="server" Text="Buscar" />
    </div>
    
</asp:Content>

