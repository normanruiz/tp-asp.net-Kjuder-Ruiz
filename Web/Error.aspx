<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="Web._Error" %>

<asp:Content ID="headerError" ContentPlaceHolderID="header" runat="server">
    <div class="row">
        <div class="col-3 container text-center">

        </div>
        <div class="col-6 container text-center">

        </div>
        <div class="col-3 container text-center">

        </div>
    </div>
</asp:Content>

<asp:Content ID="bodyError" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="col-1 container">
      
        </div>
        <div class="col-10 container text-center">
            <div class="jumbotron">
                <h1 class="display-4">Opsss !!! algo ocurrio...</h1>
                <p class="lead"></p>
                <hr class="my-4">
                <p><%= excepcion.Message.ToString() %></p>
                <asp:Button ID="btnAceptarError" runat="server" Text="Aceptar" OnClick="btnAceptarError_Click" cssclass="btn btn-primary btn-lg"/>
            </div>
        </div>
        <div class="col-1 container">
           
        </div>
    </div>
</asp:Content>

<asp:Content ID="footerError" ContentPlaceHolderID="footer" runat="server">
    <div class="row">
        <div class="col-2 container text-center">

        </div>
        <div class="col-8 container text-center">

        </div>
        <div class="col-2 container text-center">

        </div>
    </div>
</asp:Content>
