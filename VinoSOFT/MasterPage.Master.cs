using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VinoSOFT
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                crearMenues();
            }
        }


        //Crear menues segun rol del usuario
        //default - usuario anonimo
        private void crearMenues() {
            menuMaster.Items.Clear();
            usuarioAnonimo();
            usuarioAdmin();
        }

        private void usuarioAnonimo() {
            // Main menu Nosotros
            MenuItem menuNosotros = new MenuItem("Nosotros", "Nosotros");

            // Add first level menus under Data Feeding main menu
            MenuItem mnuNosTyC = new MenuItem("Términos y Condiciones", "TyC");
            mnuNosTyC.NavigateUrl = "~/TerminosYCondiciones.aspx";

            MenuItem mnuNosContac = new MenuItem("Contacto", "Contacto");
            mnuNosContac.NavigateUrl = "~/Contacto.aspx";

            menuNosotros.ChildItems.Add(mnuNosContac);
            menuNosotros.ChildItems.Add(mnuNosTyC);

            // Add edit data main menu to menu bar
            menuMaster.Items.Add(menuNosotros);
        }

        private void usuarioAdmin() {
            BE.BE_Familia familia = new BE.BE_Familia();
            BLL.BLL_Familia gestorFamilia = new BLL.BLL_Familia();
            int id = 1;
            familia = gestorFamilia.obtenerPorId(id);

            MenuItem menuAdmin = new MenuItem("Seguridad", "Seguridad");

            foreach (BE.BE_Permiso permiso in familia.LISTAPERMISO) {
                MenuItem item = new MenuItem(permiso.DESCRIPCION, permiso.DESCRIPCION);
                item.NavigateUrl = permiso.CODIGO;
                menuAdmin.ChildItems.Add(item);
            }

            menuMaster.Items.Add(menuAdmin);
        }

    }
}