<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Web.About" %>

<asp:Content ID="headerprincipal" ContentPlaceHolderID="header" runat="server">
        <div class="row">
            <div class="col-3 container">
                Aca va el logo
            </div>
            <div class="col-6 container">
                Aca va un titulo
            </div>
            <div class="col-3 container">
                Aca va el boton del carrito y los contadores
            </div>
        </div>
</asp:Content>

<asp:Content ID="bodyprincipal" ContentPlaceHolderID="body" runat="server">
        <div class="row">
            <div class="col-2 container">
                Checkbox para filtros tal vez
            </div>
            <div class="col-8 container">
                Aca va el listado de productos
            </div>
            <div class="col-2 container">
                Espacio para propagandas
            </div>
        </div>
</asp:Content>

<asp:Content ID="footerprincipal" ContentPlaceHolderID="footer" runat="server">
            <div class="row">
            <div class="col-2 container">
                <p>&copy;</p>
            </div>
            <div class="col-8 container">
                <%: DateTime.Now.Year %>
            </div>
            <div class="col-2 container">
                <p>Tp ASP.NET Ruiz Kjuder </p>
            </div>
        </div>
</asp:Content>
