<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirmacion.aspx.cs" Inherits="Web.Confirmacion" %>


<asp:Content ID="headerConfirmacion" ContentPlaceHolderID="header" runat="server">
    <div class="row">
        <div class="col-3 container text-center">

        </div>
        <div class="col-6 container text-center">

        </div>
        <div class="col-3 container text-center">

        </div>
    </div>
</asp:Content>

<asp:Content ID="bodyConfirmacion" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="col-1 container">
      
        </div>
        <div class="col-10 container text-center">
            <div class="jumbotron">
                <h1 class="display-4">Confirmacion de Compra</h1>
                <p class="lead">Pequeño detalle de la compra...</p>
                <hr class="my-4">
                <p>Para confirmar la compra pulse Confirmar, de lo contrario pulse cancelar y volvera al catalogo de articulos.</p>
                <asp:Button ID="Confirmar" runat="server" Text="Confirmar" OnClick="botonConfirmar_Click"/>
                <asp:Button ID="Cancelar" runat="server" Text="Cancelar" OnClick="botonCancelar_Click"/>
            </div>
        </div>
        <div class="col-1 container">
           
        </div>
    </div>
</asp:Content>

<asp:Content ID="footerConfirmacion" ContentPlaceHolderID="footer" runat="server">
    <div class="row">
        <div class="col-2 container text-center">

        </div>
        <div class="col-8 container text-center">

        </div>
        <div class="col-2 container text-center">

        </div>
    </div>
</asp:Content>