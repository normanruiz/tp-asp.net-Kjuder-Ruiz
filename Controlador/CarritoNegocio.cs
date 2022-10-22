using Modelo;
using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;


namespace Controlador
{
    public class CarritoNegocio
    {

        public Carrito carrito { get; set; }
        
        public CarritoNegocio()
        {
            carrito = new Carrito();
        }


        public Dictionary<Articulo, int> AgregarCarrito(Articulo art, int cant)
        {

            foreach (KeyValuePair<Articulo, int> item in carrito.listaArticulos)
            {
                if (item.Key.Id == art.Id)
                {
                    carrito.listaArticulos[item.Key] += cant;
                    return carrito.listaArticulos;
                }
            }
            carrito.listaArticulos.Add(art, cant);
            return carrito.listaArticulos;
        }
        public Dictionary<Articulo, int> QuitarCarrito(Articulo art)
        {

            foreach (KeyValuePair<Articulo, int> item in carrito.listaArticulos)
            {
                if (item.Key.Id == art.Id)
                {
                    carrito.listaArticulos.Remove(item.Key);
                    return carrito.listaArticulos;
                }
            }
            return carrito.listaArticulos;
        }

        public void cargarSession(Carrito cart)
        {
            carrito = cart;
        }
    }
}
