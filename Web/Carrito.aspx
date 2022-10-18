<%@ Page Title="Carrito de compras" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Web._Carrito" %>

<asp:Content ID="headerCarrito" ContentPlaceHolderID="header" runat="server">
    <div class="row">
        <div class="col-3 container text-center">
            <asp:Image ID="logo" runat="server" ImageUrl="./assets/img/logo.png" Width="120px" Height="120px" />
        </div>
        <div class="col-6 container text-center">
            Bienvenido a su carrito de compras
        </div>
        <div class="col-3 container text-center">
            <asp:ImageButton ID="seguirComprando" runat="server" ImageUrl="./assets/img/carrito.jpg" Width="60px" Height="60px" OnClick="botonSeguirComprando_Click"/>
            <asp:ImageButton ID="terminalCompra" runat="server" ImageUrl="./assets/img/carrito.jpg" Width="60px" Height="60px" OnClick="botonTerminarCompra_Click"/>
        </div>
    </div>
</asp:Content>

<asp:Content ID="bodyCarrito" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="col-1 container">
      
        </div>
        <div class="col-10 container text-center">

        </div>
        <div class="col-1 container">
           
        </div>
    </div>
</asp:Content>

<asp:Content ID="footerCarrito" ContentPlaceHolderID="footer" runat="server">
    <div class="row">
        <div class="col-2 container text-center">

        </div>
        <div class="col-8 container text-center">

        </div>
        <div class="col-2 container text-center">

        </div>
    </div>
</asp:Content>
