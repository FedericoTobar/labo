using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class resultadoASP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Denominacion.Text = Session["Denominacion"].ToString();
        Rubro.Text = Session["Rubro"].ToString();
        Tipo.Text = Session["Tipo"].ToString();
        Stock.Text = Session["Stock"].ToString();
        Categoria.Text = Session["Categoria"].ToString();
        Descripcion.Text = Session["Descripcion"].ToString();

        if (Session["FechaVencimiento"].ToString() == "")
        {
            Label7.Enabled = false;
            Label7.Text = "";
            Fecha.Enabled = false;
        }
        else
        {
            Fecha.Text = Session["FechaVencimiento"].ToString();
        }

    }
}