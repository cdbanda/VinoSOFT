using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VinoSOFT
{
    public partial class Registracion : System.Web.UI.Page
    {
        BLL.BLL_Cliente gestorCliente = new BLL.BLL_Cliente();
        BLL.BLL_Usuario gestorUsuario = new BLL.BLL_Usuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btnRegistrarme_Click(object sender, EventArgs e)
        {
            BE.BE_Usuario usuario = new BE.BE_Usuario();
            usuario.ACTIVO = false;
            usuario.NOMBRE = iptNombre.Text;
            usuario.APELLIDO = iptApellido.Text;
            usuario.EMAIL = iptEmail.Text;
            usuario.CONTRASEÑA = iptContrasenia.Text;
            usuario.DNI = int.Parse(iptDNI.Text);
            usuario.TELEFONO = iptTelefono.Text;
            usuario.ESADMIN = false;

            bool ok = gestorUsuario.crear(usuario);



        }

        protected void CheckBoxRequired_ServerValidate(object sender, ServerValidateEventArgs e)
        {
            e.IsValid = CheckBoxTyC.Checked;
        }


    }
}