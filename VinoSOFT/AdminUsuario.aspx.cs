using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;


namespace VinoSOFT
{
    public partial class AdminUsuario : System.Web.UI.Page
    {
        BLL.BLL_Usuario gestorUsuario = new BLL.BLL_Usuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {

            }
        }

        private void llenarGrilla(Hashtable filtros=null) {
            List<BE.BE_Usuario> lista = gestorUsuario.listar(filtros);

            dgvUsuarios.AutoGenerateColumns = false;
            dgvUsuarios.DataSource = lista;
            dgvUsuarios.DataBind();
            
        }


        protected void DgvUsuario_PageIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DgvUsuario_PageIndexChanging(object sender, EventArgs e)
        {
        }
    }
}