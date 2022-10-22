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
    <div class="row align-items-center">
        <div class="col-1">
            <asp:Button ID="botonVaciarCarrito" runat="server" Text="Vaciar Carrito" OnClick="botonVaciarCarrito_Click" CssClass="boton" />
        </div>
    </div>
     <div class="row align-items-center">
        <div class="col-1">
            <asp:Button ID="botonLlenarCarrito" runat="server" Text="Llenar Carrito" OnClick="botonLlenarCarrito_Click" />
            
        </div>
    </div>
    <div class="row align-items-center">
        <div class="col-1">
            <asp:Button ID="Button2" runat="server" Text="Llenar Carrito" OnClick="botonLlenarCarrito2_Click" />
            
        </div>
    </div>
     <% foreach(KeyValuePair<Modelo.Articulo,int> item in listaCarrito.carrito.listaArticulos)
            {%>
    <div class="row align-items-center" style="margin:10px">
        <div class="col-2 container">
            <img style="width:200px;" src="https://www.thecompellingimage.com/assets_new/images/empty-img.jpeg" alt="Alternate Text" />
            
        </div>
        <div class="col-3 container">
            <h3><%:item.Key.Nombre %></h3>
        </div>
        <div class="col-2 d-flex flex-row container text-center">
            <div class="row align-items-center">
                <div class="col-1 container">
                    <asp:ImageButton ID="sumarArticulo" runat="server" ImageUrl="./assets/img/mas.jpg" Width="30px" Height="30px"/>
                </div>
                <div class="col-3 container align-items-end">
                    <p><%:item.Value %> </p>
                    <% current = item.Key; %>
                </div>
                <div class="col-1 container">
                    <asp:ImageButton ID="restarArticulo" runat="server" ImageUrl="./assets/img/menos.jpg" Width="30px" Height="30px"/>
                </div>
                
                
                
            </div>
        </div>
        <div class="col-1  container">
            <asp:ImageButton Width="20px" ID="botonQuitarProductoCarrito" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4r68Sv4kY8f3-1d2nkElFVQ8uhi4QPnRjcriPlPqpUpqZfpGzRthctK1G2EpZ_rmp6AU&usqp=CAU" runat="server" OnClick="botonQuitarProductoCarrito_Click" />
        </div>
    </div>
   
               
            <%}%>
    
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
