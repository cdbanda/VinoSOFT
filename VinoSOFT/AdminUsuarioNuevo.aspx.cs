using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VinoSOFT
{
    public partial class AdminUsuarios : System.Web.UI.Page
    {
        BLL.BLL_Usuario gestorUsuario = new BLL.BLL_Usuario();
        BLL.BLL_Familia gestorfamilia = new BLL.BLL_Familia();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                cargarFamilias();
            }
        }


        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            int familia = int.Parse(ddPermiso.SelectedValue);

            if (Page.IsValid && familia != 0)
            {
                BE.BE_Usuario usuario = new BE.BE_Usuario();
                usuario.APELLIDO = iptApellido.Text;
                usuario.NOMBRE = iptNombre.Text;
                usuario.EMAIL = iptEmail.Text;
                usuario.CONTRASEÑA = iptContrasenia.Text;
                usuario.TELEFONO = iptTelefono.Text;
                usuario.ESEMPLEADO = true;
                usuario.DNI = int.Parse(iptDNI.Text);
                usuario.ACTIVO = true;

                usuario.CLIENTE = null;

                BE.BE_Familia usuFam = new BE.BE_Familia();
                usuFam.IDFAMILIA = int.Parse(ddPermiso.SelectedValue);

                usuario.LISTAFAMILIA = new List<BE.BE_Familia>();
                usuario.LISTAFAMILIA.Add(usuFam);
                bool ok = gestorUsuario.crear(usuario);
            }
            else {
                Response.Write("<script>alert('Faltan datos.');</script>");
            }

        }

        private void cargarFamilias() {

            ddPermiso.DataSource = null;
            ddPermiso.DataSource = gestorfamilia.listar();
            ddPermiso.DataValueField = "idFamilia";
            ddPermiso.DataTextField = "nombre";
            ddPermiso.DataBind();

        }

    }
}