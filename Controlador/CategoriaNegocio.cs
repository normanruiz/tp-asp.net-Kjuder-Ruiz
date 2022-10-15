using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;

namespace Controlador
{
    public class CategoriaNegocio
    {
        public List<Categoria> listar()
        {
            List<Categoria> listaCategorias = new List<Categoria>();
            AccesoDatos Conexion = new AccesoDatos();
            Categoria categoria;

            try
            {
                Conexion.conectar();
                Conexion.setearConsulta("SELECT c.[Id], c.[Descripcion] FROM [CATALOGO_DB].[dbo].[CATEGORIAS] AS c WITH (NOLOCK);");
                Conexion.ejecutarLectura();

                while (Conexion.Lector.Read())
                {
                    categoria = new Categoria();
                    categoria.Id = (Int32)Conexion.Lector["Id"];
                    categoria.Descripcion = (string)Conexion.Lector["Descripcion"];
                    listaCategorias.Add(categoria);
                }

                return listaCategorias;
            }
            catch (Exception excepcion)
            {
                throw excepcion;
            }
            finally
            {
                Conexion.cerrar();
            }

        }
    }
}
