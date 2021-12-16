using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class productos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Tipo.GetSelected() == "Con Vencimiento")
        {
            Tipo.Habilitar();
        }
        else
        {
            Tipo.Deshabilitar();
        }
        tablaRellenar.Visible = false;
    }
    

    protected void Guardar_Click(object sender, EventArgs e)
    {
        if (!Page.IsValid)
        {
            PaginaInvalida.Text = "Su formulario no es válido, verifique todos los campos.";
        }
        else
        {
            tablaRellenar.Visible = true;
            denominacionTabla2.Text = denominacion.Text;
            rubroTabla2.Text = Rubro.GetSelected();
            tipoTabla2.Text = Tipo.GetSelected();
            stockTabla2.Text = Stock.Text;
            catTabla2.Text = Categoria.SeleccionComboBox();
            descrTabla2.Text = descripcion.Text;
        }
    }

    protected void Sesion_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Session["Denominacion"] = denominacion.Text;
            Session["Rubro"] = Rubro.GetSelected();
            Session["Tipo"] = Tipo.GetSelected();
            Session["Stock"] = Stock.Text;
            Session["Categoria"] = Categoria.SeleccionComboBox();
            Session["Descripcion"] = descripcion.Text;

            if (Tipo.GetSelected() == "Con Vencimiento")
            {
                Session["FechaVencimiento"] = Tipo.GetFecha();
            }
            else
            {
                Session["FechaVencimiento"] = "";
            }

            Response.Redirect("resultadoASP.aspx");
        }
        else
        {
            PaginaInvalida.Text = "Su formulario no es válido, verifique todos los campos.";
        }
    }
}