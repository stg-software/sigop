<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kardex.aspx.cs" Inherits="kardex_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid p-1" id="kardex">
        <nav class="">
            <ul class="list-group d-flex flex-row jusify-conten-start">
                <li class="list-group-item border-0"><a class="btn btn-primary" id="porNombre" href="#">Nombre</a></li>
                <li class="list-group-item border-0"><a class="btn btn-primary" id="porCurp" href="#">CURP</a></li>
            </ul>
        </nav>
        <div id="kcontent relative-div">
            <div class="ksearch form-div">
                <asp:Label ID="lblnom" runat="server" Text="Label" placeholder="Nombre">Nombre:</asp:Label>
                <asp:TextBox ID="txtNom" CssClass="txtBox" runat="server" placeholder="Nombre"></asp:TextBox>
                <asp:Label ID="lblApPat" runat="server" Text="Label" placeholder="Apellido Paterno">Apellido Paterno:</asp:Label>
                <asp:TextBox ID="txtApPat" CssClass="txtBox" runat="server" placeholder="Apellido Paterno"></asp:TextBox>
                <asp:Label ID="lblApMat" runat="server" Text="Label">Apellido Materno:</asp:Label>
                <asp:TextBox ID="txtApMat" CssClass="txtBox" runat="server" placeholder="Apellido Materno"></asp:TextBox>
                <asp:Button ID="bntBuscarNom" CssClass="kBuscarBtn btn" runat="server" Text="Buscar" />
            </div>
            <div class="ksearch form-div">
                <asp:Label ID="lblCurp" runat="server" Text="Label">Nombre:</asp:Label>
                <asp:TextBox ID="txtCurp" CssClass="txtBox" runat="server" placeholder="CURP"></asp:TextBox>
                <asp:Button ID="btnBuscarCurp" CssClass="kBuscarBtn btn" runat="server" Text="Buscar" />
            </div>
            <div id="gridDatos">
                
            </div>
        </div>
    </div>
    <script src="kscript.js"></script></asp:Content>

