<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kardex.aspx.cs" Inherits="kardex_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid p-1" id="kardex">
        <nav class="">
            <ul class="list-group d-flex flex-row jusify-conten-start">
                <li class="list-group-item border-0"><a class="btn btn-primary" id="porNombre" href="#">Buscar por Nombre</a></li>
                <li class="list-group-item border-0"><a class="btn btn-primary" id="porCurp" href="#">buscar por CURP</a></li>
                <li class="list-group-item border-0"><a class="btn btn-primary" id="kinsert" href="#">Nuevo</a></li>
            </ul>
        </nav>
        <div id="kcontent relative-div">
            <div class="ksearch form-div">
                <asp:Label ID="lblNom" runat="server" Text="Label">Nombre:</asp:Label>
                <asp:TextBox ID="txtNom" CssClass="txtBox" runat="server" placeholder="Nombre"></asp:TextBox>
                <asp:Label ID="lblApPat" runat="server" Text="Label">Apellido Paterno:</asp:Label>
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
            <div class="ksearch form-div">
                <asp:Label ID="lblInsNom" runat="server" Text="Label">Nombre:</asp:Label>
                <asp:TextBox ID="txtInsNom" CssClass="txtBox" runat="server" placeholder="Nombre"></asp:TextBox>
                <asp:Label ID="lblInsApPat" runat="server" Text="Label">Apellido Paterno:</asp:Label>
                <asp:TextBox ID="txtInsApPat" CssClass="txtBox" runat="server" placeholder="Apellido Paterno"></asp:TextBox>
                <asp:Label ID="lblInsApMat" runat="server" Text="Label">Apellido Materno:</asp:Label>
                <asp:TextBox ID="txtInsApMat" CssClass="txtBox" runat="server" placeholder="Apellido Materno"></asp:TextBox>
                
                <asp:Label ID="lblFecNac" runat="server" Text="Label">Fecha de nacimiento:</asp:Label>
                <asp:TextBox ID="txtFecNac" CssClass="txtBox" runat="server" TextMode="Date"></asp:TextBox>
                <asp:Label ID="lblLugNac" runat="server" Text="Label">Lugar de Nacimiento:</asp:Label>
                <asp:TextBox ID="txtLugNac" CssClass="txtBox" runat="server" placeholder="Lugar de Nacimiento"></asp:TextBox>
                <asp:Label ID="lblInsCurp" runat="server" Text="Label">CURP:</asp:Label>
                <asp:TextBox ID="txtInsCurp" CssClass="txtBox" runat="server" placeholder="CURP"></asp:TextBox>
                <asp:Label ID="lblRfc" runat="server" Text="Label">RFC:</asp:Label>
                <asp:TextBox ID="txtRfc" CssClass="txtBox" runat="server" placeholder="RFC"></asp:TextBox>
                <asp:Label ID="lblDom" runat="server" Text="Label">Domicilio:</asp:Label>
                <asp:TextBox ID="txtDom" CssClass="txtBox" runat="server" placeholder="Domicilio"></asp:TextBox>
                <asp:Label ID="lblTipoSangre" runat="server" Text="Label">Tipo de Sangre:</asp:Label>
                <asp:TextBox ID="txtTipoSangre" CssClass="txtBox" runat="server" placeholder="Tipo de Sangre"></asp:TextBox>

                <asp:Button ID="btnInsert" CssClass="kBuscarBtn btn" runat="server" Text="Buscar" />
            </div>
            <div id="gridDatos">
                
            </div>
        </div>
    </div>
    <script src="kscript.js"></script></asp:Content>

