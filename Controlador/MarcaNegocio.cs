using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Modelo;

namespace Controlador
{
    public class MarcaNegocio
    {
        public List<Marca> listar()
        {
            List<Marca> listaMarcas = new List<Marca>();
            AccesoDatos Conexion = new AccesoDatos();
            Marca marca;

            try
            {
                Conexion.conectar();
                Conexion.setearConsulta("SELECT m.[Id], m.[Descripcion] FROM [CATALOGO_DB].[dbo].[MARCAS] AS m WITH (NOLOCK);");
                Conexion.ejecutarLectura();

                while (Conexion.Lector.Read())
                {
                    marca = new Marca();
                    marca.Id = (Int32)Conexion.Lector["Id"];
                    marca.Descripcion = (string)Conexion.Lector["Descripcion"];
                    listaMarcas.Add(marca);
                }

                return listaMarcas;
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
