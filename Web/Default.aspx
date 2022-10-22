<%@ Page Title="Listado de articulos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web._Default" %>

<asp:Content ID="headerprincipal" ContentPlaceHolderID="header" runat="server">
        <div class="row">
            <div class="col-3 container text-center">
                <asp:Image ID="logo" runat="server" ImageUrl="./assets/img/logo.png" Width="120px" Height="120px" />
            </div>
            <div class="col-6 container text-center">
                Super Carrito de compras 2022
            </div>
            <div class="col-3 container text-center">
                <div style="display:inline-block;">
                    <asp:ImageButton ID="botonCarrito" runat="server" ImageUrl="./assets/img/carrito.jpg" Width="60px" Height="60px" OnClick="botonCarrito_Click"/>
                </div>
                <div style="display:inline-block;">
                    <p>Articulos: <%: listadoCarrito.Keys.Count.ToString() %> </p>
                    <p>Productos: <%: (listadoCarrito.Values).ToList<int>().Sum().ToString() %> </p>
                    <p>Efectivo: </p>
                </div>
            </div>
        </div>
</asp:Content>

<asp:Content ID="bodyprincipal" ContentPlaceHolderID="body" runat="server">
        <div class="row">
            <div class="col-1 container">
      
            </div>
            <div class="col-10 container text-center">

                <asp:Repeater ID="RepArticulos" runat="server">
                    <ItemTemplate>
                        <div class="card" style="width: 18rem; display:inline-block;">
                          <img src="<%#Eval("ImagenUrl") %>" class="card-img-top" alt="<%#Eval("Nombre") %>" />
                          <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <h5 class="card-title"><%#Eval("Precio") %></h5>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <asp:Button ID="btnAgregar" runat="server" Text="Agregar uno" CssClass="btn btn-primary" CommandArgument='<%#Eval("Id") %>' CommandName="articuloId" OnClick="agregar_Click" />
                          </div>
                        </div>
                    </ItemTemplate>   
                </asp:Repeater>
            </div>
            <div class="col-1 container">
           
            </div>
        </div>
</asp:Content>

<asp:Content ID="footerprincipal" ContentPlaceHolderID="footer" runat="server">
            <div class="row">
            <div class="col-2 container text-center">
                <p>&copy;</p>
            </div>
            <div class="col-8 container text-center">
                <%: DateTime.Now.Year %>
            </div>
            <div class="col-2 container text-center">
                <p>Tp ASP.NET Ruiz Kjuder </p>
            </div>
        </div>
</asp:Content>
