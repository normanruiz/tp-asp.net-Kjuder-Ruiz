<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web._Default" %>

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
                    <asp:ImageButton ID="botonCarrito" runat="server" ImageUrl="./assets/img/carrito.jpg" Width="60px" Height="60px"/>
                </div>
                <div style="display:inline-block;">
                    <p>Articulos: </p>
                    <p>Productos: </p>
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
                <% foreach (var articulo in listadoArticulos)
                    {%>
                        <div class="card" style="width: 18rem; display:inline-block;">
                          <img src=<%=articulo.ImagenUrl %> class="card-img-top" alt=<%= articulo.Nombre %>>
                          <div class="card-body">
                            <h5 class="card-title"><%= articulo.Nombre %></h5><h5 class="card-title"><%= articulo.Precio %></h5>
                            <p class="card-text"><%= articulo.Descripcion %></p>
                              <asp:ImageButton ID="sumarArticulo" runat="server" ImageUrl="./assets/img/mas.jpg" Width="30px" Height="30px"/> <input id="number" type="number" value="1"/> <asp:ImageButton ID="restarArticulo" runat="server" ImageUrl="./assets/img/menos.jpg" Width="30px" Height="30px"/>

                          </div>
                        </div>
                <% } %>
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
