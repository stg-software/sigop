using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class usuarios_wfCatUsuariosDatos : System.Web.UI.Page
{
    string id;
    public string Titulo { get; set; }
    public string Mensaje { get; set; }
    public string TxtBoton { get; set; }
    public string TxtBotonNo { get; set; }
    public string Iconito { get; set; }
    ws.wsSigob WS = new ws.wsSigob();
   ws.Usuarios p;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                id = Request.QueryString["Id"].Replace(" ", "+");
                DropDownList1.DataSource = WS.ComboPerfiles();
                DropDownList1.DataValueField = "PerfilId";
                DropDownList1.DataTextField = "Perfil";
                DropDownList1.DataBind();

               if (id != "N")
                {
                    Session["UsuarioId"] = id;
                    DataTable Usuarios;
                    Usuarios = WS.DatosUsuarioid(id);
                    if (Usuarios.Rows.Count == 1)
                    {
                        DataRow row = Usuarios.Rows[0];
                        TextBox1.Text = row["NombreCompletoUsuario"].ToString();
                        TextBox2.Text = row["Paterno"].ToString();
                        TextBox3.Text = row["Materno"].ToString();
                        TextBox6.Text = row["usuario"].ToString();
                        TextBox4.Text = row["correo"].ToString();
                        checkbox1.Checked = Convert.ToBoolean(row["Estatus"]);
                        DropDownList1.SelectedValue = row["PerfilId"].ToString(); ;                        
                        Button6.Visible = true;
                        Button2.Visible = false;
                        TextBox4.Enabled = false;

                    }
                }
                else
                {
                    Button6.Visible = false;
                    Button2.Visible = true;
                    TextBox4.Enabled = true;
                }
            }
            catch
            {
                Response.Redirect("wfLogin.aspx");
            }

        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox4.Text != "")
        {
            p.UsuarioId = Request.QueryString["Id"].Replace(" ", "+");

            p.NombreCompletoUsuario = TextBox1.Text.ToUpper();
            p.Paterno = TextBox2.Text.ToUpper();
            p.Materno = TextBox3.Text.ToUpper();
            p.usuario = TextBox6.Text.ToUpper();
            p.PerfilId = DropDownList1.SelectedValue;            
            p.correo = TextBox4.Text.ToLower();
            if (checkbox1.Checked == true)
            {
                p.Estatus = true;
            }
            else p.Estatus = false;
            Session["UsuarioId"] = p.UsuarioId;
            string errores = WS.UsuariosActualiza(p);
            if (errores == "OK")
            {
                Titulo = "MiTiendaOnline";
                Mensaje = "Los datos se han guardado correctamente";
                TxtBoton = "OK";
                Iconito = "bi bi-check-circle";
                Button5.Visible = false;
                Button3.Visible = true;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "modalSlideUp", "$('#modalSlideUp').modal('show');", true);
            }
            else
            {
                Titulo = "MiTiendaOnline";
                Mensaje = errores;
                TxtBotonNo = "CERRAR";
                Iconito = "bi bi-x-circle";
                Button5.Visible = true;
                Button3.Visible = false;
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "modalSlideUp", "$('#modalSlideUp').modal();", true);
            }
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Server.Transfer("Index.aspx");
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox4.Text != "")
        {
            p.UsuarioId = Guid.NewGuid().ToString();

            p.NombreCompletoUsuario = TextBox1.Text.ToUpper();
            p.Paterno = TextBox2.Text.ToUpper();
            p.Materno = TextBox3.Text.ToUpper();
            p.usuario = TextBox6.Text.ToUpper();
            p.PerfilId = DropDownList1.SelectedValue;
            p.correo = TextBox4.Text.ToUpper();
            if (checkbox1.Checked == true)
            {
                p.Estatus = true;
            }
            else p.Estatus = false;
            Session["UsuarioId"] = p.UsuarioId;
            string errores = WS.UsuariosAlta(p);
            if (errores == "OK")
            {
                
                Titulo = "MiTiendaOnline";
                Mensaje = "Los datos se han guardado correctamente";
                TxtBoton = "OK";
                Iconito = "bi bi-check-circle";
                Button2.Visible = false;
                Button6.Visible = true;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "modalSlideUp", "$('#modalSlideUp').modal('show');", true);
            }
            else
            {
                Titulo = "MiTiendaOnline";
                Mensaje = errores;
                TxtBoton = "CERRAR";
                Iconito = "bi bi-x-circle";
                Button6.Visible = false;
                Button2.Visible = true;
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "modalSlideUp", "$('#modalSlideUp').modal();", true);
            }
        }
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}